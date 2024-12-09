#import "/templates/template.typ": *

#show: content => verbale(
  data: "05 Dicembre 2024",
  destinatari: ("Gruppo SWE@", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.L."),
  responsabile: "Andrea Perozzo",
  redattori: ("Riccardo Milan", "Davide Martinelli"),
  verificatori: ("Davide Picello", "Davide Marin"),
  titolo: "Analisi dei Requisiti",
  uso: "Esterno",
  versioni: (
    "0.2.1",
    [05/12/2024],
    "Davide Marin\nKlaudio Merja",
    "Andrea Precoma\nRiccardo Milan",
    [
      - Modifica di stile per quanto riguarda la sintassi delle frasi
      - Modifica dei casi d'uso a seguito di una riunione con Sync Lab S.r.L.
      - Aggiunta del trigger mancanti ai casi d'uso presenti
    ],
    "0.2.0",
    [27/11/2024],
    "Davide Martinelli\nRiccardo Milan",
    "Davide Marin\nDavide Picello",
    [
      - Modifiche stile in accordo con le norme di progetto
      - Modifiche alle sez. Attori e UC1: aggiunto sensore
      - Aggiunto NiFi alle tecnologie utilizzate
    ],
    "0.1.0",
    [25/11/2024],
    "Davide Martinelli\nRiccardo Milan",
    "Davide Marin\nDavide Picello",
    [
      - Struttura e introduzione del documento
      - Descrizione del prodotto
      - Primi casi d'uso
    ],
  ),
  content: content,
)

// Sotto l'inidce è bene mettere la lista delle immagini (quando ci saranno anche delle tabelle), forse vale la pena integrarla nel template
#outline(
  title: [Lista delle figure],
  target: figure.where(kind: image),
)
#pagebreak()


#set heading(numbering: "1.1")

= Introduzione
== Scopo del documento

Lo scopo principale del documento Analisi dei Requisiti è quello di fornire una descrizione dettagliata dei casi d'uso e dei requisiti del progetto _NearYou - Smart custom advertising platform_ dell'azienda proponente Sync Lab S.r.l., frutto di uno studio approffondito del capitolato d'appalto e degli incontri con l'azienda proponente stessa.

Il documento risulta di fondamentale importanza in quanto costituisce una chiara visione delle funzionalità e i requisiti attesi dalla Proponente riguardo al prodotto e facilita ai fornitori, ovvero il gruppo, nel processo di validazione del prodotto finale.


== Scopo del prodotto

Il prodotto _NearYou - Smart custom advertising platform_ è una piattaforma che sfrutta la tecnologia #rifGlossario("GenAI") per la creazione di pubblicità personalizzate da mostrare a ciascun utente, sfruttando dati come la posizione in tempo reale, le informazioni personali e i dati di profilazione, in modo da migliorare l'esperienza dell'utente e aumentando contemporaneamente il ROI e l'efficacia delle campagne pubblicitarie.

/*L'obiettivo del prodotto è quello di rendere le campagne pubblicitarie delle aziende interessate il più personalizzate e ottimizzate possibili ed aumentare il coinvolgimento dell'utente finale, con lo scopo di ridurre la disconnessione tra messaggio e destinatario e portare un miglioramento sul #rifGlossario("ROI") della campagna stessa. */

== Glossario
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo,
viene fornito un Glossario.

La prima occorrenza di un termine definito all'interno del Glossario presente all'interno di un documento viene
sottolineato e seguito dalla lettera g posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto
- Regolamento del progetto didattico\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")
- Capitolato C4 (Sync Lab)\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")

=== Riferimenti informativi
- Glossario
- T5 - Analisi dei Requisiti\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")
- P2 - I Diagrammi dei Casi d'Uso\ #formatLink(url: "https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")
#pagebreak()

= Descrizione del prodotto
== Obiettivi del prodotto //FIXME: non sono totalmente d'accordo con questa sezione, forse andrebbe riscritta
Il prodotto ha come obiettivo quello di fornire un servizio di pubblicità personalizzata integrato in una mappa, accessibile agli utenti di un mezzo a noleggio, che sfrutta la tecnologia GenAI per la creazione di pubblicità mirate sui singoli utenti. Il gestore del servizio di noleggio avrà accesso ad una _dashboard_ che gli permetterà di monitorare in tempo wreale la posizione degli utenti e la visualizzazione degli annunci pubblicitari.
Per fare ciò l'azienda proponente chiede di simulare lo spostamento degli utenti lungo un percorso/* casuale o predefinito? */, in modo da poter testare il funzionamento del sistema.
I dati riguardanti gli annunci pubblicitari visualizzati dagli utenti devono essere memorizzati in un _#rifGlossario("database")_ (storicizzazione) in modo da poter essere consultati successivamente dalla _dashboard_, al fine di consentire analisi reportistiche.

Il _benefit_ atteso è quello di rendere le campagne pubblicitarie delle aziende interessate il più efficaci possibili, riducendo la disconnessione tra messaggio e destinatario e aumentando il coinvolgimento di quest'ultimo, migliorando di conseguenza il #rifGlossario("ROI") della campagna stessa.

== Funzionalità e vincoli del prodotto
Il prodotto dovrà fornire le seguenti funzionalità:
- *Monitoraggio in tempo reale della posizione degli utenti*: il sistema dovrà essere in grado di mostrare su una mappa interattiva la posizione degli utenti attivi.
- *Creazione di annunci pubblicitari personalizzati*: il sistema dovrà essere in grado di creare annunci pubblicitari personalizzati per gli utenti, sfruttando i dati di profilazione e la posizione in tempo reale. Quando un utente si trova in prossimità di un punto di interesse il sistema dovrà essere in grado di stimare se l'utente possa essere interessato ai servizi offerti dall'attività e, in tal caso, generare un annuncio pubblicitario personalizzato per quell'utente.
- *Visualizzazione nella _dashboard_ degli annunci pubblicitari generati*: il sistema dovrà essere in grado di mostrare in tempo reale gli annunci pubblicitari che vengono visualizzati dagli utenti.
- *Visualizzazione nella _dashboard_ dello storico degli annunci pubblicitari*: il sistema dovrà essere in grado di mostrare uno storico degli annunci pubblicitari visualizzati dagli utenti.

L'azienda proponente richiede inoltre la dimostrazione del corretto funzionamento dei servizi e delle funzionalità del sitema, garantendo una copertura di test di più dell'80% e correlata da report. Viene richiesto inoltre che il prodotto sia in grado di mantenere un elevato flusso di dati in entrata dovuto ai dati di localizzazione emessi dai sensori.

== Utenti e loro caratteristiche

Il prodotto si rivolge a due tipologie di utenti:
- *Gestore servizio di noleggio*: utente che gestisce il servizio di noleggio, ovvero un nostro cliente, che ha accesso tramite _dashboard_ a tutte le funzionalità del sistema ed è interessato quindi, oltre che al monitoraggio della flotta, anche all'andamento delle campagne pubblicitarie nel tempo.
- *Utente*: utente che utilizza il servizio di noleggio e che ha accesso solo alla funzionalità di visualizzazione degli annunci pubblicitari.

// == Tecnologie
// Il sistema utilizzerà un'architettura modulare, includendo le seguenti tecnologie:
// - Simulatori di dati: _script_ Python per generare dati #rifGlossario("GPS") e simulare spostamenti.
// - Data streaming: #rifGlossario("Apache Kafka") per gestire flussi di dati in tempo reale.
// - #rifGlossario("Apache NiFi"): per processare e distribuire i dati.
// - #rifGlossario("LangChain"): per la generazione di annunci tramite #rifGlossario("LLM").
// - #rifGlossario("PostGIS"): per l’archiviazione di dati geolocalizzati.
// - #rifGlossario("Grafana"): per il monitoraggio dei dati tramite interfaccia grafica.

// Si potrebbe pensare di rappresentare questo elenco come un flusso di dati, con le tecnologie come nodi collegati tra loro da una freccia
//FIXME: non è possibile parlare di architettura in PoC, quindi già quello non può essere citato. Come le tecnologie da utilizzare onestamente: non hanno nulla a che fare coi vincoli

#pagebreak()

= Casi d'uso
== Introduzione

== Attori <actors>
Gli attori coinvolti nei casi d'uso sono i seguenti:
- *Amministratore*: gestore di un servizio di noleggio, che avrà quindi accesso alla _dashboard_.
- *Utente*: utente che utilizza il servizio di noleggio.
- *Sensore*: il sensore serve a registrare la posizione geografica ed è fisicamente collegato al mezzo noleggiato.
/*- *LangChain*: LangChain è la tecnologia esterna al sistema che interagisce con esso attraverso delle API con le quali generiamo i messaggi pubblicitari.*/ // TODO: capire se l'attore è langchain o LLM

== Elenco dei casi d'uso <use_cases>

// CASI D'USO UTENTE

=== UC1 - Trasmissione dei dati di localizzazione

- *Attore principale*: Sensore
- *Precondizioni*: il mezzo in cui è installato il sensore ha un noleggio attivo.
- *Postcondizioni*: il sistema riceve i dati di localizzazione GPS del mezzo in uso dall'utente.
- *Trigger*: il sensore intende notificare al sistema la localizzazione GPS del mezzo.
- *Scenario principale*:
  1. L'utente noleggia un mezzo.
  2. Il sensore invia a intervalli di tempo regolari i dati di localizzazione GPS del mezzo.
#v(20pt)
#figure(image("../assets/use_cases/UC1.svg", width: 80%), caption: [UC1 - Trasmissione dei dati di localizzazione])

#pagebreak()

=== UC2 - Autenticazione alla _dashboard_ di Grafana //TODO: use case di Merja
//FIXME: ha senso mettere Grafana come use case (si ok, utilizzeremo Grafana in quanto è veloce e più comprensibile rispetto a superset, però non so a quanto serva. Consiglio di chiedere a Cardin)
- *Attori principali*:
  - Utente
  - Amministratore
- *Precondizioni*: l'utente o l'amministratore deve essere registrato al servizio di Grafana installato all'interno del sistema.
- *Postcondizioni*: l'utente o l'amministratore accede alla _dashboard_ personale di Grafana, con le relative funzionalità (a seconda dei loro privilegi).
- *Trigger*: l'utente o l'amministratore intende accedere alla _dashboard_ personale di Grafana.
- *Scenario principale*:
  1. L'utente o l'amministratore accede alla pagina di login di Grafana.
  2. L'utente o l'amministratore inserisce le proprie credenziali di accesso.
  3. Il sistema verifica se le credenziali inserite sono valide o meno.
  4. Nel caso in cui le credenziali fossero valide, l'utente o l'amministratore accede alla propria _dashboard_ personale.
- *Estensione*: Visualizzazione del messaggio di credenziali errate (UC3).

=== UC3 - Visualizzazione del messaggio di errore
- *Attori principali*:
  - Utente
  - Amministratore
- *Precondizioni*: l'utente o l'amministratore tenta di accedere alla dashboard di Grafana con delle credenziali errate.
- *Postcondizioni*: l'utente o l'amministratore riceve un messaggio di errore.
- *Trigger*: l'utente o l'amministratore inserisce delle credenziali errate.
- *Scenario principale*:
  1. L'utente inserisce delle credenziali errate durante la fase di autenticazione alla _dashboard_.
  2. L'utente riceve un messaggio di errore, segnalando il fatto che le credenziali di accesso inserite siano invalide e invitando a riprovare l'autenticazione.
#v(20pt)
#figure(
  image("../assets/use_cases/UC2-3.svg"),
  caption: [UC2 e UC3 - Autenticazione alla _dashboard_ di Grafana e inserimento delle credenziali errate],
)

#pagebreak()

=== UC4 - Visualizzazione della mappa dei mezzi noleggiati //FIXME: chiedere a Cardin se ha senso mettere l'autenticazione alla dashboard di Grafana in inclusione alla visualizzazione della mappa dell'admin
- *Attore principale*: Amministratore
- *Precondizioni*: l'amministratore del sistema è autenticato e ha accesso alla _dashboard_ Grafana.
- *Postcondizioni*: l'amministratore ottiene una visione chiara della posizione e del movimento dei mezzi attualmente in uso.
- *Trigger*: l'amministratore intende visualizzare la posizione dei mezzi noleggiati.
- *Scenario principale*:
  1. L'amministratore è collegato e autenticato nella _dashboard_ Grafana.
  2. La _dashboard_ mette a disposizione una mappa interattiva con i mezzi attualmente a noleggio, la cui posizione viene indicata attraverso dei _marker_. //TODO: mettere marker a glossario
#v(20pt)
#figure(
  image("../assets/use_cases/UC4_Merja.svg"),
  caption: [UC3 - Visualizzazione della mappa dei mezzi noleggiati],
)

#pagebreak()

=== UC5 - Generazione dell'annuncio tramite LLM
- *Attore principale*: LLM
- *Attore secondario*: Sensore
- *Precondizioni*: il sistema riceve i dati di localizzazione GPS del mezzo in uso dall'utente e si trova in prossimità di un punto di interesse.
- *Postcondizioni*: l'LLM genera l'annuncio basandosi sulla profilazione dell'utente.
- *Trigger*: l'utente del noleggio si trova in prossimità di un punto di interesse presente in database.
- *Scenario principale*:
  1. L'utente si trova in prossimità di un punto di interesse.
  2. Il sistema, sfruttando i dati di profilazione dell'utente, decide in primis se l'utente possa essere interessato o meno al punto di interesse.
- *Estensione*:
#v(20pt)
#figure(
  image("../assets/use_cases/UC5-6.svg"), //FIXME: è la generazione che include la trasmissione dei dati o la trasmissione che include la generazione?
  caption: [UC5 e UC6 - Generazione dell'annuncio e Annuncio non generato],
)
#pagebreak()

=== UC2 - Visualizzazione dell'annuncio generato dalla LLM //FIXME: questo non è necessario al momento, dovrebbe essere opzionale -> capire se da eliminare o meno

- *Attore principale*: Utente

- *Precondizioni*: l'utente ha un noleggio attivo ed il sensore del mezzo sta inviando i dati di localizzazione al sistema.
- *Postcondizioni*: se l'utente è considerato interessato ai servizi offerti dal punto di interesse, visualizza l'annuncio pubblicitario sul _display_ del mezzo.

- *Trigger*: l'utente si trova in prossimità di un punto di interesse e il sistema, tramite i dati di profilazione, giudica l'utente idoneo a ricevere l'annuncio.

- *Scenario principale*:
  1. L'utente si trova in prossimità di un punto di interesse.
  2. Il sistema stabilisce tramite la LLM se l'utente può essere interessato ai servizi offerti dal punto di interesse.
  3. In caso positivo l'utente visualizza un annuncio pubblicitario personalizzato, generato tramite l'LLM.
- *Diagramma*:
#figure(
  image("../assets/use_cases/UC2.svg", width: 80%),
  caption: [UC2 - Visualizzazione dell'annuncio generato dalla LLM],
)

#pagebreak()

=== UC4 - Visualizzazione storico amministratore

- *Attore principale*: Amministratore
- *Precondizioni*: l'amministratore del sistema è autenticato e ha accesso alla _dashboard_ Grafana.
- *Postcondizioni*: l'amministratore ha una visione dello storico degli annunci pubblicitari comparsi associato al rispettivo utente, con un _feedback_ indicante il successo o l'insuccesso che l'annuncio ha avuto.
- *Scenario principale*:
  1. L'amministratore è collegato e autenticato nella _dashboard_ Grafana;
  2. La _dashboard_ mette a disposizione una sezione con lo storico degli annunci prodotti dal sistema e il relativo esito.
- *User story*:
#figure(image("../assets/use_cases/UC4.svg", width: 80%), caption: [UC4 - Visualizzazione storico amministratore])

// === UC5 - Interazione con l'annuncio pubblicitario //FIXME: questo caso d'uso è da capire sempre se mantenere o meno in quanto è opzionale e non necessario ai fini del PoC
// - *Attore principale*: Utente
// - *Precondizioni*: l'utente visualizza un annuncio pubblicitario.
// - *Postcondizioni*: se l'utente interagisce con l'annuncio pubblicitario, il sistema memorizza l'interazione come _feedback_ sull'annuncio generato.
// - *Scenario principale*:
//   1. L'utente visualizza un annuncio pubblicitario;
//   2. L'utente interagisce con l'annuncio pubblicitario;
//   3. Il sistema memorizza un _feedback_ associato all'annuncio visualizzato.
// - *User story*:
// #figure(image("../assets/use_cases/UC5.svg", width: 80%), caption: [UC5 - Interazione con l'annuncio pubblicitario])

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




