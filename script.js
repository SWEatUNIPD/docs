const fs = require("fs");
const path = require("path");
const baseUrl = "https://sweatunipd.github.io/docs/";
const outPath = "./output.json";

function getFiles(dir) {
  try {
    const files = fs.readdirSync(dir);
    const out = [];
    files
      .filter((file) => path.parse(file).ext === ".pdf")
      .forEach((file) => {
        const link = baseUrl.concat(path.join(dir, file));
        const fileName = path.parse(file).name;
        const regex = /_ver\d+\.\d+(\.\d+)?/g;
        const match = fileName.match(regex);
        const versione = match ? match[0].replace("_ver", "") : null;
        const nome = fileName.replace(regex, "").replaceAll("_", " ");
        out.push({
          nome,
          versione,
          link,
        });
      });
    return out;
  } catch (err) {
    return [];
  }
}

const fileList = {
  candidatura: {
    verbali_esterni: getFiles("candidatura/verbali/esterni"),
    verbali_interni: getFiles("candidatura/verbali/interni"),
    documenti_generali: getFiles("candidatura"),
  },
  rtb: {
    verbali_esterni: getFiles("rtb/verbali/esterni"),
    verbali_interni: getFiles("rtb/verbali/interni"),
    documenti_generali: getFiles("rtb"),
  },
  pb: {
    verbali_esterni: getFiles("pb/verbali/esterni"),
    verbali_interni: getFiles("pb/verbali/interni"),
    documenti_generali: getFiles("pb"),
  },
};

try {
  fs.writeFileSync(outPath, JSON.stringify(fileList), "utf8");
  console.log("File scritto correttamente");
} catch (err) {
  console.error("Errore in scrittura: ", err);
}
