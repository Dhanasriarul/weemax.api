import express from "express";
import { authenticateToken } from "../middlewares/authMiddleware.js";
import { UserController } from "../controllers/userController.js";

const router = express.Router();

router.get("/referal", UserController.referal);
router.post("/contactMessage", UserController.contactMessage);
router.get("/topEarners", UserController.topEarners);

router.use(authenticateToken);

router.get("/profile", UserController.profile);
router.put("/profile", UserController.editProfile);

// Address
router.get("/profile/getAllAddresses", UserController.getAllAddresses);
router.post("/profile/addAddress", UserController.addAddress);
router.put("/profile/editAddress", UserController.editAddress);
router.delete("/profile/deleteAddress", UserController.removeAddress);

// Payment Methods
router.get(
  "/profile/getAllPaymentMethods",
  UserController.getAllPaymentMethods
);
router.post("/profile/addPaymentMethod", UserController.addPaymentMethod);
router.put("/profile/editPaymentMethod", UserController.editPaymentMethod);
router.delete(
  "/profile/removePaymentMethod",
  UserController.removePaymentMethod
);

// BIZ
router.get("/profile/getReferals", UserController.getReferrals);
router.get("/profile/getRewardWallet", UserController.getRewardWallet);
router.get("/profile/getPersonalWallet", UserController.getPersonalWallet);
router.get("/profile/getIncomeWallet", UserController.getIncomeWallet);
router.post("/profile/addTransaction", UserController.addTransaction);
router.get("/profile/getTotalEarnings", UserController.getTotalEarnings);
router.get("/profile/getKycStatus", UserController.getKycStatus);
router.post("/profile/applyKyc", UserController.applyKyc);
router.get(
  "/profile/getWalletTransactions",
  UserController.getWalletTransactions
);

// Rewards
router.get("/profile/getCashbackWallet", UserController.getCashbackWallet);
router.get("/profile/getReferralWallet", UserController.getReferralWallet);

export default router;
