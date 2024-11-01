#import "/templates/template.typ": *

#show: content=>documentoUfficiale(
  data: "01 novembre 2024", 
  responsabile: "Andrea Precoma", 
  redattori: ("Riccardo Milan",), 
  titolo: "Lettera di presentazione candidatura", 
  verificatori: (
    "Andrea Perozzo", 
    "Davide Marin", 
    "Davide Martinelli", 
    "Davide Picello", 
    "Klaudio Merja"
  ),
  content: content
)

Con la presente il gruppo SWE@ si candida alla realizzazione del progetto descritto nel capitolato C4 intitolato *_NearYou - Smart custom advertising platform_*, proposto dall'azienda *Sync Lab S.r.l*.
#v(10pt)
La documentazione viene resa disponibile all'indirizzo #text(weight: "bold", fill: rgb("04E824"),link("https://sweatunipd.github.io/docs/")), dove si possono consultare i seguenti documenti: 
- Dichiarazione impegni e preventivo costi;
- Valutazione dei capitolati;
-  Verbali interni ed esterni.
#v(10pt)
Come riportato nel documento _\"Dichiarazione impegni e preventivo costi\"_ il costo stimato del prodotto è di *12.670,00 €* e la data prevista di consegna è il *21/03/2025*.
#v(10pt)
Si riporta di seguito l'elenco dei componenti del gruppo con il relativo numero di matricola:
#align(center,
table(
  columns: (25%, 25%),
  inset: 7pt,
  align: (center, center),
  table.header([*Nominativo*], [*Matricola*]),
  "Davide Marin", "2068234",
  "Davide Martinelli", "2034341",
  "Klaudio Merja", "2075538",
  "Riccardo Milan", "2068231",
  "Andrea Perozzo", "2082849",
  "Davide Picello", "2034825",
  "Andrea Precoma", "2068227"
))
#v(20pt)
In attesa di un Vostro riscontro Vi porgiamo i nostri cordiali saluti.
#v(5pt)
_Gruppo SWE\@_.

