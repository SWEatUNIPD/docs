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
    [17/01/2025],
    "Davide Marin\nRiccardo Milan",
    "Andrea Perozzo \nDavide Martinelli",
    [
      - Aggiunti casi d'uso per evitare riutilizzo nelle generalizzazioni
      - Sistemate precondizioni di tutti i casi d'uso
      - Sistemati e aggiornati gli UML rispettivi ai casi d'uso cambiati ed aggiunti
      - Rimossi i _trigger_ da tutti i casi d'uso
      - Rimosso _LLM_ dagli attori
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
- *Amministratore*: gestore di un servizio di noleggio autenticato al sistema.
- *Amministratore non autenticato*: gestore di un servizio di noleggio non autenticato al sistema.
- *Sensore*: strumento attraverso il quale il mezzo noleggiato da uno specifico utente trasmette la sua posizione in tempo reale.
// - *#rifGlossario("LLM")*: servizio esterno che si occupa della generazione degli annunci pubblicitari personalizzati tramite #rifGlossario("prompt") fornito dal sistema.

== Elenco dei casi d'uso

=== UC1 - Trasmissione dei dati di identificazione e localizzazione del sensore <uc1>
- *Attore principale*: Sensore.
- *Precondizioni*: il sistema monitora i sensori sui mezzi con un noleggio attivo. In particolare mantiene l'informazione riguardo la posizione #rifGlossario("GPS") inviata dal sensore in tempo reale.
- *Postcondizioni*: il sistema riceve l'informazione riguardo la posizione GPS (espressa tramite longitudine e latitudine) del sensore in quel momento.
- *Scenario principale*:
  + L'utente noleggia un mezzo.
  + Il sensore invia a intervalli di tempo regolari i dati di identificazione e localizzazione GPS del mezzo.
#v(20pt)
#figure(
  // TODO: il caso d'uso è stato rinominato, occorre rinominarlo anche nell'UML
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
  + il sistema si aspetta di ricevere un indirizzo _e-mail_.
- *Postcondizioni*: il sistema accetta l'_e-mail_ inserita.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce l'_e-mail_ con la quale è registrato nel sistema.

=== UC4 - Inserimento password per l'autenticazione alla dashboard <uc4>
- *Attore principale*: Amministratore non autenticato.
- *Precondizioni*: 
  + il sistema possiede la _password_ dell'amministratore che in quel momento non è autenticato.
  + l'amministratore non autenticato si trova nella pagina di _login_. 
  + il sistema si aspetta di ricevere una _password_.
- *Postcondizioni*: il sistema accetta la _password_ inserita.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce la _password_ con la quale è registrato nel sistema.

=== UC5 - Visualizzazione errore "Credenziali errate" <uc5>
- *Attori principali*: Amministratore non autenticato.
- *Precondizioni*: il sistema riceve le credenziali inserite dall'amministratore non autenticato.
- *Postcondizioni*: il sistema individua un'incoerenza tra le credenziali inserite e quelle memorizzate.
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
- *Scenario principale*:
  + L'amministratore è autenticato alla _dashboard_ del sistema.
  + La _dashboard_ del sistema espone una mappa geografica del territorio.
- *Inclusioni*:
  + Visualizzazione _#rifGlossario("marker")_ sulla mappa per i punti di interesse (#link(<uc7>)[UC7]).

=== UC7 - Visualizzazione _marker_ sulla mappa per i punti di interesse <uc7>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della posizione di ciascun punto di interesse.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa dei _marker_ in corrispondenza dei punti di interesse.
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
  + il sistema tiene traccia nel tempo delle posizioni dei mezzi con noleggio attivo.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa il percorso dei mezzi con noleggio attivo.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza il percorso del mezzo noleggiato.
#v(20pt)
#figure(
  image("../assets/use_cases/UC8.png"),
  caption: [Diagramma del caso d'uso UC8],
)


=== UC9 - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo <uc9>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema riceve in tempo reale i dati con le posizioni dei mezzi con noleggio attivo.
  + il dato ricevuto dal sensore è stato elaborato dal sistema.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa un _marker_ specifico basato su ciò che è successo dopo aver ricevuto il dato dal sensore.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ specifico in base al tipo di risultato che ha prodotto l'elaborazione del dato geospaziale.
- *Generalizzazioni*:
  + Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza del dato GPS (#link(<uc10>)[uc10])).
  + Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza della generazione di un annuncio (#link(<uc11>)[uc11])).
  + Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza della mancata generazione di un annuncio (#link(<uc12>)[uc12])).

=== UC10 - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza del dato GPS <uc10>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema riceve in tempo reale i dati GPS dei sensori relativi ai mezzi con un noleggio attivo.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa un _marker_ in corrispondenza di ciascuna posizione GPS fornita dal sensore.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza di ogni dato GPS ritornato dal sensore di un relativo mezzo in noleggio.


=== UC11 - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza della generazione di un annuncio <uc11>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema memorizza gli annunci generati e le relative informazioni.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui è stato generato un annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali è stato generato un annuncio.


=== UC12 - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza della mancata generazione di un annuncio <uc12>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema memorizza le mancate generazioni degli annunci e le relative informazioni.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui la LLM non ha ritenuto l'utente interessato, quindi non è stato generato l'annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali la LLM non ha generato un annuncio perché ha valutato l'utente come non interessato al punto di interesse in base alla sua profilazione.
#v(20pt)
#figure(
  image("../assets/use_cases/UC9-10-11-12.png"),
  caption: [Diagramma dei caso d'uso UC9, UC10, UC11, UC12],
)

#pagebreak()


=== UC13 - Visualizzazione informazioni punto di interesse tramite _marker_ sulla mappa <uc13>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia delle informazioni di ciascun punto di interesse.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone le informazioni del punto di interesse selezionato in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un punto di interesse.
  + Vengono visualizzate le informazioni in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse dal _marker_ del punto di interesse (#link(<uc14>)[uc14])).
  + Visualizzazione categoria del punto di interesse dal _marker_ del punto di interesse (#link(<uc15>)[uc15])).

=== UC14 - Visualizzazione nome del punto di interesse dal _marker_ del punto di interesse <uc14>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia del nome di ciascun punto di interesse.
  + il sistema sta esponendo la _dashboard_ con la mappa e i _marker_ all'amministratore.
- *Postcondizioni*: il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC15 - Visualizzazione categoria del punto di interesse dal _marker_ del punto di interesse <uc15>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della categoria di ciascun punto di interesse.
  + il sistema sta esponendo la _dashboard_ con la mappa e i _marker_ all'amministratore.
- *Postcondizioni*: il sistema espone la categoria del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza la categoria del punto di interesse.
#v(20pt)
#figure(
  image("../assets/use_cases/UC13-14-15.png"),
  caption: [Diagramma dei caso d'uso UC13, UC14, UC15],
)


#pagebreak()

=== UC16 - Visualizzazione annuncio tramite _marker_ sulla mappa <uc16>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia degli annunci generati e le relative informazioni.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone l'annuncio generato, con le relative informazioni, in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un annuncio generato.
  + Viene visualizzato l'annuncio generato in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse dell'annuncio aperto dal _marker_ (#link(<uc17>)[uc17]).
  + Visualizzazione _e-mail_ dell'utente dell'annuncio aperto dal _marker_ (#link(<uc18>)[uc18]).
  + Visualizzazione data e ora di tentativo di generazione annuncio dell'annuncio aperto dal _marker_ (#link(<uc19>)[uc19]).
  + Visualizzazione completa dell'annuncio aperto dal _marker_ (#link(<uc20>)[uc20]).
  + Visualizzazione categoria del punto di interesse collegato all'annuncio aperto dal _marker_ (#link(<uc21>)[uc21]).



=== UC17 - Visualizzazione nome del punto di interesse dell'annuncio aperto dal _marker_ <uc17>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia del nome di ciascun punto di interesse.
  + l'amministratore sta visualizzando l'annuncio aperto dal _marker_.
- *Postcondizioni*: il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC18 - Visualizzazione e-mail dell'utente dell'annuncio aperto dal _marker_<uc18>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  + l'amministratore sta visualizzando l'annuncio aperto dal _marker_.
- *Postcondizioni*: il sistema espone l'_e-mail_ dell'utente.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente.

=== UC19 - Visualizzazione data e ora di tentativo di generazione annuncio dell'annuncio aperto dal _marker_<uc19>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  + l'amministratore sta visualizzando l'annuncio aperto dal _marker_.
- *Postcondizioni*: il sistema espone la data e l'ora di tentativo di generazione annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio.

=== UC20 - Visualizzazione del corpo dell'annuncio aperto dal _marker_ <uc20>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia degli annunci generati.
  + l'amministratore sta visualizzando l'annuncio aperto dal _marker_.
- *Postcondizioni*: il sistema espone il corpo dell'annuncio per intero.
- *Scenario principale*:
  + L'amministratore visualizza interamente il corpo dell'annuncio generato precedentemente.

=== UC21 - Visualizzazione categoria del punto di interesse collegato all'annuncio aperto dal _marker_<uc21>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della categoria del punto di interesse collegato al relativo annuncio.
  + l'amministratore sta visualizzando l'annuncio aperto dal _marker_.
- *Postcondizioni*: il sistema espone la categoria del punto di interesse collegato al relativo annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la categoria del punto di interesse.
#v(20pt)
#figure(
  image("../assets/use_cases/UC16-17-18-19-20-21.png"),
  caption: [Diagramma dei caso d'uso UC16, UC17, UC18, UC19, UC20, UC21],
)


#pagebreak()

=== UC22 - Visualizzazione messaggio annuncio non generato tramite _marker_ della mancata generazione di un annuncio sulla mappa <uc22>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia degli annunci non generati e le relative informazioni.
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*: il sistema espone un messaggio circa l'annuncio non generato, con le relative informazioni, in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un annuncio non generato.
  + Viene visualizzato il messaggio con le informazioni dell'annuncio che non è stato generato in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse nel messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_ (#link(<uc23>)[UC23]).
  + Visualizzazione _e-mail_ dell'utente nel messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_ (#link(<uc24>)[UC24]).
  + Visualizzazione data e ora di creazione nel messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_ (#link(<uc25>)[UC25]).

=== UC23 - Visualizzazione nome del punto di interesse nel messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_<uc23>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia del nome di ciascun punto di interesse.
  + l'amministratore sta visualizzando il messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Postcondizioni*: il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC24 - Visualizzazione _e-mail_ dell'utente nel messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_<uc24>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  + l'amministratore sta visualizzando il messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Postcondizioni*: il sistema espone l'_e-mail_ dell'utente.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente.

=== UC25 - Visualizzazione data e ora di creazione nel messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.<uc25>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  + l'amministratore sta visualizzando il messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Postcondizioni*: il sistema espone la data e l'ora di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio.

#v(20pt)
#figure(
  image("../assets/use_cases/UC22-23-24-25.png"),
  caption: [Diagramma dei caso d'uso UC22, UC23, UC24, UC25],
)

#pagebreak()


=== UC26 - Chiusura annuncio visualizzato tramite _marker_ sulla mappa <uc26>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  + l'amministratore ha aperto l'annuncio tramite un'interazione con il _marker_ sulla mappa.
- *Postcondizioni*: il sistema chiude l'annuncio visualizzato tramite una interazione con il _marker_ corrispondente.
- *Scenario principale*:
  + L'amministratore visualizza l'annuncio sulla mappa in corrispondenza del _marker_.
  + L'amministratore chiude l'annuncio.
#v(20pt)
#figure(
  image("../assets/use_cases/UC26.png"),
  caption: [Diagramma del caso d'uso UC26],
)


=== UC27 - Chiusura messaggio annuncio non generato visualizzato tramite _marker_ sulla mappa <uc27>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  + l'amministratore ha aperto la visualizzazione di mancata generazione di un annuncio tramite un'interazione con il _marker_ sulla mappa.
- *Postcondizioni*: il sistema chiude il messaggio di annuncio non generato visualizzato tramite una interazione con il _marker_ corrispondente.
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
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  + il sistema tiene traccia del centro della porzione di territorio visualizzata sulla mappa.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio centrata su un nuovo punto.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per spostare il centro della mappa, quindi anche l'intera visuale.
#v(20pt)
#figure(
  image("../assets/use_cases/UC28.png"),
  caption: [Diagramma dei casi d'uso UC28],
)

#pagebreak()

=== UC29 - Modifica ampiezza della visuale sulla mappa <uc29>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  + il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio più o meno ampia a seconda dell'azione dell'amministratore.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per modificare l'ampiezza della visuale.
- *Generalizzazioni*:
  + Ampliamento della visuale sulla mappa (#link(<uc30>)[UC30])).
  + Restringimento della visuale sulla mappa (#link(<uc31>)[UC31])).

=== UC30 - Ampliamento della visuale sulla mappa <uc30>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa. 
  + il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio più ampia.
- *Scenario principale*:
  + l'amministratore accede alla mappa sulla _dashboard_.
  + l'amministratore interagisce con la mappa per ampliare la visuale.

=== UC31 - Restringimento della visuale sulla mappa <uc31>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + l'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  + il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio meno ampia.
- *Scenario principale*:
  + l'amministratore accede alla mappa sulla _dashboard_.
  + l'amministratore interagisce con la mappa per restringere la visuale.
#v(20pt)
#figure(
  image("../assets/use_cases/UC29-30-31.png"),
  caption: [Diagramma dei casi d'uso UC29, UC30 e UC31],
)

#pagebreak()

=== UC32 - Visualizzazione sezione storico annunci <uc32>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore.
- *Postcondizioni*: 
  + il sistema espone la sezione dello storico annunci.
- *Scenario principale*: 
  + l'amministratore accede alla sezione dello storico degli annunci.
- *Inclusioni*:
  + Visualizzazione storico degli annunci (#link(<uc33>)[UC33]).

=== UC33 - Visualizzazione storico degli annunci <uc33>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + Il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore.
  + L'amministratore si trova nella sezione apposita degli annunci.
- *Postcondizioni*: il sistema espone gli annunci generati fino a quel momento.
- *Scenario principale*:
  + Il sistema espone le _preview_ degli annunci con le informazioni principali.
- *Generalizzazioni*:
  + Visualizzazione storico annunci in lista (#link(<uc34>)[UC34]).
  + Visualizzazione storico annunci in griglia (#link(<uc35>)[UC35]).
- *Inclusioni*:
  + Visualizzazione singolo annuncio nello storico (#link(<uc36>)[UC36]).

=== UC34 - Visualizzazione storico annunci in lista <uc34>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema espone gli annunci generati fino a quel momento.
  + l'amministratore ha selezionato l'opzione per visualizzare gli annunci sotto forma di lista.
- *Postcondizioni*: gli annunci vengono mostrati nella dashboard all'amministratore sotto forma di lista.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore selezione l'opzione per visualizzare gli annunci in lista.

=== UC35 - Visualizzazione storico annunci in griglia <uc35>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema espone gli annunci generati fino a quel momento.
  + l'amministratore ha selezionato l'opzione per visualizzare gli annunci sotto forma di griglia.
- *Postcondizioni*: gli annunci vengono mostrati nella dashboard all'amministratore sottoforma di griglia.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore selezione l'opzione per visualizzare gli annunci in griglia.

=== UC36 - Visualizzazione singolo annuncio nello storico <uc36>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia delle informazioni principali degli annunci generati per gli utenti dell'amministratore. 
  + l'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*: il sistema espone le informazioni principali relative al singolo annuncio:
  - Nome del punto di interesse collegato.
  - _E-mail_ dell'utente destinatario.
  - Data e ora di emissione.
  - Un _flag_ che indica se il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Scenario principale*:
  + L'amministratore visualizza le informazioni principali relative all'annuncio.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse dall'annuncio nello storico (#link(<uc37>)[UC37]).
  + Visualizzazione _e-mail_ dell'utente dall'annuncio nello storico (#link(<uc38>)[UC38]).
  + Visualizzazione data e ora di tentativo di generazione annuncio dall'annuncio nello storico (#link(<uc39>)[UC39]).
  + Visualizzazione _flag_ sugli annunci nello storico inviati a noleggi attivi dall'annuncio nello storico (#link(<uc40>)[UC40]).

=== UC37 - Visualizzazione nome del punto di interesse dall'annuncio nello storico <uc37>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia del nome di ciascun punto di interesse.
  + l'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*: il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC38 - Visualizzazione e-mail dell'utente dall'annuncio nello storico <uc38>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  + l'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*: il sistema espone l'_e-mail_ dell'utente.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente.

=== UC39 - Visualizzazione data e ora di tentativo di generazione annuncio dall'annuncio nello storico <uc39>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  + l'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*: il sistema espone la data e l'ora di tentativo di generazione annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio.

=== UC40 - Visualizzazione flag sugli annunci nello storico inviati a noleggi attivi dall'annuncio nello storico
<uc40>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dello stato del noleggio al quale è stato inviato l'annuncio, se è cioè ancora attivo o meno.
  + l'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*: il sistema espone un _flag_ nel caso il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Scenario principale*:
  + L'amministratore visualizza il _flag_ nel caso in cui il noleggio relativo all'annuncio è ancora attivo.
#v(20pt)
#figure(
  image("../assets/use_cases/UC32-33-34-35-36-37-38-39-40.png"),
  caption: [Diagramma dei casi d'uso UC32, UC33, UC34, UC35, UC36, UC37, UC38, UC39 e UC40],
)

#pagebreak()

=== UC41 - Visualizzazione dettagli di un singolo annuncio dopo aver interagito con un elemento nello storico <uc41>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia di tutte le informazioni degli annunci generati per gli utenti dell'amministratore.
  + l'amministratore entra nel dettaglio di un annuncio dallo storico.
- *Postcondizioni*: il sistema espone interamente l'annuncio insieme alle relative informazioni:
  - Nome del punto di interesse collegato.
  - Categoria del punto di interesse collegato.
  - _E-mail_ dell'utente destinatario.
  - Data e ora di erogazione.
  - _Flag_ che indica se il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Scenario principale*:
  + L'amministratore seleziona l'opzione per visualizzare i dettagli dell'annuncio desiderato.
  + Viene esposto l'annuncio insieme alle relative informazioni.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse dal dettaglio di un annuncio (#link(<uc42>)[UC42]).
  + Visualizzazione _e-mail_ dell'utente dal dettaglio di un annuncio (#link(<uc43>)[UC43]).
  + Visualizzazione data e ora di tentativo di generazione annuncio dal dettaglio di un annuncio (#link(<uc44>)[UC44]).
  + Visualizzazione _flag_ sugli annunci nello storico inviati a noleggi attivi dal suo dettaglio (#link(<uc45>)[UC45]).
  + Visualizzazione completa dell'annuncio dal suo dettaglio (#link(<uc46>)[UC46]).
  + Visualizzazione categoria del punto di interesse collegato all'annuncio dal suo dettaglio (#link(<uc47>)[UC47]).

=== UC42 - Visualizzazione nome del punto di interesse dal dettaglio di un annuncio <uc42>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia del nome di ciascun punto di interesse.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC43 - Visualizzazione e-mail dell'utente dal dettaglio di un annuncio<uc43>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone l'_e-mail_ dell'utente.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente.

=== UC44 - Visualizzazione data e ora di tentativo di generazione annuncio dal dettaglio di un annuncio <uc44>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone la data e l'ora di tentativo di generazione annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio.

=== UC45 - Visualizzazione flag sugli annunci nello storico inviati a noleggi attivi dal dettaglio di un annuncio
<uc45>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dello stato del noleggio al quale è stato inviato l'annuncio, se è cioè ancora attivo o meno.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone un _flag_ nel caso il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Scenario principale*:
  + L'amministratore visualizza il _flag_ nel caso in cui il noleggio relativo all'annuncio è ancora attivo.

=== UC46 - Visualizzazione del corpo dell'annuncio dal suo dettaglio <uc46>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia degli annunci generati.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone il corpo dell'annuncio per intero.
- *Scenario principale*:
  + L'amministratore visualizza interamente il corpo dell'annuncio generato precedentemente.

=== UC47 - Visualizzazione categoria del punto di interesse collegato all'annuncio dal suo dettaglio <uc47>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia della categoria del punto di interesse collegato al relativo annuncio.
  + l'amministratore sta visualizzando il dettaglio di un singolo annuncio.
- *Postcondizioni*: il sistema espone la categoria del punto di interesse collegato al relativo annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la categoria del punto di interesse.
#v(20pt)
#figure(
  image("../assets/use_cases/UC41-42-43-44-45-46-47.png"),
  caption: [Diagramma dei casi d'uso UC41, UC42, UC43, UC44, UC45, UC46 e UC47],
)

#pagebreak()

=== UC48 - Chiusura della finestra di dialogo di visualizzazione dettagli di un singolo annuncio <uc48>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema espone una finestra di dialogo per i dettagli di un annuncio con la quale l'amministratore può interagire.
- *Postcondizioni*: il sistema chiude la finestra di dialogo.
- *Scenario principale*:
  + L'amministratore visualizza una finestra di dialogo aperta.
  + L'amministratore chiude la finestra di dialogo aperta.
#v(20pt)
#figure(
  image("../assets/use_cases/UC48.png"),
  caption: [Diagramma del caso d'uso UC48],
)

#pagebreak()

=== UC49 - Ricerca degli annunci nello storico per e-mail utente <uc49>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia di tutti gli annunci generati per l'utente selezionato. 
  + l'amministratore sta visualizzando la sezione dedicata agli annunci.
  + l'amministratore ha selezionato l'opzione per filtrare gli annunci per _e-mail_ utente.
- *Postcondizioni*: il sistema espone lo storico degli annunci destinati all'utente selezionato.
- *Scenario principale*:
  + L'amministratore seleziona l'_e-mail_ di un utente.
  + Vengono visualizzati solo gli annunci destinati all'utente selezionato.
#v(20pt)
#figure(
  image("../assets/use_cases/UC49.png"),
  caption: [Diagramma del caso d'uso UC49],
)

=== UC50 - Ricerca degli annunci nello storico per nome del punto di interesse <uc50>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia di tutti gli annunci generati collegati al punto di interesse selezionato.
  + l'amministratore sta visualizzando la sezione dedicata agli annunci.
  + l'amministratore ha selezionato l'opzione per filtrare gli annunci per nome del punto di interesse.
- *Postcondizioni*: il sistema espone lo storico degli annunci collegati al punto di interesse selezionato.
- *Scenario principale*:
  + L'amministratore seleziona il nome di un punto di interesse.
  + Vengono visualizzati solo gli annunci collegati al punto di interesse selezionato.
#v(20pt)
#figure(
  image("../assets/use_cases/UC50.png"),
  caption: [Diagramma del caso d'uso UC50],
)

=== UC51 - Ricerca degli annunci nello storico per intervallo di date di emissione <uc51>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia di tutti gli annunci emessi nell'intervallo di date selezionato.
  + l'amministratore sta visualizzando la sezione dedicata agli annunci.
  + l'amministratore ha selezionato l'opzione per filtrare gli annunci per intervallo di date di emissione.
- *Postcondizioni*: il sistema espone lo storico degli annunci emessi nell'intervallo di date selezionato.
- *Scenario principale*:
  + L'amministratore seleziona un intervallo di date.
  + Vengono visualizzati solo gli annunci emessi nell'intervallo di date selezionato.
#v(20pt)
#figure(
  image("../assets/use_cases/UC51.png"),
  caption: [Diagramma del caso d'uso UC51],
)

=== UC52 - Ricerca degli annunci nello storico per fascia oraria di emissione <uc52>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  + il sistema tiene traccia di tutti gli annunci emessi nell'intervallo di date selezionato.
  + l'amministratore sta visualizzando la sezione dedicata agli annunci.
  + l'amministratore ha selezionato l'opzione per filtrare gli annunci per fascia oraria di emissione.
- *Postcondizioni*: il sistema espone lo storico degli annunci emessi nella fascia oraria selezionata.
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
- *Precondizioni*: il sistema tenta di comunicare con il _server_ per ricevere o inviare informazioni, ma si verifica un errore.
- *Postcondizioni*: il sistema espone il messaggio di errore che segnala un problema con il _server_.
- *Scenario principale*:
  + Il _server_ restituisce un errore (ad esempio, codice HTTP 500 o simile) durante la comunicazione.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC54 - Visualizzazione errore "Connessione persa" <uc54>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema monitora lo stato della connessione di rete e non rileva connessione.
- *Postcondizioni*: il sistema espone il messaggio di errore relativo alla perdita di connessione.
- *Scenario principale*:
  + Il sistema rileva che la connessione di rete è persa o instabile.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC55 - Visualizzazione errore "Sensore malfunzionante" <uc55>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema monitora le risposte dei sensori attivi, cioè installati su mezzi con noleggio attivo e rileva uno o più errori.
- *Postcondizioni*: il sistema espone il messaggio di malfunzionamento di un sensore.
- *Scenario principale*:
  + Il sensore non comunica correttamente i dati al sistema.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC56 - Visualizzazione errore "Generazione impossibile dell'annuncio" <uc56>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema comunica con una LLM per far generare gli annunci, ma si verifica un errore.
- *Postcondizioni*: il sistema espone il messaggio di impossibilità di comunicazione con la LLM.
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
  + il sistema mantiene delle informazioni utili per una analisi statistica.
- *Postcondizioni*: il sistema espone la vista dedicata ai grafici.
- *Scenario principale*:
  + l'amministratore entra nella _dashboard_ con i grafici per le analisi sui dati.
- *Inclusioni*:
  + Visualizzazione singolo grafico (#link(<uc58>)[UC58]).

=== UC58 - Visualizzazione statistiche in grafici <uc58>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema mantiene delle informazioni utili per una analisi statistica.
  + il sistema sta esponendo la vista dedicata ai grafici.
- *Postcondizioni*: il sistema espone dei grafici che rappresentino le informazioni.
- *Scenario principale*:
  + L'amministratore visualizza i grafici con le analisi sui dati.
- *Inclusioni*:
  + Visualizzazione singolo grafico (#link(<uc59>)[UC59]).

=== UC59 - Visualizzazione singolo grafico <uc59>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema mantiene delle informazioni utili per una analisi statistica.
  + l'amministratore si trova nella _dashboard_ con i grafici per le analisi sui dati.
  + il sistema sta esponendo i grafici con le analisi sui dati.
- *Postcondizioni*: l'amministratore visualizza il grafico con le relative informazioni:
  - Titolo del grafico.
  - Etichetta dell'asse delle ascisse.
  - Etichetta dell'asse delle ordinate.
  - Etichette dei valori sugli assi.
  - Dati del grafico.
- *Scenario principale*:
  + L'amministratore visualizza il grafico con le relative informazioni.
- *Inclusioni*:
  + Visualizzazione titolo del grafico (#link(<uc60>)[UC60]).
  + Visualizzazione etichetta asse delle ascisse e relativi valori (#link(<uc61>)[UC61]).
  + Visualizzazione etichetta asse delle ordinate e relativi valori (#link(<uc62>)[UC62]).
  + Visualizzazione dati sul grafico (#link(<uc63>)[UC63]).

=== UC60 - Visualizzazione titolo del grafico <uc60>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia del titolo del grafico. 
  + l'amministratore sta visualizzando un grafico.
- *Postcondizioni*: il sistema espone il titolo del grafico.
- *Scenario principale*:
  + L'amministratore visualizza il titolo del grafico.

=== UC61 - Visualizzazione etichetta asse delle ascisse e relativi valori <uc61>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia delle etichette dell'asse delle ascisse e dei relativi valori di ciascun grafico.
  + l'amministratore sta visualizzando un grafico.
- *Postcondizioni*: il sistema espone le etichette dell'asse delle ascisse e dei relativi valori.
- *Scenario principale*:
  + L'amministratore visualizza l'etichetta dell'asse delle ascisse del relativo grafico.
  + L'amministratore visualizza le etichette dei valori segnati sull'asse delle ascisse del relativo grafico.

=== UC62 - Visualizzazione etichetta asse delle ordinate e relativi valori <uc62>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia delle etichette dell'asse delle ordinate e dei relativi valori di ciascun grafico.
  + l'amministratore sta visualizzando un grafico. 
- *Postcondizioni*: il sistema espone le etichette dell'asse delle ordinate e dei relativi valori.
- *Scenario principale*:
  + l'amministratore visualizza l'etichetta dell'asse delle ordinate del relativo grafico.
  + l'amministratore visualizza le etichette dei valori segnati sull'asse delle ordinate del relativo grafico.

=== UC63 - Visualizzazione dati sul grafico <uc63>
- *Attore principale*: Amministratore.
- *Precondizioni*: 
  + il sistema tiene traccia dei dati di ciascun grafico.
  + l'amministratore sta visualizzando un grafico. 
- *Postcondizioni*: l'amministratore visualizza i dati sul relativo grafico.
- *Scenario principale*:
  + l'amministratore visualizza i dati sul grafico.
#v(20pt)
#figure(
  // TODO: i casi d'uso sono stati rinumerarti: server rifare UML e caption
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
