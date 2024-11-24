#import "/templates/template.typ": *

#show: content => verbale(
  data: "11 Novembre 2024",
  uso: "Interno",
  responsabile: "Klaudio Merja",
  redattori: ("Riccardo Milan", "Klaudio Merja"),
  titolo: "Glossario",
  verificatori: ("Andrea Precoma", "Andrea Perozzo"),
  versioni: (
    "1.1.0",
    "14/11/2024",
    "Klaudio Merja",
    "Andrea Precoma",
    [- Aggiunti i termini "Way of Working", "GenAI", "prompt" e "ROI"],
    "1.0.0",
    "11/11/2024",
    "Riccardo Milan",
    "Andrea Perozzo",
    [- Redazione glossario con termini del capitolato],
  ),
  content: content,
)

= Introduzione
Il seguente documento ha lo scopo di disambiguare e definire correttamente i termini specifici e non banali del dominio d'uso, presenti nella documentazione.
\
La presenza di un termine o espressione all'interno del `Glossario` negli altri documenti viene indicata aggiungendogli un apice con la lettera "g" e sottolineando l'intera espressione (es. #rifGlossario("Apache Superset")) per indicare chiaramente l'intero costrutto da cercare nel glossario.

#pagebreak()
#generaGlossario(json("../glossario.json"))
