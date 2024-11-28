#import "/templates/template.typ": *

#show: content => verbale(
  data: "27 novembre 2024",
  responsabile: "Davide Picello",
  redattori: ("Davide Picello",),
  titolo: "Sesta riunione",
  verificatori: ("Andrea Precoma",),
  riassunto: "Riunione interna di fine primo sprint, dove ci si è allineati ed accordati sugli obbiettivi da perseguire durante il secondo sprint",
  versioni: (
    "1.0.0",
    [28/11/2024],
    "Davide Picello",
    "Andrea Precoma",
    [- Stesura del verbale],
  ),
  content: content,
)

#infoRiunione(
  data: "27/11/2024",
  durata: "2 ore",
  luogo: "Chiamata Discord",
  ora: "16:40",
  partecipantiEsterni: (),
)

= Sintesi
Dopo l'incontro di fine #rifGlossario("Sprint") con l'azienda, il 27 novembre 2024 (`VE_2024-11-27`), in cui sono stati chiariti vari dubbi, ci siamo confrontati internamente per fare il punto della situazione in vista del nuovo sprint 28 Novembre - 11 Dicembre 2024.

= Ordine del giorno
Durante la discussione interna sono emerse varie attività da completare nel prossimo sprint, la maggior parte legate alla documentazione. In particolare:
- Informarsi rigardo a programmi da utilizzare per il diagramma di Gantt in quanto, #rifGlossario("Github") offre la possibilità di avere quel tipo di diagramma, ma non offre alcune funzionalità di cui abbiamo bisogno.
- Creare una prima versione del simulatore utilizzando #rifGlossario("Docker")
- Redigere il verbale esterno del 2024-11-27
- Redigere il verbale interno del 2024-11-27
- Migliorare i casi d'uso dopo il confronto con l'azienda
- Scrivere ulteriori casi d'uso
- Redarre la sezione inerente al secondo sprint nelle Norme di progetto
- Scrivere la retrospettiva inerente al primo sprint
- Iniziare la stesura del Piano di qualifica

= Conclusioni
Per questo sprint si punta, quindi, ad avanzare significativamente con la documentazione e cercare di implementare al processo organizzativo un modo per creare il diagramma di Gantt.

Un altro obbiettivo è di persentare, al prossimo #rifGlossario("SAL") fissato il 4 Dicembre, una prima versione del simulatore dati, utilizzando Docker.

#pagebreak()
= Tabella delle decisioni
#backlog(content: (
  "ORG",
  "Gruppo",
  "Informarsi riguardo a programmi da utilizzare per il diagramma di Gantt",

  "ORG",
  "Gruppo",
  "Prima bozza del simulatore con Docker",

  link("https://github.com/SWEatUNIPD/docs/issues/48")[#text(underline("D0048"))],
  "Davide Picello",
  "Redigere verbale esterno 2024-11-27",

  link("https://github.com/SWEatUNIPD/docs/issues/49")[#text(underline("D0049"))],
  "Davide Picello",
  "Redigere verbale interno 2024-11-27",

  link("https://github.com/SWEatUNIPD/docs/issues/50")[#text(underline("D0050"))],
  "Klaudio Merja,\nDavide Marin",
  "Migliorare casi d'uso già scritti",

  link("https://github.com/SWEatUNIPD/docs/issues/51")[#text(underline("D0051"))],
  "Klaudio Merja,\nDavide Marin",
  "Scrivere nuovi casi d'uso",

  link("https://github.com/SWEatUNIPD/docs/issues/53")[#text(underline("D0053"))],
  "Andrea Perozzo",
  "Redazione della sezione sprint 2 nel file Norme di Progetto",

  link("https://github.com/SWEatUNIPD/docs/issues/54")[#text(underline("D0054"))],
  "Andrea Perozzo",
  "Stesura della retrospettiva",

  link("https://github.com/SWEatUNIPD/docs/issues/55")[#text(underline("D0055"))],
  "Davide Marin",
  "Inizio stestura del Piano di Qualifica",
))