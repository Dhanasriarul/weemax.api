import express from "express";
import dayjs from "dayjs";
import sqlString from "sqlstring";
import conn from "../../config/db.js";

import auth from "./authRoutes.js";
import user from "./userRoutes.js";
import product from "./productRoutes.js";
import page from "./pageRoutes.js";
import productCheckout from "./checkoutRoutes.js";
import payment from "./paymentRoutes.js";
import career from "./careerRoutes.js";
import { ProductController } from "../controllers/productController.js";

const router = express.Router();
router.get("/selectedproduct", ProductController.getSelectedProducts);

router.post("/transfer-income", async (req, res) => {
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
          wallet: item.mode,
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

      return res.json({
        success: true,
        message: "Pending income transferred successfully",
      });
    } else {
      return res.json({
        success: true,
        message: "No due income to transfer",
      });
    }
  } catch (err) {
    return res.json({
      success: false,
      message: "Something went wrong",
      error: err.message,
    });
  }
});

router.use("/auth", auth);
router.use("/user", user);
router.use("/product", product);
router.use("/page", page);
router.use("/checkout", productCheckout);
router.use("/payment", payment);
router.use("/career", career);

export { router };
