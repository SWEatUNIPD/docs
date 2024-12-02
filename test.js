const fs = require("fs");
const path = require("path");

/**
 *
 * @param {string} dir percorso dove ricercare tutti i file `.typ` ricorsivamente
 * @returns array di tutti i path ai file typst all'interno del percorso `dir`
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
function checkOccurrence(filePath, word) {
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
    .toLowerCase();

  const glossaryRefPattern = new RegExp(
    `\\b${word.toLowerCase()}\\b|\\*${word.toLowerCase()}\\*|_${word.toLowerCase()}_|#rifglossario\\("${word.toLowerCase()}"\\)` //FIXME: matchava *word* ma non _word_, verificare perché
  );
  const match = content.match(glossaryRefPattern);
  return match ? match[0].length == word.length + 17 : true;
}

const glossario = require("./glossario.json");

searchFile(".").forEach((path) => {
  for (letter in glossario) {
    for (word in glossario[letter]) {
      if (checkOccurrence(path, word) == false)
        console.log(
          `\x1b[1;35m${word}\x1b[0;35m in \x1b[4;35m${path}\x1b[0;35m mancante \x1b[0m`
        );
    }
  }
});
