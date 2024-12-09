import dotenv from "dotenv";
import express from "express";
import cors from "cors";
import bodyParser from "body-parser";
import { router as routes } from "./src/routes/index.js";
import "./src/triggers/income.js";
import ejs from "ejs";
import { fileURLToPath } from "url";
import { dirname, join } from "path";
import path from "path";
import multer from "multer";
import { v4 as uuidv4 } from "uuid";
const uuid = uuidv4();

dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const app = express();

app.use(cors({ origin: "*" }));

app.use(express.static("public"));
app.set("views", join(__dirname, "public"));
app.engine("html", ejs.renderFile);

app.use(bodyParser.json({ limit: "10mb" }));
// app.use(bodyParser.urlencoded({ limit: '10mb', extended: true }));

app.get("/platform/api/status", (req, res) => {
  return res.json({
    success: true,
    message: "Weemax Platform API is running...",
  });
});

app.use("/platform/api", routes);

// Set storage for uploaded files using multer
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "public/"); // The destination folder for uploaded images
  },
  filename: (req, file, cb) => {
    cb(null, file.fieldname + "-" + uuid + path.extname(file.originalname));
  },
});

const upload = multer({ storage: storage });

app.post("/platform/api/upload", upload.single("image"), (req, res) => {
  if (!req.file) {
    return res.status(400).send("No file uploaded.");
  }

  // Assuming you want to serve the uploaded images statically from the 'uploads' folder
  const fileLink = `${process.env.DOMAIN}/api/page/public/${req.file.filename}`;
  // "/public/" + req.file.filename;

  // res.send({ link: fileLink });
  return res.json({
    success: true,
    srcUrl: fileLink,
  });
});

app.listen(process.env.PORT, () => {
  console.log(`Server is running at port ${process.env.PORT}`);
});
