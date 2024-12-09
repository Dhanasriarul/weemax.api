import crypto from "crypto";
import CCAvenue from "../utils/ccav.js";
import qs from "querystring";
import sqlString from "sqlstring";
import conn from "../../config/db.js";
import dayjs from "dayjs";

export class PaymentController {
  static async postReq(req, res) {
    var body = "",
      workingKey = "B1A072D3FDE98694DDCCA7AE786BD161", //Put in the 32-Bit key shared by CCAvenues.
      accessCode = "AVCA91KG13BU66ACUB", //Put in the Access Code shared by CCAvenues.
      encRequest = "",
      formbody = "";

    //Generate Md5 hash for the key and then convert in base64 string
    var md5 = crypto.createHash("md5").update(workingKey).digest();
    var keyBase64 = Buffer.from(md5).toString("base64");

    //Initializing Vector and then convert in base64 string
    var ivBase64 = Buffer.from([
      0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b,
      0x0c, 0x0d, 0x0e, 0x0f,
    ]).toString("base64");

    req.on("data", function (data) {
      body += data;
      encRequest = CCAvenue.encrypt(body, keyBase64, ivBase64);
      formbody =
        '<form id="nonseamless" method="post" name="redirect" action="https://secure.ccavenue.com/transaction/transaction.do?command=initiateTransaction"/> <input type="hidden" id="encRequest" name="encRequest" value="' +
        encRequest +
        '"><input type="hidden" name="access_code" id="access_code" value="' +
        accessCode +
        '"><script language="javascript">document.redirect.submit();</script></form>';
    });

    req.on("end", function () {
      res.writeHeader(200, { "Content-Type": "text/html" });
      res.write(formbody);
      res.end();
    });
    return;
  }

  static async postRes(req, res) {
    var ccavEncResponse = "",
      ccavResponse = "",
      workingKey = "B1A072D3FDE98694DDCCA7AE786BD161", //Put in the 32-Bit key shared by CCAvenues.
      ccavPOST = "",
      htmlcode = "";

    //Generate Md5 hash for the key and then convert in base64 string
    var md5 = crypto.createHash("md5").update(workingKey).digest();
    var keyBase64 = Buffer.from(md5).toString("base64");

    //Initializing Vector and then convert in base64 string
    var ivBase64 = Buffer.from([
      0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b,
      0x0c, 0x0d, 0x0e, 0x0f,
    ]).toString("base64");

    req.on("data", function (data) {
      ccavEncResponse += data;
      ccavPOST = qs.parse(ccavEncResponse);
      var encryption = ccavPOST.encResp;
      ccavResponse = CCAvenue.decrypt(encryption, keyBase64, ivBase64);
    });

    req.on("end", function () {
      // htmlcode = `${ccavResponse}`;
      let keyValuePairs = ccavResponse
        .split("&")
        .map((pair) => pair.split("="));

      let jsonObject = {};
      keyValuePairs.forEach(([key, value]) => {
        jsonObject[key] = decodeURIComponent(value.replace(/\+/g, " "));
      });

      let jsonString = JSON.stringify(jsonObject, null, 2);

      let insertObj = {
        ...jsonObject,
      };

      let query = sqlString.format("INSERT INTO Payment SET ?", [insertObj]);

      conn.query(query, async (err, result) => {
        if (err) {
          return res.redirect(
            "https://www.weemax.in/checkout?status=failed" +
              "&orderId=" +
              jsonObject.order_id +
              "&message=Order failed due to technical error. Please try again later."
          );
        }

        if (jsonObject.order_status === "Success") {
          try {
            let userId = jsonObject.merchant_param3;
            let cashbackReduction = jsonObject.merchant_param4;
            let addressId = jsonObject.merchant_param2;
            let careerCode = jsonObject.merchant_param5;
            let state =
              jsonObject.merchant_param1 == 1 ||
              jsonObject.merchant_param1 == "1"
                ? "tn"
                : "";
            let payorderUUID = jsonObject.order_id;

            let query =
              sqlString.format(
                `SELECT *,
          (SELECT mrpPrice FROM Product WHERE productId = Basket.productId) AS mrpPrice,
          (SELECT normalPrice FROM Product WHERE productId = Basket.productId) AS normalPrice,
          (SELECT share FROM Vendor WHERE status = 'active' AND vendorId = (SELECT vendorId FROM Product WHERE productId = Basket.productId) LIMIT 1) AS vendorShare,
          (SELECT vendorId FROM Product WHERE productId = Basket.productId) AS vendorId,
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
                [userId]
              ) +
              sqlString.format(`SELECT 1 AS one; `) +
              sqlString.format(
                `SELECT * FROM Address WHERE userId = ? AND status = 'active' AND addressId = ${addressId}`,
                [userId]
              );

            let result1 = await new Promise((resolve, reject) => {
              conn.query(query, (err, result1) => {
                if (err) {
                  reject(err);
                } else {
                  resolve(result1);
                }
              });
            });

            let products = result1[0];
            let sumProducts = 0;
            let shippingCharge = 0;
            let taxes = {
              sgst: 0,
              cgst: 0,
              igst: 0,
            };
            let totalReferralBonus = 0;
            let totalCashback = 0;

            let address = result1[2][0];

            // if (sumProducts + shippingCharge != jsonObject.amount) {
            //   return res.redirect(
            //     "https://www.weemax.in/checkout?status=failed7" +
            //       "&orderId=" +
            //       jsonObject.order_id +
            //       "&message=You paid incorrect amount. Contact support for more details."
            //   );
            // }
            if (!address) {
              return res.redirect(
                "https://www.weemax.in/checkout?status=failed" +
                  "&orderId=" +
                  jsonObject.order_id +
                  "&message=Order is failed due to technical error. Please try again later."
              );
            }

            if (products.length == 0) {
              return res.redirect(
                "https://www.weemax.in/checkout?status=failed" +
                  "&orderId=" +
                  jsonObject.order_id +
                  "&message=Order failed due to technical error. Please try again later."
              );
            }

            for (let index in products) {
              let product = products[index];

              if (product.quantity > product.productQuantity) {
                product.quantity = 0;
                product.isAvailable = false;
              } else {
                product.isAvailable = true;

                if (product.referralBonus > 0) {
                  totalReferralBonus +=
                    product.referralBonus * product.quantity;
                }

                if (product.refundFrom > 0 && product.refundTo) {
                  const randomNumber =
                    Math.floor(
                      Math.random() *
                        (product.refundTo - product.refundFrom + 1)
                    ) + product.refundFrom;

                  totalCashback += randomNumber * product.quantity;
                }
              }

              sumProducts += product.quantity * product.normalPrice;

              let tax =
                product.normalPrice * product.quantity -
                Number(
                  (product.normalPrice * product.quantity) /
                    (1 + product.gst / 100)
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

            let subTotal = Number(
              (shippingCharge + sumProducts - cashbackReduction).toFixed(2)
            );

            let placeOrderObj = {
              userId: userId,
              orderUUID: payorderUUID,
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
              userId: userId,
              wallet: "cashback",
              amount: cashbackReduction,
              source: "purchase",
              method: "withdraw",
            };

            let orderQuery = sqlString.format(
              `INSERT INTO ProductOrder SET ?`,
              [placeOrderObj]
            );

            let orderResult = await new Promise((resolve, reject) => {
              conn.query(orderQuery, (err, result2) => {
                if (err) {
                  reject(err);
                } else {
                  resolve(result2);
                }
              });
            });

            const reductionQuery = sqlString.format(
              `INSERT INTO WalletTransaction SET ?;`,
              [insertWalletTransaction]
            );
            const reductionQueryResult = await new Promise(
              (resolve, reject) => {
                conn.query(reductionQuery, (err, result) => {
                  if (err) {
                    reject(err);
                  } else {
                    resolve(result);
                  }
                });
              }
            );

            let orderId = orderResult.insertId;

            if (products.length == 0) {
              return res.redirect(
                "https://www.weemax.in/checkout?status=failed" +
                  "&orderId=" +
                  jsonObject.order_id +
                  "&message=Order failed due to technical error. Please try again later."
              );
            }

            let vendorProfits = [];

            for (let index in products) {
              let product = products[index];

              if (product.isAvailable) {
                let insertObj = {
                  orderId,
                  userId: userId,
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
                    (product.normalPrice * product.quantity) /
                      (1 + product.gst / 100)
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

                if (product.vendorId && product.vendorShare) {
                  insertObj.vendorShare = (
                    (product.normalPrice *
                      product.quantity *
                      product.vendorShare) /
                    100
                  ).toFixed(2);
                }

                if (product.vendorId && product.vendorShare) {
                  vendorProfits.push({
                    userId: product.vendorId,
                    amount: Number(
                      (
                        product.normalPrice * product.quantity -
                        insertObj.vendorShare
                      ).toFixed(2)
                    ),
                  });
                }

                let addProductQuery = sqlString.format(
                  `INSERT INTO ProductOrderItem SET ?`,
                  [insertObj]
                );

                await new Promise((resolve, reject) => {
                  conn.query(addProductQuery, (err, result3) => {
                    if (err) {
                      reject(err);
                    } else {
                      resolve(result3);
                    }
                  });
                });

                let updateInventory = sqlString.format(
                  `UPDATE ProductInventory SET quantity = quantity - ${product.quantity} WHERE inventoryId = ?`,
                  [product.inventoryId]
                );

                await new Promise((resolve, reject) => {
                  conn.query(updateInventory, (err, result4) => {
                    if (err) {
                      reject(err);
                    } else {
                      resolve(result4);
                    }
                  });
                });

                let removeBasket = sqlString.format(
                  `UPDATE Basket SET status = 'removed' WHERE userId = ?;`,
                  [userId]
                );
                await new Promise((resolve, reject) => {
                  conn.query(removeBasket, (err, result5) => {
                    if (err) {
                      reject(err);
                    } else {
                      resolve(result5);
                    }
                  });
                });
              }
            }

            if (vendorProfits.length > 0) {
              try {
                // add the amount of each user
                let result = vendorProfits.reduce(function (r, a) {
                  r[a.userId] = r[a.userId] || [];
                  r[a.userId].push(a);
                  return r;
                }, Object.create(null));

                // convert the object to array
                let balance = Object.keys(result).map(function (k) {
                  return result[k];
                });

                // calculate the total amount
                balance = balance.map((x) => {
                  let totalAmount = 0;

                  x.forEach((y) => {
                    totalAmount += y.amount;
                  });

                  return {
                    userId: x[0].userId,
                    amount: totalAmount,
                  };
                });

                for (let i = 0; i < balance.length; i++) {
                  let insertObj = {
                    userId: balance[i].userId,
                    orderUUID: payorderUUID,
                    buyerId: userId,
                    amount: balance[i].amount,
                    moveTo: "vendor",
                    moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
                    mode: "purchase",
                    status: "pending",
                  };

                  let query = sqlString.format(
                    "INSERT INTO RewardWallet SET ?",
                    insertObj
                  );

                  let result = await new Promise((resolve, reject) => {
                    conn.query(query, (err, result) => {
                      if (err) {
                        reject(err);
                      } else {
                        resolve(result);
                      }
                    });
                  });
                }
              } catch (error) {
                return res.redirect(
                  "https://www.weemax.in/checkout?status=failed" +
                    "&orderId=" +
                    jsonObject.order_id +
                    "&message=Order failed due to technical error. Please try again later..."
                );
              }
            }

            if (careerCode.length > 0) {
              try {
                let careerUserCheckQuery = sqlString.format(
                  `SELECT userId FROM CareerRequest WHERE referralCode = ? AND status = 'approved'`,
                  [careerCode]
                );

                let careerUserCheckResult = await new Promise(
                  (resolve, reject) => {
                    conn.query(careerUserCheckQuery, (err, result) => {
                      if (err) {
                        reject(err);
                      } else {
                        resolve(result);
                      }
                    });
                  }
                );

                if (careerUserCheckResult.length > 0) {
                  let careerUserId = careerUserCheckResult[0].userId;

                  if (careerUserId != userId) {
                    let careerRewardObj = {
                      userId: careerUserId,
                      orderUUID: payorderUUID,
                      buyerId: userId,
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
                      return res.redirect(
                        "https://www.weemax.in/checkout?status=failed" +
                          "&orderId=" +
                          jsonObject.order_id +
                          "&message=Order failed due to technical error. Please try again later."
                      );
                    }
                  }
                }

                let cashbackRewardObj = {
                  userId: userId,
                  orderUUID: payorderUUID,
                  buyerId: userId,
                  moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
                  status: "pending",
                  moveTo: "cashback",
                  mode: "cashback",
                  amount: totalCashback,
                };

                try {
                  let query = sqlString.format(
                    "INSERT INTO RewardWallet SET ?",
                    cashbackRewardObj
                  );

                  await queryDatabase(query);

                  return res.redirect(
                    "https://www.weemax.in/checkout?status=success" +
                      "&orderId=" +
                      jsonObject.order_id +
                      "&referralBonus=false" +
                      "&totalCashback=" +
                      totalCashback
                  );
                } catch (err) {
                  return res.redirect(
                    "https://www.weemax.in/checkout?status=failed" +
                      "&orderId=" +
                      jsonObject.order_id +
                      "&message=Order failed due to technical error. Please try again later."
                  );
                }
              } catch (error) {
                return res.redirect(
                  "https://www.weemax.in/checkout?status=failed" +
                    "&orderId=" +
                    jsonObject.order_id +
                    "&message=Order failed due to technical error. Please try again later."
                );
              }
            } else {
              try {
                let query = sqlString.format(
                  `SELECT * FROM Referral WHERE userId = ?`,
                  [userId]
                );

                // const result = await queryDatabase(query);
                let result = await new Promise((resolve, reject) => {
                  conn.query(query, (err, resultOff1) => {
                    if (err) {
                      reject(err);
                    } else {
                      resolve(resultOff1);
                    }
                  });
                });

                if (result.length === 0) {
                  let rewardObj2 = {
                    userId: userId,
                    orderUUID: payorderUUID,
                    buyerId: userId,
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

                    return res.redirect(
                      "https://www.weemax.in/checkout?status=success" +
                        "&orderId=" +
                        jsonObject.order_id +
                        "&referralBonus=false" +
                        "&totalCashback=" +
                        totalCashback
                    );
                  } catch (err) {
                    return res.redirect(
                      "https://www.weemax.in/checkout?status=failed" +
                        "&orderId=" +
                        jsonObject.order_id +
                        "&message=Order failed due to technical error. Please try again later."
                    );
                  }
                } else {
                  let checkAlreadyPurchasedQuery = sqlString.format(
                    `SELECT COUNT(*) AS purchaseHistoryCount FROM RewardWallet WHERE userId = ? AND buyerId = ? AND mode = 'referral'`,
                    [result[0].parentId, userId]
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
                      userId: userId,
                      orderUUID: payorderUUID,
                      buyerId: userId,
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

                      return res.redirect(
                        "https://www.weemax.in/checkout?status=success" +
                          "&orderId=" +
                          jsonObject.order_id +
                          "&referralBonus=false" +
                          "&totalCashback=" +
                          totalCashback
                      );
                    } catch (err) {
                      return res.redirect(
                        "https://www.weemax.in/checkout?status=failed" +
                          "&orderId=" +
                          jsonObject.order_id +
                          "&message=Order failed due to technical error. Please try again later."
                      );
                    }
                  } else {
                    let rewardObj = {
                      userId: result[0].parentId,
                      orderUUID: payorderUUID,
                      buyerId: userId,
                      moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
                      status: "pending",
                      moveTo: "cashback",
                      mode: "referral",
                      amount: totalReferralBonus,
                    };

                    let rewardObj2 = {
                      userId: userId,
                      orderUUID: payorderUUID,
                      buyerId: userId,
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

                      return res.redirect(
                        "https://www.weemax.in/checkout?status=success" +
                          "&orderId=" +
                          jsonObject.order_id +
                          "&referralBonus=true" +
                          "&totalCashback=" +
                          totalCashback
                      );
                    } catch (err) {
                      return res.redirect(
                        "https://www.weemax.in/checkout?status=failed" +
                          "&orderId=" +
                          jsonObject.order_id +
                          "&message=Order failed due to technical error. Please try again later."
                      );
                    }
                  }
                }
              } catch (error) {
                return res.redirect(
                  "https://www.weemax.in/checkout?status=failed" +
                    "&orderId=" +
                    jsonObject.order_id +
                    "&message=Order failed due to technical error. Please try again later."
                );
              }
            }
          } catch (error) {
            return res.redirect(
              "https://www.weemax.in/checkout?status=failed" +
                "&orderId=" +
                jsonObject.order_id +
                "&message=Order failed due to technical error. Please try again later."
            );
          }
        } else {
          return res.redirect(
            "https://www.weemax.in/checkout?status=failed" +
              "&orderId=" +
              jsonObject.order_id +
              "&message=Order failed due to technical error. Please try again later."
          );
        }
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

async function getUserParents(userId, payorderUUID, level, parents, buyerId) {
  if (level > 1) {
    // If all levels have been processed, return
    return;
  }

  let query = sqlString.format("SELECT * FROM Referral WHERE userId = ?", [
    userId,
  ]);
  let result6 = await queryDatabase(query);

  if (result6.length === 0) {
    // If no parent found, return
    return;
  }

  let rewardObj = {
    userId: result6[0].parentId,
    orderUUID: payorderUUID,
    buyerId,
    moveDate: dayjs().add(15, "day").format("YYYY-MM-DD"),
    status: "pending",
  };

  try {
    rewardObj.mode = "referral";
    let query = sqlString.format("INSERT INTO RewardWallet SET ?", [rewardObj]);
    await queryDatabase(query);
  } catch (err) {
    console.log(err);
  }

  parents[`level${level}`] = {
    userId: result6[0].parentId,
  };
}
