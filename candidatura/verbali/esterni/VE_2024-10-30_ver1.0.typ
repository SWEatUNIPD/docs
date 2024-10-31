#import "/templates/template.typ": *

#show: content=>verbale(
  data: "30 ottobre 2024", 
  titolo: "Colloquio Var Group S.p.A.", 
  destinatari: (
    "Prof. Tullio Vardanega", 
    "Prof. Riccardo Cardin", 
    "Var Group S.p.A."
  ), 
  responsabile: "Klaudio Merja", 
  redattori: ("Davide Marin",), 
  verificatori: (
    "Andrea Perozzo", 
    "Andrea Precoma",
    "Davide Martinelli", 
    "Davide Picello", 
    "Riccardo Milan"
  ), 
  uso: "Esterno",
  versioni: (

    "30/10/2024",
    "1.0",
    "Davide Marin",
    [- Stesura del verbale]
  ),
  content: content,
)

#infoRiunione(luogo: "Google Meet", data: "30/10/2024", ora: "14:00", durata: "mezz'ora", partecipantiEsterni: ("Michele Massaro", "Stefano Dindo"))

= Sintesi dell'incontro
I proponenti hanno delucidato i punti che ci eravamo preparati in vista dell'incontro. Abbiamo discussio sia delle tecnologie da adottare per lo sviluppo del progetto, sia del lato organizzativo tra proponente e fornitore. 

= Risposte alle domande

== Utilizzo di GenAI
All'interno del progetto la GenAI servirà non solo a processare il linguaggio naturale, con il quale gli utenti daranno istruzioni al programma, ma dovrà anche verificare quale API sarà la corretta da interpellare e infine dovrà scrivere il codice per interpellarla.

== Disegnare dei workflow
Con "disegnare dei workflow" si intende trascinare i blocchi relativi alle applicazioni e poter disegnare delle frecce che ne rappresentano il collegamento e relativi input ed output.
Inoltre è stato detto che le applicazioni interessate saranno scelte assieme ai proponenti in corso d'opera del progetto.

== Vector Search
L'idea nell'utilizzo di Vector Search è di poter riutilizzare workflow già creati in passato, nel caso in cui la domanda posta dall'utente in linguaggio naturale sia simile ad altre già ricevute.

== PoC
L'idea per quanto riguarda il PoC è quella di definirlo nello specifico all'interno di una sessione di design thinking in sede a Padova.
Una proposta presentata come esempio è stata di dover dimostrare che, attraverso le richieste in linguaggio naturale, l'IA sia in grado di interpellare le corrette API per completare l'azione richiesta, lasciando la parte grafica per il futuro MVP.

== User story mapping
In merito allo user story mapping è stato specificato che si tratta di una raccolta di più user story; una user story è caratterizzata da una descrizione di operazioni eseguibili dal punto di vista dell'utente, che vada a soddisfare una delle richieste di funzionalità presentate dai proponenti.

== Mappare le criticità
I proponenti hanno inoltre chiarito i nostri dubbi sulla questione di "mappare le criticità": durante lo sviluppo del progetto, incontreremo delle problematiche; alcune di queste riusciremo a risolverle ed altre invece no. Sarà nostro compito quindi tenerne traccia e specificarne le criticità incontrate e le eventuali soluzioni adottate.

== Organizzazione lavoro
Per quanto riguarda l'organizzazione del lavoro, i proponenti si sono innanzitutto resi disponibili, previa nostra richiesta, ad organizzare degli incontri di formazione online.
Hanno inoltre specificato che saranno presenti review e feedback sul nostro lavoro per tutta la durata del progetto.
