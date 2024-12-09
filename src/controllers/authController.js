import jwt from "jsonwebtoken";
import bcrypt from "bcrypt";
import sqlString from "sqlstring";
import dayjs from "dayjs";
import conn from "../../config/db.js";
import nodemailer from "nodemailer";
import crypto from "crypto";
import { v4 as uuidv4 } from "uuid";
const uuid = uuidv4();
import dotenv from "dotenv";

export class AuthController {
  static async refreshToken(req, res) {
    const refreshToken = req.query.token;

    if (refreshToken == null) {
      return res.json({
        success: false,
        message: "No token provided",
      });
    }

    let decodedToken = jwt.decode(refreshToken);

    let query = sqlString.format(
      `SELECT * FROM Token WHERE userId = ? AND tokenType = ? AND token = ? AND expiresAt > TIMESTAMP(?) LIMIT 1`,
      [
        decodedToken.userId,
        "REFRESH",
        refreshToken,
        dayjs().format("YYYY-MM-DD HH:mm:ss"),
      ]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Error fetching token from the database",
        });
      }

      if (result.length == 0) {
        return res.json({
          success: false,
          message: "Invalid token",
        });
      } else {
        jwt.verify(
          refreshToken,
          process.env.REFRESH_TOKEN_SECRET,
          (err, user) => {
            if (err) {
              return res.json({
                success: false,
                message: "Invalid token",
              });
            }

            const accessToken = jwt.sign(
              {
                userId: decodedToken.userId,
                name: decodedToken.name,
                email: decodedToken.email,
              },
              process.env.ACCESS_TOKEN_SECRET,
              {
                expiresIn: "15d",
              }
            );

            const accessTokenExp = dayjs()
              .add(15, "day")
              .format("YYYY-MM-DD HH:mm:ss");

            let query2 = sqlString.format(
              `INSERT INTO Token (userId, tokenType, token, expiresAt) VALUES (?, ?, ?, ?);`,
              [decodedToken.userId, "ACCESS", accessToken, accessTokenExp]
            );

            conn.query(query2, (err, result) => {
              if (err) {
                return res.json({
                  success: false,
                  error: err,
                  message: "Error inserting token into the database",
                });
              }

              return res.json({
                success: true,
                message: "Token refreshed successfully",
                userId: decodedToken.userId,
                accessToken,
                accessTokenExp,
              });
            });
          }
        );
      }
    });
  }

  static async login(req, res) {
    const { email, password } = req.body;

    let query = sqlString.format(
      `SELECT * FROM User WHERE userEmail = ? LIMIT 1`,
      [email]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Error fetching user from the database",
        });
      }

      if (result.length == 0) {
        return res.json({
          success: false,
          message: "User not found",
        });
      } else {
        let user = result[0];

        if (user.isVerified == 0) {
          return res.json({
            success: false,
            message: "Please verify your email address",
          });
        }

        bcrypt.compare(password, user.userPass, (err, result2) => {
          if (err) {
            return res.json({
              success: false,
              message: "Error comparing passwords",
            });
          } else {
            if (result2) {
              let user = {
                userId: result[0].userId,
                name: result[0].userName,
                email: result[0].userEmail,
              };
              const accessToken = jwt.sign(
                user,
                process.env.ACCESS_TOKEN_SECRET,
                {
                  expiresIn: "15d",
                }
              );
              const refreshToken = jwt.sign(
                user,
                process.env.REFRESH_TOKEN_SECRET,
                {
                  expiresIn: "30d",
                }
              );

              const accessTokenExp = dayjs()
                .add(15, "day")
                .format("YYYY-MM-DD HH:mm:ss");

              const refreshTokenExp = dayjs()
                .add(30, "day")
                .format("YYYY-MM-DD HH:mm:ss");

              let query2 = sqlString.format(
                `INSERT INTO Token (userId, tokenType, token, expiresAt) VALUES (?, ?, ?, ?), (?, ?, ?, ?);`,
                [
                  user.userId,
                  "ACCESS",
                  accessToken,
                  accessTokenExp,
                  user.userId,
                  "REFRESH",
                  refreshToken,
                  refreshTokenExp,
                ]
              );

              conn.query(query2, (err, result) => {
                if (err) {
                  return res.json({
                    success: false,
                    error: err,
                    message: "Error inserting token into the database",
                  });
                }
                return res.json({
                  success: true,
                  message: "User logged in successfully",
                  accessToken,
                  refreshToken,
                  accessTokenExp,
                  refreshTokenExp,
                });
              });
            } else {
              return res.json({
                success: false,
                message: "Incorrect password",
              });
            }
          }
        });
      }
    });
  }

  static async register(req, res) {
    const { name, email, mobile, dob, password, referralCode } = req.body;

    const transporter = nodemailer.createTransport({
      host: "smtp.hostinger.com",
      port: 465,
      secure: true,
      auth: {
        user: "support@weemax.in",
        pass: "@8ifxtfVuxq-sb4g",
      },
    });

    if (name.length < 3) {
      return res.json({
        success: false,
        message: "Name must contain minimum 3 charecters",
      });
    }

    if (String(mobile).length != 10) {
      return res.json({
        success: false,
        message: "Mobile number must contain 10 digits",
      });
    }

    function validateEmail(email) {
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

      return emailRegex.test(email);
    }

    if (!validateEmail(email)) {
      return res.json({
        success: false,
        message: "Please enter valid email address",
      });
    }

    let query = sqlString.format(
      "SELECT COUNT(*) AS count FROM User WHERE userEmail = ?",
      [email]
    );

    conn.query(query, async (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Error fetching user from the database",
        });
      }

      if (result[0].count == 0 && referralCode) {
        let searchReferral =
          sqlString.format(
            "SELECT COUNT(*) AS referralCount, userId FROM User WHERE referralCode = ?; ",
            [referralCode]
          ) +
          sqlString.format(
            "SELECT userId FROM User ORDER BY userId DESC LIMIT 1"
          );

        conn.query(searchReferral, async (err, result2) => {
          if (err) {
            console.log(err);
            return res.json({
              success: false,
              message: "Referral code error",
            });
          }

          if (result2[0][0].referralCount == 0) {
            return res.json({
              success: false,
              message: "Invalid Referral code",
            });
          }

          let firstThreeCharacters = name.substring(0, 3);
          let mobileString = mobile.toString();
          let lastFourDigits = mobileString.substr(-4);
          let uppercaseName = firstThreeCharacters.toUpperCase();
          let combinationReferralCode =
            uppercaseName + lastFourDigits + (result2[1][0].userId + 1);

          const digits = "0123456789";
          let OTP = "";

          for (let i = 0; i < 6; i++) {
            OTP += digits[Math.floor(Math.random() * 10)];
          }

          let otpObj = {
            to: email,
            type: "email",
            code: OTP,
            expAt: dayjs().add(10, "minutes").format("YYYY-MM-DD HH:mm:ss"),
          };

          let salt = await bcrypt.genSalt(12);
          let query =
            sqlString.format(
              "INSERT INTO User (userName, userEmail, mobile, dob, userPass, referralCode) VALUES (?, ?, ?, ?, ?, ?);",
              [
                name,
                email,
                mobile,
                dob,
                await bcrypt.hash(password, salt),
                combinationReferralCode,
              ]
            ) + sqlString.format("INSERT INTO Otp SET ?", [otpObj]);

          conn.query(query, (err, result3) => {
            if (err) {
              return res.json({
                success: false,
                message: "Error registering user",
                err,
              });
            }

            let refer = {
              userId: result3[0].insertId,
              parentId: result2[0][0].userId,
            };

            let addRefer = sqlString.format("INSERT INTO Referral SET ?", [
              refer,
            ]);

            conn.query(addRefer, (err, result4) => {
              if (err) {
                let delQuery = sqlString.format(
                  "DELETE FROM User WHERE userId = ?",
                  [result3[0].insertId]
                );

                conn.query(delQuery, (err, result) => {
                  console.log("Deleted");
                });

                return res.json({
                  success: false,
                  message: "Referal not created",
                });
              }

              const mailOptions = {
                from: "support@weemax.in", // sender address
                to: email, // list of receivers
                subject: "OTP Verification", // subject line
                text: `
          Hey, 
          
            Welcome to WEEMAX - where Fashion & Dream comes true! 🎉
            
            Thank you for joining our fashion family. To ensure the security of your account, please use the following OTP (One-Time Password) to complete your verification:
            
            OTP: ${OTP}
            
            Enter the OTP within 10 minutes on our website to get started ! 
            
            We're thrilled to have you on board, and we can't wait for you to explore our collection of trendy clothing & loyalty programs.
            
            Enjoy your fashion journey with us! ❤
            `, // plaintext body
              };

              transporter.sendMail(mailOptions, function (error, info) {
                if (error) {
                  console.log(error);
                } else {
                  console.log("Email sent: " + info.response);
                }
              });

              return res.json({
                success: true,
                message: "User registered successfully",
                userId: result.insertId,
              });
            });
          });
        });
      } else if (result[0].count == 0) {
        let lastUser = sqlString.format(
          "SELECT userId FROM User ORDER BY userId DESC LIMIT 1"
        );

        conn.query(lastUser, async (err, result) => {
          if (err) {
            return res.json({
              success: false,
              message: "Can't fetch user",
            });
          }
          let lastUserId;
          if (result.length == 0) {
            lastUserId = 0;
          } else {
            lastUserId = result[0].userId;
          }

          let firstThreeCharacters = name.substring(0, 3);
          let mobileString = mobile.toString();
          let lastFourDigits = mobileString.substr(-4);
          let uppercaseName = firstThreeCharacters.toUpperCase();
          let combinationReferralCode =
            uppercaseName + lastFourDigits + (lastUserId + 1);

          const digits = "0123456789";
          let OTP = "";

          for (let i = 0; i < 6; i++) {
            OTP += digits[Math.floor(Math.random() * 10)];
          }

          let otpObj = {
            to: email,
            type: "email",
            code: OTP,
            expAt: dayjs().add(10, "minutes").format("YYYY-MM-DD HH:mm:ss"),
          };

          let salt = await bcrypt.genSalt(12);
          let query =
            sqlString.format(
              "INSERT INTO User (userName, userEmail, mobile, dob, userPass, referralCode) VALUES (?, ?, ?, ?, ?, ?);",
              [
                name,
                email,
                mobile,
                dob,
                await bcrypt.hash(password, salt),
                combinationReferralCode,
              ]
            ) + sqlString.format("INSERT INTO Otp SET ?", [otpObj]);

          conn.query(query, (err, result) => {
            if (err) {
              return res.json({
                success: false,
                message: "Error registering user",
                err,
              });
            }

            const mailOptions = {
              from: "support@weemax.in", // sender address
              to: email, // list of receivers
              subject: "OTP Verification", // subject line
              text: `
          Hey, 
          
            Welcome to WEEMAX - where Fashion & Dream comes true! 🎉
            
            Thank you for joining our fashion family. To ensure the security of your account, please use the following OTP (One-Time Password) to complete your verification:
            
            OTP: ${OTP}
            
            Enter the OTP within 10 minutes on our website to get started ! 
            
            We're thrilled to have you on board, and we can't wait for you to explore our collection of trendy clothing & loyalty programs.
            
            Enjoy your fashion journey with us! ❤
            `, // plaintext body
            };

            transporter.sendMail(mailOptions, function (error, info) {
              if (error) {
                console.log(error);
              } else {
                console.log("Email sent: " + info.response);
              }
            });

            return res.json({
              success: true,
              message: "User registered successfully",
              userId: result.insertId,
            });
          });
        });
      } else {
        return res.json({
          success: false,
          message: "User already exists with this email",
        });
      }
    });
  }

  static validateOtp(req, res) {
    let email = req.body.email;
    let code = req.body.code;

    if (email) {
      var query = sqlString.format(
        "SELECT * FROM Otp WHERE `to` = ? AND code = ? ORDER BY otpId DESC LIMIT 1",
        [email, code]
      );
    }

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
          err,
        });
      }

      if (result.length > 0) {
        let otp = result[0];

        if (otp.status == "used") {
          return res.json({
            success: false,
            message: "This otp has been already used.",
          });
        }

        var expAt = new Date(otp.expAt);
        var expAtSeconds = expAt.getTime() / 1000;
        var currentDate = new Date();
        var currentDateSeconds = currentDate.getTime() / 1000;

        if (currentDateSeconds > expAtSeconds) {
          let query = sqlString.format(
            "UPDATE Otp SET status = 'expired' WHERE otpId = ?;",
            [otp.otpId]
          );
          conn.query(query, (err, result) => {
            if (err) {
              return res.json({
                success: false,
                message: "Something went wrong",
                err,
              });
            }

            return res.json({
              success: false,
              message: "OTP expired",
            });
          });

          return;
        }

        let query =
          sqlString.format("UPDATE Otp SET status = 'used' WHERE otpId = ?;", [
            otp.otpId,
          ]) +
          sqlString.format(
            "UPDATE User SET isVerified = 1 WHERE userEmail = ?;",
            [email]
          );
        conn.query(query, (err, result) => {
          if (err) {
            return res.json({
              success: false,
              message: "Something went wrong",
              err,
            });
          }

          let query3 = sqlString.format(
            "SELECT * FROM User WHERE userEmail = ?",
            [email]
          );

          conn.query(query3, (err, result2) => {
            if (err) {
              return res.json({
                success: false,
                message: "Error fetching user from the database",
              });
            }

            let user = {
              userId: result2[0].userId,
              name: result2[0].userName,
              email: result2[0].userEmail,
            };

            const accessToken = jwt.sign(
              user,
              process.env.ACCESS_TOKEN_SECRET,
              {
                expiresIn: "15d",
              }
            );
            const refreshToken = jwt.sign(
              user,
              process.env.REFRESH_TOKEN_SECRET,
              {
                expiresIn: "30d",
              }
            );

            const accessTokenExp = dayjs()
              .add(15, "day")
              .format("YYYY-MM-DD HH:mm:ss");

            const refreshTokenExp = dayjs()
              .add(30, "day")
              .format("YYYY-MM-DD HH:mm:ss");

            let query2 = sqlString.format(
              `INSERT INTO Token (userId, tokenType, token, expiresAt) VALUES (?, ?, ?, ?), (?, ?, ?, ?);`,
              [
                user.userId,
                "ACCESS",
                accessToken,
                accessTokenExp,
                user.userId,
                "REFRESH",
                refreshToken,
                refreshTokenExp,
              ]
            );

            conn.query(query2, (err, result) => {
              if (err) {
                return res.json({
                  success: false,
                  error: err,
                  message: "Error inserting token into the database",
                });
              }

              return res.json({
                success: true,
                message: "OTP verified successfully",
                accessToken,
                refreshToken,
                accessTokenExp,
                refreshTokenExp,
              });
            });
          });
        });
      } else {
        return res.json({
          success: false,
          message: "Invalid OTP",
        });
      }
    });
  }

  static async resendOtp(req, res) {
    let email = req.body.email;

    const transporter = nodemailer.createTransport({
      host: "smtp.hostinger.com",
      port: 465,
      secure: true,
      auth: {
        user: "support@weemax.in",
        pass: "@8ifxtfVuxq-sb4g",
      },
    });

    if (email) {
      const digits = "0123456789";
      let OTP = "";

      for (let i = 0; i < 6; i++) {
        OTP += digits[Math.floor(Math.random() * 10)];
      }

      let otpObj = {
        to: email,
        type: "email",
        code: OTP,
        expAt: dayjs().add(10, "minutes").format("YYYY-MM-DD HH:mm:ss"),
      };

      let query = sqlString.format("INSERT INTO Otp SET ?", [otpObj]);

      conn.query(query, (err, result) => {
        if (err) {
          return res.json({
            success: false,
            message: "Something went wrong",
            err,
          });
        }
        const mailOptions = {
          from: "support@weemax.in", // sender address
          to: email, // list of receivers
          subject: "OTP Verification", // subject line
          text: `
          Hey, 
          
            Welcome to WEEMAX - where Fashion & Dream comes true! 🎉
            
            Thank you for joining our fashion family. To ensure the security of your account, please use the following OTP (One-Time Password) to complete your verification:
            
            OTP: ${OTP}
            
            Enter the OTP within 10 minutes on our website to get started ! 
            
            We're thrilled to have you on board, and we can't wait for you to explore our collection of trendy clothing & loyalty programs.
            
            Enjoy your fashion journey with us! ❤
            `, // plaintext body
        };

        transporter.sendMail(mailOptions, function (error, info) {
          if (error) {
            console.log(error);
          } else {
            console.log("Email sent: " + info.response);
          }
        });

        return res.json({
          success: true,
          message: "OTP sent successfully",
        });
      });
    }
  }

  static async forgotPassword(req, res) {
    let email = req.body.email;

    let query = sqlString.format(
      "SELECT COUNT(*) AS count FROM User WHERE userEmail = ?",
      [email]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
          err,
        });
      }

      if (result[0].count == 0) {
        return res.json({
          success: false,
          message: "User not found",
        });
      }

      let key = crypto.randomBytes(32).toString("hex") + uuid;

      let insertObj = {
        account: email,
        type: "email",
        token: key,
        expAt: dayjs().add(10, "minutes").format("YYYY-MM-DD HH:mm:ss"),
      };

      let link = `https://www.weemax.in/reset-password?token=${key}`;

      const transporter = nodemailer.createTransport({
        host: "smtp.hostinger.com",
        port: 465,
        secure: true,
        auth: {
          user: "support@weemax.in",
          pass: "@8ifxtfVuxq-sb4g",
        },
      });

      let query = sqlString.format("INSERT INTO ForgotPasswordToken SET ?", [
        insertObj,
      ]);

      conn.query(query, (err, result) => {
        if (err) {
          return res.json({
            success: false,
            message: "Something went wrong",
            err,
          });
        }
        const mailOptions = {
          from: "support@weemax.in", // sender address
          to: email, // list of receivers
          subject: "Weemax Password Reset", // subject line
          text: `Click here to reset: ${link}`, // plaintext body
        };

        transporter.sendMail(mailOptions, function (error, info) {
          if (error) {
            console.log(error);
          } else {
            console.log("Email sent: " + info.response);
          }
        });

        return res.json({
          success: true,
          message: "Reset Link Sent to your email",
        });
      });
    });
  }

  static async resetPassword(req, res) {
    let token = req.body.token;

    if (!token) {
      return res.json({
        success: false,
        message: "Invalid token",
      });
    }

    let query = sqlString.format(
      "SELECT * FROM ForgotPasswordToken WHERE token = ? LIMIT 1",
      [token]
    );

    conn.query(query, async (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
          err,
        });
      }

      if (result.length == 0) {
        return res.json({
          success: false,
          message: "Invalid token",
        });
      }

      let tokenObj = result[0];

      if (tokenObj.status == "used") {
        return res.json({
          success: false,
          message: "Token already used",
        });
      }

      if (tokenObj.status == "expired") {
        return res.json({
          success: false,
          message: "Token expired",
        });
      }

      var expAt = new Date(tokenObj.expAt);
      var expAtSeconds = expAt.getTime() / 1000;
      var currentDate = new Date();
      var currentDateSeconds = currentDate.getTime() / 1000;

      if (currentDateSeconds > expAtSeconds) {
        let query = sqlString.format(
          "UPDATE ForgotPasswordToken SET status = 'expired' WHERE token = ?",
          [token]
        );

        conn.query(query, (err, result) => {
          if (err) {
            return res.json({
              success: false,
              message: "Something went wrong",
              err,
            });
          }

          return res.json({
            success: false,
            message: "Token expired",
          });
        });
      }

      let password = req.body.password;

      let salt = await bcrypt.genSalt(12);

      if (tokenObj.type == "email") {
        var query = sqlString.format(
          "UPDATE User SET userPass = ? WHERE userEmail = ?",
          [await bcrypt.hash(password, salt), tokenObj.account]
        );
      }

      conn.query(query, (err, result) => {
        if (err) {
          return res.json({
            success: false,
            message: "Something went wrong",
            err,
          });
        }

        if (result.affectedRows == 1) {
          let query = sqlString.format(
            "UPDATE ForgotPasswordToken SET status = 'used' WHERE token = ?",
            [token]
          );

          conn.query(query, (err, result) => {
            if (err) {
              return res.json({
                success: false,
                message: "Something went wrong",
                err,
              });
            }

            return res.json({
              success: true,
              message: "Password updated successfully",
            });
          });
        }
      });
    });
  }
}
