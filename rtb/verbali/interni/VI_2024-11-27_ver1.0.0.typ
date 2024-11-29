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
Dopo l'incontro di fine #rifGlossario("Sprint") con l'azienda, il 27 novembre 2024 (`VE_2024-11-27`), in cui sono stati chiariti vari dubbi, il gruppo si è confrontato internamente. In questo incontro è stato fatto il punto della situazione in vista del nuovo sprint previsto dal 28 Novembre all'11 Dicembre 2024. 

Sono stati analizzati i progressi raggiunti e discusse le attività da completare nel prossimo sprint.

= Ordine del giorno
Durante la discussione interna sono emerse varie attività da completare nel prossimo sprint, principalmente legate alla documentazione. 
In particolare:

- Informarsi riguardo a strumenti da utilizzare per il diagramma di Gantt alternativi a  #rifGlossario("Github"). In quanto quest'ultimo offre la possibilità di avere quel tipo di diagramma, ma non di avere alcune funzionalità di cui abbiamo bisogno, come la gestione delle dipendenze.
- Creare una prima versione del simulatore utilizzando #rifGlossario("Docker")
- Redigere il verbale esterno del 2024-11-27
- Redigere il verbale interno del 2024-11-27
- Migliorare i casi d'uso dopo il confronto con l'azienda
- Scrivere ulteriori casi d'uso
- Redigere  la sezione relativa al secondo sprint nelle Norme di progetto
- Scrivere la retrospettiva relativa al primo sprint
- Iniziare la stesura del Piano di qualifica

= Conclusioni
Per il prossimo sprint si punta, quindi, ad:
- Avanzare significativamente con la documentazione 
- Cercare di integrare nel processo organizzativo uno strumento relativo ai diagramma di Gantt.
- Ultimare e presentare al prossimo #rifGlossario("SAL"), fissato il 4 Dicembre, una prima versione del simulatore dati utilizzando Docker.

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
  "Inizio stesura del Piano di Qualifica",
))