import sqlString from "sqlstring";
import conn from "../../config/db.js";
import { dirname, join } from "path";
import { fileURLToPath } from "url";
import Utils from "../utils/utils.js";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
export class PageController {
  static getPage(req, res) {
    let route = req.query.route;

    let query = sqlString.format(
      "SELECT * FROM Page WHERE route = ? AND status='published'",
      [route]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      if (result.length > 0) {
        return res.json({
          success: true,
          page: result[0],
        });
      } else {
        return res.json({
          success: false,
          message: "Page not found",
        });
      }
    });
  }

  static getSections(req, res) {
    let pageId = req.query.pageId;

    let query = sqlString.format(
      "SELECT * FROM Section WHERE pageId = ? AND status = 'published' ORDER BY position ASC",
      [pageId]
    );

    conn.query(query, (err, result) => {
      if (err) {
        return res.json({
          success: false,
          message: "Something went wrong",
        });
      }

      if (result.length === 0) {
        return res.json({
          success: false,
          message: "No sections found",
        });
      }

      let sections = result;

      // sections.sort((a, b) => a.sectionPosition - b.sectionPosition);

      for (let index in sections) {
        let section = sections[index];
        section.data = JSON.parse(section.data);
      }

      return res.json({
        success: true,
        sections,
      });
    });
  }

  // static async uploadImage(req, res) {
  //   const { image, fileName } = req.body;
  //   await Utils.saveImage(image, fileName).then((url) => {
  //     console.log(url);
  //     return res.json({
  //       success: true,
  //       url: url,
  //     });
  //   });
  // }

  static async uploadImage(req, res) {
    const { image, fileName } = req.body;

    // get image size
    const imageBuffer = Buffer.from(image, "base64");
    const imageSizeInBytes = imageBuffer.length;
    const imageSizeInKb = imageSizeInBytes / 1000;
    const imageSizeInMb = imageSizeInKb / 1000;

    // check image size
    if (imageSizeInMb > 1) {
      return res.json({
        success: false,
        error: "Image size should not be more than 1MB.",
      });
    }

    try {
      const url = await Utils.saveImage(image, fileName);
      console.log(url);
      return res.json({
        success: true,
        srcUrl: url,
      });
    } catch (error) {
      // Handle any errors that occur during the image saving process
      return res.status(500).json({
        success: false,
        error: "An error occurred while saving the image.",
      });
    }
  }

  static getImage(req, res) {
    const imageName = req.params.name;
    const imagePath = join(__dirname, "../../public/" + imageName);
    res.sendFile(imagePath);
  }
}
