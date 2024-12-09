import express from "express";
import { authenticateToken } from "../middlewares/authMiddleware.js";
import { ProductController } from "../controllers/productController.js";

const router = express.Router();

// Product
router.get("/products/all", ProductController.getProductsList);
router.get("/category", ProductController.getProductsCategory);
router.get("/category/:categoryId", ProductController.getProductsSubCategory);
router.get("/:productId", ProductController.getProduct);

router.use(authenticateToken);

// Wishlist
router.get("/wishlist/all", ProductController.getAllWishlists);
router.post("/wishlist", ProductController.addWishlist);
router.delete("/wishlist", ProductController.removeWishList);

// Basket
router.get("/basket/all", ProductController.getAllBasketItems);
router.post("/basket", ProductController.addBasketItem);
router.put("/basket", ProductController.updateBasketItemQuantity);
router.delete("/basket", ProductController.removeBasketItem);

// Orders
router.get("/orders/all", ProductController.getAllOrders);
router.get("/orders/details/:orderId", ProductController.getOrder);
router.put("/orders/cancel", ProductController.cancelOrder);
router.put("/orders/return", ProductController.returnOrder);

export default router;
