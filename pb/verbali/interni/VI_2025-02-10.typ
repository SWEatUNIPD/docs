#import "/templates/template.typ": *

#show: content => verbale(
  data: "10 febbraio 2025",
  responsabile: "Davide Marin",
  redattori: ("Riccardo Milan",),
  titolo: "Decima riunione",
  verificatori: ("Davide Martinelli",),
  destinatari: ("Gruppo SWE@",),
  content: content,
)

= Ordine del giorno
La riunione interna, svoltasi dopo il #rifGlossario("SAL") con l'azienda proponente per l'inizio del sesto _#rifGlossario("sprint")_, ha come principale obiettivo quello di fissare le attività necessarie ad aggiornare le norme di lavoro e correggere la documentazione secondo indicazioni dei professori dopo i colloqui della RTB.

== Modalità di scrittura dei verbali
Dopo il _#rifGlossario("feedback")_ ricevuto dal professor Vardanega in seguito al colloquio RTB, abbiamo rimosso la tabella del _changelog_ dal _template_ dei verbali e aggiornato la convenzione sui nomi di essi, in quanto sono documenti di lavoro, e l'ultima versione sovrascrive tutte quelle prima nella storia. Inoltre d'ora in poi gli unici destinatari dei verbali interni saranno i componenti del gruppo, e non ci sarà più la sezione riassunto, dato che il verbale è già di per sé un riassunto. La sezione ordine del giorno dovrà precedere ogni altra sezione e abbiamo deciso di non tracciare più le decisioni "organizzative", in quanto creano confusione non essendo direttamente tracciabili.

== Sistemazione del sito vetrina
Per quanto riguarda la _repo_ documentale, abbiamo deciso di renderla più navigabile, di nascondere le lettere e di riordinare i documenti dai più importanti ai meno importanti.

== Aggiornamento convenzione per approvazione dei documenti
D'ora in poi l'approvazione, che coincide con lo scatto di versione nella _major_ dei documenti, verrà eseguita in concomitanza con l'ultimo cambiamento avvenuto nella tabella del _changelog_, evitando così di avere una riga della tabella senza cambiamenti, solo per indicare l'approvazione del documento.

== Correzioni Analisi dei Requisiti
In ultima istanza, ma non per importanza, è fondamentale sistemare i casi d'uso e i requisiti secondo le indicazioni ricevute dal professor Cardin nel colloquio RTB.

= Conclusioni
Per questo _sprint_ contiamo di rimetterci in regola rispetto alle mancanze e gli errori commessi nella prima _milestone_ di progetto, per poi poter partire con le nuove attività in vista della successiva _milestone_.

= Tabella delle decisioni
#backlog(content: (
  link("https://github.com/SWEatUNIPD/docs/issues/134")[D0134],
  [Davide Marin],
  [Stesura pianificazione _sprint_ 6],

  link("https://github.com/SWEatUNIPD/docs/issues/135")[D0135],
  [Davide Marin],
  [Stesura retrospettiva _sprint_ 6],

  link("https://github.com/SWEatUNIPD/docs/issues/132")[D0132],
  [Davide Picello],
  [Redazione VE_2025-02-10],

  link("https://github.com/SWEatUNIPD/docs/issues/129")[D0129],
  [Davide Martinelli],
  [Sistemazione AdR],

  link("https://github.com/SWEatUNIPD/sweatunipd.github.io/issues/2")[S0002],
  [Klaudio Merja],
  [Sistemazione sito secondo valutazione RTB ],

  link("https://github.com/SWEatUNIPD/docs/issues/130")[D0130],
  [Andrea Precoma],
  [Sistemazione NdP],

  link("https://github.com/SWEatUNIPD/docs/issues/133")[D0133],
  [Riccardo Milan],
  [Redazione VI_2025-02-10],

  link("https://github.com/SWEatUNIPD/docs/issues/131")[D0131],
  [Klaudio Merja],
  [Modifiche al template verbali e al glossario]
))

#infoRiunione(
  luogo: "Chiamata Discord",
  data: "10/02/2025",
  ora: "15:00",
  durata: "2 ore",
  partecipantiEsterni: (),
)
