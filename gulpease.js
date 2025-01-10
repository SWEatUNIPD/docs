const fs = require("fs");
const path = require("path");
const textStats = require("text-stats");
const glossario = require("./glossario.json");

/**
 *
 * @param {string} dir percorso dove ricercare tutti i file `.typ` ricorsivamente
 * @returns array di tutti i path ai file Typst all'interno del percorso `dir`
 */
function searchFile(dir) {
  var out = [];
  const elements = fs.readdirSync(dir);
  elements.forEach((element) => {
    const elementPath = path.join(dir, element);
    const elementStats = fs.statSync(elementPath);

    if (elementStats.isDirectory() && !elementPath.includes("candidatura"))
      out = out.concat(searchFile(elementPath));
    else {
      path.parse(element).ext === ".typ" &&
        path.parse(element).name !== "template" &&
        !elementPath.includes("candidatura") &&
        !path.parse(element).name.includes("glossario") &&
        out.push(elementPath);
    }
  });

  return out;
}

/**
 *
 * @param {string} filePath percorso del file `.typ` in cui cercare `word`
 * @param {string} word  la parola da cercare all'interno del file
 * @returns `true` se la prima occorrenza è stata individuata ed è riferita al glossario, false altrimenti (anche il caso in cui il riferimento al glossario non sia stato inserito alla prima occorrenza)
 */
function calcGulpease(filePath) {
  const blob = fs.readFileSync(filePath);
  const commentPattern = /\/\*[\s\S]*?\*\/|([^\\:]|^)\/\/.*$/gm; //https://stackoverflow.com/questions/5989315/regex-for-match-replacing-javascript-comments-both-multiline-and-inline
  const importPattern = /#import ".*"\s*:\s*\*/g;
  const functionPattern = /#show:[\s\S]*?content\s*:\s*content[\s\S]*?\)/g;
  const titlesPattern = /^=+\s.*/gm;
  const backlogFuncPattern = /#backlog\(.*\)[\s\n]*\)/gs;
  const formatLinkPattern =
    /#formatLink\([\s\n]*(label:[\s\n]*"[^\s\n]*",[\s\n]*)?url:[\s\n]*"[^\s\n]*"(,[\s\n]*label:[\s\n]*"[^\s\n]*")?[\s\n]*\)/gm;

  const content = blob
    .toString()
    .replaceAll(formatLinkPattern, "")
    .replaceAll(commentPattern, "")
    .replaceAll(importPattern, "")
    .replaceAll(functionPattern, "")
    .replaceAll(titlesPattern, "")
    .replaceAll(backlogFuncPattern, "")
    .replaceAll(/#rifGlossario\("([^"]+)"\)/g, "$1")
    .toLowerCase();

  const stats = textStats.stats(content);
  console.log(`Indice di Gulpease di "${filePath}":`, stats.gulpease);
}

searchFile(".").forEach((path) => {
  calcGulpease(path);
});

var wallOfText = "";

for (letter in glossario) {
  for (termine in glossario[letter]) {
    wallOfText += termine + " " + glossario[letter][termine] + "\n";
  }
}

const stats = textStats.stats(wallOfText);

console.log(
  "Indice di Gulpease del glossario (./glossario.json):",
  stats.gulpease
);
