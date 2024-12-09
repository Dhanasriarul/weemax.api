import nodemailer from "nodemailer";

const transporter = nodemailer.createTransport({
  host: "smtp.hostinger.com",
  port: 465,
  secure: true, // true for 465, false for other ports
  auth: {
    user: "support@weemax.in", // your email address
    pass: "@8ifxtfVuxq-sb4g", // your email password
  },
});

const mailOptions = {
  from: "support@weemax.in", // sender address
  to: "yyugi64@gmail.com", // list of receivers
  subject: "Test Email", // subject line
  text: "This is a test email.", // plaintext body
};

transporter.sendMail(mailOptions, function (error, info) {
  if (error) {
    console.log(error);
  } else {
    console.log("Email sent: " + info.response);
  }
});
