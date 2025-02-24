#import "/templates/template.typ": *

#show: content => verbale(
  data: "10 febbraio 2025",
  responsabile: "Davide Picello",
  redattori: ("Riccardo Milan",),
  titolo: "Undicesima riunione",
  verificatori: ("Andrea Perozzo",),
  destinatari: ("Gruppo SWE@",),
  content: content,
)

#infoRiunione(
  luogo: "Chiamata Discord",
  data: "24/02/2025",
  ora: "12:00",
  durata: "1 ora",
  partecipantiEsterni: (),
)

= Ordine del giorno
La riunione interna, svoltasi dopo il #rifGlossario("SAL") con l'azienda proponente per l'inizio del settimo _#rifGlossario("sprint")_, ha come principale obiettivo quello di continuare il miglioramento dell'Analisi dei Requisiti e soprattutto quello di iniziare a redigere il Manuale Utente e la Specifica Tecnica, cominciando la progettazione del _software_.

= Dettagli della riunione

== Inizio stesura Manule Utente e Specifica Tecnica
Dopo aver sistemato quasi tutti gli errori dei documenti principali, segnalati nella consegna della _milestone_ RTB, possiamo iniziare per quanto possibile a redigere i nuovi documenti, ovvero Manuale Utente e Specifica Tecnica, necessari per l'avanzamento dei lavori e la futura _milestone_ PB.

== Continuazione correzioni Analisi dei Requisiti
I lavori di sistemazioni e miglioramenti dell'Analisi dei Requisiti, che avevano come termine fissato la fine del sesto _sprint_, si prolungheranno anche per il settimo, a causa di _feedback_ dell'azienda proponente che hanno reso necessari ulteriori cambiamenti.

== Progettazione
Oltre alle questioni legate al ciclo di vita della documentazione, in questo sprint abbiamo fissato l'obiettivo di iniziare la progettazione del _software_, definendo ad esempio l'architettura da utilizzare.

= Conclusioni
Per questo _sprint_ contiamo di terminare le ultime questioni legate alla prima _milestone_ e di iniziare il ciclo di vita dei documenti legati alla seconda, prendendo finalmente in mano il prodotto _software_, cominciando con la progettazione.

= Tabella delle decisioni
#backlog(content: (
  link("https://github.com/SWEatUNIPD/docs/issues/148")[D0148],
  [Andrea Precoma],
  [Inizio redazione Manuale Utente],

  link("https://github.com/SWEatUNIPD/docs/issues/147")[D0147],
  [Klaudio Merja, Andrea Precoma],
  [Inizio redazione Specifica Tecnica],

  link("https://github.com/SWEatUNIPD/docs/issues/145")[D0145],
  [Riccardo Milan],
  [Stesura del verbale interno del 24/02/25],

  link("https://github.com/SWEatUNIPD/docs/issues/144")[D0144],
  [Andrea Perozzo],
  [Stesura verbale esterno 24/02/25],

  link("https://github.com/SWEatUNIPD/docs/issues/142")[D0142],
  [Riccardo Milan],
  [Stesura pianificazione sprint 7 ],

  link("https://github.com/SWEatUNIPD/docs/issues/143")[D0143],
  [Riccardo Milan],
  [Stesura retrospettiva sprint 7],

  link("https://github.com/SWEatUNIPD/docs/issues/129")[D0129],
  [Davide Martinelli],
  [Sistemazione AdR],

  link("https://github.com/SWEatUNIPD/docs/issues/146")[D0146],
  [Klaudio Merja],
  [Miglioramenti al test glossario]
))
