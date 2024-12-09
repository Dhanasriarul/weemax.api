import express from "express";
import { authenticateToken } from "../middlewares/authMiddleware.js";
import { CareerController } from "../controllers/careerController.js";

const router = express.Router();

router.post("/click", CareerController.clickCareer);

router.use(authenticateToken);

router.get("/status", CareerController.getCareerStatus);
router.get("/checkCodeAvailability", CareerController.checkCodeAvailability);
router.post("/apply", CareerController.applyForCareer);
router.get("/overview", CareerController.getCareerOverview);
router.get("/analytics/clicks", CareerController.getCareerClicksAnalytics);
router.get("/analytics/purchases", CareerController.getPurchasedAnalytics);
router.get("/analytics/profits", CareerController.getProfitsAnalytics);

export default router;
