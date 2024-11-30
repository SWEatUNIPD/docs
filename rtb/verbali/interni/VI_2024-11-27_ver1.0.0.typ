#import "/templates/template.typ": *

#show: content => verbale(
  data: "27 novembre 2024",
  responsabile: "Davide Picello",
  redattori: ("Davide Picello",),
  titolo: "Sesta riunione",
  verificatori: ("Andrea Precoma",),
  riassunto: "Riunione interna di fine primo _sprint_, dove ci si è allineati ed accordati sugli obbiettivi da perseguire durante il secondo _sprint_",
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
Dopo l'incontro di fine #rifGlossario("sprint") con l'azienda il 27 novembre, in cui sono stati chiariti vari dubbi, il gruppo si è confrontato internamente. In questo incontro è stato fatto il punto della situazione in vista del nuovo _sprint_ previsto dal 28 novembre all'11 dicembre 2024. 

Sono stati analizzati i progressi raggiunti e discusse le attività da completare nel prossimo _sprint_.

= Ordine del giorno
Durante la discussione interna sono emerse varie attività da completare nel prossimo _sprint_, principalmente legate alla documentazione. 
In particolare:

== Strumenti per il Diagramma di Gantt
Informarsi riguardo a strumenti da utilizzare per il #rifGlossario("diagramma di Gantt") alternativi a quello fornito da #rifGlossario("Github"). Quest'ultimo offre la possibilità di avere quel tipo di diagramma, ma non comprende alcune funzionalità di cui abbiamo bisogno, come la gestione delle dipendenze.

== Creare una versione iniziale del simulatore
È stato deciso di dedicare la prima settimana dello _sprint_ allo studio e all'approfondimento di #rifGlossario("Docker"), #rifGlossario("Apache Kafka") ed #rifGlossario("Apache Nifi"), con l'obiettivo di prepararsi alla seconda settimana, dove si realizzerà una prima implementazione concreta del simulatore.

Imparare queste tecnologie è necessario per facilitare la collaborazione sul codice ed acquisire familiarità con questi nuovi strumenti.

== Nuovo sistema di versioning
Durante l'incontro è stato deciso di modificare il sistema di _versioning _per una maggiore chiarezza. Si terranno sempre 3 numeri per _Major_, _Minor_ e _Patch_ ma viene modificato il significato di questi:
- _Major_: cambierà con le approvazioni, quindi in corrispondenza di RTB e PB;
- _Minor_: aggiunta o modifica del contenuto;
- _Patch_: per modifiche di stile e correzioni grammaticali (no modifiche di contenuto).

È quindi necessario modificare il documento Norme di progetto.

== Inizio stesura Piano di Qualifica
Iniziare la stesura del Piano di Qualifica: un documento che presenta le procedure di verifica e validazione che implementeremo nel progetto, per garantirne la qualità.

La scrittura di questo documento inizia ora in quanto si è preferito dare priorità ad altri documenti, coerentemente con l'ordine degli argomenti spiegati a lezione.

== Casi d'uso
Rivedere e migliorare i casi d'uso sulla base del confronto con l'azienda, disponibili in dettaglio nel documento VE_2024-11-27. Inoltre, durante questo _sprint_, il team si propone di elaborare e documentare nuovi casi d'uso, ampliando così la copertura delle possibili interazioni e scenari. 

== Secondo _sprint_ Piano di Progetto
Nel documento Piano di Progetto:
- Completare il capitolo del primo _sprint_, scrivendo l'ultima sezione relativa alla retrospettiva: momento in cui il team riflette su come è andato il lavoro durante lo _sprint_ appena concluso, individuando aspetti positivi, aree di miglioramento e azioni concrete per ottimizzare i processi futuri.

- Scrivere la sezione relativa al secondo _sprint_.

== Miglioramento del template
???


= Conclusioni
Durante questo incontro è stata presa la decisione di aggiornare il meccanismo di _versioning _e di apportare modifiche al template.

Inoltre sono state prese varie decisioni per il prossimo _sprint_. In particolare di avanzare in modo significativo con la documentazione, migliorando il documento Analisi dei Requisiti, continuando il Piano di Progetto ed iniziando il Piano di Qualifica. 

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
  "Redazione della sezione _sprint_ 2 nel documento Piano di Progetto",

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