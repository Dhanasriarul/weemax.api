import express from "express";
import { authenticateToken } from "../middlewares/authMiddleware.js";
import { CheckoutController } from "../controllers/checkoutController.js";

const router = express.Router();

router.use(authenticateToken);

// Checkout
// router.post("/placeOrder", CheckoutController.placeOrder);
router.get("/orderSummary", CheckoutController.orderSummary);
router.post("/placeOrder", CheckoutController.placeOrder);
router.get("/testRefer", CheckoutController.testRefer);

export default router;
