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
    [20/01/2025],
    "Davide Marin\nRiccardo Milan",
    "Andrea Perozzo \nDavide Martinelli",
    [
      - Aggiunto diagramma delle attività
      - Aggiunti nuovi casi d'uso
      - Aggiunti casi d'uso per evitare riutilizzo nelle generalizzazioni
      - Sistemate precondizioni di tutti i casi d'uso
      - Sistemati e aggiornati gli UML rispettivi ai casi d'uso cambiati ed aggiunti
      - Rimossi i _trigger_ da tutti i casi d'uso
      - Rimosso _LLM_ dagli attori
      - Aggiunto nel glossario il termine _dashboard_.
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
      - Aggiunti casi d'uso relativi alla mappa, agli annunci e ai grafici
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
Il prodotto ha come obiettivo quello di fornire un servizio di pubblicità personalizzata, accessibile agli utenti di un mezzo a noleggio, che sfrutta la GenAI e i dati di profilazione degli utenti come #rifGlossario("prompt") della GenAI stessa per la creazione di pubblicità mirate sui singoli utenti. Il gestore del servizio di noleggio avrà accesso ad una _#rifGlossario("dashboard")_ che gli permetterà di monitorare in tempo reale la posizione degli utenti e gli annunci generati.
Per fare ciò l'azienda proponente chiede di simulare lo spostamento degli utenti lungo un percorso, in modo da poter testare il funzionamento del sistema.
I dati riguardanti gli annunci pubblicitari visualizzati dagli utenti devono essere memorizzati in un _#rifGlossario("database")_ (storicizzazione) in modo da poter essere consultati successivamente dalla _dashboard_.

Il _benefit_ atteso è quello di rendere le campagne pubblicitarie delle aziende interessate il più efficaci possibili, riducendo la disconnessione tra messaggio e destinatario e aumentando il coinvolgimento di quest'ultimo, migliorando di conseguenza il ROI della campagna stessa.

== Funzionalità e vincoli del prodotto
Il prodotto dovrà fornire le seguenti funzionalità:
- *Monitoraggio in tempo reale della posizione degli utenti*: il sistema dovrà essere in grado di mostrare su una mappa interattiva la posizione degli utenti attivi.
- *Creazione di annunci pubblicitari personalizzati*: il sistema dovrà essere in grado di creare annunci pubblicitari personalizzati per gli utenti, sfruttando i dati di profilazione e la posizione in tempo reale. Quando un utente si trova in prossimità di un punto di interesse il sistema dovrà essere in grado di stimare se l'utente possa essere interessato ai servizi offerti dall'attività e, in tal caso, generare un annuncio pubblicitario personalizzato per quell'utente.
- *Visualizzazione nella _dashboard_ degli annunci pubblicitari generati*: il sistema dovrà essere in grado di mostrare in tempo reale gli annunci pubblicitari che vengono visualizzati dagli utenti.
- *Visualizzazione nella _dashboard_ dello storico degli annunci pubblicitari*: il sistema dovrà essere in grado di mostrare uno storico degli annunci pubblicitari visualizzati dagli utenti a disposizione degli amministratori del sistema.

L'azienda proponente richiede inoltre la dimostrazione del corretto funzionamento dei servizi e delle funzionalità del sistema, garantendo una copertura di test di più dell'80% e correlata da report. Viene richiesto inoltre che il prodotto sia in grado di mantenere un elevato flusso di dati in entrata dovuto ai dati di localizzazione emessi dai sensori.

== Utenti e loro caratteristiche
Il prodotto si rivolge a due tipologie di utenti:
- *Gestore del servizio di noleggio*: utente che gestisce il servizio di noleggio, ovvero un nostro cliente, che ha accesso tramite _dashboard_ a tutte le funzionalità del sistema ed è interessato quindi, oltre che al monitoraggio della flotta, anche all'andamento delle campagne pubblicitarie nel tempo.
- *Utente*: utente che utilizza il servizio di noleggio e che ha accesso solo alla funzionalità di visualizzazione degli annunci pubblicitari.

#pagebreak()

= Diagramma delle attività
#v(20pt)
#figure(
  image("../assets/diagrams/activity-diagram.png"),
  caption: [Diagramma delle attività],
)

#pagebreak()

= Casi d'uso
== Introduzione
La seguente sezione descrive i casi d'uso individuati per il progetto _Near You - Smart custom advertising platform_ all'interno del capitolato d'appalto e a seguito delle varie riunioni sostenute con l'azienda proponente Sync Lab S.r.l..
Ogni caso d'uso è identificato da un codice univoco, che segue la nomenclatura *UC[numero_use_case]*, e da una serie di informazioni:
- *Attori principali*
- *Attori secondari* (se presenti)
- *Precondizioni*
- *Postcondizioni*
- *Scenario principale*
- *Generalizzazioni* (se presenti)
- *Inclusioni* (se presenti)
- *Estensioni* (se presenti)

== Attori
Gli attori coinvolti nei casi d'uso sono i seguenti:
- *Amministratore*: Gestore di un servizio di noleggio autenticato al sistema.
- *Amministratore non autenticato*: gestore di un servizio di noleggio non autenticato al sistema.
- *Sensore*: strumento attraverso il quale il mezzo noleggiato da uno specifico utente trasmette la sua posizione in tempo reale.
// - *#rifGlossario("LLM")*: servizio esterno che si occupa della generazione degli annunci pubblicitari personalizzati tramite #rifGlossario("prompt") fornito dal sistema.

== Elenco dei casi d'uso

=== UC1 - Trasmissione dei dati di identificazione e localizzazione del sensore <uc1>
- *Attore principale*: Sensore.
- *Precondizioni*: 
  - Il sistema monitora i sensori sui mezzi con un noleggio attivo. In particolare mantiene l'informazione riguardo la posizione #rifGlossario("GPS") inviata dal sensore in tempo reale.
- *Postcondizioni*: 
  - Il sistema riceve le informazioni riguardo la posizione GPS (espressa tramite longitudine e latitudine) del sensore in quel momento e i suoi dati di identificazione.
- *Scenario principale*:
  + L'utente noleggia un mezzo.
  + Il sensore invia a intervalli di tempo regolari i dati di identificazione e localizzazione GPS del mezzo.
#v(20pt)
#figure(
  image("../assets/use_cases/UC1.png"),
  caption: [Diagramma del caso d'uso UC1],
)

#pagebreak()

=== UC2 - Autenticazione alla dashboard del sistema <uc2>
- *Attori principali*: Amministratore non autenticato.
- *Precondizioni*: 
  - Il sistema possiede le credenziali dell'amministratore che in quel momento non è autenticato.
  - L'amministratore non autenticato accede alla pagina di _login_.
- *Postcondizioni*: 
  - Il sistema accetta le credenziali inserite e fa accedere l'amministratore alla _dashboard_ personale.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce le proprie credenziali di accesso.
  + Il sistema registra l'amministratore come autenticato e lo fa accedere alla _dashboard_ personale.
- *Inclusioni*:
  - Inserimento _e-mail_ per l'autenticazione alla _dashboard_ (#link(<uc3>)[UC3]).
  - Inserimento _password_ per l'autenticazione alla _dashboard_ (#link(<uc4>)[UC4]).
- *Estensioni*:
  - Visualizzazione errore "Credenziali errate" (#link(<uc5>)[UC5]).

=== UC3 - Inserimento e-mail per l'autenticazione alla dashboard <uc3>
- *Attore principale*: Amministratore non autenticato.
- *Precondizioni*: 
  - Il sistema possiede l'_e-mail_ dell'amministratore che in quel momento non è autenticato.
  - L'amministratore non autenticato si trova nella pagina di _login_. 
  - Il sistema si aspetta di ricevere un indirizzo _e-mail_.
- *Postcondizioni*: 
  - Il sistema accetta l'_e-mail_ inserita.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce l'_e-mail_ con la quale è registrato nel sistema.

=== UC4 - Inserimento password per l'autenticazione alla dashboard <uc4>
- *Attore principale*: Amministratore non autenticato.
- *Precondizioni*: 
  - Il sistema possiede la _password_ dell'amministratore che in quel momento non è autenticato.
  - L'amministratore non autenticato si trova nella pagina di _login_. 
  - Il sistema si aspetta di ricevere una _password_.
- *Postcondizioni*: 
  - Il sistema accetta la _password_ inserita.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce la _password_ con la quale è registrato nel sistema.

=== UC5 - Visualizzazione errore "Credenziali errate" <uc5>
- *Attori principali*: Amministratore non autenticato.
- *Precondizioni*: 
  - Il sistema riceve le credenziali inserite dall'amministratore non autenticato.
- *Postcondizioni*: 
  - Il sistema individua un'incoerenza tra le credenziali inserite e quelle memorizzate.
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
  - Il sistema tiene traccia delle informazioni relative ai mezzi noleggiati, ai punti di interesse e agli annunci.
  - L'amministratore accede alla _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: 
  - Il sistema espone una mappa geografica sulla _dashboard_ dell'amministratore.
- *Scenario principale*:
  + L'amministratore è autenticato alla _dashboard_ del sistema.
  + La _dashboard_ del sistema espone una mappa geografica del territorio.
- *Inclusioni*:
  - Visualizzazione _#rifGlossario("marker")_ sulla mappa per i punti di interesse (#link(<uc7>)[UC7]).

=== UC7 - Visualizzazione marker sulla mappa per i punti di interesse <uc7>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia della posizione di ciascun punto di interesse.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: 
  - Il sistema espone sulla mappa dei _marker_ in corrispondenza dei punti di interesse.
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
  - Il sistema tiene traccia nel tempo delle posizioni dei mezzi con noleggio attivo.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: 
  - Il sistema espone sulla mappa il percorso dei mezzi con noleggio attivo.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza il percorso del mezzo noleggiato.
#v(20pt)
#figure(
  image("../assets/use_cases/UC8.png"),
  caption: [Diagramma del caso d'uso UC8],
)


=== UC9 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo <uc9>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema riceve in tempo reale i dati con le posizioni dei mezzi con noleggio attivo.
  - Il dato ricevuto dal sensore è stato elaborato dal sistema.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: 
  - Il sistema espone sulla mappa un _marker_ specifico basato su ciò che è successo dopo aver ricevuto il dato dal sensore.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ specifico in base al tipo di risultato che ha prodotto l'elaborazione del dato geospaziale.
- *Generalizzazioni*:
  - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza del dato GPS (#link(<uc10>)[UC10]).
  - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza della generazione di un annuncio (#link(<uc11>)[UC11]).
  - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza della mancata generazione di un annuncio (#link(<uc12>)[UC12]).

=== UC10 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza del dato GPS <uc10>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema riceve in tempo reale i dati GPS dei sensori relativi ai mezzi con un noleggio attivo.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: 
  - Il sistema espone sulla mappa un _marker_ in corrispondenza di ciascuna posizione GPS fornita dal sensore che non è nelle vicinanze di un punto di interesse, o che ne è nelle vicinanze ma ha già ricevuto un annuncio per quello stesso punto di interesse durante il suo noleggio ancora attivo.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza di ogni dato GPS ritornato dal sensore di un relativo mezzo in noleggio che non è nelle vicinanze di un punto di interesse, o che ne è nelle vicinanze ma ha già ricevuto un annuncio per quello stesso punto di interesse durante il suo noleggio ancora attivo.


=== UC11 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza della generazione di un annuncio <uc11>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema memorizza gli annunci generati e le relative informazioni.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: 
  - Il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui è stato generato un annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali è stato generato un annuncio.


=== UC12 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza della mancata generazione di un annuncio <uc12>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema memorizza le mancate generazioni degli annunci e le relative informazioni.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: 
  - Il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui la LLM non ha ritenuto l'utente interessato, quindi non è stato generato l'annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali la LLM non ha generato un annuncio perché ha valutato l'utente come non interessato al punto di interesse in base alla sua profilazione.
#v(20pt)
#figure(
  image("../assets/use_cases/UC9-10-11-12.png"),
  caption: [Diagramma dei caso d'uso UC9, UC10, UC11, UC12],
)

#pagebreak()


=== UC13 - Visualizzazione informazioni punto di interesse tramite marker sulla mappa <uc13>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia delle informazioni di ciascun punto di interesse.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: 
  - Il sistema espone le informazioni del punto di interesse selezionato in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un punto di interesse.
  + Vengono visualizzate le informazioni in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  - Visualizzazione nome del punto di interesse dal _marker_ del punto di interesse (#link(<uc14>)[UC14]).
  - Visualizzazione categoria del punto di interesse dal _marker_ del punto di interesse (#link(<uc15>)[UC15]).

=== UC14 - Visualizzazione nome del punto di interesse dal marker del punto di interesse <uc14>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - Il sistema sta esponendo la _dashboard_ con la mappa e l'amministratore ha interagito col _marker_ del punto di interesse.
- *Postcondizioni*: 
  - Il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC15 - Visualizzazione categoria del punto di interesse dal marker del punto di interesse <uc15>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia della categoria di ciascun punto di interesse.
  - Il sistema sta esponendo la _dashboard_ con la mappa e l'amministratore ha interagito col _marker_ del punto di interesse.
- *Postcondizioni*: 
  - Il sistema espone la categoria del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza la categoria del punto di interesse.
#v(20pt)
#figure(
  image("../assets/use_cases/UC13-14-15.png"),
  caption: [Diagramma dei caso d'uso UC13, UC14, UC15],
)


#pagebreak()

=== UC16 - Visualizzazione annuncio tramite marker sulla mappa <uc16>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia degli annunci generati e le relative informazioni.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: 
  - Il sistema espone l'annuncio generato, con le relative informazioni, in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un annuncio generato.
  + Viene visualizzato l'annuncio generato in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  - Visualizzazione nome del punto di interesse dell'annuncio aperto dal _marker_ (#link(<uc17>)[UC17]).
  - Visualizzazione _e-mail_ dell'utente dell'annuncio aperto dal _marker_ (#link(<uc18>)[UC18]).
  - Visualizzazione data e ora di generazione annuncio dell'annuncio aperto dal _marker_ (#link(<uc19>)[UC19]).
  - Visualizzazione completa dell'annuncio aperto dal _marker_ (#link(<uc20>)[UC20]).
  - Visualizzazione categoria del punto di interesse collegato all'annuncio aperto dal _marker_ (#link(<uc21>)[UC21]).



=== UC17 - Visualizzazione nome del punto di interesse dell'annuncio aperto dal marker <uc17>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*: 
  - Il sistema espone il nome del punto di interesse dell'annuncio aperto dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse dell'annuncio aperto dal _marker_.

=== UC18 - Visualizzazione e-mail dell'utente dell'annuncio aperto dal marker <uc18>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*: 
  - Il sistema espone l'_e-mail_ dell'utente dell'annuncio aperto dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente dell'annuncio aperto dal _marker_.

=== UC19 - Visualizzazione data e ora di generazione annuncio dell'annuncio aperto dal marker <uc19>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*: 
  - Il sistema espone la data e l'ora di tentativo di generazione dell'annuncio aperto dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio dell'annuncio aperto dal _marker_.

=== UC20 - Visualizzazione del corpo dell'annuncio aperto dal marker <uc20>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia degli annunci generati.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*: 
  - Il sistema espone il corpo dell'annuncio aperto dal _marker_ per intero.
- *Scenario principale*:
  + L'amministratore visualizza interamente il corpo dell'annuncio generato aperto dal _marker_.

=== UC21 - Visualizzazione categoria del punto di interesse dell'annuncio aperto dal marker<uc21>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia della categoria del punto di interesse collegato al relativo annuncio.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*: 
  - Il sistema espone la categoria del punto di interesse collegato al relativo annuncio aperto dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza la categoria del punto di interesse collegato al relativo annuncio aperto dal _marker_.
#v(20pt)
#figure(
  image("../assets/use_cases/UC16-17-18-19-20-21.png"),
  caption: [Diagramma dei caso d'uso UC16, UC17, UC18, UC19, UC20, UC21],
)


#pagebreak()

=== UC22 - Visualizzazione messaggio annuncio non generato tramite marker sulla mappa <uc22>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia degli annunci non generati e le relative informazioni.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: 
  - Il sistema espone un messaggio circa l'annuncio non generato, con le relative informazioni, in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un annuncio non generato.
  + Viene visualizzato il messaggio con le informazioni dell'annuncio che non è stato generato in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  - Visualizzazione nome del punto di interesse nel messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_ (#link(<uc23>)[UC23]).
  - Visualizzazione _e-mail_ dell'utente nel messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_ (#link(<uc24>)[UC24]).
  - Visualizzazione data e ora di tentata generazione annuncio nel messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_ (#link(<uc25>)[UC25]).

=== UC23 - Visualizzazione nome del punto di interesse nel messaggio di tentativo di generazione annuncio nella vista aperta dal marker <uc23>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando il messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Postcondizioni*: 
  - Il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC24 - Visualizzazione _e-mail_ dell'utente nel messaggio di tentativo di generazione annuncio nella vista aperta dal marker <uc24>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando il messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Postcondizioni*: 
  - Il sistema espone l'_e-mail_ dell'utente.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente.

=== UC25 - Visualizzazione data e ora di tentata generazione annuncio nel messaggio di tentativo di generazione annuncio nella vista aperta dal marker <uc25>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  - L'amministratore sta visualizzando il messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Postcondizioni*: 
  - Il sistema espone la data e l'ora di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio.

#v(20pt)
#figure(
  image("../assets/use_cases/UC22-23-24-25.png"),
  caption: [Diagramma dei caso d'uso UC22, UC23, UC24, UC25],
)

#pagebreak()


=== UC26 - Chiusura annuncio visualizzato tramite marker sulla mappa <uc26>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  - L'amministratore ha aperto l'annuncio tramite un'interazione con il _marker_ sulla mappa.
- *Postcondizioni*: 
  - Il sistema chiude l'annuncio visualizzato tramite una interazione con il _marker_ corrispondente.
- *Scenario principale*:
  + L'amministratore visualizza l'annuncio sulla mappa in corrispondenza del _marker_.
  + L'amministratore chiude l'annuncio.
#v(20pt)
#figure(
  image("../assets/use_cases/UC26.png"),
  caption: [Diagramma del caso d'uso UC26],
)


=== UC27 - Chiusura messaggio annuncio non generato visualizzato tramite marker sulla mappa <uc27>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  - L'amministratore ha aperto la visualizzazione di mancata generazione di un annuncio tramite un'interazione con il _marker_ sulla mappa.
- *Postcondizioni*: 
  - Il sistema chiude il messaggio di annuncio non generato visualizzato tramite una interazione con il _marker_ corrispondente.
- *Scenario principale*:
  + L'amministratore visualizza il messaggio di annuncio non generato sulla mappa in corrispondenza del _marker_.
  + L'amministratore chiude il messaggio.
#v(20pt)
#figure(
  image("../assets/use_cases/UC27.png"),
  caption: [Diagramma del caso d'uso UC27],
)

#pagebreak()

=== UC28 - Spostamento della visuale sulla mappa <uc28>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  - Il sistema tiene traccia del centro della porzione di territorio visualizzata sulla mappa.
- *Postcondizioni*: 
  - Il sistema fa visualizzare sulla mappa una porzione di territorio centrata su un nuovo punto.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per spostare il centro della mappa, quindi anche l'intera visuale.
#v(20pt)
#figure(
  image("../assets/use_cases/UC28.png"),
  caption: [Diagramma del caso d'uso UC28],
)

#pagebreak()

=== UC29 - Modifica ampiezza della visuale sulla mappa <uc29>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  - Il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
  - L'amministratore ha selezionato l'opzione per modificare la porzione di mappa visualizzata.
- *Postcondizioni*: 
  - Il sistema fa visualizzare sulla mappa una porzione di territorio più o meno ampia a seconda dell'azione dell'amministratore.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per modificare l'ampiezza della visuale.
- *Generalizzazioni*:
  - Ampliamento della visuale sulla mappa (#link(<uc30>)[UC30])).
  - Restringimento della visuale sulla mappa (#link(<uc31>)[UC31])).

=== UC30 - Ampliamento della visuale sulla mappa <uc30>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa. 
  - Il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
  - L'amministratore ha selezionato l'opzione per ampliare la porzione di mappa visualizzata.
- *Postcondizioni*: 
  - Il sistema fa visualizzare sulla mappa una porzione di territorio più ampia.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per ampliare la visuale.

=== UC31 - Restringimento della visuale sulla mappa <uc31>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  - Il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
  - L'amministratore ha selezionato l'opzione per restringere la porzione di mappa visualizzata.
- *Postcondizioni*: 
  - Il sistema fa visualizzare sulla mappa una porzione di territorio meno ampia.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per restringere la visuale.
#v(20pt)
#figure(
  image("../assets/use_cases/UC29-30-31.png"),
  caption: [Diagramma dei casi d'uso UC29, UC30 e UC31],
)

#pagebreak()

=== UC32 - Visualizzazione sezione storico annunci <uc32>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore.
- *Postcondizioni*: 
  - Il sistema espone la sezione dello storico annunci.
- *Scenario principale*: 
  + L'amministratore accede alla sezione dello storico degli annunci.
- *Inclusioni*:
  - Visualizzazione storico degli annunci (#link(<uc33>)[UC33]).

=== UC33 - Visualizzazione storico degli annunci <uc33>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore.
  - L'amministratore si trova nella sezione apposita degli annunci.
- *Postcondizioni*: 
  - Il sistema espone gli annunci generati fino a quel momento.
- *Scenario principale*:
  + Il sistema espone le _preview_ degli annunci con le informazioni principali.
- *Generalizzazioni*:
  - Visualizzazione storico annunci in lista (#link(<uc34>)[UC34]).
  - Visualizzazione storico annunci in griglia (#link(<uc35>)[UC35]).
- *Inclusioni*:
  - Visualizzazione singolo annuncio nello storico (#link(<uc36>)[UC36]).

=== UC34 - Visualizzazione storico annunci in lista <uc34>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema espone gli annunci generati fino a quel momento.
  - L'amministratore ha selezionato l'opzione per visualizzare gli annunci sotto forma di lista.
- *Postcondizioni*: 
  - Gli annunci vengono mostrati nella _dashboard_ all'amministratore sotto forma di lista.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore seleziona l'opzione per visualizzare gli annunci in lista.

=== UC35 - Visualizzazione storico annunci in griglia <uc35>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema espone gli annunci generati fino a quel momento.
  - L'amministratore ha selezionato l'opzione per visualizzare gli annunci sotto forma di griglia.
- *Postcondizioni*: 
  - Gli annunci vengono mostrati nella _dashboard_ all'amministratore sotto forma di griglia.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore seleziona l'opzione per visualizzare gli annunci in griglia.

=== UC36 - Visualizzazione singolo annuncio nello storico <uc36>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia delle informazioni principali degli annunci generati per gli utenti dell'amministratore. 
  - L'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*: 
  - Il sistema espone le informazioni principali relative al singolo annuncio.
- *Scenario principale*:
  + L'amministratore visualizza un elemento della lista degli annunci contenente le informazioni principali di quell'elemento.
- *Inclusioni*:
  - Visualizzazione nome del punto di interesse dall'annuncio nello storico (#link(<uc37>)[UC37]).
  - Visualizzazione _e-mail_ dell'utente dall'annuncio nello storico (#link(<uc38>)[UC38]).
  - Visualizzazione data e ora di tentativo di generazione annuncio dall'annuncio nello storico (#link(<uc39>)[UC39]).
  - Visualizzazione _flag_ sugli annunci nello storico inviati a noleggi attivi dall'annuncio nello storico (#link(<uc40>)[UC40]).

=== UC37 - Visualizzazione nome del punto di interesse dall'annuncio nello storico <uc37>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando un singolo annuncio nello storico.
- *Postcondizioni*: 
  - Il sistema espone il nome del punto di interesse del singolo annuncio nello storico.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse del singolo annuncio nello storico.

=== UC38 - Visualizzazione e-mail dell'utente dall'annuncio nello storico <uc38>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando un singolo annuncio nello storico.
- *Postcondizioni*: 
  - Il sistema espone l'_e-mail_ dell'utente del singolo annuncio nello storico.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente del singolo annuncio nello storico.

=== UC39 - Visualizzazione data e ora di tentativo di generazione annuncio dall'annuncio nello storico <uc39>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  - L'amministratore sta visualizzando un singolo annuncio nello storico.
- *Postcondizioni*: 
  - Il sistema espone la data e l'ora di tentativo di generazione del singolo annuncio nello storico.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione del singolo annuncio nello storico.

=== UC40 - Visualizzazione flag sugli annunci nello storico inviati a noleggi attivi dall'annuncio nello storico
<uc40>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia dello stato del noleggio al quale è stato inviato l'annuncio, se è cioè ancora attivo o meno.
  - L'amministratore sta visualizzando un singolo annuncio nello storico.
- *Postcondizioni*: 
  - Il sistema espone un _flag_ nel caso il noleggio al quale è stato inviato il singolo annuncio nello storico è ancora attivo.
- *Scenario principale*:
  + L'amministratore visualizza il _flag_ nel caso in cui il noleggio relativo al singolo annuncio nello storico è ancora attivo.
#v(20pt)
#figure(
  image("../assets/use_cases/UC32-33-34-35-36-37-38-39-40.png"),
  caption: [Diagramma dei casi d'uso UC32, UC33, UC34, UC35, UC36, UC37, UC38, UC39 e UC40],
)

#pagebreak()

=== UC41 - Visualizzazione dettagli di un singolo annuncio dopo aver interagito con un elemento nello storico <uc41>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia di tutte le informazioni degli annunci generati per gli utenti dell'amministratore.
  - L'amministratore entra nel dettaglio di un annuncio dallo storico.
- *Postcondizioni*: 
  - Il sistema espone interamente l'annuncio insieme alle relative informazioni.
- *Scenario principale*:
  + L'amministratore seleziona l'opzione per visualizzare i dettagli dell'annuncio desiderato.
  + Viene esposto l'annuncio insieme alle relative informazioni.
- *Inclusioni*:
  - Visualizzazione nome del punto di interesse dal dettaglio di un annuncio aperto dallo storico (#link(<uc42>)[UC42]).
  - Visualizzazione _e-mail_ dell'utente dal dettaglio di un annuncio aperto dallo storico (#link(<uc43>)[UC43]).
  - Visualizzazione data e ora di tentativo di generazione annuncio dal dettaglio di un annuncio aperto dallo storico (#link(<uc44>)[UC44]).
  - Visualizzazione _flag_ sugli annunci nello storico inviati a noleggi attivi dal dettaglio di un annuncio  aperto dallo storico (#link(<uc45>)[UC45]).
  - Visualizzazione del corpo dell'annuncio dal suo dettaglio aperto dallo storico (#link(<uc46>)[UC46]).
  - Visualizzazione categoria del punto di interesse collegato all'annuncio dal suo dettaglio aperto dallo storico (#link(<uc47>)[UC47]).

=== UC42 - Visualizzazione nome del punto di interesse dal dettaglio di un annuncio aperto dallo storico <uc42>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando il dettaglio di un singolo annuncio aperto dallo storico.
- *Postcondizioni*: 
  - Il sistema espone il nome del punto di interesse nel dettaglio di un annuncio aperto dallo storico.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse nel dettaglio di un annuncio aperto dallo storico.

=== UC43 - Visualizzazione e-mail dell'utente dal dettaglio di un annuncio aperto dallo storico <uc43>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando il dettaglio di un singolo annuncio aperto dallo storico.
- *Postcondizioni*: 
  - Il sistema espone l'_e-mail_ dell'utente nel dettaglio di un annuncio aperto dallo storico.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente nel dettaglio di un annuncio aperto dallo storico.

=== UC44 - Visualizzazione data e ora di tentativo di generazione annuncio dal dettaglio di un annuncio aperto dallo storico <uc44>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  - L'amministratore sta visualizzando il dettaglio di un singolo annuncio aperto dallo storico.
- *Postcondizioni*: 
  - Il sistema espone la data e l'ora di tentativo di generazione annuncio nel dettaglio di un annuncio aperto dallo storico.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio aperto dallo storico.

=== UC45 - Visualizzazione flag sugli annunci nello storico inviati a noleggi attivi dal dettaglio di un annuncio  aperto dallo storico
<uc45>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia dello stato del noleggio al quale è stato inviato l'annuncio, se è cioè ancora attivo o meno.
  - L'amministratore sta visualizzando il dettaglio di un singolo annuncio aperto dallo storico.
- *Postcondizioni*: 
  - Il sistema espone un _flag_ nel caso il noleggio al quale è stato inviato l'annuncio aperto dallo storico è ancora attivo .
- *Scenario principale*:
  + L'amministratore visualizza il _flag_ nel caso in cui il noleggio relativo all'annuncio aperto dallo storico è ancora attivo.

=== UC46 - Visualizzazione del corpo dell'annuncio dal suo dettaglio aperto dallo storico <uc46>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia degli annunci generati.
  - L'amministratore sta visualizzando il dettaglio di un singolo annuncio aperto dallo storico.
- *Postcondizioni*: 
  - Il sistema espone il corpo dell'annuncio aperto dallo storico per intero.
- *Scenario principale*:
  + L'amministratore visualizza interamente il corpo dell'annuncio generato aperto dallo storico.

=== UC47 - Visualizzazione categoria del punto di interesse collegato all'annuncio dal suo dettaglio aperto dallo storico <uc47>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia della categoria del punto di interesse collegato al relativo annuncio aperto dallo storico.
  - L'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: 
  - Il sistema espone la categoria del punto di interesse collegato al relativo annuncio aperto dallo storico.
- *Scenario principale*:
  + L'amministratore visualizza la categoria del punto di interesse collegato al relativo annuncio aperto dallo storico.
#v(20pt)
#figure(
  image("../assets/use_cases/UC41-42-43-44-45-46-47.png"),
  caption: [Diagramma dei casi d'uso UC41, UC42, UC43, UC44, UC45, UC46 e UC47],
)

#pagebreak()

=== UC48 - Chiusura della vista di visualizzazione dettagli di un singolo annuncio aperto dallo storico <uc48>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema espone una vista per i dettagli di un annuncio aperto dallo storico con la quale l'amministratore può interagire.
- *Postcondizioni*: 
  - Il sistema chiude la vista di dettaglio di un singolo annuncio aperto dallo storico.
- *Scenario principale*:
  + L'amministratore visualizza una vista con i dettagli di un annuncio aperto dallo storico.
  + L'amministratore chiude la vista.
#v(20pt)
#figure(
  image("../assets/use_cases/UC48.png"),
  caption: [Diagramma del caso d'uso UC48],
)

#pagebreak()

=== UC49 - Ricerca degli annunci nello storico per e-mail utente <uc49>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia di tutti gli annunci generati per l'utente selezionato. 
  - L'amministratore sta visualizzando la sezione dedicata agli annunci.
  - L'amministratore ha selezionato l'opzione per filtrare gli annunci per _e-mail_ utente.
- *Postcondizioni*: 
  - Il sistema espone lo storico degli annunci destinati all'utente selezionato.
- *Scenario principale*:
  + L'amministratore seleziona l'_e-mail_ di un utente.
  + Vengono visualizzati solo gli annunci destinati all'utente selezionato.
#v(20pt)
#figure(
  image("../assets/use_cases/UC49.png"),
  caption: [Diagramma del caso d'uso UC49],
)

#pagebreak()

=== UC50 - Ricerca degli annunci nello storico per nome del punto di interesse <uc50>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia di tutti gli annunci generati collegati al punto di interesse selezionato.
  - L'amministratore sta visualizzando la sezione dedicata agli annunci.
  - L'amministratore ha selezionato l'opzione per filtrare gli annunci per nome del punto di interesse.
- *Postcondizioni*: 
  - Il sistema espone lo storico degli annunci collegati al punto di interesse selezionato.
- *Scenario principale*:
  + L'amministratore seleziona il nome di un punto di interesse.
  + Vengono visualizzati solo gli annunci collegati al punto di interesse selezionato.
#v(20pt)
#figure(
  image("../assets/use_cases/UC50.png"),
  caption: [Diagramma del caso d'uso UC50],
)

#pagebreak()

=== UC51 - Ricerca degli annunci nello storico per intervallo di date di emissione <uc51>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia di tutti gli annunci emessi nell'intervallo di date selezionato.
  - L'amministratore sta visualizzando la sezione dedicata agli annunci.
  - L'amministratore ha selezionato l'opzione per filtrare gli annunci per intervallo di date di emissione.
- *Postcondizioni*: 
  - Il sistema espone lo storico degli annunci emessi nell'intervallo di date selezionato.
- *Scenario principale*:
  + L'amministratore seleziona un intervallo di date.
  + Vengono visualizzati solo gli annunci emessi nell'intervallo di date selezionato.
#v(20pt)
#figure(
  image("../assets/use_cases/UC51.png"),
  caption: [Diagramma del caso d'uso UC51],
)

#pagebreak()

=== UC52 - Ricerca degli annunci nello storico per fascia oraria di emissione <uc52>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia di tutti gli annunci emessi nell'intervallo di date selezionato.
  - L'amministratore sta visualizzando la sezione dedicata agli annunci.
  - L'amministratore ha selezionato l'opzione per filtrare gli annunci per fascia oraria di emissione.
- *Postcondizioni*: 
  - Il sistema espone lo storico degli annunci emessi nella fascia oraria selezionata.
- *Scenario principale*:
  + L'amministratore seleziona una fascia oraria.
  + Vengono visualizzati solo gli annunci emessi nella fascia oraria selezionata.
#v(20pt)
#figure(
  image("../assets/use_cases/UC52.png"),
  caption: [Diagramma del caso d'uso UC52],
)

#pagebreak()

=== UC53 - Visualizzazione errore "Il server non risponde" <uc53>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema di visualizzazione dell'amministratore tenta comunicare con il _server_ per ricevere o inviare informazioni, ma si verifica un errore.
- *Postcondizioni*: 
  - Il sistema espone il messaggio di errore che segnala un problema con il _server_.
- *Scenario principale*:
  + Il _server_ restituisce un errore durante la comunicazione.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC54 - Visualizzazione errore "Connessione persa" <uc54>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema monitora lo stato della connessione di rete e non rileva connessione.
- *Postcondizioni*: 
  - Il sistema espone il messaggio di errore relativo alla perdita di connessione.
- *Scenario principale*:
  + Il sistema rileva che la connessione di rete è persa o scarsa.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC55 - Visualizzazione errore "Sensore malfunzionante" <uc55>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema monitora le risposte dei sensori attivi, cioè installati su mezzi con noleggio attivo e rileva un errore.
- *Postcondizioni*: 
  - Il sistema espone il messaggio di malfunzionamento di un sensore.
- *Scenario principale*:
  + Il sensore non comunica correttamente i dati al sistema.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC56 - Visualizzazione errore "Generazione impossibile dell'annuncio" <uc56>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema comunica con ls LLM per far generare gli annunci, ma si verifica un errore.
- *Postcondizioni*: 
  - Il sistema espone il messaggio di impossibilità di comunicazione con la LLM.
- *Scenario principale*:
  + Il sistema non riesce a comunicare correttamente con la LLM, non riesce cioè a inviare o ricevere messaggi.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.
#v(20pt)
#figure(
  image("../assets/use_cases/UC53-54-55-56.png"),
  caption: [Diagramma dei casi d'uso UC53, UC54, UC55 e UC56],
)

#pagebreak()


// OPZIONALI

=== UC57 - Visualizzazione sezione grafici <uc57>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema mantiene delle informazioni utili per una analisi statistica.
- *Postcondizioni*: il sistema espone la vista dedicata ai grafici.
- *Scenario principale*:
  - L'amministratore entra nella _dashboard_ con i grafici per le analisi sui dati.
- *Inclusioni*:
  + Visualizzazione statistiche in grafici (#link(<uc58>)[UC58]).

=== UC58 - Visualizzazione statistiche in grafici <uc58>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema mantiene delle informazioni utili per una analisi statistica.
  - Il sistema sta esponendo la vista dedicata ai grafici.
- *Postcondizioni*: 
  - Il sistema espone dei grafici che rappresentino le informazioni.
- *Scenario principale*:
  + L'amministratore visualizza i grafici con le analisi sui dati.
- *Inclusioni*:
  - Visualizzazione singolo grafico (#link(<uc59>)[UC59]).

=== UC59 - Visualizzazione singolo grafico <uc59>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema mantiene delle informazioni utili per una analisi statistica.
  - L'amministratore si trova nella _dashboard_ con i grafici per le analisi sui dati.
  - Il sistema sta esponendo i grafici con le analisi sui dati.
- *Postcondizioni*: 
  - l'amministratore visualizza il grafico con le relative informazioni.
- *Scenario principale*:
  + L'amministratore visualizza il grafico con le relative informazioni.
- *Inclusioni*:
  - Visualizzazione titolo del grafico (#link(<uc60>)[UC60]).
  - Visualizzazione etichetta asse delle ascisse e relativi valori (#link(<uc61>)[UC61]).
  - Visualizzazione etichetta asse delle ordinate e relativi valori (#link(<uc62>)[UC62]).
  - Visualizzazione dati sul grafico (#link(<uc63>)[UC63]).

=== UC60 - Visualizzazione titolo del grafico <uc60>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia del titolo del grafico. 
  - L'amministratore sta visualizzando un grafico.
- *Postcondizioni*: 
  - Il sistema espone il titolo del grafico.
- *Scenario principale*:
  + L'amministratore visualizza il titolo del grafico.

=== UC61 - Visualizzazione etichetta asse delle ascisse e relativi valori <uc61>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia delle etichette dell'asse delle ascisse e dei relativi valori di ciascun grafico.
  - L'amministratore sta visualizzando un grafico.
- *Postcondizioni*: 
  - Il sistema espone le etichette dell'asse delle ascisse e dei relativi valori.
- *Scenario principale*:
  + L'amministratore visualizza l'etichetta dell'asse delle ascisse del relativo grafico.
  + L'amministratore visualizza le etichette dei valori segnati sull'asse delle ascisse del relativo grafico.

=== UC62 - Visualizzazione etichetta asse delle ordinate e relativi valori <uc62>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia delle etichette dell'asse delle ordinate e dei relativi valori di ciascun grafico.
  - L'amministratore sta visualizzando un grafico. 
- *Postcondizioni*: 
  - Il sistema espone le etichette dell'asse delle ordinate e dei relativi valori.
- *Scenario principale*:
  + l'amministratore visualizza l'etichetta dell'asse delle ordinate del relativo grafico.
  + l'amministratore visualizza le etichette dei valori segnati sull'asse delle ordinate del relativo grafico.

=== UC63 - Visualizzazione dati sul grafico <uc63>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  - Il sistema tiene traccia dei dati di ciascun grafico.
  - L'amministratore sta visualizzando un grafico. 
- *Postcondizioni*: 
  - L'amministratore visualizza i dati sul relativo grafico.
- *Scenario principale*:
  + L'amministratore visualizza i dati sul grafico.
#v(20pt)
#figure(
  image("../assets/use_cases/UC57-58-59-60-61-62-63.png"),
  caption: [Diagramma dei casi d'uso UC57, UC58, UC59, UC60, UC61, UC62, UC63],
)

#pagebreak()

= Requisiti
In questa sezione vengono elencati i requisiti relativi al sistema oggetto del progetto didattico _Near You_ fornito dalla proponente Sync Lab S.r.l..

I requisiti sono frutto dell'analisi del capitolato d'appalto, dalle varie interazioni con la proponente e a seguito dei vari dialoghi interni avvenuti con i vari membri del gruppo.

Ogni requisito è identificato univocamente da un codice che presenta la seguente struttura:
#align(center)[*R[Importanza][Tipo]-[ID]*]
Viene riportata di seguito il significato e i possibili valori dei campi presenti all'interno di ogni identificativo:
- *Importanza*: indica il grado di importanza di ogni requisito, che si distingue in:
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
  [L'amministratore, una volta autenticato, deve poter visualizzare all'interno della _dashboard_ la mappa geografica dove verranno posizionate le varie informazioni.],
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
  [L'amministratore deve poter visualizzare i _marker_ indicanti quali posizioni trasmesse relative ad un noleggio non hanno generato un annuncio in prossimità di un punto di interesse all'interno della mappa in quanto l'LLM ha ritenuto il noleggiatore non interessato.],
  [#link(<uc11>)[UC11]],

  [ROF-x],
  [L'amministratore deve poter visualizzare le informazioni relative ad un punto di interesse tramite l'interazione con il _marker_ associato ad esso e presente all'interno della mappa. Può essere considerata un'interazione con il _marker_ il click o il passaggio del cursore su di esso.],
  [#link(<uc12>)[UC12]],

  [ROF-x],
  [L'amministratore deve poter visualizzare l'annuncio generato dall'LLM per un determinato noleggio e per una determinata trasmissione di posizione tramite l'interazione con i _marker_ indicanti le trasmissioni che hanno generato un annuncio.],
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
