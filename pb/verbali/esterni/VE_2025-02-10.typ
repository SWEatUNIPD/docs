#import "/templates/template.typ": *

#show: content => verbale(
  data: "15 Febbraio 2025",
  responsabile: "Marin Davide",
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l.",
  ),
  uso: "Esterno",
  redattori: ("Davide Picello",),
  titolo: "SAL fine quinto sprint",
  verificatori: (
    "Andrea Precoma",
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(
  luogo: "Google Meet",
  data: "15/02/2025",
  ora: "11:30",
  durata: "mezz'ora",
  partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"),
)

= Sintesi dell'incontro
Questo incontro è stato il primo tra il gruppo e l'azienda committente dopo i colloqui RTB svolti con il Professor Vardanega e il Professor Cardin. 
L'argomento principale della riunione sono stati proprio questi colloqui, i relativi esiti e i consigli migliorativi.


== Problemi generali
=== Analisi dei Requisiti
Uno dei primi temi trattati è stata la critica ricevuta dal professor Cardin riguardo il primo caso d'uso "UC1 - Trasmissione dei dati di identificazione e localizzazione del sensore" facendo notare non fosse chiaro quali dati venissero trasmessi.

Un'altra osservazione riguardo l'Analisi dei Requisiti è stata la mancanza di un requisito di vincolo che indicasse in quali browser sarà disponibile la _web-app_. Parlandone con l'azienda l'idea è di renderla fruibile dai browser principali, per poi passare a coprirne potenzialmente il più possibile.

=== Presentazione
Successivamente è stato spiegato che probabilmente i più grandi errori commessi dal gruppo sono stati durante la fase di presentazione. Purtroppo durante il colloquio con il professor Cardin non sono state rispettate le tempistiche di esposizione, andando un po' lunghi. Non avendo più tempo a disposizione il #rifGlossario("PoC") è stato presentato a generazione percorso già avvenuta, compromettendo l'interattività tipica della presentazione di un prodotto software funzionante.

=== Statistiche
Un'altra critica ricevuta è stata la superficialità con cui abbiamo parlato della sezione relativa alle statistiche, senza averle specificate. Questa sezione, essendo un requisito facoltativo, non era ancora stata pensata nel dettaglio.

Cogliendo l'occasione ne abbiamo discusso direttamente con l'azienda, la quale ci ha lasciato molta libertà senza specificare vincoli stringenti, ma comunque dandoci qualche idea.

Tra cui il monitoraggio e l'analisi del numero di attività, come messaggi e noleggi, suddivisi per intervalli temporali (giornalieri, settimanali, mensili). 
È stato suggerito di tracciare il rapporto tra occasioni in cui poteva essere generato un messaggio e le volte in cui effettivamente è stato generato o meno, analizzandone le cause.
Un'altra idea interessante è quella di capire, tramite i dati #rifGlossario("GPS"), se un utente si è effettivamente fermato in un punto di interesse o meno, potendo capire quali annunci hanno funzionato e quali no, senza il bisogno di chiederlo direttamente all'utente.


= Conclusioni
L'azienda ha espresso soddisfazione per come il gruppo ha affrontato i colloqui RTB e del lavoro svolto in vista di questi, rinnovando l'impegno per la fase di PB.