import sqlString from "sqlstring";
import dayjs from "dayjs";
import conn from "../../config/db.js";

export class CheckoutController {
  static async orderSummary(req, res) {
    let user = req.user;
    let addressId = req.query.addressId;
    let state = req.query.state;

    let query =
      sqlString.format(
        `SELECT *,
        (SELECT assetOne FROM Product WHERE productId = Basket.productId) AS assetOne,
        (SELECT mrpPrice FROM Product WHERE productId = Basket.productId) AS mrpPrice,
        (SELECT normalPrice FROM Product WHERE productId = Basket.productId) AS normalPrice,
        (SELECT gst FROM Product WHERE productId = Basket.productId) AS gst,
        (SELECT quantity FROM ProductInventory WHERE inventoryId = Basket.inventoryId AND status = 'active') AS productQuantity,
        (SELECT size FROM ProductInventory WHERE inventoryId = Basket.inventoryId AND status = 'active') AS size,
        (SELECT color FROM ProductInventory WHERE inventoryId = Basket.inventoryId AND status = 'active') AS color,
        (SELECT productTitle FROM Product WHERE productId = Basket.productId) AS productTitle
        FROM Basket
          WHERE userId = ?
          AND status = 'active'
          AND productId
            IN (SELECT productId FROM Product WHERE status='published'); `,
        [user.userId]
      ) +
      sqlString.format(`SELECT 1 AS one;`) +
      sqlString.format(
        `SELECT * FROM Address WHERE userId = ? AND status = 'active' AND addressId = ${addressId}`,
        [user.userId]
      );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "An error occurred",
          err,
        });
      }

      let products = result[0];
      let sumProducts = 0;
      let shippingCharge = 0;
      let taxes = {
        sgst: 0,
        cgst: 0,
        igst: 0,
      };

      if (products.length == 0) {
        return res.json({
          success: false,
          message: "Basket is empty",
        });
      }

      let address = result[2][0];

      for (let index in products) {
        let product = products[index];

        if (product.quantity > product.productQuantity) {
          product.quantity = 0;
          product.isAvailable = false;
        } else {
          product.isAvailable = true;
        }

        sumProducts += product.quantity * product.normalPrice;

        let tax =
          product.normalPrice * product.quantity -
          Number(
            (product.normalPrice * product.quantity) / (1 + product.gst / 100)
          );

        if (state == "tn") {
          product.sgst = Number((tax / 2).toFixed(2));
          product.cgst = Number((tax / 2).toFixed(2));

          taxes.sgst += tax / 2;
          taxes.cgst += tax / 2;
        } else {
          product.igst = Number(tax.toFixed(2));

          taxes.igst += tax;
        }
      }

      if (sumProducts == 0) {
        shippingCharge = 0;
      } else {
        if (sumProducts > 999) {
          shippingCharge = 0;
        } else {
          shippingCharge = 50;
        }
      }

      taxes.sgst = Number(taxes.sgst.toFixed(2));
      taxes.cgst = Number(taxes.cgst.toFixed(2));
      taxes.igst = Number(taxes.igst.toFixed(2));

      if (state == "tn") {
        delete taxes.igst;
      } else {
        delete taxes.cgst;
        delete taxes.sgst;
      }

      let subTotal = Number((shippingCharge + sumProducts).toFixed(2));

      return res.json({
        success: true,
        products,
        address,
        sumProducts,
        shippingCharge,
        taxes,
        subTotal,
      });
    });
  }

  static placeOrder = async (req, res) => {
    try {
      const user = req.user;
      const addressId = req.query.addressId;
      const state = req.query.state;
      const orderUUID = req.query.orderUUID;
      const cashbackReduction = req.query.cashbackReduction;
      const careerCode = req.query.careerCode;

      const query =
        sqlString.format(
          `SELECT *,
          (SELECT mrpPrice FROM Product WHERE productId = Basket.productId) AS mrpPrice,
          (SELECT normalPrice FROM Product WHERE productId = Basket.productId) AS normalPrice,
          (SELECT referralBonus FROM Product WHERE productId = Basket.productId) AS referralBonus,
          (SELECT refundFrom FROM Product WHERE productId = Basket.productId) AS refundFrom,
          (SELECT refundTo FROM Product WHERE productId = Basket.productId) AS refundTo,
          (SELECT gst FROM Product WHERE productId = Basket.productId) AS gst,
          (SELECT quantity FROM ProductInventory WHERE inventoryId = Basket.inventoryId AND status = 'active') AS productQuantity,
          (SELECT size FROM ProductInventory WHERE inventoryId = Basket.inventoryId AND status = 'active') AS size,
          (SELECT color FROM ProductInventory WHERE inventoryId = Basket.inventoryId AND status = 'active') AS color
          FROM Basket
            WHERE userId = ?
            AND status = 'active'
            AND productId
              IN (SELECT productId FROM Product WHERE status='published'); `,
          [user.userId]
        ) +
        sqlString.format(`SELECT 1 AS one;`) +
        sqlString.format(
          `SELECT * FROM Address WHERE userId = ? AND status = 'active' AND addressId = ${addressId}`,
          [user.userId]
        );

      const result = await new Promise((resolve, reject) => {
        conn.query(query, (err, result) => {
          if (err) {
            reject(err);
          } else {
            resolve(result);
          }
        });
      });

      const products = result[0];
      let sumProducts = 0;
      let shippingCharge = 0;
      const taxes = {
        sgst: 0,
        cgst: 0,
        igst: 0,
      };
      let totalReferralBonus = 0;
      let totalCashback = 0;

      const address = result[2][0];

      if (!address) {
        return res.json({
          message:
            process.env.WEB_HOST +
            "/checkout?status=failed" +
            "&orderId=" +
            orderUUID +
            "&message=Order is failed due to technical error. Please try again later.",
        });
      }

      if (products.length == 0) {
        return res.json({
          message:
            process.env.WEB_HOST +
            "/checkout?status=failed" +
            "&orderId=" +
            orderUUID +
            "&message=Order is failed due to technical error. Please try again later.",
        });
      }

      for (let index in products) {
        let product = products[index];

        if (product.quantity > product.productQuantity) {
          product.quantity = 0;
          product.isAvailable = false;
        } else {
          product.isAvailable = true;

          if (product.referralBonus > 0) {
            totalReferralBonus += product.referralBonus * product.quantity;
          }

          if (product.refundFrom > 0 && product.refundTo) {
            const randomNumber =
              Math.floor(
                Math.random() * (product.refundTo - product.refundFrom + 1)
              ) + product.refundFrom;

            totalCashback += randomNumber * product.quantity;
          }
        }

        sumProducts += product.quantity * product.normalPrice;

        let tax =
          product.normalPrice * product.quantity -
          Number(
            (product.normalPrice * product.quantity) / (1 + product.gst / 100)
          );

        if (state == "tn") {
          product.sgst = Number((tax / 2).toFixed(2));
          product.cgst = Number((tax / 2).toFixed(2));

          taxes.sgst += tax / 2;
          taxes.cgst += tax / 2;
        } else {
          product.igst = Number(tax.toFixed(2));

          taxes.igst += tax;
        }
      }

      if (sumProducts == 0) {
        shippingCharge = 0;
      } else {
        if (sumProducts < 999) {
          shippingCharge = 0;
        } else {
          shippingCharge = 50;
        }
      }

      taxes.sgst = Number(taxes.sgst.toFixed(2));
      taxes.cgst = Number(taxes.cgst.toFixed(2));
      taxes.igst = Number(taxes.igst.toFixed(2));

      if (state == "tn") {
        delete taxes.igst;
      } else {
        delete taxes.cgst;
        delete taxes.sgst;
      }

      let subTotal = Number(
        (shippingCharge + sumProducts - cashbackReduction).toFixed(2)
      );

      const placeOrderObj = {
        userId: req.user.userId,
        orderUUID,
        addressId: address.addressId,
        productTotal: sumProducts,
        shippingCharge,
        taxes: JSON.stringify(taxes),
        subTotal,
        status: "ordered",
        referralBonus: totalReferralBonus,
        refundAmount: totalCashback,
        cashbackReduction,
      };

      let insertWalletTransaction = {
        userId: user.userId,
        wallet: "cashback",
        amount: cashbackReduction,
        source: "purchase",
        method: "withdraw",
      };

      const orderQuery = sqlString.format(`INSERT INTO ProductOrder SET ?;`, [
        placeOrderObj,
      ]);

      const orderResult = await new Promise((resolve, reject) => {
        conn.query(orderQuery, (err, result) => {
          if (err) {
            reject(err);
          } else {
            resolve(result);
          }
        });
      });

      const reductionQuery = sqlString.format(
        `INSERT INTO WalletTransaction SET ?;`,
        [insertWalletTransaction]
      );

      const reductionQueryResult = await new Promise((resolve, reject) => {
        conn.query(reductionQuery, (err, result) => {
          if (err) {
            reject(err);
          } else {
            resolve(result);
          }
        });
      });

      const orderId = orderResult.insertId;

      if (products.length == 0) {
        return res.json({
          message:
            process.env.WEB_HOST +
            "/checkout?status=failed" +
            "&orderId=" +
            orderUUID +
            "&message=Order is failed due to technical error. Please try again later.",
        });
      }

      for (let index in products) {
        const product = products[index];

        if (product.isAvailable) {
          const insertObj = {
            orderId,
            userId: req.user.userId,
            productId: product.productId,
            quantity: product.quantity,
            size: product.size,
            color: product.color,
          };

          insertObj.purchasePrice =
            Number(product.normalPrice) * product.quantity;
          insertObj.priceType = "normal";

          let itemTax =
            product.normalPrice * product.quantity -
            Number(
              (product.normalPrice * product.quantity) / (1 + product.gst / 100)
            );

          if (state == "tn") {
            insertObj.taxes = JSON.stringify({
              sgst: Number((itemTax / 2).toFixed(2)),
              cgst: Number((itemTax / 2).toFixed(2)),
            });
          } else {
            insertObj.taxes = JSON.stringify({
              igst: Number(itemTax.toFixed(2)),
            });
          }

          const addProductQuery = sqlString.format(
            `INSERT INTO ProductOrderItem SET ?`,
            [insertObj]
          );

          await new Promise((resolve, reject) => {
            conn.query(addProductQuery, (err, result) => {
              if (err) {
                reject(err);
              } else {
                resolve(result);
              }
            });
          });

          const updateInventory = sqlString.format(
            `UPDATE ProductInventory SET quantity = quantity - ${product.quantity} WHERE inventoryId = ?`,
            [product.inventoryId]
          );

          await new Promise((resolve, reject) => {
            conn.query(updateInventory, (err, result) => {
              if (err) {
                reject(err);
              } else {
                resolve(result);
              }
            });
          });

          const removeBasket = sqlString.format(
            `UPDATE Basket SET status = 'removed' WHERE userId = ?;`,
            [user.userId]
          );
          await new Promise((resolve, reject) => {
            conn.query(removeBasket, (err, result) => {
              if (err) {
                reject(err);
              } else {
                resolve(result);
              }
            });
          });
        }
      }

      if (careerCode.length > 0) {
        try {
          let careerUserCheckQuery = sqlString.format(
            `SELECT userId FROM CareerRequest WHERE referralCode = ? AND status = 'approved'`,
            [careerCode]
          );

          let careerUserCheckResult = await new Promise((resolve, reject) => {
            conn.query(careerUserCheckQuery, (err, result) => {
              if (err) {
                reject(err);
              } else {
                resolve(result);
              }
            });
          });

          if (careerUserCheckResult.length > 0) {
            let careerUserId = careerUserCheckResult[0].userId;

            if (careerUserId != user.userId) {
              let careerRewardObj = {
                userId: careerUserId,
                orderUUID: placeOrderObj.orderUUID,
                buyerId: user.userId,
                moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
                status: "pending",
                moveTo: "career",
                mode: "career",
                amount: totalReferralBonus,
              };

              try {
                let query = sqlString.format(
                  "INSERT INTO RewardWallet SET ?",
                  careerRewardObj
                );

                await queryDatabase(query);
              } catch (err) {
                return res.json({
                  message:
                    process.env.WEB_HOST +
                    "/checkout?status=failed" +
                    "&orderId=" +
                    orderUUID +
                    "&message=Order is failed due to technical error. Please try again later.",
                });
              }
            }
          }

          let rewardObj = {
            userId: user.userId,
            orderUUID: placeOrderObj.orderUUID,
            buyerId: user.userId,
            moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
            status: "pending",
            moveTo: "cashback",
            mode: "cashback",
            amount: totalCashback,
          };

          try {
            let query = sqlString.format(
              "INSERT INTO RewardWallet SET ?",
              rewardObj
            );

            await queryDatabase(query);

            return res.json({
              message:
                process.env.WEB_HOST +
                "/checkout?status=success" +
                "&orderId=" +
                orderUUID +
                "&referralBonus=false" +
                "&totalCashback=" +
                totalCashback,
            });
          } catch (err) {
            return res.json({
              message:
                process.env.WEB_HOST +
                "/checkout?status=failed" +
                "&orderId=" +
                orderUUID +
                "&message=Order is failed due to technical error. Please try again later.",
            });
          }
        } catch (error) {
          return res.json({
            message:
              process.env.WEB_HOST +
              "/checkout?status=failed" +
              "&orderId=" +
              orderUUID +
              "&message=Order is failed due to technical error. Please try again later.",
          });
        }
      } else {
        try {
          let query = sqlString.format(
            `SELECT * FROM Referral WHERE userId = ?`,
            [user.userId]
          );

          const result = await queryDatabase(query);

          if (result.length === 0) {
            let rewardObj2 = {
              userId: user.userId,
              orderUUID: placeOrderObj.orderUUID,
              buyerId: user.userId,
              moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
              status: "pending",
              moveTo: "cashback",
              mode: "cashback",
              amount: totalCashback,
            };

            try {
              let query = sqlString.format(
                "INSERT INTO RewardWallet SET ?",
                rewardObj2
              );

              await queryDatabase(query);

              return res.json({
                message:
                  process.env.WEB_HOST +
                  "/checkout?status=success" +
                  "&orderId=" +
                  orderUUID +
                  "&referralBonus=false" +
                  "&totalCashback=" +
                  totalCashback,
              });
            } catch (err) {
              return res.json({
                message:
                  process.env.WEB_HOST +
                  "/checkout?status=failed" +
                  "&orderId=" +
                  orderUUID +
                  "&message=Order is failed due to technical error. Please try again later.",
              });
            }
          } else {
            let checkAlreadyPurchasedQuery = sqlString.format(
              `SELECT COUNT(*) AS purchaseHistoryCount FROM RewardWallet WHERE userId = ? AND buyerId = ? AND mode = 'referral'`,
              [result[0].parentId, user.userId]
            );

            let checkAlreadyPurchasedResult = await new Promise(
              (resolve, reject) => {
                conn.query(checkAlreadyPurchasedQuery, (err, result) => {
                  if (err) {
                    reject(err);
                  } else {
                    resolve(result);
                  }
                });
              }
            );

            if (checkAlreadyPurchasedResult[0].purchaseHistoryCount > 0) {
              let rewardObj2 = {
                userId: user.userId,
                orderUUID: placeOrderObj.orderUUID,
                buyerId: user.userId,
                moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
                status: "pending",
                moveTo: "cashback",
                mode: "cashback",
                amount: totalCashback,
              };

              try {
                let query = sqlString.format(
                  "INSERT INTO RewardWallet SET ?",
                  rewardObj2
                );
                await queryDatabase(query);

                return res.json({
                  message:
                    process.env.WEB_HOST +
                    "/checkout?status=success" +
                    "&orderId=" +
                    orderUUID +
                    "&referralBonus=false" +
                    "&totalCashback=" +
                    totalCashback,
                });
              } catch (err) {
                return res.json({
                  message:
                    process.env.WEB_HOST +
                    "/checkout?status=failed" +
                    "&orderId=" +
                    orderUUID +
                    "&message=Order is failed due to technical error. Please try again later.",
                });
              }
            } else {
              let rewardObj = {
                userId: result[0].parentId,
                orderUUID: placeOrderObj.orderUUID,
                buyerId: user.userId,
                moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
                status: "pending",
                moveTo: "cashback",
                mode: "referral",
                amount: totalReferralBonus,
              };

              let rewardObj2 = {
                userId: user.userId,
                orderUUID: placeOrderObj.orderUUID,
                buyerId: user.userId,
                moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
                status: "pending",
                moveTo: "cashback",
                mode: "cashback",
                amount: totalCashback,
              };

              try {
                let query =
                  sqlString.format(
                    "INSERT INTO RewardWallet SET ?; ",
                    rewardObj
                  ) +
                  sqlString.format(
                    "INSERT INTO RewardWallet SET ?",
                    rewardObj2
                  );
                await queryDatabase(query);

                return res.json({
                  message:
                    process.env.WEB_HOST +
                    "/checkout?status=success" +
                    "&orderId=" +
                    orderUUID +
                    "&referralBonus=true" +
                    "&totalCashback=" +
                    totalCashback,
                });
              } catch (err) {
                return res.json({
                  message:
                    process.env.WEB_HOST +
                    "/checkout?status=failed" +
                    "&orderId=" +
                    orderUUID +
                    "&message=Order is failed due to technical error. Please try again later.",
                });
              }
            }
          }
        } catch (error) {
          return res.json({
            message:
              process.env.WEB_HOST +
              "/checkout?status=failed" +
              "&orderId=" +
              orderUUID +
              "&message=Order is failed due to technical error. Please try again later.",
          });
        }
      }
    } catch (error) {
      return res.json({
        message:
          process.env.WEB_HOST +
          "/checkout?status=failed" +
          "&orderId=" +
          "&message=Order is failed due to technical error. Please try again later.",
      });
    }
  };

  static async testRefer(req, res) {}
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

async function getUserParents(userId, orderUUID, level, parents, buyerId) {
  if (level > 1) {
    // If all levels have been processed, return
    return;
  }

  const query = sqlString.format("SELECT * FROM Referral WHERE userId = ?", [
    userId,
    userId,
  ]);
  const result = await queryDatabase(query);

  if (result.length === 0) {
    // If no parent found, return
    return;
  }

  let rewardObj = {
    userId: result[0].parentId,
    orderUUID,
    buyerId,
    moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
    status: "pending",
  };

  try {
    let query = sqlString.format("INSERT INTO RewardWallet SET ?", [rewardObj]);
    await queryDatabase(query);
  } catch (err) {
    console.log(err);
  }

  parents[`level${level}`] = {
    userId: result[0].parentId,
  };
}
