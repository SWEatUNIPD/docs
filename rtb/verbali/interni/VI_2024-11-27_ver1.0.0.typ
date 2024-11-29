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
Dopo l'incontro di fine #rifGlossario("sprint") con l'azienda il 27 novembre, in cui sono stati chiariti vari dubbi, il gruppo si è confrontato internamente. In questo incontro è stato fatto il punto della situazione in vista del nuovo sprint previsto dal 28 novembre all'11 Dicembre 2024. 

Sono stati analizzati i progressi raggiunti e discusse le attività da completare nel prossimo sprint.

= Ordine del giorno
Durante la discussione interna sono emerse varie attività da completare nel prossimo sprint, principalmente legate alla documentazione. 
In particolare:

== Strumenti per il Diagramma di Gantt
Informarsi riguardo a strumenti da utilizzare per il #rifGlossario("diagramma di Gantt") alternativi a  #rifGlossario("Github"). Quest'ultimo offre la possibilità di avere quel tipo di diagramma, ma non comprende alcune funzionalità di cui abbiamo bisogno, come la gestione delle dipendenze.

== Creare una versione iniziale del simulatore utilizzando Docker
L'obiettivo principale è facilitare la collaborazione sul codice e acquisire familiarità con questa tecnologia. È stato deciso di dedicare la prima settimana dello sprint allo studio e all'approfondimento di #rifGlossario("Docker"), mentre nella seconda settimana si procederà con la realizzazione di una prima implementazione concreta.

== Nuovo sistema di versioning
Durante l'incontro è stato deciso di modificare il sistema di versioning per una maggiore chiarezza. Si terranno sempre 3 numeri per _Major_, _Minor_ e _Patch_ ma viene modificato il significato di questi:
- _Major_: cambierà con le approvazioni, quindi in corrispondenza di RTB e PB
- _Minor_: aggiunta o modifica del contenuto
- _Patch_: per modifiche di stile e correzioni grammaticali (no modifiche di contenuto)

È quindi necessario modificare il documento Norme di progetto

== Inizio stesura piano di qualifica
Iniziare la stesura del Piano di qualifica: un documento che presenta le procedure di verifica e validazione che implementeremo nel progetto, per garantirne la qualità.

== Casi d'uso
Rivedere e migliorare i casi d'uso sulla base del confronto con l'azienda, disponibili in dettaglio nel documento VE_2024-11-27. Inoltre, durante questo sprint, il team si propone di elaborare e documentare nuovi casi d'uso, ampliando così la copertura delle possibili interazioni e scenari. 

== Secondo sprint piano di progetto
Nel documento Piano di progetto:
- Completare il capitolo del primo sprint, scrivendo l'ultima sezione relativa alla retrospettiva: momento in cui il team riflette su come è andato il lavoro durante lo sprint appena concluso, individuando aspetti positivi, aree di miglioramento e azioni concrete per ottimizzare i processi futuri.

- Scrivere la sezione relativa al secondo sprint

== Verbali del 27 novembre
Redigere il verbale esterno del 2024-11-27 ed il verbale interno del 2024-11-27.

== Miglioramento del template
???


= Conclusioni
Durante questo incontro è stata presa la decisione di aggiornare il meccanismo di versioning e di apportare modifiche al template.

Inoltre sono state prese varie decisioni per il prossimo sprint. In particolare di avanzare in modo significativo con la documentazione, migliorando il documento Analisi dei requisiti, continuando il Piano di progetto ed iniziando il Piano di qualifica. 

Si integrerà nel processo organizzativo uno strumento specifico per la gestione dei diagrammi di Gantt, così da migliorare la pianificazione ed il monitoraggio delle attività.

Infine si punta a completare e presentare, durante il prossimo #rifGlossario("SAL") previsto per il 4 dicembre, una prima versione funzionante del simulatore dati, realizzata utilizzando Docker.

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
  "Redazione della sezione sprint 2 nel documento Piano di Progetto",

  link("https://github.com/SWEatUNIPD/docs/issues/54")[#text(underline("D0054"))],
  "Andrea Perozzo",
  "Stesura della retrospettiva",

  link("https://github.com/SWEatUNIPD/docs/issues/55")[#text(underline("D0055"))],
  "Davide Marin",
  "Inizio stesura del Piano di Qualifica",

  link("https://github.com/SWEatUNIPD/docs/issues/59")[#text(underline("D0059"))],
  "Andrea Precoma",
  "Modifica alle Norme di progetto per il nuovo meccanismo di versioning",

  link("https://github.com/SWEatUNIPD/docs/issues/60")[#text(underline("D0060"))],
  "Klaudio Merja",
  "Modifica al template"
))