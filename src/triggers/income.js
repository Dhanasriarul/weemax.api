import cron from "node-cron";
import conn from "../../config/db.js";
import sqlString from "sqlstring";
import dayjs from "dayjs";

async function incomeTrigger() {
  try {
    const currentDate = dayjs().format("YYYY-MM-DD");
    let query = sqlString.format(
      `SELECT * FROM RewardWallet WHERE status='pending' AND moveDate <= '${currentDate}'`
    );

    const result = await new Promise((resolve, reject) => {
      conn.query(query, (err, result) => {
        if (err) {
          reject(err);
        }
        resolve(result);
      });
    });

    if (result.length > 0) {
      let pendingResults = result;
      let logData = {
        totalAmount: 0,
        userCount: 0,
        date: dayjs().format("YYYY-MM-DD"),
        time: dayjs().format("HH:mm:ss"),
      };

      for (const item of pendingResults) {
        let addTransactionObj = {
          userId: item.userId,
          wallet: item.moveTo,
          amount: item.amount,
          source: "rewardWallet",
          method: "deposit",
        };

        let updateQuery = sqlString.format(
          `UPDATE RewardWallet SET status='credited' WHERE id=${item.id}; `
        );
        let insertQuery = sqlString.format(
          `INSERT INTO WalletTransaction SET ?`,
          [addTransactionObj]
        );

        await Promise.all([
          new Promise((resolve, reject) => {
            conn.query(updateQuery, (err, result) => {
              resolve();
            });
          }),
          new Promise((resolve, reject) => {
            conn.query(insertQuery, (err, result) => {
              logData.totalAmount += item.amount;
              logData.userCount++;

              resolve();
            });
          }),
        ]);
      }

      let logInsert = sqlString.format(`INSERT INTO RewardTransferLog SET ?`, [
        logData,
      ]);

      await new Promise((resolve, reject) => {
        conn.query(logInsert, (err, result) => {
          resolve();
        });
      });
    }
  } catch (err) {
    console.log(err);
  }
}

export const trigger = cron.schedule("*/10 * * * * *", incomeTrigger);
