import fs from "fs";
import { v4 as uuidv4 } from "uuid";
import dayjs from "dayjs";
const uuid = uuidv4();

export default class Utils {
  static saveImage(buffer, fileName) {
    let uniqueFileName = uuid + fileName;
    const imageBuffer = Buffer.from(buffer.split(",")[1], "base64");
    uniqueFileName = "public/" + uniqueFileName;
    return new Promise((resolve, reject) => {
      fs.writeFile(uniqueFileName, imageBuffer, (err) => {
        if (err) {
          console.error("An error occurred:", err);
          reject();
        } else {
          console.log("File has been saved!");
          resolve(`${process.env.DOMAIN}/api/page/${uniqueFileName}`);
        }
      });
    });
  }

  static utcToLocal(date) {
    let utcDate = new Date(date);

    let istDate = new Date(utcDate.getTime() + 5.5 * 60 * 60 * 1000);

    let formattedDate = dayjs(istDate).format("YYYY-MM-DD HH:mm:ss");

    return formattedDate;
  }
}
