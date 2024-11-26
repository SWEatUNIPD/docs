#import "/templates/template.typ": *

#show: content => verbale(
  data: "25 Novembre 2024",
  destinatari: ("Gruppo SWE@", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin",),
  responsabile: "Andrea Perozzo",
  redattori: ("Riccardo Milan", "Davide Martinelli",),
  verificatori: ("Davide Picello", "Davide Marin",),
  titolo: "Analisi dei Requisiti",
  uso: "Esterno",
  versioni: (
    "1.0.0", 
    [25/11/2024], 
    "Riccardo Milan\nDavide Martinelli", 
    "Davide Picello\nDavide Marin", 
    [- Struttura e introduzione del documento 
     - Descrizione del prodotto
     - Primi casi d'uso],
    "1.0.1",
    [26/11/2024],
    "Riccardo Milan\nDavide Martinelli",
    "Davide Picello\nDavide Marin",
    [- Modifiche stile in accordo con le norme di progetto,
     - Modifiche alle sez. Attori e UC1: aggiunto sensore],
  ),
  content: content,
)

// Sotto l'inidce è bene mettere la lista delle immagini (quando ci saranno anche delle tabelle), forse vale la pena integrarla nel template
#outline(
  title: [Lista delle figure],
  target: figure.where(kind: image),
)
#pagebreak()


#set heading(numbering: "1.1.1")

= Introduzione
== Scopo del documento

Lo scopo principale di questo documento è quello di fornire una descrizione dettagliata dei casi d'uso e dei requisiti previsti dal progetto _NearYou - Smart custom advertising platform_, emersi in seguito ad un'attenta analisi del capitolato C4 e successivamente approfonditi durante gli incontri con la proponente Sync Lab S.r.l..

Il documento quindi è rivolto ai membri del gruppo di progetto e ai committenti, con lo scopo di fornire una visione chiara e dettagliata dei requisiti del prodotto e delle funzionalità che esso dovrà avere.


== Scopo del prodotto

Il prodotto _NearYou - Smart custom advertising platform_ è una piattaforma che sfrutta la tecnologia #rifGlossario("GenAI") per la creazione di pubblicità personalizzate da mostrare a ciascun utente, sfruttando dati come la posizione in tempo reale, le informazioni personali e i dati di profilazione, in modo da migliorare l'esperienza dell'utente e aumentando contemporaneamente l'efficacia delle campagne pubblicitarie.

/*L'obiettivo del prodotto è quello di rendere le campagne pubblicitarie delle aziende interessate il più personalizzate e ottimizzate possibili ed aumentare il coinvolgimento dell'utente finale, con lo scopo di ridurre la disconnessione tra messaggio e destinatario e portare un miglioramento sul #rifGlossario("ROI") della campagna stessa. */

== Glossario

Al fine di evitare eventuali ambiguità e incomprensioni riguardo la terminologia adottata nel documento, viene fornito un glossario.
La prima occorrenza all'interno del documento di un termine definito nel glossario viene indicata tramite sottolineatura e una lettera g posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti
=== Riferimenti normativi

- Capitolato C4 (Sync Lab)\ #text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf]]]

- Norme di Progetto

- Regolamento del progetto didattico\ #text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]]]

=== Riferimenti informativi

- T5 - Analisi dei Requisiti\ #text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf]]]

- P2 - I Diagrammi dei Casi d'Uso\ #text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf")[https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf]]]

- Glossario

= Descrizione del prodotto
== Obiettivi

Il prodotto ha come obiettivo quello di fornire un servizio di pubblicità personalizzata integrato in una mappa, accessibile agli utenti di un mezzo a noleggio, che sfrutta la tecnologia GenAI per la creazione di pubblicità mirate sui singoli utenti. Il gestore del servizio di noleggio avrà accesso a una _dashboard_ che gli permetterà di monitorare in tempo reale la posizione degli utenti e la visualizzazione degli annunci pubblicitari.
Per fare ciò la proponente chiede di simulare lo spostamento degli utenti lungo un percorso/* casuale o predefinito? */, in modo da poter testare il funzionamento del sistema.
I dati riguardanti gli annunci pubblicitari visualizzati dagli utenti devono essere memorizzati in un _database_ (storicizzazione) in modo da poter essere consultati successivamente dalla _dashboard_, al fine di consentire analisi reportistiche.

Il benefit atteso è quello di rendere le campagne pubblicitarie delle aziende interessate il più efficaci possibili, riducendo la disconnessione tra messaggio e destinatario e aumentando il coinvolgimento di quest'ultimo, migliorando di conseguenza il #rifGlossario("ROI") della campagna stessa.

== Funzionalità

Il prodotto dovrà fornire le seguenti funzionalità:

- *Monitoraggio in tempo reale della posizione degli utenti*: il sistema dovrà essere in grado di mostrare su una mappa interattiva la posizione degli utenti attivi.

- *Creazione di annunci pubblicitari personalizzati*: il sistema dovrà essere in grado di creare annunci pubblicitari personalizzati per gli utenti, sfruttando i dati di profilazione e la posizione in tempo reale. Quando un utente si trova in prossimità di un punto di interesse il sistema dovrà essere in grado di stimare se l'utente possa essere interessato ai servizi offerti dall'attività e, in tal caso, generare un annuncio pubblicitario personalizzato per quell'utente.

- *Visualizzazione nella _dashboard_ degli annunci pubblicitari generati*: il sistema dovrà essere in grado di mostrare in tempo reale gli annunci pubblicitari che vengono visualizzati dagli utenti.

- *Visualizzazione nella _dashboard_ dello storico degli annunci pubblicitari*: il sistema dovrà essere in grado di mostrare uno storico degli annunci pubblicitari visualizzati dagli utenti.

== Utenti e loro caratteristiche

Il prodotto si rivolge a due tipologie di utenti:

- *Gestore servizio di noleggio*: utente che gestisce il servizio di noleggio, ovvero un nostro cliente, che ha accesso tramite _dashboard_ a tutte le funzionalità del sistema ed è interessato quindi, oltre che al monitoraggio della flotta, anche all'andamento delle campagne pubblicitarie nel tempo.

- *Utente*: utente che utilizza il servizio di noleggio e che ha accesso solo alla funzionalità di visualizzazione degli annunci pubblicitari.

== Tecnologie
Il sistema utilizzerà un’architettura modulare, includendo le seguenti tecnologie:

- Simulatori di dati: Script Python per generare dati GPS e simulare spostamenti.
- Data streaming: #rifGlossario("Apache Kafka") per gestire flussi di dati in tempo reale.
- #rifGlossario("LangChain"): per la generazione di annunci tramite LLM.
- #rifGlossario("PostGIS"): per l’archiviazione di dati geolocalizzati.
- #rifGlossario("Grafana"): per il monitoraggio dei dati.

= Casi d'uso

== Introduzione

Lo scopo di questa sezione è quello di elencare e descrivere tutti i casi d'uso indentificati a seguito dell'analisi del capitolato e dei confronti con la proponente (#link(<use_cases>)[#text(underline("sez. 3.3"))]), a cui si farà precedere la descrizione degli attori coinvolti (#link(<actors>)[#text(underline("sez. 3.2"))]).

== Attori <actors>

Gli attori coinvolti nei casi d'uso sono i seguenti:

- *Amministratore*: gestore di un servizio di noleggio che, perciò, avrà accesso alla _dashboard_, senza bisogno di autenticazione;

- *Utente*: utente che utilizza il servizio di noleggio;

- *Sensore*: il sensore serve a registrare la posizione geografica ed è fisicamente collegato al mezzo noleggiato;

// TODO: capire se l'attore è langchain o LLM
- *#rifGlossario("LangChain")*: LangChain è la tecnologia esterna al sistema che interagisce con esso attraverso delle API con le quali generiamo i messaggi pubblicitari.

== Elenco dei casi d'uso <use_cases>

// CASI D'USO UTENTE 

=== UC1 - Trasmissione dati di localizzazione

- *Attore principale*: Sensore

- *Precondizioni*: l'utente ha noleggiato un mezzo e il noleggio è ancora attivo

- *Postcondizioni*: il sistema riceve i dati di localizzazione GPS del mezzo in uso dall'utente

- *Scenario principale*:
  1. L'utente noleggia un mezzo
  2. Il sensore invia a intervalli di tempo regolari i dati di localizzazione GPS del mezzo 

// TODO: modificare il diagramma dei casi d'suo UC1 perché l'attore deve essere il sensore e non l'utente
- *User story*:
#figure(image("../assets/use_cases/UC1.svg", width: 80%), caption: [UC1 - Trasmissione dati di localizzazione])

#pagebreak()

=== UC2 - Visualizzazione annuncio personalizzato

- *Attore principale*: Utente

- *Precondizioni*: l'utente ha un noleggio attivo e sta inviando dati di localizzazione al sistema 

- *Postcondizioni*: se l'utente è considerato interessato ai servizi offerti dal punto di interesse, visualizza l'annuncio pubblicitario sul display del mezzo

- *Trigger*: l'utente si trova in prossimità di un punto di interesse e il sistema, tramite i dati di profilazione, giudica l'utente idoneo a ricevere l'annuncio

- *Scenario principale*:
  1. L'utente si trova in prossimità di un punto di interesse
  2. Il sistema stabilisce tramite un modello GenAI se l'utente può essere interessato ai servizi offerti dal punto di interesse
  3. In caso positivo l'utente visualizza un annuncio pubblicitario personalizzato, generato tramite un modello GenAI

- *User story*:
#figure(image("../assets/use_cases/UC2.svg", width: 80%), caption: [UC2 - Visualizzazione annuncio personalizzato])


#pagebreak()


// NOTA PER I PROSSIMI ANALISTI
// alcuni use cases forse si posso "ampliare", detro a un rettangolo più ovali, ad esempio visualizzazione _dashboard_ amministratore può diventare visualizzazione interazioni e dentro lì il singolo ovale può essere visualizza dettaglio singola interazione (aggiungere commento nel file adr)



// CASI D'USO POWERUSER

=== UC3 - Visualizzazione mappa amministratore

- *Attore principale*: amministratore

- *Precondizioni*: l'amministratore del sistema è autenticato e ha accesso alla _dashboard_ Grafana.

- *Postcondizioni*: l'amministratore ottiene una visione chiara della posizione e del movimento delle biciclette attualmente in uso.

- *Scenario principale*:
  1. L'amministratore è collegato e autenticato nella _dashboard_ Grafana
  2. La _dashboard_ mette a disposizione una mappa interattiva con i mezzi attualmente a noleggio che si muovono indicati attraverso dei marker.

- *User story*:
#figure(image("../assets/use_cases/UC3.svg", width: 80%), caption: [UC3 - Visualizzazione mappa amministratore])

#pagebreak()

=== UC4 - Visualizzazione storico amministratore

- *Attore principale*: amministratore

- *Precondizioni*: l'amministratore del sistema è autenticato e ha accesso alla _dashboard_ grafana.

- *Postcondizioni*: l'amministratore ha una visione dello storico degli annunci pubblicitari comparsi associato al rispettivo utente, con un feedback indicante il successo o l'insuccesso che l'annuncio ha avuto.

- *Scenario principale*:
  1. L'amministratore è collegato e autenticato nella _dashboard_ grafana
  2. La _dashboard_ mette a disposizione una sezione con lo storico degli annunci prodotti dal sistema e il relativo esito.

- *User story*:
#figure(image("../assets/use_cases/UC4.svg", width: 80%), caption: [UC4 - Visualizzazione storico amministratore])

=== UC5 - Interazione con l'annuncio pubblicitario

- *Attore principale*: Utente

- *Precondizioni*: l'utente visualizza un annuncio pubblicitario

- *Postcondizioni*: se l'utente interagisce con l'annuncio pubblicitario, il sistema memorizza l'interazione come feedback sull'annuncio generato

- *Scenario principale*:
  1. L'utente visualizza un annuncio pubblicitario
  2. L'utente interagisce con l'annuncio pubblicitario
  3. Il sistema memorizza un feedback associato all'annuncio visualizzato

- *User story*:
#figure(image("../assets/use_cases/UC5.svg", width: 80%), caption: [UC5 - Interazione con l'annuncio pubblicitario])

// Il caso d'uso sottostante rappresenta un'interazione alternativa al caso d'uso UC5, in cui l'utente si ferma presso il punto d'interesse pubblicizzato per un periodo di tempo prolungato
// Da valutare se implementarla in quanto risulterebbe ridondante

/*=== UC5.1 - Sosta presso il punto d'interesse pubblicizzato

- *Attore principale*: Utente

- *Precondizioni*: l'utente visualizza un annuncio pubblicitario

- *Postcondizioni*: se l'utente si ferma presso il punto di interesse pubblicizzato, il sistema memorizza l'interazione come feedback positivo sull'annuncio generato

- *Scenario principale*:
  1. L'utente visualizza un annuncio pubblicitario
  2. L'utente si ferma presso il punto di interesse pubblicizzato per un periodo di tempo prolungato
  3. Il sistema memorizza un feedback positivo associato all'annuncio visualizzato

- *User story*:
#figure(image("../assets/use_cases/UC5.1.svg", width: 80%), caption: [UC5.1 - Sosta presso il punto d'interesse pubblicizzato])
*/



// TODO: per i prossimi analisti, idee per i prossimi casi d'uso potrebbero essere: l'admin può filtrare (da decidere filtrare per cosa) e forse potrebbero essere estensioni del caso d'uso visualizzazione _dashboard_. Sicuramente LLM come attore può processare i dati e generare il messaggio.




#pagebreak()
= Requisiti




