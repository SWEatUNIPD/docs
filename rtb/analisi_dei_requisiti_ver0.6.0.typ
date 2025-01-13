#import "/templates/template.typ": *

#show: content => verbale(
  data: "25 novembre 2024",
  destinatari: ("Gruppo SWE@", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.L."),
  responsabile: "-",
  redattori: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Klaudio Merja",
    "Riccardo Milan",
  ),
  verificatori: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
    "Riccardo Milan",
  ),
  titolo: "Analisi dei Requisiti",
  uso: "Esterno",
  versioni: (
    "0.6.0",
    [13/01/2025],
    "Davide Marin\nRiccardo Milan",
    "Andrea Perozzo \nDavide Martinelli",
    [
      - Aggiunti casi d'uso per evitare riutilizzo nelle generalizzazioni
      - Sistemate precondizioni di tutti i casi d'uso
      // TODO [Marin]
      // - sistemare tutti gli uml per i nuovi casi d'uso
    ],

    "0.5.0",
    [09/01/2025],
    "Klaudio Merja",
    "Davide Martinelli\nDavide Picello",
    [- Aggiunta di nuovi requisiti],
    
    "0.4.0",
    [08/01/2025],
    "Andrea Perozzo\nAndrea Precoma",
    "Davide Marin\nKlaudio Merja",
    [
      - Aggiunti casi d'uso relativi alla mappa, agli anunci e ai grafici
      - Sistemati i primi casi d'uso
      - Aggiunti casi d'uso relativi alle interazioni con la mappa
      - Aggiunti casi d'uso relativi agli errori
      - Aggiunti diagrammi dei casi d'uso
    ],
    "0.3.0",
    [10/12/2024],
    "Davide Marin\nKlaudio Merja",
    "Andrea Precoma\nRiccardo Milan",
    [
      - Aggiunta di nuovi casi d'uso relativi all'autenticazione alla _dashboard_, alla prossimità dell'utente ad un punto di interesse e alla generazione degli annunci pubblicitari tramite la LLM
      - Modifica di stile per quanto riguarda la sintassi delle frasi
      - Aggiunta del _trigger_ mancanti ai casi d'uso presenti
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


#set heading(numbering: "1.1")

= Introduzione
== Scopo del documento

Lo scopo principale del documento Analisi dei Requisiti è quello di fornire una descrizione dettagliata dei casi d'uso e dei requisiti del progetto _NearYou - Smart custom advertising platform_ dell'azienda proponente Sync Lab S.r.l., frutto di uno studio approfondito del capitolato d'appalto e degli incontri con l'azienda proponente stessa.

Il documento risulta di fondamentale importanza in quanto costituisce una chiara visione delle funzionalità e dei requisiti attesi riguardo al prodotto e facilita i fornitori, ovvero il gruppo, nel processo di validazione del prodotto finale.


== Scopo del prodotto

Il prodotto _NearYou - Smart custom advertising platform_ è una piattaforma che sfrutta la #rifGlossario("GenAI") per la creazione di pubblicità personalizzate da mostrare a ciascun utente, sfruttando dati come la posizione in tempo reale, le informazioni personali e i dati di profilazione, in modo da migliorare l'esperienza dell'utente e aumentando contemporaneamente il #rifGlossario("ROI") e l'efficacia delle campagne pubblicitarie.

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
== Obiettivi del prodotto
Il prodotto ha come obiettivo quello di fornire un servizio di pubblicità personalizzata, accessibile agli utenti di un mezzo a noleggio, che sfrutta la GenAI e i dati di profilazione degli utenti come #rifGlossario("prompt") della GenAI stessa per la creazione di pubblicità mirate sui singoli utenti. Il gestore del servizio di noleggio avrà accesso ad una _dashboard_ che gli permetterà di monitorare in tempo reale la posizione degli utenti e gli annunci generati.
Per fare ciò l'azienda proponente chiede di simulare lo spostamento degli utenti lungo un percorso, in modo da poter testare il funzionamento del sistema.
I dati riguardanti gli annunci pubblicitari visualizzati dagli utenti devono essere memorizzati in un _#rifGlossario("database")_ (storicizzazione) in modo da poter essere consultati successivamente dalla _dashboard_.

Il _benefit_ atteso è quello di rendere le campagne pubblicitarie delle aziende interessate il più efficaci possibili, riducendo la disconnessione tra messaggio e destinatario e aumentando il coinvolgimento di quest'ultimo, migliorando di conseguenza il ROI della campagna stessa.

== Funzionalità e vincoli del prodotto
Il prodotto dovrà fornire le seguenti funzionalità:
- *Monitoraggio in tempo reale della posizione degli utenti*: il sistema dovrà essere in grado di mostrare su una mappa interattiva la posizione degli utenti attivi.
- *Creazione di annunci pubblicitari personalizzati*: il sistema dovrà essere in grado di creare annunci pubblicitari personalizzati per gli utenti, sfruttando i dati di profilazione e la posizione in tempo reale. Quando un utente si trova in prossimità di un punto di interesse il sistema dovrà essere in grado di stimare se l'utente possa essere interessato ai servizi offerti dall'attività e, in tal caso, generare un annuncio pubblicitario personalizzato per quell'utente.
- *Visualizzazione nella _dashboard_ degli annunci pubblicitari generati*: il sistema dovrà essere in grado di mostrare in tempo reale gli annunci pubblicitari che vengono visualizzati dagli utenti.
- *Visualizzazione nella _dashboard_ dello storico degli annunci pubblicitari*: il sistema dovrà essere in grado di mostrare uno storico degli annunci pubblicitari visualizzati dagli utenti a disposizione degli amministratori del sistema.

L'azienda proponente richiede inoltre la dimostrazione del corretto funzionamento dei servizi e delle funzionalità del sitema, garantendo una copertura di test di più dell'80% e correlata da report. Viene richiesto inoltre che il prodotto sia in grado di mantenere un elevato flusso di dati in entrata dovuto ai dati di localizzazione emessi dai sensori.

== Utenti e loro caratteristiche
Il prodotto si rivolge a due tipologie di utenti:
- *Gestore del servizio di noleggio*: utente che gestisce il servizio di noleggio, ovvero un nostro cliente, che ha accesso tramite _dashboard_ a tutte le funzionalità del sistema ed è interessato quindi, oltre che al monitoraggio della flotta, anche all'andamento delle campagne pubblicitarie nel tempo.
- *Utente*: utente che utilizza il servizio di noleggio e che ha accesso solo alla funzionalità di visualizzazione degli annunci pubblicitari.

#pagebreak()

= Casi d'uso
== Introduzione
La seguente sezione descrive i casi d'uso individuati per il progetto _Near You - Smart custom advertising platform_ all'interno del capitolato d'appalto e a seguito delle varie riunioni sostenute con l'azienda proponente Sync Lab S.r.l..
Ogni caso d'uso è identificato da un codice univoco, che segue la nomenclatura *UC[numero_use_case]*, e da una serie di informazioni:
- *Attori principali*
- *Attori secondari* (se presenti)
- *Precondizioni*
- *Postcondizioni*
- *Trigger*
- *Scenario principale*
- *Generalizzazioni* (se presenti)
- *Inclusioni* (se presenti)
- *Estensioni* (se presenti)

== Attori
Gli attori coinvolti nei casi d'uso sono i seguenti:
- *Amministratore*: gestore di un servizio di noleggio autenticato al sistema.
- *Amministratore non autenticato*: gestore di un servizio di noleggio non autenticato al sistema.
- *Sensore*: strumento attraverso il quale il mezzo noleggiato da uno specifico utente trasmette la sua posizione in tempo reale.
- *#rifGlossario("LLM")*: servizio esterno che si occupa della generazione degli annunci pubblicitari personalizzati tramite #rifGlossario("prompt") fornito dal sistema.

== Elenco dei casi d'uso

=== UC1 - Trasmissione dei dati di localizzazione <uc1>
- *Attore principale*: Sensore.
- *Precondizioni*: il sistema monitora i sensori sui mezzi con un noleggio attivo. In particolare mantiene l'informazione riguardo la posizione #rifGlossario("GPS") inviata dal sensore in tempo reale.
- *Postcondizioni*: il sistema riceve l'informazione riguardo la posizione GPS del sensore in quel momento.
- *Trigger*: il sensore intende notificare al sistema la localizzazione GPS del mezzo sul quale è installato.
- *Scenario principale*:
  + L'utente noleggia un mezzo.
  + Il sensore invia a intervalli di tempo regolari i dati di localizzazione GPS del mezzo.
#v(20pt)
#figure(
  image("../assets/use_cases/UC1.png"),
  caption: [Diagramma del caso d'uso UC1],
)

#pagebreak()

=== UC2 - Autenticazione alla dashboard del sistema <uc2>
- *Attori principali*: Amministratore non autenticato.
- *Precondizioni*: 
  + il sistema possiede le credenziali dell'amministratore che in quel momento non è autenticato.
  + l'amministratore non autenticato accede alla pagina di _login_.
- *Postcondizioni*: il sistema accetta le credenziali inserite e fa accedere l'amministratore alla _dashboard_ personale.
- *Trigger*: l'amministratore intende accedere alla _dashboard_ personale.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce le proprie credenziali di accesso.
  + Il sistema registra l'amministratore come autenticato e lo fa accedere alla _dashboard_ personale.
- *Inclusioni*:
  + Inserimento _e-mail_ per l'autenticazione alla _dashboard_ (#link(<uc3>)[UC3]).
  + Inserimento _password_ per l'autenticazione alla _dashboard_ (#link(<uc4>)[UC4]).
- *Estensioni*:
  + Visualizzazione errore "Credenziali errate" (#link(<uc5>)[UC5]).

=== UC3 - Inserimento e-mail per l'autenticazione alla dashboard <uc3>
- *Attore principale*: Amministratore non autenticato.
- *Precondizioni*: 
  + il sistema possiede l'_e-mail_ dell'amministratore che in quel momento non è autenticato.
  + l'amministratore non autenticato si trova nella pagina di _login_. 
  + l'amministratore insersce la propria _e-mail_.
- *Postcondizioni*: il sistema accetta l'_e-mail_ inserita.
- *Trigger*: l'amministratore intende accedere alla _dashboard_ personale.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce l'_e-mail_ con la quale è registrato nel sistema.

=== UC4 - Inserimento password per l'autenticazione alla dashboard <uc4>
- *Attore principale*: Amministratore non autenticato.
- *Precondizioni*: 
  + il sistema possiede l'_e-mail_ dell'amministratore che in quel momento non è autenticato.
  + l'amministratore non autenticato si trova nella pagina di _login_. 
  + l'amministratore insersce la propria _password_.
- *Postcondizioni*: il sistema accetta la _password_ inserita.
- *Trigger*: l'amministratore intende accedere alla _dashboard_ personale.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce la _password_ con la quale è registrato nel sistema.

=== UC5 - Visualizzazione errore "Credenziali errate" <uc5>
- *Attori principali*: Amministratore non autenticato.
- *Precondizioni*: il sistema riceve le credenziali inserite dall'amministratore non autenticato.
- *Postcondizioni*: il sistema individua un'incoerenza tra le credenziali inserite e quelle memorizzate.
- *Trigger*: l'amministratore non autenticato inserisce delle credenziali errate.
- *Scenario principale*:
  + L'amministratore inserisce delle credenziali errate durante la fase di autenticazione alla _dashboard_.
  + L'amministratore riceve un messaggio di errore il quale segnala che le credenziali inserite sono non valide.
#v(20pt)
#figure(
  image("../assets/use_cases/UC2-3-4-5.png"),
  caption: [Diagramma dei casi d'uso UC2, UC3, UC4 e UC5],
)

#pagebreak()

=== UC6 - Visualizzazione della mappa geografica sulla dashboard <uc6>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia delle informazioni relative ai mezzi noleggiati, ai punti di interesse e agli annunci.
  + l'amministratore accede alla _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone una mappa geografica sulla _dashboard_ dell'amministratore.
- *Trigger*: l'amministratore intende visualizzare la mappa geografica sulla propria _dashboard_.
- *Scenario principale*:
  + L'amministratore è autenticato alla _dashboard_ del sistema.
  + La _dashboard_ del sistema espone una mappa geografica del territorio.
- *Inclusioni*:
  + Visualizzazione _#rifGlossario("marker")_ sulla mappa per i punti di interesse (#link(<uc7>)[UC7]).

=== UC7 - Visualizzazione marker sulla mappa per i punti di interesse <uc7>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della posizione di ciascun punto di interesse.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa dei _marker_ in corrispondenza dei punti di interesse.
- *Trigger*: l'amministratore intende visualizzare sulla mappa le locazioni dei punti di interesse.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza di ciascun punto di interesse.
#v(20pt)
#figure(
  image("../assets/use_cases/UC6-7.png"),
  caption: [Diagramma dei casi d'uso UC6 e UC7],
)

#pagebreak()

=== UC8 - Visualizzazione percorso del mezzo in noleggio sulla mappa <uc8>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia delle posizioni nel tempo dei mezzi con noleggio attivo.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa il percorso dei mezzi con noleggio attivo.
- *Trigger*: l'amministratore desidera visualizzare il percorso di un mezzo dall'inizio del suo noleggio fino a quel momento.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza il percorso del mezzo noleggiato.
- *Inclusioni*:
  + Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza del dato GPS (#link(<uc9>)[UC9]).

=== UC9 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza del dato GPS <uc9>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema riceve in tempo reale i dati GPS dei sensori quando il mezzo sul quale sono installati ha un noleggio attivo.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa un _marker_ in corrispondenza di ciascuna coordinata GPS fornita dal sensore.
- *Trigger*: l'amministratore intende visualizzare sulla mappa le posizioni del mezzo in noleggio fino a quel momento.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza di ogni dato GPS ritornato dal sensore di un relativo mezzo in noleggio.
#v(20pt)
#figure(
  image("../assets/use_cases/UC8-9.png"),
  caption: [Diagramma dei casi d'uso UC8 e UC9],
)

#pagebreak()

=== UC10 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza della generazione di un annuncio <uc10>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema memorizza gli annunci generati e le relative informazioni.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui è stato generato un annuncio.
- *Trigger*: l'amministratore intende visualizzare sulla mappa le posizioni del mezzo in noleggio nelle quali è stato generato un annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali è stato generato un annuncio.
#v(20pt)
#figure(
  image("../assets/use_cases/UC10.png"),
  caption: [Diagramma del caso d'uso UC10],
)

#pagebreak()

=== UC11 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza della mancata generazione di un annuncio <uc11>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema memorizza le mancate generazioni degli annunci e le relative informazioni.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui la LLM non ha ritenuto l'utente interessato, quindi non è stato generato l'annuncio.
- *Trigger*: l'amministratore intende visualizzare sulla mappa le posizioni del mezzo in noleggio nelle quali la LLM non ha generato un annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali la LLM non ha generato un annuncio.
#v(20pt)
#figure(
  image("../assets/use_cases/UC11.png"),
  caption: [Diagramma del caso d'uso UC11],
)

#pagebreak()


=== UC12 - Visualizzazione informazioni punto di interesse tramite marker sulla mappa <uc12>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia delle informazioni di ciascun punto di interesse.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone le informazioni del punto di interesse selezionato in corrispondenza del _marker_ sulla mappa.
- *Trigger*: l'amministratore desidera visualizzare le informazioni del punto di interesse in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un punto di interesse.
  + Vengono visualizzate le informazioni in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  + VISUALIZZAZIONE INFORMAZIONI DEL POI
#v(20pt)
#figure(
  image("../assets/use_cases/UC12.png"),
  caption: [Diagramma del caso d'uso UC12],
)

#pagebreak()

=== UC13 - Visualizzazione annuncio tramite marker sulla mappa <uc13>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia degli annunci generati e le relative informazioni.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone l'annuncio generato, con le relative informazioni, in corrispondenza del _marker_ sulla mappa.
- *Trigger*: l'amministratore desidera visualizzare l'annuncio generato in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un annuncio generato.
  + Viene visualizzato l'annuncio generato in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  + Visualizzazione dettagli di un singolo annuncio (#link(<uc31>)[UC31]).
#v(20pt)
#figure(
  image("../assets/use_cases/UC13.png"),
  caption: [Diagramma del caso d'uso UC13],
)

#pagebreak()

=== UC14 - Visualizzazione messaggio annuncio non generato tramite marker sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia degli annunci non generati e le relative informazioni.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone un messaggio circa l'annuncio non generato, con le relative informazioni, in corrispondenza del _marker_ sulla mappa.
- *Trigger*: l'amministratore desidera visualizzare le informazioni dell'annuncio non generato in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un annuncio non generato.
  + Viene visualizzato il messaggio con le informazioni dell'annuncio che non è stato generato in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse (#link(<uc15>)[UC15]).
  + Visualizzazione _e-mail_ dell'utente (#link(<uc16>)[UC16]).

=== UC15 - Visualizzazione nome del punto di interesse dal marker sulla mappa <uc15>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia del nome di ciascun punto di interesse.
  + il sistema sta esponendo la _dashboard_ con la mappa e i _marker_ all'amministratore.
- *Postcondizioni*: il sistema espone il nome del punto di interesse.
- *Trigger*: l'amministratore desidera visualizzare il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC16 - Visualizzazione e-mail dell'utente dal marker sulla mappa <uc16>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  + il sistema sta esponendo la _dashboard_ con la mappa e i _marker_ all'amministratore.
- *Postcondizioni*: il sistema espone l'_e-mail_ dell'utente.
- *Trigger*: l'amministratore desidera visualizzare l'_e-mail_ dell'utente.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente.

#v(20pt)
#figure(
  image("../assets/use_cases/UC14-15-16.png"),
  caption: [Diagramma dei caso d'uso UC14, UC15, UC16],
)

#pagebreak()


// TODO: vedere dubbio su UC36
=== UC17 - Chiusura annuncio visualizzato tramite marker sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  + l'amministratore ha aperto l'annuncio tramite un'interazione con il _marker_ sulla mappa.
- *Postcondizioni*: il sistema chiude l'annuncio visualizzato tramite una interazione con il _marker_ corrispondente.
- *Trigger*: l'amministratore desidera chiudere l'annuncio fatto comparire sulla mappa in corrispondenza del _marker_.
- *Scenario principale*:
  + L'amministratore visualiza l'annuncio sulla mappa in corrispondenza del _marker_.
  + L'amministratore chiude l'annuncio.

=== UC18 - Chiusura messaggio annuncio non generato visualizzato tramite marker sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  + l'amministratore ha aperto la mancata generazione di un annuncio tramite un'interazione con il _marker_ sulla mappa.
- *Postcondizioni*: il sistema chiude il messaggio di annuncio non generato visualizzato tramite una interazione con il _marker_ corrispondente.
- *Trigger*: l'amministratore desidera chiudere il messaggio di annuncio non generato fatto comparire sulla mappa in corrispondenza del _marker_.
- *Scenario principale*:
  + L'amministratore visualiza il messaggio di annuncio non generato sulla mappa in corrispondenza del _marker_.
  + L'amministratore chiude il messaggio.
#v(20pt)
#figure(
  // TODO [Marin]: ovviamente non rinomino l'immagine, toccherà a Davide Marin quando farà i nuovi UML
  image("../assets/use_cases/UC17-18.png"),
  caption: [Diagramma dei casi d'uso UC17 e UC18],
)

#pagebreak()

=== UC19 - Spostamento della visuale sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  + il sistema tiene traccia del centro della porzione di territorio visualizzata sulla mappa.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio centrata su un nuovo punto.
- *Trigger*: l'amministratore desidera spostare la visuale sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per spostare il centro della mappa, quindi anche l'intera visuale.
#v(20pt)
#figure(
  // TODO [Marin]: ovviamente non rinomino l'immagine, toccherà a Davide Marin quando farà i nuovi UML
  image("../assets/use_cases/UC19.png"),
  caption: [Diagramma dei casi d'uso UC19],
)

#pagebreak()

=== UC20 - Modifica ampiezza della visuale sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  + il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio più o meno ampia a seconda dell'azione dell'amministratore.
- *Trigger*: l'amministratore desidera modificare l'ampiezza della visuale sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per modificare l'ampiezza della visuale.
- *Generalizzazioni*:
  + Ampliamento della visuale sulla mappa (#link(<uc21>)[UC21])).
  + Restringimento della visuale sulla mappa (#link(<uc22>)[UC22])).

=== UC21 - Ampliamento della visuale sulla mappa <uc21>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio più ampia.
- *Trigger*: l'amministratore desidera ampliare la visuale sulla mappa.
- *Scenario principale*:
  + l'amministratore accede alla mappa sulla _dashboard_.
  + l'amministratore interagisce con la mappa per ampliare la visuale.

=== UC22 - Restringimento della visuale sulla mappa <uc22>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  + il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio meno ampia.
- *Trigger*: l'amministratore desidera restringere la visuale sulla mappa.
- *Scenario principale*:
  + l'amministratore accede alla mappa sulla _dashboard_.
  + l'amministratore interagisce con la mappa per restringere la visuale.
#v(20pt)
#figure(
  // TODO [Marin]: ovviamente non rinomino l'immagine, toccherà a Davide Marin quando farà i nuovi UML
  image("../assets/use_cases/UC20-21-22.png"),
  caption: [Diagramma dei casi d'uso UC20, UC21 e UC22],
)

#pagebreak()

=== UC23 - Visualizzazione storico degli annunci
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore vuole entrare nella _dashboard_ in cui il sistema espone gli annunci generati fino a quel momento.
- *Postcondizioni*: il sistema espone gli annunci generati fino a quel momento ordinati dal più recente.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + Il sistema espone le _preview_ degli annunci con le informazioni principali.
- *Generalizzazioni*:
  + Visualizzazione storico annunci in lista (#link(<uc24>)[UC24]).
  + Visualizzazione storico annunci in griglia (#link(<uc25>)[UC25]).
- *Inclusioni*:
  + Visualizzazione singolo annuncio nello storico (#link(<uc26>)[UC26]).

=== UC24 - Visualizzazione storico annunci in lista <uc24>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema espone gli annunci generati fino a quel momento ordinati dal più recente.
  + l'amministratore vuole vedere gli annunci in una lista.
- *Postcondizioni*: gli annunci vengono mostrati nella dashboard all'amministratore sottoforma di lista.
- *Trigger*: l'amministratore vuole prendere visione degli annunci generati fino a quel momento in lista.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore selezione l'opzione per visualizzare gli annunci in lista.

=== UC25 - Visualizzazione storico annunci in griglia <uc25>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema espone gli annunci generati fino a quel momento ordinati dal più recente.
  + l'amministratore vuole vedere gli annunci in una griglia.
- *Postcondizioni*: gli annunci vengono mostrati nella dashboard all'amministratore sottoforma di griglia.
- *Trigger*: l'amministratore vuole prendere visione degli annunci generati fino a quel momento in griglia.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore selezione l'opzione per visualizzare gli annunci in griglia.

=== UC26 - Visualizzazione singolo annuncio nello storico <uc26>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia delle informazioni principali degli annunci generati per gli utenti dell'amministratore. Questo visualizza la sezione dedicata agli annunci e vuole conoscere i dettagli di uno di questi.
- *Postcondizioni*: il sistema espone le informazioni principali relative al singolo annuncio:
  - Nome del punto di interesse collegato.
  - _E-mail_ dell'utente destinatario.
  - Data e ora di emissione.
  - Un _flag_ che indica se il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Trigger*: l'amministratore desidera visualizzare le informazioni principali di un annuncio.
- *Scenario principale*:
  + L'amministratore visualizza le informazioni principali relative all'annuncio.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse dall'annuncio nello storico (#link(<uc27>)[UC27]).
  + Visualizzazione _e-mail_ dell'utente dall'annuncio nello storico (#link(<uc28>)[UC28]).
  + Visualizzazione data e ora di tentativo di generazione annuncio dall'annuncio nello storico (#link(<uc29>)[UC29]).
  + Visualizzazione _flag_ sugli annunci nello storico inviati a noleggi attivi dall'annuncio nello storico (#link(<uc30>)[UC30]).

=== UC27 - Visualizzazione nome del punto di interesse dall'annuncio nello storico <uc27>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia del nome di ciascun punto di interesse.
  + l'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*: il sistema espone il nome del punto di interesse.
- *Trigger*: l'amministratore desidera visualizzare il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC28 - Visualizzazione e-mail dell'utente dall'annuncio nello storico <uc28>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  + l'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*: il sistema espone l'_e-mail_ dell'utente.
- *Trigger*: l'amministratore desidera visualizzare l'_e-mail_ dell'utente.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente.

=== UC29 - Visualizzazione data e ora di tentativo di generazione annuncio dall'annuncio nello storico <uc29>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  + l'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*: il sistema espone la data e l'ora di tentativo di generazione annuncio.
- *Trigger*: l'amministratore desidera visualizzare la data e l'ora di quando il sistema ha richiesto di generare un annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentaivo di generazione annuncio.

=== UC30 - Visualizzazione flag sugli annunci nello storico inviati a noleggi attivi dall'annuncio nello storico
<uc30>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dello stato del noleggio al quale è stato inviato l'annuncio, se è cioè ancora attivo o meno.
  + l'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*: il sistema espone un _flag_ nel caso il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Trigger*: l'amministratore desidera visualizzare se l'annuncio è stato inviato ad un mezzo con noleggio attivo.
- *Scenario principale*:
  + L'amministratore visualizza il _flag_ nel caso in cui il noleggio relativo all'annuncio è ancora attivo.
#v(20pt)
#figure(
  // TODO [Marin]: ovviamente non rinomino l'immagine, toccherà a Davide Marin quando farà i nuovi UML
  image("../assets/use_cases/UC23-24-25-26-27-28-29-30.png"),
  caption: [Diagramma dei casi d'uso UC23, UC24, UC25, UC26, UC27, UC28, UC29 e UC30],
)

#pagebreak()

=== UC31 - Visualizzazione dettagli di un singolo annuncio <uc31>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia di tutte le informazioni degli annunci generati per gli utenti dell'amministratore.
  + l'amministratore entra nel dettaglio di un annuncio.
- *Postcondizioni*: il sistema espone interamente l'annuncio insieme alle relative informazioni:
  - Nome del punto di interesse collegato.
  - Categoria del punto di interesse collegato.
  - _E-mail_ dell'utente destinatario.
  - Data e ora di erogazione.
  - _Flag_ che indica se il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Trigger*: l'amministratore desidera visualizzare l'annuncio insieme alle relative informazioni.
- *Scenario principale*:
  + L'amministratore seleziona l'opzione per visualizzare i dettagli dell'annuncio desiderato.
  + Viene esposto l'annuncio insieme alle relative informazioni.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse dal dettaglio di un annuncio (#link(<uc32>)[UC32]).
  + Visualizzazione _e-mail_ dell'utente dal dettaglio di un annuncio (#link(<uc33>)[UC33]).
  + Visualizzazione data e ora di tentativo di generazione annuncio dal dettaglio di un annuncio (#link(<uc34>)[UC34]).
  + Visualizzazione _flag_ sugli annunci nello storico inviati a noleggi attivi dal suo dettaglio (#link(<uc37>)[UC37]).
  + Visualizzazione completa dell'annuncio dal suo dettaglio (#link(<uc36>)[UC36]).
  + Visualizzazione categoria del punto di interesse collegato all'annuncio dal suo dettaglio (#link(<uc37>)[UC37]).
  + Chiusura della finestra di dialogo aperta (#link(<uc38>)[UC38]).

=== UC32 - Visualizzazione nome del punto di interesse dal dettaglio di un annuncio <uc32>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia del nome di ciascun punto di interesse.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone il nome del punto di interesse.
- *Trigger*: l'amministratore desidera visualizzare il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC33 - Visualizzazione e-mail dell'utente dal dettaglio di un annuncio<uc33>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone l'_e-mail_ dell'utente.
- *Trigger*: l'amministratore desidera visualizzare l'_e-mail_ dell'utente.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente.

=== UC34 - Visualizzazione data e ora di tentativo di generazione annuncio dal dettaglio di un annuncio <uc34>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone la data e l'ora di tentativo di generazione annuncio.
- *Trigger*: l'amministratore desidera visualizzare la data e l'ora di quando il sistema ha richiesto di generare un annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentaivo di generazione annuncio.

=== UC35 - Visualizzazione flag sugli annunci nello storico inviati a noleggi attivi dal dettaglio di un annuncio
<uc35>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dello stato del noleggio al quale è stato inviato l'annuncio, se è cioè ancora attivo o meno.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone un _flag_ nel caso il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Trigger*: l'amministratore desidera visualizzare se l'annuncio è stato inviato ad un mezzo con noleggio attivo.
- *Scenario principale*:
  + L'amministratore visualizza il _flag_ nel caso in cui il noleggio relativo all'annuncio è ancora attivo.

=== UC36 - Visualizzazione del corpo dell'annuncio dal suo dettaglio <uc36>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia degli annunci generati.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone il corpo dell'annuncio per intero.
- *Trigger*: l'amministratore desidera visualizzare l'annuncio generato precedentemente.
- *Scenario principale*:
  + L'amministratore visualizza interamente il corpo dell'annuncio generato precedentemente.

=== UC37 - Visualizzazione categoria del punto di interesse collegato all'annuncio dal suo dettaglio <uc37>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della categoria del punto di interesse collegato al relativo annuncio.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone la categoria del punto di interesse collegato al relativo annuncio.
- *Trigger*: l'amministratore desidera visualizzare la categoria del punto di interesse collegato al relativo annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la categoria del punto di interesse.

// TODO: risolvere il seguente dubbio, questa funzionalità (UC36) è effettivamente implementata da noi? Io (rm) penso di sì in quanto è una funzionalità
//        della dashboard grafana configurata da noi, se non fosse una funzionalità per assurdo anche la mappa non sarebbe implementata da noi.
//        se Marin conferma e poi anche i revisori possiamo togliere questo commento e anche quello sulla versione 0.6.0 nel changelog.
=== UC38 - Chiusura della finestra di dialogo aperta <uc38>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema espone una finestra di dialogo con la quale l'amministratore può interagire.
- *Postcondizioni*: il sistema chiude la finestra di dialogo.
- *Trigger*: l'amministratore desidera chiudere la finestra di dialogo aperta.
- *Scenario principale*:
  + L'amministratore visualizza una finestra di dialogo aperta.
  + L'amministratore chiude la finestra di dialogo aperta.
#v(20pt)
#figure(
  // TODO [Marin]: ovviamente non rinomino l'immagine, toccherà a Davide Marin quando farà i nuovi UML
  image("../assets/use_cases/UC31-32-33-34-35-36-37-38.png"),
  caption: [Diagramma dei casi d'uso UC31, UC32, UC33, UC34, UC35, UC36, UC37 e UC38],
)

#pagebreak()

=== UC39 - Ricerca degli annunci nello storico <uc39>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore. 
  + l'amministratore sta visualizzando la sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone gli annuci filtrati secondo alcune opzioni fornite: _e-mail_ dell'utente destinatario dell'annuncio, nome del punto di interesse collegato all'annuncio, intervallo di date e fascia oraria di emissione.
- *Trigger*: l'amministratore desidera prendere visione di alcuni specifici annunci generati precedentemente.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore esegue una ricerca degli annunci desiderati.
- *Inclusioni*:
  + Ricerca degli annunci nello storico per _e-mail_ utente (#link(<uc40>)[UC40]).
  + Ricerca degli annnunci nello storico per nome del punto di interesse (#link(<uc41>)[UC41]).
  + Ricerca degli annunci nello storico per intervallo di date di emissione (#link(<uc42>)[UC42]).
  + Ricerca degli annunci nello storico per fascia oraria di emissione (#link(<uc43>)[UC43]).

=== UC40 - Ricerca degli annunci nello storico per e-mail utente <uc40>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia di tutti gli annunci generati per l'utente selezionato. 
  + l'amministratore sta visualizzando la sezione dedicata agli annunci.
  + l'amministratore vuole filtrare gli annunci per _e-mail_ utente.
- *Postcondizioni*: il sistema espone lo storico degli annunci destinati all'utente selezionato.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento per uno specifico utente.
- *Scenario principale*:
  + L'amministratore seleziona l'_e-mail_ di un utente.
  + Vengono visualizzati solo gli annunci destinati all'utente selezionato.

=== UC41 - Ricerca degli annunci nello storico per nome del punto di interesse <uc41>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia di tutti gli annunci generati collegati al punto di interesse selezionato.
  + l'amministratore sta visualizzando la sezione dedicata agli annunci.
  + l'amministratore vuole filtrare gli annunci per nome del punto di interesse.
- *Postcondizioni*: il sistema espone lo storico degli annunci collegati al punto di interesse selezionato.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento per uno specifico punto di interesse.
- *Scenario principale*:
  + L'amministratore seleziona il nome di un punto di interesse.
  + Vengono visualizzati solo gli annunci collegati al punto di interesse selezionato.

=== UC42 - Ricerca degli annunci nello storico per intervallo di date di emissione <uc42>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia di tutti gli annunci emessi nell'intervallo di date selezionato.
  + l'amministratore sta visualizzando la sezione dedicata agli annunci.
  + l'amministratore vuole filtrare gli annunci per intervallo di date di emissione.
- *Postcondizioni*: il sistema espone lo storico degli annunci emessi nell'intervallo di date selezionato.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento in un determinato intervallo di date.
- *Scenario principale*:
  + L'amministratore seleziona un intervallo di date.
  + Vengono visualizzati solo gli annunci emessi nell'intervallo di date selezionato.

=== UC43 - Ricerca degli annunci nello storico per fascia oraria di emissione <uc43>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  + il sistema tiene traccia di tutti gli annunci emessi nell'intervallo di date selezionato.
  + l'amministratore sta visualizzando la sezione dedicata agli annunci.
  + l'amministratore vuole filtrare gli annunci per fascia oraria di emissione.
- *Postcondizioni*: il sistema espone lo storico degli annunci emessi nella fascia oraria selezionata.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento in una determinata fascia oraria.
- *Scenario principale*:
  + L'amministratore seleziona una fascia oraria.
  + Vengono visualizzati solo gli annunci emessi nella fascia oraria selezionata.
#v(20pt)
#figure(
  // TODO [Marin]: ovviamente non rinomino l'immagine, toccherà a Davide Marin quando farà i nuovi UML
  image("../assets/use_cases/UC39-40-41-42-43.png"),
  caption: [Diagramma dei casi d'uso UC39, UC40, UC41, UC42 e UC43],
)

#pagebreak()

=== UC44 - Visualizzazione errore "Il server non risponde"
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tenta di comunicare con il _server_ per ricevere o inviare informazioni, ma si verifica un errore.
- *Postcondizioni*: il sistema espone il messaggio di errore che segnala un problema con il _server_.
- *Trigger*: l'amministratore desidera prendere visione del messaggio di errore quando il _server_ non risponde correttamente.
- *Scenario principale*:
  + Il _server_ restituisce un errore (ad esempio, codice HTTP 500 o simile) durante la comunicazione.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC45 - Visualizzazione errore "Connessione persa"
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema monitora lo stato della connessione di rete e non rileva connessione.
- *Postcondizioni*: il sistema espone il messaggio di errore relativo alla perdita di connessione.
- *Trigger*: l'amministratore desidera prendere visione del messaggio di errore quando la connessione di rete è assente.
- *Scenario principale*:
  + Il sistema rileva che la connessione di rete è persa o instabile.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC46 - Visualizzazione errore "Sensore malfunzionante"
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema monitora le risposte dei sensori attivi, cioè installati su mezzi con noleggio attivo e rileva uno o più errori.
- *Postcondizioni*: il sistema espone il messaggio di malfunzionamento di un sensore.
- *Trigger*: l'amministratore desidera prendere visione del messaggio di errore di malfunzionamento di un sensore.
- *Scenario principale*:
  + Il sensore non comunica correttamente i dati al sistema.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC47 - Visualizzazione errore "Generazione impossibile dell'annuncio"
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema comunica con una LLM per far generare gli annunci, ma si verifica un errore.
- *Postcondizioni*: il sistema espone il messaggio di impossibilità di comunicazione con la LLM.
- *Trigger*: l'amministratore desidera prendere visione del messaggio di errore di impossibiltà di connessione con la LLM.
- *Scenario principale*:
  + Il sistema non riesce a comunicare correttamente con la LLM, non riesce cioè a inviare o ricevere messaggi.
  + L'amministratore viualizza il messaggio di errore sulla _dashboard_.
#v(20pt)
#figure(
  // TODO [Marin]: ovviamente non rinomino l'immagine, toccherà a Davide Marin quando farà i nuovi UML
  image("../assets/use_cases/UC44-45-46-47.png"),
  caption: [Diagramma dei casi d'uso UC44, UC45, UC46, UC47],
)

#pagebreak()


// OPZIONALI (rimesso da @klamerja... non sono sicuro alla fine siano opzionali o meno. Da confermare con @ErPreco)

=== UC48 - Visualizzazione statistiche in grafici
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema mantiene delle informazioni utili per una anlisi statistica.
  + l'amministratore entra nella _dashboard_ con i grafici per le analisi sui dati.
- *Postcondizioni*: il sistema espone dei grafici che rappresentino le informazioni.
- *Trigger*: l'amministratore desidera prendere visione dei grafici per osservare l'andamento di alcuni dati.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita dei grafici.
  + Il sistema espone dei grafici relativi alle analisi proposte.
- *Inclusioni*:
  + Visualizzazione singolo grafico (#link(<uc49>)[UC49]).

=== UC49 - Visualizzazione singolo grafico <uc49>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema mantiene delle informazioni utili per una anlisi statistica.
  + l'amministratore si trova nella _dashboard_ con i grafici per le analisi sui dati.
  + l'amministratore vuole visualizzare un singolo grafico.
- *Postcondizioni*: l'amministratore visualizza il grafico con le relative informazioni:
  - Titolo del grafico.
  - Etichetta dell'asse delle ascisse.
  - Etichetta dell'asse delle ordinate.
  - Etichette dei valori sugli assi.
  - Dati del grafico.
- *Trigger*: l'amministratore desidera prendere visione del grafico che espone l'andamento di uno specifico parametro.
- *Scenario principale*:
  + L'amministratore visualizza il grafico con le relative informazioni.
- *Inclusioni*:
  + Visualizzazione titolo del grafico (#link(<uc50>)[UC50]).
  + Visualizzazione etichetta asse delle ascisse e relativi valori (#link(<uc51>)[UC51]).
  + Visualizzazione etichetta asse delle ordinate e relativi valori (#link(<uc52>)[UC52]).
  + Visualizzazione dati sul grafico (#link(<uc53>)[UC53]).

=== UC50 - Visualizzazione titolo del grafico <uc50>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia del titolo del grafico. 
  + l'amministratore sta visualizzando un grafico.
- *Postcondizioni*: il sistema espone il titolo del grafico.
- *Trigger*: l'amministratore desidera prendere visione del titolo del grafico.
- *Scenario principale*:
  + L'amministratore visualizza il titolo del grafico.

=== UC51 - Visualizzazione etichetta asse delle ascisse e relativi valori <uc51>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia delle etichette dell'asse delle ascisse e dei relativi valori di ciascun grafico.
  + l'amministratore sta visualizzando un grafico.
- *Postcondizioni*: il sistema espone le etichette dell'asse delle ascisse e dei relativi valori.
- *Trigger*: l'amministratore desidera prendere visione delle etichette dell'asse delle ascisse e dei rispettivi valori.
- *Scenario principale*:
  + L'amministratore visualizza l'etichetta dell'asse delle ascisse del relativo grafico.
  + L'amministratore visualizza le etichette dei valori segnati sull'asse delle ascisse del relativo grafico.

=== UC52 - Visualizzazione etichetta asse delle ordinate e relativi valori <uc52>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia delle etichette dell'asse delle ordinate e dei relativi valori di ciascun grafico.
  + l'amministratore sta visualizzando un grafico. 
- *Postcondizioni*: il sistema espone le etichette dell'asse delle ordinate e dei relativi valori.
- *Trigger*: l'amministratore desidera prendere visione delle etichette dell'asse delle ordinate e dei rispettivi valori.
- *Scenario principale*:
  + l'amministratore visualizza l'etichetta dell'asse delle ordinate del relativo grafico.
  + l'amministratore visualizza le etichette dei valori segnati sull'asse delle ordinate del relativo grafico.

// TODO: si possono mettere dati sul grafico?
=== UC53 - Visualizzazione dati sul grafico <uc53>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dei dati di ciascun grafico.
  + l'amministratore sta visualizzando un grafico. 
- *Postcondizioni*: l'amministratore visualizza i dati sul relativo grafico.
- *Trigger*: l'amministratore desidera prendere visione dei dati del parametro in esame sul grafico.
- *Scenario principale*:
  + l'amministratore visualizza i dati sul grafico.
#v(20pt)
#figure(
  // TODO [Marin]: ovviamente non rinomino l'immagine, toccherà a Davide Marin quando farà i nuovi UML
  image("../assets/use_cases/UC48-49-50-51-52-53.png"),
  caption: [Diagramma dei casi d'uso UC48, UC49, UC50, UC51, UC52 e UC53],
)

#pagebreak()

= Requisiti
In questa sezione vengono elencati i requisiti relativi al sistema oggetto del progetto didattico _Near You_ fornito dalla proponente Sync Lab S.r.l..

I requisiti sono frutto dell'analisi del capitolato d'appalto, dalle varie interazioni con la proponente e a seguito dei vari dialoghi interni avvenuti con i vari membri del gruppo.

Ogni requisito è identificato univocamente da un codice che presenta la seguente struttura:
#align(center)[*R[Importanza][Tipo]-[ID]*]
Viene riportata di seguito il significato e i possibili valori dei campi presenti all'interno di ogni identificativo:
- *Importanza*: indica il grado di importanza di ogni requisito, che si disingue in:
  - *O*: requisito obbligatorio, ovvero che viene richiesto esplicitamente dall'azienda e strettamente necessario.
  - *D*: requisito desiderabile, ovvero che non è strettamente necessario ma da valore aggiunto al prodotto finale.
  - *F*: requisito facoltativo, ovvero che non è necessario ma può essere utile ai fini del prodotto finale. Quest'ultimi possono essere contrattati in seguito con l'azienda.
- *Tipo*: indica la tipologia di requisito che si distingue in:
  - *F*: requisito funzionale
  - *Q*: requisito di qualità
  - *V*: requisito di vincolo
- *ID*: numero progressivo che identifica univocamente il requisito nella sua categoria.
== Requisiti obbligatori
=== Requisiti funzionali
#table(
  align: (center, left, center),
  columns: (0.8fr, 3fr, 0.8fr),
  table.header([*Codice*], [*Descrizione*], [*Origine*]),
  [ROF-x],
  [La _dashboard_ dell'amministratore, per essere accessibile solamente da quest'ultimo, deve essere protetta da un sistema di autenticazione. Per poter visualizzare la _dashboard_ l'amministratore deve quindi autenticarsi con le proprie credenziali.],
  [#link(<uc2>)[UC2]],

  [ROF-x],
  [L'amministratore, per poter accedere alla _dashboard_, deve fornire l'indirizzo _e-mail_ dell'_account_ con cui è registrato all'interno del sistema.],
  [#link(<uc3>)[UC3]],

  [ROF-x],
  [L'amministratore, per poter accedere alla _dashboard_, deve fornire la _password_ dell'_account_ con cui è registrato all'interno del sistema.],
  [#link(<uc4>)[UC4]],

  [ROF-x],
  [Se l'amministratore inserisce delle credenziali invalide, come una _e-mail_ o _password_ non valida, il sistema deve ritornare un avviso che informi l'utente riguardo l'errore.],
  [#link(<uc5>)[UC5]],

  [ROF-x],
  [L'amministratore, una volta autenticato, deve poter visualizzare all'interno della dashboard la mappa geografica dove verranno posizionate le varie informazioni.],
  [#link(<uc6>)[UC6]],

  [ROF-x],
  [L'amministratore deve poter visualizzare tutti i punti di interesse all'interno della mappa geografica mediante l'ausilio dei _marker_.],
  [#link(<uc7>)[UC7]],

  [ROF-x],
  [L'amministratore deve poter visualizzare i tracciati percorsi dai mezzi a noleggio per ogni noleggio che viene erogato dal sistema.],
  [#link(<uc8>)[UC8]],

  [ROF-x],
  [L'amministratore deve poter visualizzare i _marker_ indicanti l'aggiornamento in tempo reale della posizione dei mezzi all'interno della mappa geografica per ogni noleggio che permettono la generazione del tracciato stesso.],
  [#link(<uc9>)[UC9]],

  [ROF-x],
  [L'amministratore deve poter visualizzare i _marker_ indicanti quali posizioni trasmesse relative ad un noleggio hanno generato con successo un annuncio in prossimità di un punto di interesse all'interno della mappa (ovviamente contraddistinguendo il _marker_ della trasmissione generica con quest'ultimo).],
  [#link(<uc10>)[UC10]],

  [ROF-x],
  [L'amministratore deve poter visualizzare i _marker_ indicanti quali posizioni trasmesse relative ad un noleggio non hanno generato un annuncio in prossimità di un punto di interesse all'interno della mappa in quanto l'LLM ha ritenuto quest'ultimo non interessato.],
  [#link(<uc11>)[UC11]],

  [ROF-x],
  [L'amministratore deve poter visualizzare le informazioni relative ad un punto di interesse tramite l'interazione con il _marker_ associato ad esso e presente all'interno della mappa. Può essere considerata un'interazione con il _marker_ il click o il passaggio del cursore su di esso.],
  [#link(<uc12>)[UC12]],

  [ROF-x],
  [L'amministatore deve poter visualizzare l'annuncio generato dall'LLM per un determinato noleggio e per una determinata trasmissione di posizione tramite l'interazione con i _marker_ indicanti le trasmissioni che hanno generato un annuncio.],
  [#link(<uc13>)[UC13]],
)
=== Requisiti di qualità
#table(
  align: (center, left, center),
  columns: (0.8fr, 3fr, 0.8fr),
  table.header([*Codice*], [*Descrizione*], [*Origine*]),
  //TODO: CODE COVERAGE è presente a glossario?
  [ROQ-x],
  [Superamento dei _test_ che dimostrano il corretto funzionamento dei servizi e delle funzionalità. In particolare i _test_ devono garantire un _code coverage_ dell'80% o più, correlata da _report_.],
  [Capitolato],
)
=== Requisiti di vincolo
== Requisiti desiderabili
=== Requisiti funzionali
=== Requisiti di qualità
=== Requisiti di vincolo
== Requisiti facoltativi
=== Requisiti funzionali
=== Requisiti di qualità
=== Requisiti di vincolo
