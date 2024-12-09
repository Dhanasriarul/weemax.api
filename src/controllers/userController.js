import sqlString from "sqlstring";
import conn from "../../config/db.js";

export class UserController {
  static getCashbackWallet(req, res) {
    let userId = req.user.userId;

    let query =
      sqlString.format(
        `SELECT SUM(amount) AS totalCashbackDeposit FROM WalletTransaction WHERE userId = ? AND wallet='cashback' AND method = 'deposit'; `,
        [userId]
      ) +
      sqlString.format(
        `SELECT SUM(amount) AS totalCashbackWithdraw FROM WalletTransaction WHERE userId = ? AND wallet='cashback' AND method = 'withdraw';`,
        [userId]
      ) +
      sqlString.format(
        `SELECT * FROM RewardWallet WHERE userId = ? AND amount > 0 AND moveTo = 'cashback' AND mode = 'cashback' ORDER BY status DESC;`,
        [userId]
      ) +
      sqlString.format(
        `SELECT SUM(amount) AS pendingDeposit FROM RewardWallet WHERE userId = ? AND amount > 0 AND moveTo = 'cashback' AND mode = 'cashback' AND status='pending';`,
        [userId]
      );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let cashbackWallet = {
        totalDeposit: Number(result[0][0].totalCashbackDeposit),
        totalWithdraw: Number(result[1][0].totalCashbackWithdraw),
        balance:
          Number(result[0][0].totalCashbackDeposit) -
          Number(result[1][0].totalCashbackWithdraw),
      };

      let pendingDeposits = result[2];
      let pendingDepositAmount = Number(result[3][0].pendingDeposit);

      return res.json({
        success: true,
        cashbackWallet,
        pendingDeposits,
        pendingDepositAmount,
      });
    });
  }

  static getReferralWallet(req, res) {
    let userId = req.user.userId;

    let query =
      sqlString.format(
        `SELECT SUM(amount) AS totalReferralDeposit FROM WalletTransaction WHERE userId = ? AND wallet='referral' AND method = 'deposit'; `,
        [userId]
      ) +
      sqlString.format(
        `SELECT SUM(amount) AS totalReferralWithdraw FROM WalletTransaction WHERE userId = ? AND wallet='referral' AND method = 'withdraw';`,
        [userId]
      ) +
      sqlString.format(
        `SELECT * FROM RewardWallet WHERE userId = ? AND amount > 0 AND moveTo = 'referral' AND mode = 'referral' ORDER BY status DESC;`,
        [userId]
      ) +
      sqlString.format(
        `SELECT SUM(amount) AS pendingDeposit FROM RewardWallet WHERE userId = ? AND amount > 0 AND moveTo = 'referral' AND mode = 'referral' AND status='pending';`,
        [userId]
      );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let referralWallet = {
        totalDeposit: Number(result[0][0].totalReferralDeposit),
        totalWithdraw: Number(result[1][0].totalReferralWithdraw),
        balance:
          Number(result[0][0].totalReferralDeposit) -
          Number(result[1][0].totalReferralWithdraw),
      };

      let pendingDeposits = result[2];
      let pendingDepositAmount = Number(result[3][0].pendingDeposit);

      return res.json({
        success: true,
        referralWallet,
        pendingDeposits,
        pendingDepositAmount,
      });
    });
  }

  static contactMessage(req, res) {
    let message = req.body;

    let query = sqlString.format(`INSERT INTO ContactMessage SET ?`, [message]);

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      if (result.affectedRows == 0) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      return res.json({
        success: true,
        message: "Message sent successfully",
      });
    });
  }
  static referal(req, res) {
    let action = req.query.action;
    let referralCode = req.query.shareId;

    if (!action) {
      return res.json({
        success: false,
        message: "Please provide action",
      });
    }

    if (action == "validate") {
      let query = sqlString.format(
        `SELECT COUNT(*) AS referralCount FROM User WHERE referralCode = ?`,
        [referralCode]
      );

      conn.query(query, (err, result) => {
        if (err) {
          return res.json({
            success: false,
            message: "Something went wrong",
          });
        }

        console.log(result);

        let referralCount = result[0].referralCount;

        if (referralCount <= 0) {
          return res.json({
            success: false,
            message: "Invalid referral code",
          });
        }

        return res.json({
          success: true,
          message: "Valid referral code",
        });
      });
    }
  }

  static profile(req, res) {
    const user = req.user;

    let query = sqlString.format(
      `SELECT userId, userName, userEmail, mobile, referralCode, dob,
      (SELECT SUM(amount) FROM WalletTransaction WHERE userId = User.userId AND method='deposit' AND wallet='cashback') AS totalDeposit,
      (SELECT SUM(amount) FROM WalletTransaction WHERE userId = User.userId AND method='withdraw' AND wallet='cashback') AS totalWithdraw,
      (SELECT referralCode FROM CareerRequest WHERE status='approved' AND userId = User.userId) AS careerCode
       FROM User WHERE userId = ? `,
      [user.userId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Error fetching user data from the database",
        });
      }

      let user = result[0];

      if (!user.totalDeposit) {
        user.totalDeposit = 0;
      } else {
        user.totalDeposit = Number(user.totalDeposit);
      }

      if (!user.careerCode) {
        user.isCareerApproved = false;
        delete user.careerCode;
      } else {
        user.isCareerApproved = true;
        user.careerReferralCode = user.careerCode;
      }

      if (!user.totalWithdraw) {
        user.totalWithdraw = 0;
      } else {
        user.totalWithdraw = Number(user.totalWithdraw);
      }

      user.totalBalance = user.totalDeposit - user.totalWithdraw;

      return res.json({
        success: true,
        user,
      });
    });
  }

  static editProfile(req, res) {
    let editUser = req.body;

    let query = sqlString.format("UPDATE User SET ? WHERE userId = ?", [
      editUser,
      req.user.userId,
    ]);

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      if (result.affectedRows == 0) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      return res.json({
        success: true,
        message: "User profile updated",
      });
    });
  }

  static getAllAddresses(req, res) {
    let userId = req.user.userId;

    let query = sqlString.format(
      `SELECT * FROM Address WHERE userId = ? AND status = 'active'`,
      [userId]
    );

    conn.query(query, (err, results) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let address = results;

      return res.json({
        success: true,
        addresses: results,
      });
    });
  }

  static addAddress(req, res) {
    let userId = req.user.userId;
    let {
      name,
      addressLineOne,
      addressLineTwo,
      city,
      state,
      zipCode,
      phone,
      isTn,
    } = req.body;

    let addAddress = {
      userId,
      name,
      addressLineOne,
      addressLineTwo,
      city,
      state,
      zipCode,
      phone,
      isTn,
    };

    let query = sqlString.format(`INSERT INTO Address SET ?`, [addAddress]);

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Failed to add address",
        });
      }

      if (result.affectedRows > 0) {
        return res.json({
          success: true,
          message: "Address added successfully",
        });
      } else {
        return res.json({
          success: false,
          message: "Failed to add address",
        });
      }
    });
  }

  static editAddress(req, res) {
    let userId = req.user.userId;
    let {
      addressId,
      name,
      addressLineOne,
      addressLineTwo,
      phone,
      city,
      state,
      zipCode,
      isTn,
    } = req.body;

    let updateAddress = {
      name,
      addressLineOne,
      addressLineTwo,
      phone,
      city,
      state,
      zipCode,
      isTn,
    };

    if (updateAddress.isTn == true) {
      updateAddress.isTn = 1;
    } else {
      updateAddress.isTn = 0;
    }

    let query = sqlString.format(
      `UPDATE Address SET ? WHERE userId = ? AND addressId = ?`,
      [updateAddress, userId, addressId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Failed to update address",
        });
      }

      if (result.affectedRows > 0) {
        return res.json({
          success: true,
          message: "Address updated successfully",
        });
      } else {
        return res.json({
          success: false,
          message: "Failed to update address",
        });
      }
    });
  }

  static removeAddress(req, res) {
    let addressId = req.query.addressId;
    let userId = req.user.userId;

    if (!addressId) {
      return res.json({
        success: false,
        message: "Address Id is missing",
      });
    }

    let query = sqlString.format(
      `SELECT COUNT(*) AS addressCount FROM Address WHERE userId = ? AND addressId = ?`,
      [userId, addressId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let addressCount = result[0].addressCount;

      if (addressCount <= 0) {
        return res.json({
          success: false,
          message: "No address found with this id",
        });
      }

      let updateQuery = sqlString.format(
        `UPDATE Address SET status='removed' WHERE userId = ? AND addressId = ?`,
        [userId, addressId]
      );

      conn.query(updateQuery, (updateErr, updateResult) => {
        if (updateErr) {
          return res.json({
            success: false,
            message: "Something went wrong",
          });
        }

        if (updateResult.affectedRows > 0) {
          return res.json({
            success: true,
            message: "Successfully removed address",
          });
        } else {
          return res.json({
            success: false,
            message: "No address found with this id",
          });
        }
      });
    });
  }

  static getAllPaymentMethods(req, res) {
    let userId = req.user.userId;

    let query = sqlString.format(
      `SELECT * FROM PaymentMethod WHERE userId = ? AND status = 'active'`,
      [userId]
    );

    conn.query(query, (err, results) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      return res.json({
        success: true,
        paymentMethods: results,
      });
    });
  }

  static addPaymentMethod(req, res) {
    let userId = req.user.userId;
    let { paymentType, details } = req.body;

    let addPaymentMethod = {
      userId,
      paymentType,
      details: JSON.stringify(details),
    };

    let checkQuery = sqlString.format(
      `SELECT COUNT(*) AS paymentMethodCount FROM PaymentMethod WHERE userId = ? AND paymentType = ? AND status='active' AND details = ?`,
      [userId, paymentType, JSON.stringify(details)]
    );

    conn.query(checkQuery, (checkErr, checkResult) => {
      if (checkErr) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      if (checkResult[0].paymentMethodCount > 0) {
        return res.json({
          success: false,
          message: "This payment method is already added",
        });
      }

      let query = sqlString.format(`INSERT INTO PaymentMethod SET ?`, [
        addPaymentMethod,
      ]);

      conn.query(query, (err) => {
        if (err) {
          return res.json({
            success: false,
            message: "Failed to add payment method",
          });
        }

        return res.json({
          success: true,
          message: "Payment method added successfully",
        });
      });
    });
  }

  static editPaymentMethod(req, res) {
    let userId = req.user.userId;
    let { paymentMethodId, details } = req.body;

    let query = sqlString.format(
      `UPDATE PaymentMethod SET details= ? WHERE id = ? AND status='active' AND userId = ?`,
      [JSON.stringify(details), paymentMethodId, userId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Failed to update payment method",
        });
      }

      if (result.affectedRows === 0) {
        return res.json({
          success: false,
          message: "Payment method not found",
        });
      }

      return res.json({
        success: true,
        message: "Payment method updated successfully",
      });
    });
  }

  static removePaymentMethod(req, res) {
    let userId = req.user.userId;
    let { paymentMethodId } = req.query;

    if (!paymentMethodId) {
      return res.json({
        success: false,
        message: "Please provide Payment method ID",
      });
    }

    let query = sqlString.format(
      `UPDATE PaymentMethod SET status='removed' WHERE id = ? AND status='active' AND userId = ?`,
      [paymentMethodId, userId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Failed to update payment method",
        });
      }

      if (result.affectedRows === 0) {
        return res.json({
          success: false,
          message: "Payment method not found",
        });
      }

      return res.json({
        success: true,
        message: "Payment method removed successfully",
      });
    });
  }

  static async getReferrals(req, res) {
    try {
      const userId = req.user.userId;

      let query = sqlString.format(
        `SELECT *, 
        (SELECT userName FROM User WHERE userId = Referral.userId) AS name,
        (SELECT SUM(amount) FROM RewardWallet WHERE buyerId = Referral.userId AND userId = Referral.parentId) AS earned FROM Referral WHERE parentId = ${userId}`
      );

      conn.query(query, (err, result) => {
        if (err) {
          console.log(err);
          return res.json({
            success: false,
            message: "Something went wrong",
          });
        }

        const referrals = result.map((item) => {
          item.earned = item.earned ? Number(item.earned) : 0;
          return item;
        });

        // Sort the referrals array in descending order based on the earned value
        referrals.sort((a, b) => b.earned - a.earned);

        return res.json({
          success: true,
          referrals,
        });
      });
    } catch (error) {
      return res.json({
        success: false,
        message: "An error occurred",
        error,
      });
    }
  }

  static getRewardWallet(req, res) {
    let user = req.user;

    let query =
      sqlString.format(
        "SELECT * FROM RewardWallet WHERE userId = ? ORDER BY DATE(moveDate) ASC;",
        [user.userId]
      ) +
      sqlString.format(
        "SELECT SUM(amount) AS personalPending FROM RewardWallet WHERE status = 'pending' AND moveTo = 'referral' AND userId = ?;",
        [user.userId]
      ) +
      sqlString.format(
        "SELECT SUM(amount) AS refundPending FROM RewardWallet WHERE status = 'pending' AND moveTo = 'cashback' AND userId = ?;",
        [user.userId]
      );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "An error occurred",
        });
      }

      let rewardWallet = result[0];
      let personalPending = result[1][0].personalPending;
      let refundPending = result[2][0].refundPending;

      return res.json({
        success: true,
        rewardWallet,
        personalPending: Number(personalPending),
        refundPending: Number(refundPending),
        totalPending: Number(personalPending) + Number(refundPending),
      });
    });
  }

  static addTransaction(req, res) {
    let user = req.user;
    let transaction = req.body;
    let type = req.query.type;

    if (type == "add") {
      let addTransactionObj = {
        userId: user.userId,
        ...transaction,
      };

      let query = sqlString.format(`INSERT INTO WalletTransaction SET ?;`, [
        addTransactionObj,
      ]);

      conn.query(query, (err) => {
        if (err) {
          return res.json({
            success: false,
            message: "Failed to add transaction",
          });
        }

        return res.json({
          success: true,
          message: "Transaction added successfully",
        });
      });
    } else if (type == "transfer") {
      let addTransactionObj = {
        userId: user.userId,
        ...transaction.add,
      };
      let minusTransactionObj = {
        userId: user.userId,
        ...transaction.minus,
      };

      let query =
        sqlString.format(`INSERT INTO WalletTransaction SET ?;`, [
          minusTransactionObj,
        ]) +
        sqlString.format(`INSERT INTO WalletTransaction SET ?;`, [
          addTransactionObj,
        ]);

      conn.query(query, (err) => {
        if (err) {
          return res.json({
            success: false,
            message: "Failed to transfer",
          });
        }

        return res.json({
          success: true,
          message: "Transfer successfully",
        });
      });
    } else if (type == "withdraw") {
      let minusTransactionObj = {
        userId: user.userId,
        ...transaction.minus,
      };

      let withdrawDetails = {
        userId: user.userId,
        amount: Math.round(
          minusTransactionObj.amount - minusTransactionObj.amount * 0.1
        ),
        details: JSON.stringify(transaction.details),
        status: "requested",
      };

      let query =
        sqlString.format(`INSERT INTO WalletTransaction SET ?;`, [
          minusTransactionObj,
        ]) + sqlString.format(`INSERT INTO Withdraw SET ?;`, [withdrawDetails]);

      conn.query(query, (err) => {
        if (err) {
          return res.json({
            success: false,
            message: "Failed to withdraw",
          });
        }

        return res.json({
          success: true,
          message: "Withdraw requested successfully",
        });
      });
    } else {
      return res.json({
        success: false,
        message: "Specify Type",
      });
    }
  }

  static getPersonalWallet(req, res) {
    let user = req.user;

    let query =
      sqlString.format(
        "SELECT SUM(amount) AS deposit FROM WalletTransaction WHERE userId = ? AND method='deposit' AND wallet='cashback';",
        [user.userId]
      ) +
      sqlString.format(
        "SELECT SUM(amount) AS withdraw FROM WalletTransaction WHERE userId = ? AND method='withdraw' AND wallet='cashback'",
        [user.userId]
      );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "An error occurred",
        });
      }

      let totalDeposit = Number(result[0][0].deposit) || 0;
      let totalWithdraw = Number(result[1][0].withdraw) || 0;
      let total = totalDeposit - totalWithdraw;

      return res.json({
        success: true,
        totalDeposit,
        totalWithdraw,
        balance: total,
      });
    });
  }

  static getIncomeWallet(req, res) {
    let user = req.user;

    let query =
      sqlString.format(
        "SELECT SUM(amount) AS deposit FROM WalletTransaction WHERE userId = ? AND method='deposit' AND wallet='referral';",
        [user.userId]
      ) +
      sqlString.format(
        "SELECT SUM(amount) AS withdraw FROM WalletTransaction WHERE userId = ? AND method='withdraw' AND wallet='referral'",
        [user.userId]
      );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "An error occurred",
        });
      }

      let totalDeposit = Number(result[0][0].deposit) || 0;
      let totalWithdraw = Number(result[1][0].withdraw) || 0;
      let total = totalDeposit - totalWithdraw;

      return res.json({
        success: true,
        totalDeposit,
        totalWithdraw,
        balance: total,
      });
    });
  }

  static getTotalEarnings(req, res) {
    let user = req.user;

    let query =
      sqlString.format(
        "SELECT SUM(amount) AS totalReferralEarnings FROM RewardWallet WHERE userId = ? AND status='credited' AND buyerId IN (SELECT userId FROM Referral WHERE parentId = ?);",
        [user.userId, user.userId]
      ) + sqlString.format("");

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "An error occurred",
        });
      }

      let totalEarnings = Number(result[0].totalReferralEarnings) || 0;

      return res.json({
        success: true,
        totalEarnings,
      });
    });
  }

  static getKycStatus(req, res) {
    let user = req.user;

    let query = sqlString.format(
      "SELECT * FROM Kyc WHERE userId = ? ORDER BY kycId DESC LIMIT 1",
      [user.userId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "An error occurred",
        });
      }

      if (result.length === 0) {
        return res.json({
          success: false,
          message: "No Kyc Found",
        });
      }

      let kyc = result[0];

      if (kyc.status != "approved") {
        return res.json({
          success: false,
          status: kyc.status,
          message: "Kyc Not Approved",
          details: kyc,
        });
      }

      return res.json({
        success: true,
        kyc,
      });
    });
  }

  static applyKyc(req, res) {
    let userId = req.user.userId;
    let kyc = req.body;
    kyc.userId = userId;
    let query = sqlString.format(`INSERT INTO Kyc SET ?`, [kyc]);

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      if (result.affectedRows == 0) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      return res.json({
        success: true,
        message: "Kyc Applied Successfully",
      });
    });
  }

  static getWalletTransactions(req, res) {
    let userId = req.user.userId;

    let query = sqlString.format(
      `SELECT * FROM WalletTransaction WHERE userId = ?`,
      [userId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      return res.json({
        success: true,
        transactions: result,
      });
    });
  }

  static topEarners(req, res) {
    let query = sqlString.format(
      `SELECT SUM(amount) AS sum, userId, (SELECT userName FROM User WHERE userId = RewardWallet.userId) AS userName FROM RewardWallet GROUP BY userId ORDER BY sum DESC LIMIT 10;`
    );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      return res.json({
        success: true,
        topEarners: result,
      });
    });
  }
}

// Promisified database query function
function queryDatabase(query) {
  return new Promise((resolve, reject) => {
    conn.query(query, (err, result) => {
      if (err) {
        return reject(err);
      }
      resolve(result);
    });
  });
}

async function getUserChildren(
  userId,
  level,
  children,
  logginUserId,
  filterDates
) {
  if (level > 11) {
    // If all levels have been processed, return
    return;
  }

  const query = sqlString.format(
    `SELECT *, 
    (SELECT userName FROM User WHERE userId = Referral.userId) AS name,
    (SELECT SUM(amount) FROM RewardWallet
      WHERE buyerId = Referral.userId AND userId = ? ${
        filterDates.earnedFilterFrom && filterDates.earnedFilterTo
          ? ` AND moveDate BETWEEN DATE(${filterDates.earnedFilterFrom}) AND DATE(${filterDates.earnedFilterTo})`
          : ``
      }) AS earned
    FROM Referral WHERE parentId = ? AND userId IN (SELECT userId FROM User WHERE isVerified = 1)`,
    [logginUserId, userId]
  );
  const result = await queryDatabase(query);

  if (result.length === 0) {
    // If no children found, return
    // return;
  }

  for (const row of result) {
    if (row.earned === null) {
      row.earned = 0;
    } else {
      row.earned = Number(row.earned);
    }
    children[`level${level}`].push(row);
  }

  const childIds = result.map((row) => row.userId);

  for (const childId of childIds) {
    await getUserChildren(
      childId,
      level + 1,
      children,
      logginUserId,
      filterDates
    );
  }
}
