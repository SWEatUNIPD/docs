#import "/templates/template.typ": *

#show: content => verbale(
  data: "20 Marzo 2025",
  responsabile: "Klaudio Merja",
  redattori: ("Davide Picello",),
  titolo: "Quattordicesima riunione",
  verificatori: ("Andrea Precoma",),
  destinatari: ("Gruppo SWE@",),
  content: content,
)

#infoRiunione(
  luogo: "Chiamata Discord",
  data: "20/03/2025",
  ora: "9:00",
  durata: "1 ora",
  partecipantiEsterni: (),
  partecipanti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
  ),
)

= Ordine del giorno
La quattordicesima riunione è stata svolta il giorno dopo l'incontro conclusivo con l'azienda Sync Lab e nella stessa mattinata del colloquio con il professor Cardin. Questo momento ha avuto come obiettivo quello di delineare le ultime modifiche per preparare definitivamente il prodotto per il colloquio PB.

= Incontro con l'azienda
Come richiesto dall'azienda l'ultimo incontro con l'azienda Sync Lab è avvenuto nel loro ufficio di Padova il pomeriggio del 19 Marzo 2025. L'azienda ha voluto fare una prova di esposizione del prodotto in vista dei colloqui PB. Tale incontro è stato molto utile per il gruppo in quanto l'azienda partecipa da anni al progetto di Ingegneria del _Software_ vantando quindi una certa esperienza nella valutazione dei lavori.
L'azienda si è dimostrata contenta e soddisfatta del percorso del gruppo, giudicandolo positivamente.

= Colloquio con il professor Cardin

== Architettura K
Durante il colloquio con il professor Cardin il gruppo ha esposto i propri dubbi riguardo l'architettura di _deployment_ scelta, l'architettura K, per capire quale potesse essere il modello logico da accompagnare. Il gruppo ha proposto l'architettura _Event Driven_, tuttavia il professore ha spiegato che questa tratta la comunicazione delle componenti. Ha suggerito quindi una architettura di processo, in particolare l'architettura _Data Streaming_.

== API
Durante la prima parte del progetto il gruppo aveva definito un caso d'uso che trattava il cambio di stato di una _flag_ nel #rifGlossario("database") riguardo la fine di un noleggio. Tale comportamento non può essere affidato ad #rifGlossario("Apache Kafka") in quanto non affidabile per il trasferimento di messaggi, bensì a una chiamata #rifGlossario("API"). Questa tuttavia, come ha confermato il professore, necessiterebbe di una propria architettura. Poiché sarebbe stato richiesto molto sforzo per soddisfare un solo requisito che, come ha affermato il professore, esulerebbe dallo scopo del progetto, ovvero un applicativo in _real time_, è stato concordato di eliminare il requisito.
Il gruppo concluderà in settimana le ultime attività rimaste e si preparerà per i colloqui PB con il professor Cardin, fissato il 31 Marzo 2025 per indisponibilità del professore nella settimana precedente, e successivamente con il professor Vardanega.

= Tabella delle decisioni
#backlog(
  content: (
    link("https://github.com/SWEatUNIPD/docs/issues/193")[D0193],
    [Andrea Perozzo, \ Davide Picello],
    [Modifiche Analisi dei Requisiti],
    link("https://github.com/SWEatUNIPD/NearYou/issues/28")[N0028],
    "Riccardo Milan",
    [Creazione _dashboard_ dei grafici in Grafana (requisito opzionale)]
  ),
)
