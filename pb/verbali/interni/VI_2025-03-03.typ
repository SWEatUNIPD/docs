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
  ora: "15:00",
  durata: "2 ore",
  partecipantiEsterni: (),
)

= Ordine del giorno
La riunione interna, svoltasi dopo il #rifGlossario("SAL") con l'azienda proponente per la metà del settimo _#rifGlossario("sprint")_, ha come principale obiettivo quello di discutere le scelte architetturali e mottere in piedi le attività decessarie alla scrittura della documentazione, quali scegliere i test di sistema e di accettazione. Inoltre un obiettivo per il prossimo periodo sarà quello di portare avanti la _#rifGlossario("dashboard")_ che costituirà l'interfaccia del _software_ e concretizzare le automazioni dei test nella _pipeline_. Infine sono da discutere alcune tematiche legate al _#rifGlossario("Way of Working")_, cioè le modalità con cui stabilire l'ultimo accesso ai puntatori alle risorse esterne e le modalità di redazione della retrospettiva di uno _sprint_ a Piano di Progetto.

== Scelte architetturali
Il gruppo ha pensato di adottare per il prodotto _software_ un'architettura orientata ai servizi, utilizzando per i servizi architetture esagonali. La scelta, frutto di giorni di studio dei progettisti, è stata discussa e approvata dall'azienda proponente al SAL di metà _sprint_. Per ottenere una conferma rispetto alle nostre scelte anche dal committente, abbiamo concordato un incontro con il professor Cardin mercoledì 05/03 dalle 08:40 alle 09:00.

== Test di sistema e di accettazione
Dopo qualche ora di ricerca sui test necessari ad assicurarsi la qualità di sistema e di accettazione, per la fine dello _sprint_ il gruppo si pone l'obiettivo di concretizzare i test e di redigere le sezioni del Piano di Qualifica inserendo gli appositi test. Abbiamo pianificato che l'inserimento dei test di accettazione potrebbe avvenire dopo la fine dello _sprint_, in quanto essi devono essere concordati con l'azienda proponente e verranno presentati loro al SAL di fine _sprint_

== Dashboard grafana
Per quanto riguarda gli avanzamenti nel _software_ in questa seconda parte di _sprint_ l'obiettivo è quello di migliorare possibilmente la _dashboard_ che mostra la mappa con i _marker_ e creare una prima versione della _dashboard_ con lo storico degli annunci.

== Test e automazioni
Sempre lato _software_, un obiettivo è quello di predisporre delle automazioni pronte ad eseguire i primi test, in modo da essere allineati quando inizieremo a sviluppare il prodotto dopo la progettazione.

== Allineamento Norme di Progetto
Infine sono da riportare nero su bianco nelle Norme di Progetto le scelte fatte in merito alle questioni di _Way of working_ sopra citate nell'ordine del giorno.

= Conclusioni
Per la fine di questo _sprint_ auspichiamo di avere un quadro completo di quella che sarà l'architettura del nostro _software_ e tutti i test da predisporre per assicurare la qualità del prodotto.

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
  [Stesura test di accettazione nel PdQ],

  link("https://github.com/SWEatUNIPD/docs/issues/158")[D0158],
  [Klaudio Merja],
  [Aggiunta di test di sistema al Piano di Qualifica ],

  link("https://github.com/SWEatUNIPD/NearYou/issues/9")[N0009],
  [Riccardo Milan],
  [Dashboard storico],

  link("https://github.com/SWEatUNIPD/NearYou/issues/10")[N0010],
  [Davide Picello],
  [Predisposizione automazioni e primi test],
))
