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
    "Andrea Precoma",
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
Il gruppo ha mostrato i progressi ottenuti riguardo il #rifGlossario("MVP") e discusso di alcuni piccoli particolari a riguardo. Inoltre ci si è accordati riguardo l'ultimo incontro con l'azienda che si svolgerà in presenza.

== Dimostrazione MVP
Il gruppo ha esposto il grado di avanzamento del MVP fornendo anche una piccola dimostrazione. Questa consisteva di una simulazione di una decina di utenti visibili sulla _dashboard_ di #rifGlossario("Grafana"). Questo è stato possibile in seguito a delle modifiche proprio all'immagine di Grafana, in quanto nativamente non permetteva di visualizzare più di un percorso alla volta.

== Osservazioni
Le osservazioni sono state riguardo piccoli dettagli del prodotto, segno quindi di un buon lavoro svolto. In particolare l'azienda ha proposto di evidenziare sulla mappa solo gli ultimi punti dei tracciati in modo da non inquinare la mappa nel caso ci fossero numerosi noleggi attivi. L'effetto quindi risulta essere come un "serpente" che si muove sulla mappa.
È stato anche chiesto di mostrare il #rifGlossario("prompt") con cui vengono fatte le richieste alla #rifGlossario("LLM"). È stato fatto notare che il _prompt engineering_ è piuttosto complesso ma se porta il risultato atteso è sufficiente.
Infine è stato affrontato il tema della chiamata API usata per condividere l'identificativo tra _client_ e _server_. La proponente ha fatto notare che sarebbe una funzionalità demandata alla applicazione _mobile_ dell'utente, prodotto che non è stato chiesto di sviluppare e quindi non pertinente col capitolato. La soluzione concordata per il MVP è stata quella di selezionare a priori un numero fisso di noleggi che andranno attivati, avendo quindi già controllo degli identificativi. 

== Ultimo incontro
L'azienda ha proposto di svolgere l'ultimo incontro in presenza, dove il gruppo mostrerà il prodotto finito e farà una prova di esposizione.
Questo incontro è stato fissato mercoledì 19 marzo alle 16:30 presso la sede dell'azienda.

== Conclusioni
L'azienda si è mostrata molto soddisfatta del lavoro svolto, rinnovando l'invito all'incontro finale in programma questa settimana.