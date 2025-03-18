#import "/templates/template.typ": *

#show: content => verbale(
  data: "17 Marzo 2025",
  responsabile: "Klaudio Merja",
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l.",
  ),
  uso: "Esterno",
  redattori: ("Picello Davide",),
  titolo: "SAL intermedio ottavo sprint",
  verificatori: (
    "TODO",
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(
  luogo: "Google Meet",
  data: "17/03/2025",
  ora: "11:30",
  durata: "mezz'ora",
  partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"),
  partecipanti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
  ),
)

= Sintesi dell'incontro
Il gruppo ha mostrato i progressi ottenuti riguardo l'#rifGlossario("MVP") e discusso di alcuni piccoli particolari a riguardo. Inoltre ci si è accordati riguardo l'ultimo incontro con l'azienda che si svolgerà in presenza.

== Dimostrazione MVP
Il gruppo ha esposto il grado di avanzamento del MVP, facendo anche una piccola dimostrazione. Questa consisteva di una simulazione di una decina di utenti, visibili dalla mappa di #rifGlossario("Grafana"). Questo è stato possibile in seguito a delle modifiche proprio all'immagine di Grafana, in quanto nativamente non permetteva di visualizzare più di un percorso alla volta.

== Osservazioni
Le osservazioni sono state riguardo piccoli dettagli del prodotto, segno di comunque un buon lavoro svolto. In particolare l'azienda ha proposto di rendere più carine le tracce dei percorsi lasciando solo gli ultimi punti generati, andando a creare un effetto di tipo serpente che si muove sulla mappa.
È stato anche chiesto di vedere insieme, più che altro per curiosità, il #rifGlossario("prompt") con cui vengono fatte le richieste all'#rifGlossario("LLM").
È stata fatta una domanda da parte del gruppo per capire se le chiamate #rifGlossario("API") necessitino di un'architettura precisa, ma essendo una cosa legata alla _web-app_, un requisito facoltativo che il gruppo non ha intenzione di soddisfare, l'azienda ha risposto che non è necessario. 

== Ultimo incontro
L'azienda ha proposto di svolgere l'ultimo incontro in presenza, dove il gruppo mostrerà il prodotto finito e farà una prova di esposizione.
Questo incontro è stato fissato mercoledì 19 marzo 2025 presso la sede dell'azienda.

== Conclusioni
L'azienda si è mostrata molto soddisfatta del lavoro svolto, rinnovando l'invito all'incontro finale in programma questa settimana.