import express from "express";
import { AuthController } from "../controllers/authController.js";
import { authenticateToken } from "../middlewares/authMiddleware.js";

const router = express.Router();

router.post("/refresh-token", AuthController.refreshToken);
router.post("/login", AuthController.login);
router.post("/register", AuthController.register);
router.post("/validate-otp", AuthController.validateOtp);
router.post("/resend-otp", AuthController.resendOtp);
router.post("/forgot-pass", AuthController.forgotPassword);
router.post("/reset-password", AuthController.resetPassword);

router.use(authenticateToken);

export default router;
