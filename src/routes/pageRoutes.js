import express from "express";
import { authenticateToken } from "../middlewares/authMiddleware.js";
import { PageController } from "../controllers/pageController.js";

const router = express.Router();

// Product
router.get("/getPage", PageController.getPage);
router.get("/getSections", PageController.getSections);
router.post("/upload", PageController.uploadImage);
router.get("/public/:name", PageController.getImage);

export default router;
