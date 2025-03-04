#import "/templates/template.typ": *

#show: content => verbale(
  data: "10 febbraio 2025",
  responsabile: "Davide Marin",
  redattori: ("Riccardo Milan",),
  titolo: "Dodicesima riunione",
  verificatori: ("Davide Picello",),
  destinatari: ("Gruppo SWE@",),
  content: content,
)

#infoRiunione(
  luogo: "Chiamata Discord",
  data: "03/03/2025",
  ora: "14:00",
  durata: "1 ora e mezza",
  partecipantiEsterni: (),
)

= Ordine del giorno
La riunione interna, svoltasi dopo il #rifGlossario("SAL") con l'azienda proponente per la metà del settimo _#rifGlossario("sprint")_, ha come principale obiettivo quello di discutere le scelte architetturali e mettere in piedi le attività necessarie alla scrittura della documentazione, quali scegliere i _test_ di sistema e di accettazione. Inoltre un obiettivo per il prossimo periodo sarà quello di continuare lo sviluppo della _#rifGlossario("dashboard")_ che costituirà l'interfaccia del _software_ e concretizzare le automazioni dei _test_ nella _pipeline_. Infine sono state discusse alcune tematiche legate al _#rifGlossario("Way of Working")_. In particolare la modalità con cui stabilire l'ultimo accesso ai puntatori alle risorse esterne e la modalità di redazione della retrospettiva di uno _sprint_ a Piano di Progetto.

== Scelte architetturali
Il gruppo ha pensato di adottare per il prodotto _software_ un'architettura orientata ai servizi utilizzando, per questi ultimi, architetture esagonali. La scelta, frutto di giorni di studio dei progettisti, è stata discussa e approvata dall'azienda proponente al SAL di metà _sprint_. Per ottenere una conferma rispetto alle nostre scelte anche dal committente, abbiamo concordato un incontro con il professor Cardin mercoledì 05/03 dalle 08:40 alle 09:00.

== Test di sistema e di accettazione
Dopo qualche ora di ricerca sui _test_ necessari ad assicurarsi la qualità di sistema e di accettazione, per la fine dello _sprint_ il gruppo si pone l'obiettivo di concretizzare i _test_ e di redigere le sezioni del Piano di Qualifica inserendo gli appositi _test_. Tuttavia l'inserimento dei _test_ di accettazione potrebbe avvenire anche dopo la fine dello _sprint_, in quanto essi devono essere concordati con l'azienda proponente e verranno presentati loro al SAL di fine _sprint_

== Dashboard grafana
Per quanto riguarda gli avanzamenti lato _software_ in questa seconda parte di _sprint_ l'obiettivo è quello di migliorare la _dashboard_, che mostra la mappa con i _#rifGlossario("marker")_, creandone una prima versione contenente lo storico degli annunci.

== Test e automazioni
Sempre lato _software_, un obiettivo è quello di predisporre delle automazioni pronte ad eseguire i primi _test_, in modo da essere allineati quando inizieremo a sviluppare il prodotto dopo la progettazione.

== Allineamento Norme di Progetto
Infine sono da riportare nero su bianco nelle Norme di Progetto le scelte fatte in merito alle questioni di _Way of working_ sopra citate nell'ordine del giorno.

= Conclusioni
Per la fine di questo _sprint_ auspichiamo di avere un quadro completo di quella che sarà l'architettura del nostro _software_ e tutti i _test_ da predisporre per assicurare la qualità del prodotto.

= Tabella delle decisioni
#backlog(content: (
  link("https://github.com/SWEatUNIPD/docs/issues/156")[D0156],
  [Klaudio Merja],
  [Stesura verbale esterno 03/03/25 ],

  link("https://github.com/SWEatUNIPD/docs/issues/157")[D0157],
  [Riccardo Milan],
  [Stesura verbale interno 03/03/25],

  link("https://github.com/SWEatUNIPD/docs/issues/155")[D0155],
  [Andrea Precoma],
  [Sistemare Norme di Progetto],

  link("https://github.com/SWEatUNIPD/docs/issues/159")[D0159],
  [Davide Marin],
  [Stesura _test_ di accettazione nel PdQ],

  link("https://github.com/SWEatUNIPD/docs/issues/158")[D0158],
  [Klaudio Merja],
  [Aggiunta di _test_ di sistema al Piano di Qualifica ],

  link("https://github.com/SWEatUNIPD/NearYou/issues/9")[N0009],
  [Riccardo Milan],
  [Dashboard storico],

  link("https://github.com/SWEatUNIPD/NearYou/issues/10")[N0010],
  [Davide Picello],
  [Predisposizione automazioni e primi _test_],
))
