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
  partecipanti: ( "Andrea Perozzo",
                  "Andrea Precoma",
                  "Davide Marin",
                  "Davide Martinelli",
                  "Davide Picello",
                  "Klaudio Merja"))

= Ordine del giorno
La quattordicesima riunione è stata svolta il giorno dopo l'incontro conclusivo con l'azienda Sync Lab e nella stessa mattinata del colloquio con il professor Cardin. Questo momento ha avuto come obiettivo quello di delineare le ultime modifiche per preparare definitivamente il prodotto per il colloquio PB.

= Incontro con l'azienda
Come richiesto dall'azienda, e felicemente accolto dal gruppo, l'ultimo incontro con l'azienda Sync Lab è avvenuto nel loro ufficio di Padova il pomeriggio del 19 Marzo 2025. L'azienda ha voluto fare una prova di esposizione del prodotto in vista dei colloqui PB. Tale incontro è stato molto utile per il gruppo in quanto l'azienda ospita da anni gruppi per il progetto di ingegneria del software e quindi vanta una certa esperienza nella valutazione dei progetti.

L'azienda si è dimostrata contenta e soddisfatta del percorso del gruppo, giudicandolo positivamente.

= Colloquio con il professor Cardin

== Architettura K
Durante il colloquio con il professor Cardin il gruppo ha esposto i propri dubbi riguardo l'architettura di _deployment_ scelta, l'architettura K, per capire con certezza quale fosse il modello logico sottostante. Il professore ci ha confermato essere il modello di _#rifGlossario("stream processing")_, come il gruppo l'aveva pensato.

== API
Il gruppo aveva scritto un requisito, nell'Analisi dei Requisiti, che trattava il cambio di stato di una _flag_ nel #rifGlossario("database") riguardo la fine di un noleggio. Tale cambiamento avveniva tramite l'unica #rifGlossario("API") scritta nel progetto ed il gruppo voleva capire se fosse necessario creare un'architettura per una singola API. Discutendone con il professore si è convenuti sul fatto che sarebbe inutile sviluppare un architettura per una singola API e quindi, piuttosto, di rimuovere il requisito.

= Conclusioni
Il gruppo concluderà in settimana le ultime attività rimaste e si preparerà per i colloqui PB con il professor Cardin, fissato il 31 Marzo 2025 per indisponibilità del professore nella settimana precedente, e successivamente con il professor Vardanega.

= Tabella delle decisioni
#backlog(content: (
  link("https://github.com/SWEatUNIPD/docs/issues/193")[D0193],
  [Andrea Perozzo, Davide Picello],
  [Modifiche Analisi dei Requisiti],
))
