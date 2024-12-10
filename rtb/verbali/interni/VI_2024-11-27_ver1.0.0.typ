#import "/templates/template.typ": *

#show: content => verbale(
  data: "27 novembre 2024",
  responsabile: "Riccardo Milan",
  redattori: ("Davide Picello",),
  titolo: "Sesta riunione",
  verificatori: ("Andrea Precoma",),
  riassunto: [Riunione interna di fine primo _sprint_, dove ci si è allineati ed accordati sugli obbiettivi da perseguire durante il secondo _sprint_.],
  versioni: (
    "1.0.0",
    [3/12/2024],
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
Dopo l'incontro di fine _#rifGlossario("sprint")_ con l'azienda il 27 novembre, in cui sono stati chiariti vari dubbi, il gruppo si è confrontato internamente. In questo incontro è stato fatto il punto della situazione in vista del nuovo _sprint_ previsto dal 28 novembre all'11 dicembre 2024. 

= Ordine del giorno
Durante la discussione interna sono emerse varie attività da completare nel prossimo _sprint_, principalmente legate alla documentazione. 
In particolare:

== Strumenti per il diagramma di Gantt
Informarsi riguardo a strumenti da utilizzare per il #rifGlossario("diagramma di Gantt") alternativi a quello fornito da #rifGlossario("Github"). Quest'ultimo offre la possibilità di avere quel tipo di diagramma, ma non comprende alcune funzionalità di cui abbiamo bisogno, come la gestione delle dipendenze.

== Creare una versione iniziale del simulatore
È stato deciso di dedicare la prima settimana dello _sprint_ allo studio e all'approfondimento di #rifGlossario("Docker"), #rifGlossario("Apache Kafka") ed #rifGlossario("Apache Nifi"), con l'obiettivo di prepararsi alla seconda settimana, dove si realizzerà una prima implementazione concreta del simulatore.

Imparare queste tecnologie è necessario per facilitare la collaborazione sul codice ed acquisire familiarità con questi nuovi strumenti.

== Nuovo sistema di versioning
Durante l'incontro è stato deciso di modificare il sistema di _versioning_. Si terranno sempre 3 numeri per _major_, _minor_ e _patch_ ma viene modificato il significato di questi:
- _Major_: cambierà con le approvazioni, quindi in corrispondenza di RTB e PB.
- _Minor_: aggiunta o modifica del contenuto.
- _Patch_: per modifiche di stile e correzioni grammaticali (no modifiche di contenuto).

Questo cambaimento è scaturito da un dubbio del gruppo: se la stesura di un documento impiega più di uno _sprint_, dobbiamo aggiornare il responsabile o rimane sempre lo stesso ?

Dopo un confronto, anche con il professor Vardanega, abbiamo capito che il responsabile di un documento è colui che ricopre tale ruolo al momento dell'approvazione finale del documento. Proprio per questo motivo è necessario modificare il sistema di _versioning_, cambiando il significato degli indici. In questo modo l'incremento del primo indice avverrà solo nei momenti di approvazione finale del documento, e non più ad ogni modifica.

È quindi necessario modificare il contenuto del documento Norme di Progetto e la versione di alcuni file.

== Inizio stesura Piano di Qualifica
Iniziare la stesura del Piano di Qualifica: un documento che presenta le procedure di verifica e validazione che implementeremo nel progetto, per garantirne la qualità.

La scrittura di questo documento inizia ora in quanto si è preferito dare priorità ad altri documenti, coerentemente con l'ordine degli argomenti spiegati a lezione.

== Casi d'uso
Rivedere e migliorare i casi d'uso sulla base del confronto con l'azienda, disponibili in dettaglio nel documento VE_2024-11-27. Inoltre, durante questo _sprint_, il _team_ si propone di elaborare e documentare nuovi casi d'uso, ampliando così la copertura delle possibili interazioni e scenari. 

== Secondo sprint Piano di Progetto
Nel documento Piano di Progetto:
- Completare il capitolo del primo _sprint_, scrivendo l'ultima sezione relativa alla retrospettiva: momento in cui il _team_ riflette su come è andato il lavoro durante lo _sprint_ appena concluso, individuando aspetti positivi, aree di miglioramento e azioni concrete per ottimizzare i processi futuri.

- Scrivere la sezione relativa al secondo _sprint_.

== Miglioramento del template
È stato deciso di modificare leggermente il _template_ #rifGlossario("Typst") in seguito ad alcune problematiche sorte durante la scrittura di alcuni documenti. In particolare:
- Aggiungere la generazione automatica dei grafici.
- Aggiungere l'indice delle immagini e delle tabelle al template.

== Miglioramento test del glossario
Si è notata anche la necessità di modificare il _test_ del glossario in quanto segnala dei falsi positivi. Un esempio è la segnalazione di parole appartenenti al glossario contenute in altre parole (per esempio, il _test_, dalla parola "#rifGlossario("Github")" segnalava la presenza della parola "#rifGlossario("Git")"), oppure la segnalazione della parola "_#rifGlossario("backlog")_" quando questa era, però, usata come comando Typst "`#backlog()`".

= Conclusioni
Durante questo incontro è stata presa la decisione di aggiornare il meccanismo di _versioning _e di apportare modifiche al _template_.

Inoltre sono state prese varie decisioni per il prossimo _sprint_. In particolare di avanzare in modo significativo con la documentazione, migliorando il documento Analisi dei Requisiti, continuando il Piano di Progetto ed iniziando il Piano di Qualifica. 

Si integrerà nel processo organizzativo uno strumento specifico per la gestione dei diagrammi di Gantt, così da migliorare la pianificazione ed il monitoraggio delle attività.

Infine si punta a completare e presentare, durante il prossimo #rifGlossario("SAL") previsto per il 4 dicembre, una prima versione funzionante del simulatore dati, realizzata utilizzando Docker.

= Tabella delle decisioni
#backlog(content: (
  [ORG],
  [Andrea Perozzo],
  [Informarsi riguardo a programmi da utilizzare per il diagramma di Gantt],

  [ORG],
  [Andrea Precoma,\ Riccardo Milan],
  [Prima bozza del simulatore con Docker],

  link("https://github.com/SWEatUNIPD/docs/issues/48")[#text(underline("D0048"))],
  [Davide Picello],
  [Stesura VE_2024-11-27],

  link("https://github.com/SWEatUNIPD/docs/issues/49")[#text(underline("D0049"))],
  [Davide Picello],
  [Stesura VI_2024-11-27],

  link("https://github.com/SWEatUNIPD/docs/issues/50")[#text(underline("D0050"))],
  [Klaudio Merja,\ Davide Marin],
  [Migliorare casi d'uso],

  link("https://github.com/SWEatUNIPD/docs/issues/51")[#text(underline("D0051"))],
  [Klaudio Merja,\ Davide Marin],
  [Scrivere nuovi casi d'uso],

  link("https://github.com/SWEatUNIPD/docs/issues/53")[#text(underline("D0053"))],
  [Davide Picello],
  [Redazione _sprint_ 2 nel Piano di Progetto],

  link("https://github.com/SWEatUNIPD/docs/issues/54")[#text(underline("D0054"))],
  [Andrea Perozzo],
  [Stesura della retrospettiva _sprint_ 1],

  link("https://github.com/SWEatUNIPD/docs/issues/55")[#text(underline("D0055"))],
  [Davide Martinelli],
  [Inizio stesura del Piano di Qualifica],

  link("https://github.com/SWEatUNIPD/docs/issues/59")[#text(underline("D0059"))],
  [Andrea Precoma],
  [Modifica Norme di Progetto (_versioning_)],

  link("https://github.com/SWEatUNIPD/docs/issues/60")[#text(underline("D0060"))],
  [Klaudio Merja],
  [Modifica al _template_, al _test_ del Glossario e _versioning_ di alcuni documenti]
))