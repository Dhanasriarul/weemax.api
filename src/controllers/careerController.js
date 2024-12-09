import sqlString from "sqlstring";
import dayjs from "dayjs";
import conn from "../../config/db.js";

export class CareerController {
  static clickCareer(req, res) {
    let code = req.body.code;

    let insertObj = {
      code,
      time: dayjs().format("HH:mm:ss"),
      date: dayjs().format("YYYY-MM-DD"),
    };

    let query = sqlString.format(`INSERT INTO CareerVisits SET ?`, [insertObj]);

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Error while clicking career",
        });
      }

      return res.json({
        success: true,
        message: "Successfully clicked career",
      });
    });
  }

  static getCareerStatus(req, res) {
    let userId = req.user.userId;

    let query = sqlString.format(
      `SELECT * FROM CareerRequest WHERE userId = ?`,
      [userId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Error while fetching career status",
        });
      }

      if (result.length == 0) {
        return res.json({
          success: true,
          message: "You have not applied for any career",
          action: "not-applied",
        });
      }

      if (result[0].status == "pending") {
        return res.json({
          success: true,
          message: "Your career request is pending",
          action: "pending",
        });
      }

      if (result[0].status == "rejected") {
        return res.json({
          success: true,
          message: "Your career request is rejected",
          action: "rejected",
        });
      }

      if (result[0].status == "banned") {
        return res.json({
          success: true,
          message: "You are banned from applying for career",
          action: "banned",
        });
      }

      if (result[0].status == "approved") {
        return res.json({
          success: true,
          message: "You are approved for career",
          action: "approved",
        });
      }
    });
  }

  static checkCodeAvailability(req, res) {
    let userId = req.user.userId;
    let code = req.query.code;

    let query = sqlString.format(
      `SELECT COUNT(*) AS codeCount FROM CareerRequest WHERE referralCode = ?`,
      [code, userId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Error while checking code availability",
        });
      }

      if (result[0].codeCount == 0) {
        return res.json({
          success: true,
          message: "Code available",
        });
      } else {
        return res.json({
          success: false,
          message: "Code not available",
        });
      }
    });
  }

  static applyForCareer(req, res) {
    let userId = req.user.userId;
    let applicationData = req.body;

    applicationData.userId = userId;

    let query = sqlString.format(`INSERT INTO CareerRequest SET ?`, [
      applicationData,
    ]);

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Error while applying for career",
        });
      }

      return res.json({
        success: true,
        message: "Successfully applied for career",
      });
    });
  }

  static getCareerOverview(req, res) {
    let userId = req.user.userId;

    let query =
      sqlString.format(
        `SELECT referralCode FROM CareerRequest WHERE userId = ?;`,
        [userId]
      ) +
      sqlString.format(`SELECT userName FROM User WHERE userId = ?;`, [
        userId,
      ]) +
      sqlString.format(
        `SELECT SUM(amount) AS careerBalanceDeposit FROM WalletTransaction WHERE method = 'deposit' AND wallet = 'career' AND userId = ?;`,
        [userId]
      ) +
      sqlString.format(
        `SELECT SUM(amount) AS careerBalanceWithdraw FROM WalletTransaction WHERE method = 'withdraw' AND wallet = 'career' AND userId = ?;`,
        [userId]
      ) +
      sqlString.format(
        `SELECT * FROM RewardWallet WHERE userId = ? AND moveTo='career' AND status='pending';`,
        [userId]
      );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Error while fetching career overview",
        });
      }

      let referralCode = result[0][0].referralCode;
      let userName = result[1][0].userName;
      let careerBalanceDeposit = Number(result[2][0].careerBalanceDeposit) || 0;
      let careerBalanceWithdraw =
        Number(result[3][0].careerBalanceWithdraw) || 0;

      let careerBalance = careerBalanceDeposit - careerBalanceWithdraw;
      let rewardWallet = result[4];

      return res.json({
        success: true,
        commonData: {
          referralCode,
          userName,
          careerBalance,
          rewardWallet,
        },
      });
    });
  }

  static getCareerClicksAnalytics(req, res) {
    let userId = req.user.userId;
    let dateFilterFrom = req.query.dateFilterFrom;
    let dateFilterTo = req.query.dateFilterTo;

    let dateFilterQuery = "";

    if (dateFilterFrom && dateFilterTo) {
      if (dateFilterFrom == "all" && dateFilterTo == "all") {
        dateFilterQuery = "";
      } else {
        dateFilterQuery = ` AND DATE(date) BETWEEN '${dateFilterFrom}' AND '${dateFilterTo}' `;
      }
    } else {
      dateFilterFrom = dayjs().subtract(7, "day").format("YYYY-MM-DD");
      dateFilterTo = dayjs().format("YYYY-MM-DD");
      dateFilterQuery = `  AND DATE(date) BETWEEN '${dayjs()
        .subtract(7, "day")
        .format("YYYY-MM-DD")}' AND '${dayjs().format("YYYY-MM-DD")}'`;
    }

    let query = sqlString.format(
      `SELECT COUNT(*) AS clickCount, DATE(date) as date FROM CareerVisits WHERE code = (SELECT referralCode FROM CareerRequest WHERE userId = ? AND status = 'approved') ${dateFilterQuery} GROUP BY DATE(date)`,
      [userId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Error while fetching career clicks",
        });
      }

      if (dateFilterFrom == "all" && dateFilterTo == "all") {
        var parsedFromDate = new Date(result[0].date);
        var parsedToDate = new Date(result[result.length - 1].date);
      } else {
        var parsedFromDate = new Date(dateFilterFrom);
        var parsedToDate = new Date(dateFilterTo);
      }

      let datas = result;
      let datesArray = [];

      while (parsedFromDate <= parsedToDate) {
        let formattedDate = dayjs(parsedFromDate).format("YYYY-MM-DD");
        datesArray.push(formattedDate);
        parsedFromDate.setDate(parsedFromDate.getDate() + 1);
      }

      var clicksChart = [];
      var sumNumber = 0;

      datesArray.forEach((date) => {
        let valueObj = datas.find((x) => x.date === date);

        if (valueObj == undefined) {
          clicksChart.push(0);
        } else {
          sumNumber = sumNumber + valueObj.clickCount;
          clicksChart.push(valueObj.clickCount);
        }
      });

      return res.json({
        success: true,
        datesArray,
        clicksChart,
        sumNumber,
      });
    });
  }

  static getPurchasedAnalytics(req, res) {
    let userId = req.user.userId;
    let dateFilterFrom = req.query.dateFilterFrom;
    let dateFilterTo = req.query.dateFilterTo;

    let dateFilterQuery = "";

    if (dateFilterFrom && dateFilterTo) {
      if (dateFilterFrom == "all" && dateFilterTo == "all") {
        dateFilterQuery = "";
      } else {
        dateFilterQuery = ` AND DATE(createdAt) BETWEEN '${dateFilterFrom}' AND '${dateFilterTo}' `;
      }
    } else {
      dateFilterFrom = dayjs().subtract(7, "day").format("YYYY-MM-DD");
      dateFilterTo = dayjs().format("YYYY-MM-DD");
      dateFilterQuery = ` AND DATE(createdAt) BETWEEN '${dayjs()
        .subtract(7, "day")
        .format("YYYY-MM-DD")}' AND '${dayjs().format("YYYY-MM-DD")}'`;
    }

    let query = sqlString.format(
      `SELECT COUNT(*) AS purchasedCount, DATE(createdAt) as date FROM RewardWallet WHERE userId = ? AND amount > 0 AND moveTo = 'career' ${dateFilterQuery} GROUP BY DATE(createdAt)`,
      [userId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Error while fetching career clicks",
        });
      }

      if (dateFilterFrom == "all" && dateFilterTo == "all") {
        var parsedFromDate = new Date(result[0].date);
        var parsedToDate = new Date(result[result.length - 1].date);
      } else {
        var parsedFromDate = new Date(dateFilterFrom);
        var parsedToDate = new Date(dateFilterTo);
      }

      let datas = result;
      let datesArray = [];

      while (parsedFromDate <= parsedToDate) {
        let formattedDate = dayjs(parsedFromDate).format("YYYY-MM-DD");
        datesArray.push(formattedDate);
        parsedFromDate.setDate(parsedFromDate.getDate() + 1);
      }

      var purchasedAnalytics = [];
      var sumNumber = 0;

      datesArray.forEach((date) => {
        let valueObj = datas.find((x) => x.date === date);

        if (valueObj == undefined) {
          purchasedAnalytics.push(0);
        } else {
          sumNumber = sumNumber + valueObj.purchasedCount;
          purchasedAnalytics.push(valueObj.purchasedCount);
        }
      });

      return res.json({
        success: true,
        datesArray,
        purchasedAnalytics,
        sumNumber,
      });
    });
  }

  static getProfitsAnalytics(req, res) {
    let userId = req.user.userId;
    let dateFilterFrom = req.query.dateFilterFrom;
    let dateFilterTo = req.query.dateFilterTo;

    let dateFilterQuery = "";

    if (dateFilterFrom && dateFilterTo) {
      if (dateFilterFrom == "all" && dateFilterTo == "all") {
        dateFilterQuery = "";
      } else {
        dateFilterQuery = ` AND DATE(createdAt) BETWEEN '${dateFilterFrom}' AND '${dateFilterTo}' `;
      }
    } else {
      dateFilterFrom = dayjs().subtract(7, "day").format("YYYY-MM-DD");
      dateFilterTo = dayjs().format("YYYY-MM-DD");
      dateFilterQuery = ` AND DATE(createdAt) BETWEEN '${dayjs()
        .subtract(7, "day")
        .format("YYYY-MM-DD")}' AND '${dayjs().format("YYYY-MM-DD")}'`;
    }

    let query = sqlString.format(
      `SELECT SUM(amount) AS profit, (SELECT SUM(productTotal) FROM ProductOrder WHERE createdAt = RewardWallet.createdAt) AS orderValue, DATE(createdAt) as date FROM RewardWallet WHERE userId = ? AND amount > 0 AND moveTo = 'career' ${dateFilterQuery} GROUP BY DATE(createdAt)`,
      [userId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Error while fetching career clicks",
        });
      }

      if (dateFilterFrom == "all" && dateFilterTo == "all") {
        var parsedFromDate = new Date(result[0].date);
        var parsedToDate = new Date(result[result.length - 1].date);
      } else {
        var parsedFromDate = new Date(dateFilterFrom);
        var parsedToDate = new Date(dateFilterTo);
      }

      let datas = result;
      let datesArray = [];

      while (parsedFromDate <= parsedToDate) {
        let formattedDate = dayjs(parsedFromDate).format("YYYY-MM-DD");
        datesArray.push(formattedDate);
        parsedFromDate.setDate(parsedFromDate.getDate() + 1);
      }

      var profitAnalytics = [];
      var orderValueAnalytics = [];
      var sumNumber = 0;

      datesArray.forEach((date) => {
        let valueObj = datas.find((x) => x.date === date);

        if (valueObj == undefined) {
          profitAnalytics.push(0);
          orderValueAnalytics.push(0);
        } else {
          sumNumber = sumNumber + valueObj.profit;
          profitAnalytics.push(valueObj.profit);
          orderValueAnalytics.push(valueObj.orderValue);
        }
      });

      return res.json({
        success: true,
        datesArray,
        profitAnalytics,
        orderValueAnalytics,
        sumNumber,
      });
    });
  }
}
