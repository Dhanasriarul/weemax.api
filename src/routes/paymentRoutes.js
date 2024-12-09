import express from "express";
import { PaymentController } from "../controllers/paymentController.js";

const router = express.Router();

router.post("/ccavRequestHandler", PaymentController.postReq);
router.post("/ccavResponseHandler", PaymentController.postRes);

export default router;
