import sqlString from "sqlstring";
import conn from "../../config/db.js";
import Utils from "../utils/utils.js";

export class ProductController {
  static getProductsList(req, res) {
    let categoryId = req.query.categoryId;
    let subCategoryId = req.query.subCategoryId;
    let keyword = req.query.keyword;
    let sort = req.query.sort;
    let type = req.query.type;
    let normalPriceRange = req.query.normalPriceRange;

    let offset = Number(req.query.offset);
    let limit = Number(req.query.limit);
    offset = offset * limit;

    let whereQuery = "";

    whereQuery += ` WHERE 1 = 1 AND status = 'published'`;

    if (categoryId) {
      whereQuery += ` AND categoryId = ${categoryId}`;
    }

    if (subCategoryId) {
      whereQuery += ` AND subCategoryId = ${subCategoryId}`;
    }

    if (keyword) {
      whereQuery += ` AND productTitle LIKE '%${keyword}%'`;
    }

    if (type) {
      whereQuery += ` AND type = '${type}'`;
    }

    if (normalPriceRange) {
      let normalPriceRangeArray = normalPriceRange.split("-");
      let min = normalPriceRangeArray[0];
      let max = normalPriceRangeArray[1];
      whereQuery += ` AND normalPrice BETWEEN ${min} AND ${max}`;
    }

    if (sort) {
      if (sort == "newest") {
        whereQuery += ` ORDER BY createdAt DESC`;
      } else if (sort == "normalPriceLowToHigh") {
        whereQuery += ` ORDER BY normalPrice ASC`;
      } else if (sort == "normalPriceHighToLow") {
        whereQuery += ` ORDER BY normalPrice DESC`;
      }

      // else if (sort == "popular") {
      //   whereQuery += ` ORDER BY views DESC`;
      // }
      //  else if (sort == "bestSeller") {
      //   whereQuery += ` ORDER BY sold DESC`;
      // }
      // else if (sort == "mostLiked") {
      //   whereQuery += ` ORDER BY likes DESC`;
      // }
    }
    //  LIMIT ? OFFSET ?

    if (!isNaN(offset) && !isNaN(limit) && offset >= 0 && limit >= 0) {
      var query =
        sqlString.format(`SELECT * FROM Product ${whereQuery}   LIMIT ?, ?;`, [
          offset,
          limit,
        ]) +
        sqlString.format(
          `SELECT COUNT(*) AS totalRecords FROM Product ${whereQuery};`
        );
    } else {
      var query =
        sqlString.format(`SELECT * FROM Product ${whereQuery} ;`) +
        sqlString.format(
          `SELECT COUNT(*) AS totalRecords FROM Product ${whereQuery};`
        );
    }

    conn.query(query, (err, results) => {
      if (err) {
        console.log(err);
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let products = results[0];

      let resMeta = {
        totalRecords: results[1][0].totalRecords,
        noOfPages: Math.ceil(results[1][0].totalRecords / limit),
      };

      return res.json({
        success: true,
        products,
        resMeta,
      });
    });
  }

  static getProductsCategory(req, res) {
    let query = sqlString.format(
      `SELECT * FROM ProductCategory WHERE status='active'`
    );

    conn.query(query, (err, results) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let categories = results;

      return res.json({
        success: true,
        categories,
      });
    });
  }

  static getProductsSubCategory(req, res) {
    let categoryId = req.params.categoryId;

    let query = sqlString.format(
      `SELECT * FROM ProductSubCategory WHERE status='active' AND categoryId = ?`,
      [categoryId]
    );

    conn.query(query, (err, results) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let subCategories = results;

      return res.json({
        success: true,
        subCategories,
      });
    });
  }

  static async getAllOrders(req, res) {
    try {
      const userId = req.user.userId;
      const query = sqlString.format(
        `SELECT * ,
        (SELECT name FROM Address WHERE addressId = ProductOrder.addressId) AS addressName,
        (SELECT addressLineOne FROM Address WHERE addressId = ProductOrder.addressId) AS addressLineOne,
        (SELECT addressLineTwo FROM Address WHERE addressId = ProductOrder.addressId) AS addressLineTwo,
        (SELECT city FROM Address WHERE addressId = ProductOrder.addressId) AS city,
        (SELECT state FROM Address WHERE addressId = ProductOrder.addressId) AS state,
        (SELECT zipCode FROM Address WHERE addressId = ProductOrder.addressId) AS zipCode,
        (SELECT phone FROM Address WHERE addressId = ProductOrder.addressId) AS phone	
        FROM ProductOrder WHERE userId = ? ORDER BY orderId DESC`,
        [userId]
      );

      const orders = await new Promise((resolve, reject) => {
        conn.query(query, (err, result) => {
          if (err) {
            reject(err);
          } else {
            resolve(result);
          }
        });
      });

      for (let i = 0; i < orders.length; i++) {
        orders[i].taxes = JSON.parse(orders[i].taxes);
        orders[i].createdAt = Utils.utcToLocal(orders[i].createdAt);
        orders[i].updatedAt = Utils.utcToLocal(orders[i].updatedAt);

        const itemQuery = sqlString.format(
          "SELECT *, (SELECT productTitle FROM Product WHERE productId = ProductOrderItem.productId) AS productTitle, (SELECT assetOne FROM Product WHERE productId = ProductOrderItem.productId) AS assetOne FROM ProductOrderItem WHERE orderId = ?",
          [orders[i].orderId]
        );

        const items = await new Promise((resolve, reject) => {
          conn.query(itemQuery, (err, result) => {
            if (err) {
              reject(err);
            } else {
              resolve(result);
            }
          });
        });

        orders[i].items = items;
      }

      return res.json({
        success: true,
        orders,
      });
    } catch (error) {
      return res.json({
        success: false,
        message: "Something went wrong",
      });
    }
  }

  static getProduct(req, res) {
    let productId = req.params.productId;

    let query = sqlString.format(
      `SELECT *, (SELECT name FROM ProductSubCategory WHERE subCategoryId = Product.subCategoryId) AS subCategoryName, (SELECT img FROM SizeChart WHERE sizeChartId = Product.sizeChartId AND status='active') AS sizeChart FROM Product WHERE productId = ? AND status <> 'deleted'`,
      [productId]
    );

    conn.query(query, function (err, result) {
      if (err) {
        return res.json({
          success: false,
          message: "Cannot fetch product",
        });
      }

      if (result.length <= 0) {
        return res.json({
          success: false,
          message: "No product with this Id Found",
        });
      }

      let product = result[0];

      let query = sqlString.format(
        "SELECT inventoryId,size,color,colorCode,quantity FROM ProductInventory WHERE productId = ? AND status = 'active'",
        [product.productId]
      );

      conn.query(query, (err, result) => {
        if (err) {
          return res.json({
            success: false,
            message: "Cannot fetch product inventory",
          });
        }

        let inventory = result;

        // Create an empty object to store the transformed inventory
        let transformedInventory = [];

        for (let i = 0; i < inventory.length; i++) {
          let item = inventory[i];

          // if (item.quantity != 0) {

          // }
          // Check if an entry for the color already exists in the transformed inventory
          const existingColor = transformedInventory.find(
            (color) => color.color === item.color
          );

          if (existingColor) {
            // If an entry for the color already exists, add the size and quantity to its sizes array
            existingColor.sizes.push({
              inventoryId: item.inventoryId,
              size: item.size,
              quantity: item.quantity,
            });
          } else {
            // If an entry for the color doesn't exist, create a new entry with the color, colorCode, and sizes array
            transformedInventory.push({
              color: item.color,
              colorCode: item.colorCode,
              sizes: [
                {
                  inventoryId: item.inventoryId,
                  size: item.size,
                  quantity: item.quantity,
                },
              ],
            });
          }
        }

        res.json({
          success: true,
          product,
          inventory: transformedInventory,
        });
      });
    });
  }

  static async getSelectedProducts(req, res) {
    try {
      let productIds = req.query.productIds;

      let query = sqlString.format(
        `SELECT * FROM Product WHERE status = 'published' AND productId IN (${productIds})`
      );

      const products = await new Promise((resolve, reject) => {
        conn.query(query, (err, result) => {
          if (err) {
            return reject({
              success: false,
              message: "Cannot fetch products",
            });
          }

          resolve(result);
        });
      });

      if (products.length <= 0) {
        return res.json({
          success: false,
          message: "Product list is empty",
        });
      }

      for (let i = 0; i < products.length; i++) {
        let product = products[i];

        let inventoryQuery = sqlString.format(
          `SELECT inventoryId,size,color,colorCode,quantity FROM ProductInventory WHERE status = 'active' AND productId = ?`,
          [product.productId]
        );

        const inventory = await new Promise((resolve, reject) => {
          conn.query(inventoryQuery, (err, result) => {
            if (err) {
              return reject({
                success: false,
                message: "Cannot fetch products",
              });
            }

            resolve(result);
          });
        });

        // Create an empty object to store the transformed inventory
        let transformedInventory = [];

        for (let i = 0; i < inventory.length; i++) {
          let item = inventory[i];

          if (item.quantity != 0) {
            // Check if an entry for the color already exists in the transformed inventory
            const existingColor = transformedInventory.find(
              (color) => color.color === item.color
            );

            if (existingColor) {
              // If an entry for the color already exists, add the size and quantity to its sizes array
              existingColor.sizes.push({
                inventoryId: item.inventoryId,
                size: item.size,
                quantity: item.quantity,
              });
            } else {
              // If an entry for the color doesn't exist, create a new entry with the color, colorCode, and sizes array
              transformedInventory.push({
                color: item.color,
                colorCode: item.colorCode,
                sizes: [
                  {
                    inventoryId: item.inventoryId,
                    size: item.size,
                    quantity: item.quantity,
                  },
                ],
              });
            }
          }
        }

        product.inventory = transformedInventory;
      }

      return res.json({
        success: true,
        products,
      });
    } catch (error) {
      return res.json({
        success: false,
        message: "Something went wrong",
      });
    }
  }

  static getAllWishlists(req, res) {
    let userId = req.user.userId;
    let productId = req.query.productId;
    let query;

    if (productId) {
      query =
        sqlString.format(
          `SELECT *
        FROM Wishlist 
          WHERE userId = ? AND status='active' 
          AND productId = (SELECT productId FROM Product WHERE productId = ? AND status = 'published'); `,
          [userId, productId]
        ) + sqlString.format("SELECT 1 AS one");
    } else {
      query =
        sqlString.format(
          `SELECT *, 
        (SELECT assetOne FROM Product WHERE productId = Wishlist.productId) AS assetOne,
        (SELECT productTitle FROM Product WHERE productId = Wishlist.productId) AS productTitle,
        (SELECT normalPrice FROM Product WHERE productId = Wishlist.productId) AS normalPrice,
        (SELECT mrpPrice FROM Product WHERE productId = Wishlist.productId) AS mrpPrice,
        (SELECT COUNT(*) FROM Basket WHERE productId = Wishlist.productId AND status='active' AND userId = ?) AS basketCount
        FROM Wishlist 
          WHERE userId = ? AND status='active' 
          AND productId IN (
              SELECT productId FROM Product 
              WHERE status='published' AND productId IN (SELECT productId FROM Wishlist WHERE userId = ?) 
          );`,
          [userId, userId, userId]
        ) + sqlString.format("SELECT 1 AS one");
    }

    conn.query(query, (err, results) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let wishlists;

      if (productId && results[0].length == 0) {
        return res.json({
          success: false,
          message: "Not in wishlist",
        });
      } else if (productId) {
        return res.json({
          success: true,
          isLiked: true,
        });
      } else {
        wishlists = results[0];
        for (let i = 0; i < wishlists.length; i++) {
          wishlists[i].price = wishlists[i].normalPrice;
          if (wishlists[i].basketCount > 0) {
            wishlists[i].isAddedToBasket = true;
          } else {
            wishlists[i].isAddedToBasket = false;
          }
        }
      }

      return res.json({
        success: true,
        wishlists,
      });
    });
  }

  static addWishlist(req, res) {
    let productId = req.query.productId;
    let userId = req.user.userId;

    if (!productId) {
      return res.json({
        success: false,
        message: "Product Id is missing",
      });
    }

    let checkQuery = sqlString.format(
      `SELECT COUNT(*) AS wishlistCount FROM Wishlist WHERE userId = ? AND productId = ? AND status='active'`,
      [userId, productId]
    );

    conn.query(checkQuery, (err, checkResults) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let wishlistCount = checkResults[0].wishlistCount;

      if (wishlistCount > 0) {
        return res.json({
          success: false,
          message: "Product already added to wishlist",
        });
      }

      let addWishlist = {
        userId,
        productId,
      };

      let insertQuery = sqlString.format(`INSERT INTO Wishlist SET ?`, [
        addWishlist,
      ]);

      conn.query(insertQuery, (err, insertResults) => {
        if (err) {
          return res.json({
            success: false,
            message: "Something went wrong",
          });
        }

        if (insertResults.affectedRows > 0) {
          return res.json({
            success: true,
            message: "Product added to wishlist",
          });
        } else {
          return res.json({
            success: false,
            message: "Failed to add product to wishlist",
          });
        }
      });
    });
  }

  static removeWishList(req, res) {
    let productId = req.query.productId;
    let userId = req.user.userId;

    if (!productId) {
      return res.json({
        success: false,
        message: "Product Id is missing",
      });
    }

    let checkQuery = sqlString.format(
      `SELECT COUNT(*) AS wishlistCount FROM Wishlist WHERE userId = ? AND productId = ? AND status='active'`,
      [userId, productId]
    );

    conn.query(checkQuery, (err, checkResults) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let wishlistCount = checkResults[0].wishlistCount;

      if (wishlistCount <= 0) {
        return res.json({
          success: false,
          message: "No wishlist with this id",
        });
      }

      let updateQuery = sqlString.format(
        `UPDATE Wishlist SET status='removed' WHERE userId = ? AND productId = ? AND status='active'`,
        [userId, productId]
      );

      conn.query(updateQuery, (err, updateResults) => {
        if (err) {
          return res.json({
            success: false,
            message: "Something went wrong",
          });
        }

        if (updateResults.affectedRows > 0) {
          return res.json({
            success: true,
            message: "Successfully removed from wishlist",
          });
        } else {
          return res.json({
            success: false,
            message: "Failed to remove product from wishlist",
          });
        }
      });
    });
  }

  static getAllBasketItems(req, res) {
    let userId = req.user.userId;

    let query = sqlString.format(
      `SELECT *,
      (SELECT assetOne FROM Product WHERE productId = Basket.productId) AS assetOne,
      (SELECT productTitle FROM Product WHERE productId = Basket.productId) AS productTitle,
      (SELECT normalPrice FROM Product WHERE productId = Basket.productId) AS normalPrice,
      (SELECT mrpPrice FROM Product WHERE productId = Basket.productId) AS mrpPrice,
      (SELECT color FROM ProductInventory WHERE productId = Basket.productId AND inventoryId = Basket.inventoryId AND status='active') AS color,
      (SELECT colorCode FROM ProductInventory WHERE productId = Basket.productId AND inventoryId = Basket.inventoryId AND status='active') AS colorCode,
      (SELECT size FROM ProductInventory WHERE productId = Basket.productId AND inventoryId = Basket.inventoryId AND status='active') AS size,
      (SELECT quantity FROM ProductInventory WHERE inventoryId = Basket.inventoryId AND status = 'active') AS maxQuantity
      FROM Basket WHERE userId = ? AND status='active' AND productId IN (SELECT productId FROM Product WHERE status='published')`,
      [userId]
    );

    conn.query(query, (err, results) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let basketItems = results;

      return res.json({
        success: true,
        basketItems,
      });
    });
  }

  static addBasketItem(req, res) {
    let productId = req.query.productId;
    let userId = req.user.userId;
    let quantity = req.query.quantity || 1;
    let inventoryId = req.query.inventoryId;

    if (!productId || !quantity || !inventoryId) {
      return res.json({
        success: false,
        message: "Product Id or quantity or inventory Id is missing",
      });
    }

    let checkQuery = sqlString.format(
      `SELECT * FROM Basket WHERE userId = ? AND productId = ? AND inventoryId = ? AND status='active'`,
      [userId, productId, inventoryId]
    );

    conn.query(checkQuery, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      let basketItemCount = result.length;

      if (basketItemCount > 0) {
        if (result[0].quantity != quantity) {
          let updateQuery = sqlString.format(
            `UPDATE Basket SET quantity = ? WHERE userId = ? AND productId = ? AND inventoryId = ? AND status='active'`,
            [quantity, userId, productId, inventoryId]
          );
          conn.query(updateQuery, (err, result) => {
            if (err) {
              return res.json({
                success: false,
                message: "Something went wrong",
              });
            }

            if (result.affectedRows > 0) {
              return res.json({
                success: true,
                message: "Quantity updated successfully",
              });
            } else {
              return res.json({
                success: false,
                message: "No item found in the basket with this id",
              });
            }
          });
        } else {
          return res.json({
            success: false,
            message: "Product already added to basket",
          });
        }
      } else {
        let addBasketItem = {
          userId,
          productId,
          quantity,
          inventoryId,
        };

        let insertQuery = sqlString.format(`INSERT INTO Basket SET ?`, [
          addBasketItem,
        ]);

        conn.query(insertQuery, (err, result) => {
          if (err) {
            return res.json({
              success: false,
              message: "Something went wrong",
            });
          }

          if (result.affectedRows > 0) {
            return res.json({
              success: true,
              message: "Product added to basket",
            });
          } else {
            return res.json({
              success: false,
              message: "Failed to add product to basket",
            });
          }
        });
      }
    });
  }

  static updateBasketItemQuantity(req, res) {
    let productId = req.query.productId;
    let userId = req.user.userId;
    let quantity = req.query.quantity;
    let inventoryId = req.query.inventoryId;

    if (!productId || !quantity || !inventoryId) {
      return res.json({
        success: false,
        message: "Product Id or quantity or inventory id is missing",
      });
    }

    let query = sqlString.format(
      `UPDATE Basket SET quantity = ? WHERE userId = ? AND productId = ? AND inventoryId = ? AND status='active'`,
      [quantity, userId, productId, inventoryId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      if (result.affectedRows > 0) {
        return res.json({
          success: true,
          message: "Quantity updated successfully",
        });
      } else {
        return res.json({
          success: false,
          message: "No item found in the basket with this id",
        });
      }
    });
  }

  static removeBasketItem(req, res) {
    let productId = req.query.productId;
    let inventoryId = req.query.inventoryId;
    let userId = req.user.userId;

    if (!productId) {
      return res.json({
        success: false,
        message: "Product Id is missing",
      });
    }

    let query = sqlString.format(
      `UPDATE Basket SET status='removed' WHERE userId = ? AND productId = ? AND inventoryId = ? AND status='active'`,
      [userId, productId, inventoryId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      if (result.affectedRows > 0) {
        return res.json({
          success: true,
          message: "Successfully removed from basket",
        });
      } else {
        return res.json({
          success: false,
          message: "No item found in the basket with this id",
        });
      }
    });
  }

  static async getOrder(req, res) {
    try {
      const orderId = req.params.orderId;
      const userId = req.user.userId;
      const query = sqlString.format(
        `SELECT * ,
        (SELECT name FROM Address WHERE addressId = ProductOrder.addressId) AS addressName,
        (SELECT addressLineOne FROM Address WHERE addressId = ProductOrder.addressId) AS addressLineOne,
        (SELECT addressLineTwo FROM Address WHERE addressId = ProductOrder.addressId) AS addressLineTwo,
        (SELECT city FROM Address WHERE addressId = ProductOrder.addressId) AS city,
        (SELECT state FROM Address WHERE addressId = ProductOrder.addressId) AS state,
        (SELECT zipCode FROM Address WHERE addressId = ProductOrder.addressId) AS zipCode,
        (SELECT phone FROM Address WHERE addressId = ProductOrder.addressId) AS phone	
        FROM ProductOrder WHERE userId = ? AND orderId = ?;`,
        [userId, orderId]
      );

      const orders = await new Promise((resolve, reject) => {
        conn.query(query, (err, result) => {
          if (err) {
            reject(err);
          } else {
            resolve(result);
          }
        });
      });

      for (let i = 0; i < orders.length; i++) {
        orders[i].taxes = JSON.parse(orders[i].taxes);
        orders[i].createdAt = Utils.utcToLocal(orders[i].createdAt);

        const itemQuery = sqlString.format(
          `SELECT *, 
          (SELECT productTitle FROM Product WHERE productId = ProductOrderItem.productId) AS productTitle,
          (SELECT assetOne FROM Product WHERE productId = ProductOrderItem.productId) AS assetOne
          FROM ProductOrderItem WHERE orderId = ?`,
          [orders[i].orderId]
        );

        const items = await new Promise((resolve, reject) => {
          conn.query(itemQuery, (err, result) => {
            if (err) {
              reject(err);
            } else {
              resolve(result);
            }
          });
        });

        orders[i].items = [];
        orders[i].returnRequestedItems = [];
        orders[i].returnApprovedItems = [];
        orders[i].returnCanceledItems = [];
        orders[i].returnedItems = [];
        orders[i].canceledItems = [];

        for (let j = 0; j < items.length; j++) {
          let pro = items[j];

          if (pro.status == "ordered") {
            orders[i].items.push(pro);
          } else if (pro.status == "returnRequested") {
            orders[i].returnRequestedItems.push(pro);
          } else if (pro.status == "returnApproved") {
            orders[i].returnApprovedItems.push(pro);
          } else if (pro.status == "returnCanceled") {
            orders[i].returnCanceledItems.push(pro);
          } else if (pro.status == "returned") {
            orders[i].returnedItems.push(pro);
          } else if (pro.status == "cancelled") {
            orders[i].canceledItems.push(pro);
          }
        }
      }

      return res.json({
        success: true,
        order: orders[0],
      });
    } catch (error) {
      return res.json({
        success: false,
        message: "Something went wrong",
      });
    }
  }

  static async cancelOrder(req, res) {
    try {
      let orderId = req.query.orderId;
      let orderUUID = req.query.orderUUID;
      let userId = req.user.userId;
      let cancelOrders = req.body.orderItemId;
      let cancelReason = req.body.reason;

      if (!orderId) {
        return res.json({
          success: false,
          message: "Order Id is missing",
        });
      }

      let formattedId = `(${cancelOrders.join(", ")})`;

      let query = sqlString.format(
        `SELECT *, 
            (SELECT refundFrom FROM Product WHERE productId = ProductOrderItem.productId) AS cashbackFrom,
            (SELECT refundTo FROM  Product WHERE productId = ProductOrderItem.productId) AS cashbackTo,
            (SELECT referralBonus FROM  Product WHERE productId = ProductOrderItem.productId) AS referralBonus
            FROM ProductOrderItem WHERE userId = ? AND orderId = ?`,
        [userId, orderId]
      );

      const orderItems = await new Promise((resolve, reject) => {
        conn.query(query, (err, result) => {
          if (err) {
            console.log(err);
            return reject(err);
          }
          resolve(result);
        });
      });

      const resultArray = orderItems.filter(
        (item) => !cancelOrders.includes(item.orderItemId)
      );

      let totalCashbackFrom = 0;
      let totalCashbackTo = 0;
      let totalReferralBonus = 0;

      resultArray.forEach((item) => {
        totalCashbackFrom += item.cashbackFrom;
        totalCashbackTo += item.cashbackTo;
        totalReferralBonus += item.referralBonus;
      });

      let updateQuery = sqlString.format(
        `UPDATE ProductOrderItem SET status='cancelled' WHERE userId = ? AND orderId = ? AND orderItemId IN ${formattedId}; 
            UPDATE RewardWallet SET amount = 0 WHERE orderUUID = ? AND buyerId = ?;`,
        [userId, orderId, orderUUID, userId]
      );

      cancelOrders.forEach((item) => {
        let insertObj = {
          orderId,
          orderItemId: item,
          userId,
          reason: cancelReason,
          refundMethod: req.body.refundMethod,
        };

        if (insertObj.refundMethod == "bank") {
          insertObj.refundData = JSON.stringify(req.body.refundData);
        }

        updateQuery += sqlString.format(` INSERT INTO CancelOrder SET ?;`, [
          insertObj,
        ]);
      });

      await new Promise((resolve, reject) => {
        conn.query(updateQuery, (err, result) => {
          if (err) {
            console.log(err);
            return reject(err);
          }
          resolve(result);
        });
      });

      return res.json({
        success: true,
        message: "Order cancelled successfully",
      });
    } catch (error) {
      console.log(error);
      return res.json({
        success: false,
        message: "Something went wrong",
      });
    }
  }

  static returnOrder(req, res) {
    let orderId = req.body.orderId;
    let returnItems = req.body.returnItems;
    let refundMethod = req.body.refundMethod;
    let bankDetails = req.body.bankDetails;

    if (!orderId) {
      return res.json({
        success: false,
        message: "Order Id is missing",
      });
    }

    let query = "";

    for (let i = 0; i < returnItems.length; i++) {
      let item = returnItems[i];

      let insertObj = {
        orderId,
        orderItemId: item.orderItemId,
        userId: req.user.userId,
        productId: item.productId,
        reason: item.reason,
        proofOne: item.proofOne,
        proofTwo: item.proofTwo,
        refundMethod,
      };

      if (refundMethod == "bank" && bankDetails) {
        insertObj.refundData = JSON.stringify(bankDetails);
      }

      query += sqlString.format(
        `INSERT INTO ReturnOrder SET ?; UPDATE ProductOrderItem SET status='returnRequested' WHERE orderItemId = ?;`,
        [insertObj, item.orderItemId]
      );
    }

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
        message: "Order requested successfully",
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

async function reduceAmount(userId, level, parents, buyerId, orderUUID) {
  if (level > 11) {
    // If all levels have been processed, return
    return;
  }

  let query = sqlString.format("SELECT * FROM Referral WHERE userId = ?", [
    userId,
    orderUUID,
  ]);
  let result = await queryDatabase(query);

  if (result.length === 0) {
    // If no parent found, return
    return;
  }

  // let query2 = sqlString.format(
  //   "SELECT * FROM RewardWallet WHERE userId = ? AND orderUUID = ? AND buyerId = ?",[result[0].parentId, orderUUID, buyerId]
  // )

  try {
    let query2 = sqlString.format(
      "UPDATE RewardWallet SET amount = amount - ? WHERE userId = ? AND orderUUID = ? AND buyerId = ?",
      [bonus, result[0].parentId, orderUUID, buyerId]
    );

    await queryDatabase(query2);
  } catch (err) {
    console.log(err);
  }

  parents[`level${level}`] = {
    userId: result[0].parentId,
  };

  await reduceAmount(
    result[0].parentId,
    level + 1,
    parents,
    buyerId,
    orderUUID
  );
}
