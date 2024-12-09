import jwt from "jsonwebtoken";
import dotenv from "dotenv";

dotenv.config();

function authenticateToken(req, res, next) {
  const authHeader = req.headers["authorization"];
  const token = authHeader && authHeader.split(" ")[1];

  if (token == null) {
    return res.json({
      success: false,
      message: "No token provided",
    });
  }

  jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, result) => {
    if (err) {
      return res.json({
        success: false,
        message: "Invalid token",
      });
    }

    let decodedToken = jwt.decode(token);

    req.user = decodedToken;

    next();
  });
}

export { authenticateToken };
