#import "/templates/template.typ": *

#show: content => verbale(
  data: "24 gennaio 2025",
  destinatari: ("Gruppo SWE@", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.L."),
  responsabile: "Andrea Precoma",
  redattori: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
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
    "1.1.0",
    [23/02/2025],
    "Davide Martinelli",
    "Riccardo Milan",
    [
      - Aggiunti alcuni use case e requisiti relativi all'analisi statistica
      - Correzioni da valutazione RTB
    ],
    "1.0.1",
    "05/02/2025",
    "Klaudio Merja",
    "Andrea Precoma",
    [
      - Correzione dei riferimenti alla documentazione del gruppo
    ],
    "1.0.0",
    [24/01/2025],
    "Davide Picello\nKlaudio Merja",
    "Andrea Perozzo\nDavide Martinelli",
    "Approvazione versione finale del documento per rilascio in RTB",
    "0.7.0",
    [23/01/2025],
    "Davide Picello\nKlaudio Merja",
    "Andrea Perozzo\nDavide Martinelli",
    [- Raffinamento e completamento della stesura dei requisiti],
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
- Norme di Progetto (v1.0.1)\ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/norme_di_progetto_ver1.0.1.pdf")
- Regolamento del progetto didattico\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")\ (ultimo accesso in data 24/01/2025)
- Capitolato C4 (Sync Lab)\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")\ (ultimo accesso in data 24/01/2025)

=== Riferimenti informativi
- Glossario (v1.0.0)\ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/glossario_ver1.0.0.pdf")
- T5 - Analisi dei Requisiti\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")\ (ultimo accesso in data 24/01/2025)
- P2 - I Diagrammi dei Casi d'Uso\ #formatLink(url: "https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")\ (ultimo accesso in data 24/01/2025)
#pagebreak()

= Descrizione del prodotto
== Obiettivi del prodotto
Il prodotto ha come obiettivo quello di fornire un servizio di pubblicità personalizzata, accessibile agli utenti di un mezzo a noleggio, che sfrutta la GenAI e i dati di profilazione degli utenti come _#rifGlossario("prompt")_ della GenAI stessa per la creazione di pubblicità mirate sui singoli utenti. Il gestore del servizio di noleggio avrà accesso ad una _#rifGlossario("dashboard")_ che gli permetterà di monitorare in tempo reale la posizione degli utenti e gli annunci generati.
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
La seguente sezione espone il diagramma delle attività relativo al sistema in sviluppo dal nostro _team_ e proposto dall'azienda proponente Sync Lab S.r.l..

L'acronimo *PdI* indica il "Punto di Interesse".
#v(10pt)
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
- *Inclusioni*:
  - Trasmissione coordinate GPS del sensore (#link(<uc2>)[UC2]).
  - Trasmissione codice identificativo del sensore (#link(<uc3>)[UC3]).

=== UC2 - Trasmissione coordinate GPS del sensore <uc2>
- *Attore principale*: Sensore.
- *Precondizioni*:
  - Il mezzo su cui è montato il sensore ha un noleggio attivo.
- *Postcondizioni*:
  - Il sistema riceve le coordinate GPS del sensore.
- *Scenario principale*: 
  + Il sensore invia a intervalli regolari le proprie coordinate GPS, corrispondenti a una coppia di valori latitudine-longitudine.

=== UC3 - Trasmissione codice identificativo del sensore <uc3>
- *Attore principale*: Sensore.   
- *Precondizioni*:
  - Il mezzo su cui è montato il sensore ha un noleggio attivo.
- *Postcondizioni*:
  - Il sistema riceve il codice identificativo del sensore.
- *Scenario principale*: 
  + Il sensore invia a intervalli regolari il proprio codice identificativo.

#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC1-2-3.png"),
  caption: [Diagramma dei casi d'uso UC1 UC2 e UC3],
)

#pagebreak()

=== UC4 - Autenticazione alla dashboard del sistema <uc4>
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
  - Inserimento _e-mail_ per l'autenticazione alla _dashboard_ (#link(<uc5>)[UC5]).
  - Inserimento _password_ per l'autenticazione alla _dashboard_ (#link(<uc6>)[UC6]).
- *Estensioni*:
  - Visualizzazione errore "Credenziali errate" (#link(<uc7>)[UC7]).

=== UC5 - Inserimento e-mail per l'autenticazione alla dashboard <uc5>
- *Attore principale*: Amministratore non autenticato.
- *Precondizioni*:
  - Il sistema possiede l'_e-mail_ dell'amministratore che in quel momento non è autenticato.
  - L'amministratore non autenticato si trova nella pagina di _login_.
  - Il sistema si aspetta di ricevere un indirizzo _e-mail_.
- *Postcondizioni*:
  - Il sistema reputa valida l'_e-mail_ inserita.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce l'_e-mail_ con la quale è registrato nel sistema.

=== UC6 - Inserimento password per l'autenticazione alla dashboard <uc6>
- *Attore principale*: Amministratore non autenticato.
- *Precondizioni*:
  - Il sistema possiede la _password_ dell'amministratore che in quel momento non è autenticato.
  - L'amministratore non autenticato si trova nella pagina di _login_.
  - Il sistema si aspetta di ricevere una _password_.
- *Postcondizioni*:
  - Il sistema reputa valida la _password_ inserita.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce la _password_ con la quale è registrato nel sistema.

=== UC7 - Visualizzazione errore "Credenziali errate" <uc7>
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
  image("../assets/use_cases/pb/UC4-5-6-7.png"),
  caption: [Diagramma dei casi d'uso UC4, UC5, UC6 e UC7],
)

#pagebreak()

=== UC8 - Visualizzazione della mappa geografica sulla dashboard <uc8>
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
  - Visualizzazione _#rifGlossario("marker")_ sulla mappa per i punti di interesse (#link(<uc9>)[UC9]).

=== UC9 - Visualizzazione marker sulla mappa per i punti di interesse <uc9>
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
  image("../assets/use_cases/pb/UC8-9.png"),
  caption: [Diagramma dei casi d'uso UC8 e UC9],
)

#pagebreak()

=== UC10 - Visualizzazione percorso del mezzo in noleggio sulla mappa <uc10>
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
  image("../assets/use_cases/pb/UC10.png"),
  caption: [Diagramma del caso d'uso UC10],
)
#pagebreak()


=== UC11 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo <uc11>
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
  - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza del dato GPS (#link(<uc12>)[UC12]).
  - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza della generazione di un annuncio (#link(<uc13>)[UC13]).
  - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza della mancata generazione di un annuncio (#link(<uc14>)[UC14]).

=== UC12 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza del dato GPS <uc12>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema riceve in tempo reale i dati GPS dei sensori relativi ai mezzi con un noleggio attivo.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*:
  - Il sistema espone sulla mappa un _marker_ in corrispondenza di ciascuna posizione GPS fornita dal sensore che non è nelle vicinanze di un punto di interesse, o che ne è nelle vicinanze ma ha già ricevuto un annuncio per quello stesso punto di interesse durante il suo noleggio ancora attivo.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza di ogni dato GPS ritornato dal sensore di un relativo mezzo in noleggio che non è nelle vicinanze di un punto di interesse, o che ne è nelle vicinanze ma ha già ricevuto un annuncio per quello stesso punto di interesse durante il suo noleggio ancora attivo.


=== UC13 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza della generazione di un annuncio <uc13>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema memorizza gli annunci generati e le relative informazioni.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*:
  - Il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui è stato generato un annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali è stato generato un annuncio.


=== UC14 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza della mancata generazione di un annuncio <uc14>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema memorizza le mancate generazioni degli annunci e le relative informazioni.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*:
  - Il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui la #rifGlossario("LLM") non ha ritenuto l'utente interessato, quindi non è stato generato l'annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali la LLM non ha generato un annuncio perché ha valutato l'utente come non interessato al punto di interesse in base alla sua profilazione.
#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC11-12-13-14.png"),
  caption: [Diagramma dei caso d'uso UC11, UC12, UC13, UC14],
)

#pagebreak()


=== UC15 - Visualizzazione informazioni punto di interesse tramite marker sulla mappa <uc15>
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
  - Visualizzazione nome del punto di interesse dal _marker_ del punto di interesse (#link(<uc16>)[UC16]).
  - Visualizzazione categoria del punto di interesse dal _marker_ del punto di interesse (#link(<uc17>)[UC17]).

=== UC16 - Visualizzazione nome del punto di interesse dal marker del punto di interesse <uc16>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - Il sistema sta esponendo la _dashboard_ con la mappa e l'amministratore ha interagito col _marker_ del punto di interesse.
- *Postcondizioni*:
  - Il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC17 - Visualizzazione categoria del punto di interesse dal marker del punto di interesse <uc17>
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
  image("../assets/use_cases/pb/UC15-16-17.png"),
  caption: [Diagramma dei caso d'uso UC15, UC16, UC17],
)


#pagebreak()

=== UC18 - Visualizzazione informazioni dell'annuncio tramite marker sulla mappa <uc18>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia degli annunci generati e le relative informazioni.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*:
  - Il sistema espone l'annuncio generato, con le relative informazioni, in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica la generazione dell'annuncio.
  + Vengono visualizzati le informazioni dell'annuncio generato in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  - Visualizzazione nome del punto di interesse dell'annuncio aperto dal _marker_ (#link(<uc19>)[UC19]).
  - Visualizzazione _e-mail_ dell'utente dell'annuncio aperto dal _marker_ (#link(<uc20>)[UC20]).
  - Visualizzazione data e ora di generazione annuncio aperto dal _marker_ (#link(<uc21>)[UC21]).
  - Visualizzazione dell'annuncio aperto dal _marker_ (#link(<uc22>)[UC22]).
  - Visualizzazione categoria del punto di interesse dell'annuncio aperto dal _marker_ (#link(<uc23>)[UC23]).

=== UC19 - Visualizzazione nome del punto di interesse dell'annuncio aperto dal marker <uc19>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*:
  - Il sistema espone il nome del punto di interesse dell'annuncio aperto dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse dell'annuncio aperto dal _marker_.

=== UC20 - Visualizzazione e-mail dell'utente dell'annuncio aperto dal marker <uc20>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*:
  - Il sistema espone l'_e-mail_ dell'utente dell'annuncio aperto dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente destinatario dell'annuncio aperto dal _marker_.

=== UC21 - Visualizzazione data e ora di generazione annuncio aperto dal marker <uc21>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*:
  - Il sistema espone la data e l'ora di tentativo di generazione dell'annuncio aperto dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio aperto dal _marker_.

=== UC22 - Visualizzazione dell'annuncio aperto dal marker <uc22>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia degli annunci generati.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*:
  - Il sistema espone l'annuncio aperto dal _marker_ per intero.
- *Scenario principale*:
  + L'amministratore visualizza interamente l'annuncio generato aperto dal _marker_.

=== UC23 - Visualizzazione categoria del punto di interesse dell'annuncio aperto dal marker <uc23>
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
  image("../assets/use_cases/pb/UC18-19-20-21-22-23.png"),
  caption: [Diagramma dei caso d'uso UC18, UC19, UC20, UC21, UC22, UC23],
)


#pagebreak()

=== UC24 - Visualizzazione messaggio annuncio non generato tramite marker sulla mappa <uc24>
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
  - Visualizzazione nome del punto di interesse nel messaggio di tentativo di generazione annuncio aperto dal _marker_ (#link(<uc25>)[UC25]).
  - VVisualizzazione _e-mail_ dell'utente nel messaggio di tentativo di generazione annuncio aperto dal _marker_ (#link(<uc26>)[UC26]).
  - Visualizzazione data e ora di tentata generazione annuncio nel messaggio di tentativo di generazione annuncio aperto dal _marker_ (#link(<uc27>)[UC27]).

=== UC25 - Visualizzazione nome del punto di interesse nel messaggio di tentativo di generazione annuncio aperto dal marker <uc25>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando il messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Postcondizioni*:
  - Il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC26 - Visualizzazione _e-mail_ dell'utente nel messaggio di tentativo di generazione annuncio aperto dal marker <uc26>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando il messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Postcondizioni*:
  - Il sistema espone l'_e-mail_ dell'utente.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente.

=== UC27 - Visualizzazione data e ora di tentata generazione annuncio nel messaggio di tentativo di generazione annuncio aperto dal marker <uc27>
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
  image("../assets/use_cases/pb/UC24-25-26-27.png"),
  caption: [Diagramma dei caso d'uso UC24, UC25, UC26, UC27],
)

#pagebreak()


=== UC28 - Chiusura vista delle informazioni dell'annuncio visualizzate tramite marker sulla mappa <uc28>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  - L'amministratore ha aperto le informazioni relative all'annuncio tramite un'interazione con il _marker_ sulla mappa.
- *Postcondizioni*:
  - Il sistema chiude la vista delle informazioni dell'annuncio visualizzata tramite una interazione con il _marker_ corrispondente.
- *Scenario principale*:
  + L'amministratore visualizza le informazioni dell'annuncio sulla mappa in corrispondenza del _marker_.
  + L'amministratore chiude la vista delle informazioni.
#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC28.png"),
  caption: [Diagramma del caso d'uso UC28],
)
#pagebreak()

=== UC29 - Chiusura messaggio annuncio non generato visualizzato tramite marker sulla mappa <uc29>
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
  image("../assets/use_cases/pb/UC29.png"),
  caption: [Diagramma del caso d'uso UC29],
)

#pagebreak()

=== UC30 - Spostamento della visuale sulla mappa <uc30>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  - Il sistema tiene traccia del centro della porzione di territorio visualizzata sulla mappa.
- *Postcondizioni*:
  - Il sistema fa visualizzare sulla mappa una porzione di territorio centrata su un nuovo punto.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa spostandone il centro, e quindi anche l'intera visuale, in una direzione qualsiasi (in inglese _to pan_).
#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC30.png"),
  caption: [Diagramma del caso d'uso UC30],
)

#pagebreak()

=== UC31 - Modifica ampiezza della visuale sulla mappa <uc31>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  - Il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
  - L'amministratore ha selezionato l'opzione per modificare l'ampiezza della porzione di mappa visualizzata.
- *Postcondizioni*:
  - Il sistema fa visualizzare sulla mappa una porzione di territorio più o meno ampia di prima a seconda dell'azione dell'amministratore.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per modificare l'ampiezza del territorio visibile (in inglese _to zoom_).
- *Generalizzazioni*:
  - Ampliamento della visuale sulla mappa (#link(<uc32>)[UC32])).
  - Restringimento della visuale sulla mappa (#link(<uc33>)[UC33])).

=== UC32 - Ampliamento della visuale sulla mappa <uc32>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  - Il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
  - L'amministratore ha selezionato l'opzione per ampliare la porzione di mappa visualizzata.
- *Postcondizioni*:
  - Il sistema fa visualizzare sulla mappa una porzione di territorio più ampia.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per ampliare la porzione di territorio visualizzato (in inglese _to zoom out_), di conseguenza rimpicciolendone i dettagli.

=== UC33 - Restringimento della visuale sulla mappa <uc33>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
  - Il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
  - L'amministratore ha selezionato l'opzione per restringere la porzione di mappa visualizzata.
- *Postcondizioni*:
  - Il sistema fa visualizzare sulla mappa una porzione di territorio meno ampia.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per restringere la porzione di territorio visualizzato (in inglese _to zoom in_), di conseguenza ingrandendone i dettagli.
#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC31-32-33.png"),
  caption: [Diagramma dei casi d'uso UC31, UC32 e UC33],
)

#pagebreak()

=== UC34 - Visualizzazione sezione storico annunci <uc34>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore.
- *Postcondizioni*:
  - Il sistema espone la sezione dedicata alla visualizzazione dello storico annunci e al relativo filtraggio degli stessi.
- *Scenario principale*:
  + L'amministratore accede alla sezione dello storico annunci.
  + L'amministratore visualizza lo storico degli annunci generati e ha accesso alle opzioni di filtraggio degli stessi.
- *Inclusioni*:
  - Visualizzazione storico degli annunci (#link(<uc35>)[UC35]).

=== UC35 - Visualizzazione storico degli annunci <uc35>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore.
  - L'amministratore si trova nella sezione dello storico annunci.
- *Postcondizioni*:
  - Il sistema espone gli annunci generati fino a quel momento.
- *Scenario principale*:
  + Il sistema espone un insieme di annunci mostrando, per ognuno di essi, una _preview_ con le informazioni principali (UC38).
- *Generalizzazioni*:
  - Visualizzazione storico annunci in lista (#link(<uc36>)[UC36]).
  - Visualizzazione storico annunci in griglia (#link(<uc37>)[UC37]).
- *Inclusioni*:
  - Visualizzazione elemento nello storico (#link(<uc38>)[UC38]).

=== UC36 - Visualizzazione storico annunci in lista <uc36>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema espone gli annunci generati fino a quel momento.
  - L'amministratore ha selezionato l'opzione per visualizzare gli annunci sotto forma di lista.
- *Postcondizioni*:
  - Gli annunci vengono mostrati nella _dashboard_ all'amministratore sotto forma di lista.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore seleziona l'opzione per visualizzare gli annunci in lista.

=== UC37 - Visualizzazione storico annunci in griglia <uc37>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema espone gli annunci generati fino a quel momento.
  - L'amministratore ha selezionato l'opzione per visualizzare gli annunci sotto forma di griglia.
- *Postcondizioni*:
  - Gli annunci vengono mostrati nella _dashboard_ all'amministratore sotto forma di griglia.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore seleziona l'opzione per visualizzare gli annunci in griglia.

=== UC38 - Visualizzazione elemento nello storico <uc38>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia delle informazioni principali degli annunci generati per gli utenti dell'amministratore.
  - L'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*:
  - Il sistema espone le informazioni principali relative al singolo elemento nello storico.
- *Scenario principale*:
  + L'amministratore visualizza un elemento contenente le informazioni principali di un annuncio.
- *Inclusioni*:
  - Visualizzazione nome del punto di interesse dall'elemento nello storico (#link(<uc39>)[UC39]).
  - Visualizzazione _e-mail_ dell'utente dall'elemento nello storico (#link(<uc40>)[UC40]).
  - Visualizzazione data e ora di tentativo di generazione annuncio dall'elemento nello storico (#link(<uc41>)[UC41]).
  - Visualizzazione _flag_ sull'elemento nello storico legato all'annuncio emesso verso un noleggio attivo (#link(<uc42>)[UC42]).

=== UC39 - Visualizzazione nome del punto di interesse dall'elemento nello storico <uc39>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando un elemento nello storico.
- *Postcondizioni*:
  - Il sistema espone il nome del punto di interesse dell'annuncio nell'elemento dello storico.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse dell'annuncio nell'elemento dello storico.

=== UC40 - Visualizzazione e-mail dell'utente dall'elemento nello storico <uc40>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando un elemento nello storico.
- *Postcondizioni*:
  - Il sistema espone l'_e-mail_ dell'utente destinatario dell'annuncio nell'elemento dello storico.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente destinatario dell'annuncio nell'elemento dello storico.

=== UC41 - Visualizzazione data e ora di tentativo di generazione annuncio dall'elemento nello storico <uc41>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  - L'amministratore sta visualizzando un elemento nello storico.
- *Postcondizioni*:
  - Il sistema espone la data e l'ora di tentativo di generazione dell'annuncio nell'elemento dello storico.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione dell'annuncio nell'elemento dello storico.

=== UC42 - Visualizzazione flag sull'elemento nello storico legato all'annuncio emesso verso un noleggio attivo <uc42>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dello stato del noleggio al quale è legato l'annuncio, se è cioè ancora attivo o meno.
  - L'amministratore sta visualizzando un elemento nello storico.
- *Postcondizioni*:
  - Il sistema espone un _flag_ nel caso il noleggio al quale è legato il singolo annuncio nello storico è ancora attivo.
- *Scenario principale*:
  + L'amministratore visualizza il _flag_ nel caso in cui il noleggio relativo al singolo annuncio nello storico è ancora attivo.
#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC34-35-36-37-38.png"),
  caption: [Diagramma dei casi d'uso UC34, UC35, UC36, UC37, UC38],
)
#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC38-39-40-41-42.png"),
  caption: [Diagramma dei casi d'uso UC38, UC39, UC40, UC41, UC42 (continuazione di Figura 14)],
)
#pagebreak()

=== UC43 - Visualizzazione dettagli di un singolo annuncio dopo aver interagito con un elemento nello storico <uc43>
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
  - Visualizzazione nome del punto di interesse dai dettagli aperti dall'elemento nello storico (#link(<uc44>)[UC44]).
  - Visualizzazione _e-mail_ dell'utente dai dettagli aperti dall'elemento nello storico (#link(<uc45>)[UC45]).
  - Visualizzazione data e ora di tentativo di generazione annuncio dai dettagli aperti dall'elemento nello storico (#link(<uc46>)[UC46]).
  - Visualizzazione _flag_ sugli annunci nello storico legati a noleggi attivi dai dettagli aperti dall'elemento nello storico (#link(<uc47>)[UC47]).
  - Visualizzazione dell'annuncio dai dettagli aperti dall'elemento nello storico (#link(<uc48>)[UC48]).
  - Visualizzazione categoria del punto di interesse collegato all'annuncio dai dettagli aperti dall'elemento nello storico (#link(<uc49>)[UC49]).

=== UC44 - Visualizzazione nome del punto di interesse dai dettagli aperti dall'elemento nello storico <uc44>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando il dettaglio di un singolo elemento aperto nello storico.
- *Postcondizioni*:
  - Il sistema espone il nome del punto di interesse nei dettagli di un elemento aperto nello storico.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse nei dettagli di un elemento aperto nello storico.

=== UC45 - Visualizzazione e-mail dell'utente dai dettagli aperti dall'elemento nello storico <uc45>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando il dettaglio di un singolo elemento aperto nello storico.
- *Postcondizioni*:
  - Il sistema espone l'_e-mail_ dell'utente nei dettagli di un elemento aperto nello storico.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente nei dettagli di un elemento aperto nello storico.

=== UC46 - Visualizzazione data e ora di tentativo di generazione annuncio dai dettagli aperti dall'elemento nello storico <uc46>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  - L'amministratore sta visualizzando il dettaglio di un singolo elemento aperto nello storico.
- *Postcondizioni*:
  - Il sistema espone la data e l'ora di tentativo di generazione annuncio nei dettagli di un elemento aperto nello storico.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio nei dettagli di un elemento aperto nello storico.

=== UC47 - Visualizzazione flag sugli annunci nello storico legati a noleggi attivi dai dettagli aperti dall'elemento nello storico <uc47>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dello stato del noleggio al quale è legato l'annuncio, se è cioè ancora attivo o meno.
  - L'amministratore sta visualizzando il dettaglio di un singolo elemento aperto nello storico.
- *Postcondizioni*:
  - Il sistema espone un _flag_ nel caso in cui il noleggio al quale è legato l'annuncio, aperto dall'elemento nello storico, sia ancora attivo.
- *Scenario principale*:
  + L'amministratore visualizza il _flag_ nel caso in cui il noleggio relativo all'annuncio, aperto dall'elemento nello storico, sia ancora attivo.

=== UC48 - Visualizzazione dell'annuncio dai dettagli aperti dall'elemento nello storico <uc48>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia degli annunci generati.
  - L'amministratore sta visualizzando il dettaglio di un singolo elemento aperto nello storico.
- *Postcondizioni*:
  - Il sistema espone l'annuncio aperto dall'elemento nello storico.
- *Scenario principale*:
  + L'amministratore visualizza interamente l'annuncio generato aperto dall'elemento nello storico.

=== UC49 - Visualizzazione categoria del punto di interesse collegato all'annuncio dai dettagli aperti dall'elemento nello storico <uc49>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia della categoria del punto di interesse collegato al relativo annuncio aperto dallo storico.
  - L'amministratore sta visualizzando il dettaglio di un singolo elemento aperto nello storico.
- *Postcondizioni*:
  - Il sistema espone la categoria del punto di interesse nei dettagli di un elemento aperto nello storico.
- *Scenario principale*:
  + L'amministratore visualizza la categoria del punto di interesse nei dettagli di un elemento aperto nello storico.
#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC43-44-45-46-47-48-49.png"),
  caption: [Diagramma dei casi d'uso UC43, UC44, UC45, UC46, UC47, UC48 e UC49],
)

#pagebreak()

=== UC50 - Chiusura della vista di visualizzazione dettagli di un singolo elemento nello storico <uc50>
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
  image("../assets/use_cases/pb/UC50.png"),
  caption: [Diagramma del caso d'uso UC50],
)

#pagebreak()

=== UC51 - Ricerca degli annunci nello storico per e-mail utente <uc51>
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
  image("../assets/use_cases/pb/UC51.png"),
  caption: [Diagramma del caso d'uso UC51],
)

#pagebreak()

=== UC52 - Ricerca degli annunci nello storico per nome del punto di interesse <uc52>
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
  image("../assets/use_cases/pb/UC52.png"),
  caption: [Diagramma del caso d'uso UC52],
)

#pagebreak()

=== UC53 - Ricerca degli annunci nello storico per intervallo di date di emissione <uc53>
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
  image("../assets/use_cases/pb/UC53.png"),
  caption: [Diagramma del caso d'uso UC53],
)

#pagebreak()

=== UC54 - Ricerca degli annunci nello storico per fascia oraria di emissione <uc54>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia di tutti gli annunci emessi nella fascia oraria selezionata.
  - L'amministratore sta visualizzando la sezione dedicata agli annunci.
  - L'amministratore ha selezionato l'opzione per filtrare gli annunci per fascia oraria di emissione.
- *Postcondizioni*:
  - Il sistema espone lo storico degli annunci emessi nella fascia oraria selezionata.
- *Scenario principale*:
  + L'amministratore seleziona una fascia oraria.
  + Vengono visualizzati solo gli annunci emessi nella fascia oraria selezionata.
#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC54.png"),
  caption: [Diagramma del caso d'uso UC54],
)

#pagebreak()

=== UC55 - Visualizzazione errore "Il server non risponde" <uc55>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema di visualizzazione dell'amministratore tenta comunicare con il _server_ per ricevere o inviare informazioni, ma si verifica un errore.
- *Postcondizioni*:
  - Il sistema espone il messaggio di errore che segnala un problema con il _server_.
- *Scenario principale*:
  + Il _server_ restituisce un errore durante la comunicazione.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC56 - Visualizzazione errore "Connessione persa" <uc56>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema monitora lo stato della connessione di rete e non rileva connessione.
- *Postcondizioni*:
  - Il sistema espone il messaggio di errore relativo alla perdita di connessione.
- *Scenario principale*:
  + Il sistema rileva che la connessione di rete è persa o scarsa.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC57 - Visualizzazione errore "Sensore malfunzionante" <uc57>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema monitora le risposte dei sensori attivi, cioè installati su mezzi con noleggio attivo e rileva un errore.
- *Postcondizioni*:
  - Il sistema espone il messaggio di malfunzionamento di un sensore.
- *Scenario principale*:
  + Il sensore non comunica correttamente i dati al sistema.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.

=== UC58 - Visualizzazione errore "Generazione impossibile dell'annuncio" <uc58>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema comunica con la LLM per far generare gli annunci, ma si verifica un errore.
- *Postcondizioni*:
  - Il sistema espone il messaggio di impossibilità di comunicazione con la LLM.
- *Scenario principale*:
  + Il sistema non riesce a comunicare correttamente con la LLM, non riesce cioè a inviare o ricevere messaggi.
  + L'amministratore visualizza il messaggio di errore sulla _dashboard_.
#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC55-56-57-58.png"),
  caption: [Diagramma dei casi d'uso UC55, UC56, UC57 e UC58],
)

#pagebreak()


// OPZIONALI

=== UC59 - Visualizzazione sezione grafici <uc59>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema mantiene delle informazioni utili per un'analisi statistica.
- *Postcondizioni*: 
  - Il sistema espone la vista dedicata ai grafici.
- *Scenario principale*:
  + L'amministratore entra nella _dashboard_ con i grafici per le analisi sui dati.
- *Inclusioni*:
  - Visualizzazione singolo grafico (#link(<uc60>)[UC60]).

=== UC60 - Visualizzazione singolo grafico <uc60>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema mantiene delle informazioni utili per una analisi statistica.
  - L'amministratore si trova nella _dashboard_ con i grafici per le analisi sui dati.
  - Il sistema sta esponendo i grafici con le analisi sui dati.
- *Postcondizioni*:
  - L'amministratore visualizza il grafico con le relative informazioni.
- *Scenario principale*:
  + L'amministratore visualizza il grafico con le relative informazioni.
- *Inclusioni*:
  - Visualizzazione titolo del grafico (#link(<uc61>)[UC61]).
  - Visualizzazione etichetta asse delle ascisse e relativi valori (#link(<uc62>)[UC62]).
  - Visualizzazione etichetta asse delle ordinate e relativi valori (#link(<uc63>)[UC63]).
  - Visualizzazione dati sul grafico (#link(<uc64>)[UC64]).
- *Generalizzazioni*:
  - Visualizzazione grafico del numero di annunci generati nelle ultime 24 ore (#link(<uc65>)[UC65]).
  - Visualizzazione grafico del numero medio di noleggi per mese (#link(<uc66>)[UC66]).
  - Visualizzazione grafico del rapporto tra numero di annunci generati e numero di annunci non generati per un certo punto di interesse nell'ultima settimana (#link(<uc67>)[UC67]).

=== UC61 - Visualizzazione titolo del grafico <uc61>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del titolo del grafico.
  - L'amministratore sta visualizzando un grafico.
- *Postcondizioni*:
  - Il sistema espone il titolo del grafico.
- *Scenario principale*:
  + L'amministratore visualizza il titolo del grafico.

=== UC62 - Visualizzazione etichetta asse delle ascisse e relativi valori <uc62>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia delle etichette dell'asse delle ascisse e dei relativi valori di ciascun grafico.
  - L'amministratore sta visualizzando un grafico.
- *Postcondizioni*:
  - Il sistema espone le etichette dell'asse delle ascisse e dei relativi valori.
- *Scenario principale*:
  + L'amministratore visualizza l'etichetta dell'asse delle ascisse del relativo grafico.
  + L'amministratore visualizza le etichette dei valori segnati sull'asse delle ascisse del relativo grafico.

=== UC63 - Visualizzazione etichetta asse delle ordinate e relativi valori <uc63>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia delle etichette dell'asse delle ordinate e dei relativi valori di ciascun grafico.
  - L'amministratore sta visualizzando un grafico.
- *Postcondizioni*:
  - Il sistema espone le etichette dell'asse delle ordinate e dei relativi valori.
- *Scenario principale*:
  + l'amministratore visualizza l'etichetta dell'asse delle ordinate del relativo grafico.
  + l'amministratore visualizza le etichette dei valori segnati sull'asse delle ordinate del relativo grafico.

=== UC64 - Visualizzazione dati sul grafico <uc64>
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
  image("../assets/use_cases/pb/UC59-60-61-62-63-64.png", width: 90%),
  caption: [Diagramma dei casi d'uso UC59, UC60, UC61, UC62, UC63 e UC64 (inclusioni UC60)],
)

#pagebreak()

=== UC65 - Visualizzazione grafico del numero di annunci generati nelle ultime 24 ore <uc65>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia degli annunci generati.
  - L'amministratore sta visualizzando la sezione dedicata ai grafici.
- *Postcondizioni*:
  - Il sistema espone il grafico con il numero di annunci generati per ciascuna ora nell'arco delle ultime 24 ore.
- *Scenario principale*:
  + L'amministratore visualizza il grafico con il numero di annunci generati per ciascuna ora nelle ultime 24 ore.

=== UC66 - Visualizzazione grafico del numero medio di noleggi per mese <uc66>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dei noleggi effettuati.
  - L'amministratore sta visualizzando la sezione dedicata ai grafici.
- *Postcondizioni*:
  - Il sistema espone il grafico con il numero medio di noleggi che vengono effettuati in ciascun mese dell'anno.
- *Scenario principale*: 
  + L'amministratore visualizza il grafico che mostra il numero medio di noleggi che vengono effettuati in ciascun mese dell'anno solare.

=== UC67 - Visualizzazione grafico del rapporto tra numero di annunci generati e numero di annunci non generati per un certo punto di interesse nell'ultima settimana <uc67>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia degli annunci generati e non generati per ciascun punto di interesse.
  - L'amministratore sta visualizzando la sezione dedicata ai grafici.
- *Postcondizioni*:
  - Il sistema espone il grafico con il numero di annunci generati e non generati per ciascun punto di interesse nell'ultima settimana.
- *Scenario principale*: 
  + L'amministratore visualizza il grafico che mette a confronto il numero di annunci generati con il numero di annunci non generati per un certo punto di interesse nell'arco dell'ultima settimana.
 
#figure(
  image("../assets/use_cases/pb/UC59-60-65-66-67.png"),
  caption: [Diagramma dei casi d'uso UC59, UC60, UC65, UC66, UC67 (generalizzazioni UC60)],
)
#v(20pt)

=== UC68 - Selezione di un punto di interesse nella sezione grafici <uc68>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia degli annunci generati e non generati per ciascun punto di interesse.
  - L'amministratore sta visualizzando la sezione dedicata ai grafici.
- *Postcondizioni*:
  - Il sistema espone i grafici relativi al punto di interesse selezionato.
- *Scenario principale*:
  + L'amministratore seleziona un punto di interesse.
  + Vengono visualizzati i grafici relativi al punto di interesse selezionato.

#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC68.png"),
  caption: [Diagramma del caso d'uso UC68],
)

#pagebreak()

= Requisiti
In questa sezione vengono elencati i requisiti relativi al sistema oggetto del progetto didattico _Near You_ fornito dalla proponente Sync Lab S.r.l..

I requisiti sono frutto dell'analisi del capitolato d'appalto, dalle varie interazioni con la proponente e a seguito dei vari dialoghi interni avvenuti tra i vari membri del gruppo.

Ogni requisito è identificato univocamente da un codice che presenta la seguente struttura:
#align(center)[*R[Importanza][Tipo]-[ID]*]
Viene riportato di seguito il significato e i possibili valori dei campi presenti all'interno di ogni identificativo:
- *Importanza*: indica il grado di importanza di ogni requisito, che si distingue in:
  - *O*: requisito obbligatorio, ovvero che viene richiesto esplicitamente dall'azienda e, di conseguenza, strettamente necessario.
  - *D*: requisito desiderabile, ovvero che non è strettamente necessario ma dà valore aggiunto al prodotto finale.
  - *F*: requisito facoltativo, ovvero che non è necessario ma può essere utile ai fini del prodotto finale. Quest'ultimo può essere contrattato in seguito con l'azienda.
- *Tipo*: indica la tipologia di requisito, che si distingue in:
  - *F*: requisito funzionale, ovvero che descrive una funzionalità del sistema.
  - *Q*: requisito di qualità, ovvero descrive una caratteristica di qualità del prodotto.
  - *V*: requisito di vincolo, ovvero un limite imposto da capitolato e che il prodotto deve rispettare.
- *ID*: numero progressivo che identifica univocamente il requisito nella sua categoria.
== Requisiti obbligatori
=== Requisiti funzionali
#table(
  align: (center, left, center),
  columns: (0.6fr, 3fr, 1fr),
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [ROF-1],
  [Il sensore deve trasmettere i suoi dati di identificazione e localizzazione al sistema a intervalli regolari.],
  [#link(<uc1>)[UC1]\ #link(<uc2>)[UC2]\ #link(<uc3>)[UC3]\ Capitolato],

  [ROF-2],
  [La _dashboard_ dell'amministratore, per essere accessibile solamente da quest'ultimo, deve essere protetta da un sistema di autenticazione. Per poter visualizzare la _dashboard_ l'amministratore deve quindi autenticarsi con le proprie credenziali.],
  [#link(<uc4>)[UC4]\ Riunioni esterne],

  [ROF-3],
  [L'amministratore, per poter accedere alla _dashboard_, deve fornire l'indirizzo _e-mail_ dell'_account_ con cui è registrato all'interno del sistema.],
  [#link(<uc5>)[UC5]\ Riunioni interne],

  [ROF-4],
  [L'amministratore, per poter accedere alla _dashboard_, deve fornire la _password_ dell'_account_ con cui è registrato all'interno del sistema.],
  [#link(<uc6>)[UC6]\ Riunioni interne],

  [ROF-5],
  [Se l'amministratore inserisce delle credenziali non valide, come una _e-mail_ o _password_ non valida, il sistema deve ritornare il messaggio di errore "Credenziali errate".],
  [#link(<uc7>)[UC7]\ Riunioni interne],

  [ROF-6],
  [L'amministratore, una volta autenticato, deve poter visualizzare la mappa geografica sulla _dashboard_ del sistema.],
  [#link(<uc8>)[UC8]\ Capitolato],

  [ROF-7],
  [L'amministratore deve poter visualizzare i punti di interesse presenti all'interno del sistema tramite dei _marker_ posizionati all'interno della mappa geografica.],
  [#link(<uc9>)[UC9]\ Capitolato],

  [ROF-8],
  [L'amministratore, per ogni noleggio attivo che viene erogato, deve poter visualizzare il tracciato percorso dal mezzo a noleggio attraverso la mappa geografica.],
  [#link(<uc10>)[UC10]\ Capitolato],

  [ROF-9],
  [L'amministratore deve poter visualizzare un _marker_ sulla mappa in corrispondenza di un dato GPS trasmesso dal sensore nel momento in cui:
    - non è in prossimità di un punto di interesse
    - è già stata richiesta in precedenza per l'utente del mezzo la generazione di un annuncio per lo stesso punto di interesse.],
  [#link(<uc11>)[UC11]\ #link(<uc12>)[UC12]\ Capitolato\ Riunioni esterne],

  [ROF-10],
  [L'amministratore deve poter visualizzare un _marker_ in corrispondenza di una posizione, in prossimità di un punto di interesse, che ha causato la generazione di un annuncio tramite LLM per l'utente del mezzo.],
  [#link(<uc11>)[UC11]\ #link(<uc13>)[UC13]\ Capitolato\ Riunioni esterne],

  [ROF-11],
  [L'amministratore deve poter visualizzare un _marker_ in corrispondenza di una posizione, in prossimità di un punto di interesse, dove la LLM non ha generato un annuncio perché ha valutato l'utente come non interessato al punto di interesse in base alla sua profilazione.],
  [#link(<uc11>)[UC11]\ #link(<uc14>)[UC14]\ Capitolato\ Riunioni esterne],

  [ROF-12],
  [L'amministratore deve poter visualizzare tramite un'interazione con il _marker_ (come un _hover_ o un _click_) le informazioni relative al punto di interesse.],
  [#link(<uc15>)[UC15]\ Capitolato\ Riunioni esterne],

  [ROF-13],
  [L'amministratore deve poter visualizzare dalle informazioni fornite tramite l'interazione con il _marker_ del punto di interesse il nome dello stesso.],
  [#link(<uc15>)[UC15]\ #link(<uc16>)[UC16]\ Riunioni interne\ Riunioni esterne],

  [ROF-14],
  [L'amministratore deve poter visualizzare, dalle informazioni fornite tramite interazione con il _marker_ del punto di interesse, la categoria di esercizio commerciale (e.g. alimentare, sportivo, etc.).],
  [#link(<uc15>)[UC15]\ #link(<uc17>)[UC17]\ Riunioni interne\ Riunioni esterne],

  [ROF-15],
  [L'amministratore deve poter visualizzare le informazioni relative all'annuncio generato tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc18>)[UC18]\ Capitolato\ Riunioni esterne],

  [ROF-16],
  [L'amministratore deve poter visualizzare il nome del punto di interesse legato all'annuncio dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc18>)[UC18]\ #link(<uc19>)[UC19]\ Riunioni interne\ Riunioni esterne],

  [ROF-17],
  [L'amministratore deve poter visualizzare l'_e-mail_ dell'utente destinatario dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc18>)[UC18]\ #link(<uc20>)[UC20]\ Riunioni interne\ Riunioni esterne],

  [ROF-18],
  [L'amministratore deve poter visualizzare la data e l'ora di generazione dell'annuncio dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc18>)[UC18]\ #link(<uc21>)[UC21]\ Riunioni interne\ Riunioni esterne],

  [ROF-19],
  [L'amministratore deve poter visualizzare l'annuncio dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc18>)[UC18]\ #link(<uc22>)[UC22]\ Riunioni esterne],

  [ROF-20],
  [L'amministratore deve poter visualizzare la categoria di esercizio commerciale del punto di interesse coinvolto nella generazione dell'annuncio visualizzato tramite un'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc18>)[UC18]\ #link(<uc23>)[UC23]\ Riunioni interne\ Riunioni esterne],

  [ROF-21],
  [L'amministratore deve poter visualizzare un messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [#link(<uc24>)[UC24]\ Riunioni esterne],

  [ROF-22],
  [L'amministratore deve poter visualizzare il nome del punto di interesse sul messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [#link(<uc24>)[UC24]\ #link(<uc25>)[UC25]\ Riunioni interne\ Riunioni esterne],

  [ROF-23],
  [L'amministratore deve poter visualizzare l'_e-mail_ dell'utente destinatario sul messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [#link(<uc24>)[UC24]\ #link(<uc26>)[UC26]\ Riunioni interne\ Riunioni esterne],

  [ROF-24],
  [L'amministratore deve poter visualizzare la data e ora di tentata generazione sul messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [#link(<uc24>)[UC24]\ #link(<uc27>)[UC27]\ Riunioni interne\ Riunioni esterne],

  [ROF-25],
  [L'amministratore deve poter chiudere la vista con le informazioni sull'annuncio generato visualizzata sulla mappa tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc28>)[UC28]\ Riunioni interne],

  [ROF-26],
  [L'amministratore deve poter chiudere il messaggio di annuncio non generato visualizzato sulla mappa tramite l'interazione con un _marker_ di mancata generazione.],
  [#link(<uc29>)[UC29]\ Riunioni interne],

  [ROF-27],
  [L'amministratore deve essere in grado di interagire con la mappa per spostare il centro della visuale.],
  [#link(<uc30>)[UC30]\ Riunioni interne],

  [ROF-28],
  [L'amministratore deve essere in grado di modificare l'ampiezza della visuale sulla mappa. In particolare bisogna permettere l'ampliamento e il restringimento del campo visivo che l'amministratore ha sul territorio visualizzato all'interno della mappa.],
  [#link(<uc31>)[UC31]\ #link(<uc32>)[UC32]\ #link(<uc33>)[UC33]\ Riunioni interne],

  [ROF-29],
  [L'amministratore deve poter ricevere il messaggio di errore "Il _server_ non risponde" nel caso in cui il sistema non risponda o smetta di funzionare.],
  [#link(<uc55>)[UC55]\ Riunioni interne],

  [ROF-30],
  [L'amministratore deve poter ricevere il messaggio di errore "Connessione persa" nel caso in cui la connessione con il sistema venga persa o sia scarsa.],
  [#link(<uc56>)[UC56]\ Riunioni interne],

  [ROF-31],
  [L'amministratore deve poter ricevere il messaggio di errore "Sensore malfunzionante" nel caso in cui il sensore non sia in grado di trasmettere i dati di localizzazione in maniera corretta o non trasmetta dopo un determinato intervallo di tempo.],
  [#link(<uc57>)[UC57]\ Riunioni interne],

  [ROF-32],
  [L'amministratore deve poter visualizzare il messaggio di errore "Generazione impossibile dell'annuncio" nel caso in cui il sistema non sia in grado di stabilire una connessione e comunicare con il servizio di LLM, non permettendo così la trasmissione e la ricezione di dati da parte di quest'ultimo.],
  [#link(<uc58>)[UC58]\ Riunioni interne],

  [ROF-33],
  [Creazione di un generatore di dati GPS per simulare il funzionamento di un sensore che interagisce col sistema.],
  [Capitolato],

  [ROF-34],
  [Il generatore deve generare dei percorsi che siano realistici, ovvero che seguano le varie strade, vie e piste ciclabili che una bicicletta può percorrere.],
  [Capitolato],
)
=== Requisiti di qualità
#table(
  align: (center, left, center),
  columns: (0.6fr, 3fr, 1fr),
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [ROQ-1],
  [Superamento dei _test_ che dimostrano il corretto funzionamento dei servizi e delle funzionalità, garantendo un _#rifGlossario("code coverage")_ dell'80% o più e correlati da _report_.],
  [Capitolato],

  [ROQ-2],
  [Rispetto delle norme descritte nel documento Norme di Progetto (v2.0.0).],
  [Riunioni interne\ Norme di Progetto],

  [ROQ-3],
  [Rispetto dei vincoli sulle metriche stabiliti nel documento Piano di Qualifica (v2.0.0).],
  [Riunioni interne\ Piano di Qualifica],

  [ROQ-4],
  [Deve essere consegnato un Manuale Utente che illustri le funzionalità del sistema e come utilizzarle.],
  [Capitolato],

  [ROQ-5],
  [Viene richiesta la documentazione riguardante le scelte implementative e progettuali effettuate e le relative motivazioni.], // specifica tecnica
  [Capitolato],

)
=== Requisiti di vincolo
#table(
  align: (center, left, center),
  columns: (0.6fr, 3fr, 1fr),
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),

  // TODO: Aggiungere versioni dei browser
  [ROV-1],
  [Il sistema, essendo accessibile puramente via web, deve garantire la compatibilità con l'ultima versione dei principali browser in commercio: Google Chrome, Mozilla Firefox, Microsoft Edge e Safari.],
  [Riunioni interne],
)
== Requisiti desiderabili
=== Requisiti funzionali
#table(
  align: (center, left, center),
  columns: (0.6fr, 3fr, 1fr),
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [RDF-1],
  [L'amministratore deve essere in grado di accedere alla sezione dedicata allo storico degli annunci generati all'interno della _dashboard_.],
  [#link(<uc34>)[UC34]\ Riunioni esterne],

  [RDF-2],
  [L'amministratore deve essere in grado di visualizzare lo storico degli annunci generati dal sistema sotto forma di lista oppure di griglia a seconda delle preferenze dell'amministratore stesso.],
  [#link(<uc35>)[UC35]\ #link(<uc36>)[UC36]\ #link(<uc37>)[UC37]\ Riunioni esterne],

  [RDF-3],
  [L'amministratore deve essere in grado di visualizzare un singolo elemento con le informazioni degli annunci all'interno dello storico.],
  [#link(<uc38>)[UC38]\ Riunioni esterne],

  [RDF-4],
  [L'amministratore deve essere in grado di visualizzare il nome del punto di interesse di ogni singolo elemento presente all'interno dello storico.],
  [#link(<uc39>)[UC39]\ Riunioni esterne],

  [RDF-5],
  [L'amministratore deve essere in grado di visualizzare l'_e-mail_ dell'utente destinatario di ogni singolo elemento all'interno dello storico.],
  [#link(<uc40>)[UC40]\ Riunioni esterne],

  [RDF-6],
  [L'amministratore deve essere in grado di visualizzare data e ora relativi al tentativo di generazione di ogni singolo elemento all'interno dello storico.],
  [#link(<uc41>)[UC41]\ Riunioni esterne],

  [RDF-7],
  [L'amministratore deve essere in grado di visualizzare la _flag_ riguardo allo stato di attività del noleggio a cui è destinato l'annuncio per ogni singolo elemento all'interno dello storico.],
  [#link(<uc42>)[UC42]\ Riunioni esterne],

  [RDF-8],
  [L'amministratore deve essere in grado di poter visualizzare i dettagli di un singolo elemento all'interno dello storico.],
  [#link(<uc43>)[UC43]\ Riunioni esterne],

  [RDF-9],
  [L'amministratore deve essere in grado di visualizzare il nome del punto di interesse relativo ad un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc43>)[UC43]\ #link(<uc44>)[UC44]\ Riunioni esterne],

  [RDF-10],
  [L'amministratore deve essere in grado di visualizzare l'_e-mail_ dell'utente destinatario di un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc43>)[UC43]\ #link(<uc45>)[UC45]\ Riunioni esterne],

  [RDF-11],
  [L'amministratore deve essere in grado di visualizzare data e ora del tentativo di generazione di un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc43>)[UC43]\ #link(<uc46>)[UC46]\ Riunioni esterne],

  [RDF-12],
  [L'amministratore deve essere in grado di visualizzare una _flag_ che segnala lo stato di attività del noleggio a cui è destinato un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc43>)[UC43]\ #link(<uc47>)[UC47]\ Riunioni esterne],

  [RDF-13],
  [L'amministratore deve essere in grado di visualizzare il corpo dell'annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc43>)[UC43]\ #link(<uc48>)[UC48]\ Riunioni esterne],

  [RDF-14],
  [L'amministratore deve essere in grado di visualizzare la categoria del punto di interesse collegato all'annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc43>)[UC43]\ #link(<uc49>)[UC49]\ Riunioni esterne],

  [RDF-15],
  [L'amministratore deve essere in grado di chiudere la vista di visualizzazione dei dettagli di un singolo annuncio.],
  [#link(<uc50>)[UC50]\ Riunioni esterne],

  [RDF-16],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico per _e-mail_ dell'utente destinatario dell'annuncio.],
  [#link(<uc51>)[UC51]\ Riunioni esterne],

  [RDF-17],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico per nome del punto di interesse.],
  [#link(<uc52>)[UC52]\ Riunioni esterne],

  [RDF-18],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico generati in un certo intervallo di date.],
  [#link(<uc53>)[UC53]\ Riunioni esterne],

  [RDF-19],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico generati in una determinata fascia oraria.],
  [#link(<uc54>)[UC54]\ Riunioni esterne],
)
== Requisiti facoltativi
=== Requisiti funzionali
#table(
  align: (center, left, center),
  columns: (0.6fr, 3fr, 1fr),
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [RFF-1],
  [L'amministratore deve poter visualizzare la sezione dedicata ai grafici all'interno della _dashboard_ del sistema.],
  [#link(<uc59>)[UC59]\ Riunioni esterne],

  [RFF-2],
  [L'amministratore deve poter visualizzare un singolo grafico relativo ad una particolare analisi dati.],
  [#link(<uc60>)[UC60]\ Riunioni esterne],

  [RFF-3],
  [L'amministratore deve poter visualizzare il titolo di uno specifico grafico a seconda dell'analisi dati che viene rappresentata.],
  [#link(<uc61>)[UC61]\ Riunioni esterne],

  [RFF-4],
  [L'amministratore deve poter visualizzare in uno specifico grafico un'etichetta relativa alla tipologia di misura rappresentata sulle assi delle ascisse e delle ordinate e, infine, i relativi valori.],
  [#link(<uc62>)[UC62]\ #link(<uc63>)[UC63]\ Riunioni esterne],

  [RFF-5],
  [L'amministratore deve poter visualizzare, all'interno di ciascun grafico, la rappresentazione dello specifico _set_ di dati previsti per quel grafico.],
  [#link(<uc64>)[UC64]\ Riunioni esterne],

  [RFF-6],
  [L'amministratore deve poter visualizzare un grafico che mostri il numero di annunci generati dal sistema nelle ultime 24 ore, con granularità oraria.],
  [#link(<uc65>)[UC65]\ Riunioni esterne],

  [RFF-7],
  [L'amministratore deve poter visualizzare un grafico raffigurante il numero medio di noleggi che vengono effettuati in ciascun mese dell'anno, risultato della media di noleggi effettuati in quel mese nel corso degli anni.],
  [#link(<uc66>)[UC66]\ Riunioni esterne],

  [RFF-8],
  [L'amministratore, dalla sezione dedicata ai grafici, deve poter selezionare uno specifico punto di interesse per poter poi visualizzare i grafici delle statistiche ad esso correlate.],
  [#link(<uc68>)[UC68]\ Riunioni esterne],

  [RFF-9],
  [L'amministratore deve poter visualizzare un grafico che mette a confronto il numero di annunci generati con il numero di annunci non generati per un certo punto di interesse nell'ultima settimana.],
  [#link(<uc67>)[UC67]\ Riunioni esterne],

  [RFF-10],
  [Viene richiesta la creazione di uno strumento di visualizzazione degli annunci in tempo reale per l'utente utilizzatore del servizio.],
  [Capitolato],
)
== Tracciamento
=== Fonte - Requisito
#align(
  center,
  table(
    align: center + horizon,
    columns: (200pt, 200pt),
    table.header([*Fonte*], [*Requisito*]),
    [UC1], [ROF-1],
    [UC2], [ROF-1],
    [UC3], [ROF-1],
    [UC4], [ROF-2],
    [UC5], [ROF-3],
    [UC6], [ROF-4],
    [UC7], [ROF-5],
    [UC8], [ROF-8],
    [UC9], [ROF-7],
    [UC10], [ROF-8],
    [UC11], [ROF-9, ROF-10, ROF-11],
    [UC12], [ROF-9],
    [UC13], [ROF-10],
    [UC14], [ROF-11],
    [UC15], [ROF-12, ROF-13, ROF-14],
    [UC16], [ROF-13],
    [UC17], [ROF-14],
    [UC18], [ROF-15, ROF-16, ROF-17, ROF-18, ROF-19, ROF-20],
    [UC19], [ROF-16],
    [UC20], [ROF-17],
    [UC21], [ROF-18],
    [UC22], [ROF-19],
    [UC23], [ROF-20],
    [UC24], [ROF-21, ROF-22, ROF-23, ROF-24],
    [UC25], [ROF-22],
    [UC26], [ROF-23],
    [UC27], [ROF-24],
    [UC28], [ROF-25],
    [UC29], [ROF-26],
    [UC30], [ROF-27],
    [UC31], [ROF-28],
    [UC32], [ROF-28],
    [UC33], [ROF-28],
    [UC34], [RDF-1],
    [UC35], [RDF-2],
    [UC36], [RDF-2],
    [UC37], [RDF-2],
    [UC38], [RDF-3],
    [UC39], [RDF-4],
    [UC40], [RDF-5],
    [UC41], [RDF-6],
    [UC42], [RDF-7],
    [UC43], [RDF-8, RDF-9, RDF-10, RDF-11, RDF-12, RDF-13, RDF-14],
    [UC44], [RDF-9],
    [UC45], [RDF-10],
    [UC46], [RDF-11],
    [UC47], [RDF-12],
    [UC48], [RDF-13],
    [UC49], [RDF-14],
    [UC50], [RDF-15],
    [UC51], [RDF-16],
    [UC52], [RDF-17],
    [UC53], [RDF-18],
    [UC54], [RDF-19],
    [UC55], [ROF-29],
    [UC56], [ROF-30],
    [UC57], [ROF-31],
    [UC58], [ROF-32],
    [UC59], [RFF-1],
    [UC60], [RFF-2],
    [UC61], [RFF-3],
    [UC62], [RFF-4],
    [UC63], [RFF-4],
    [UC64], [RFF-5],
    [UC65], [RFF-6],
    [UC66], [RFF-7],
    [UC67], [RFF-9],
    [UC68], [RFF-8],
    [Riunioni esterne], [ROF-2, ROF-9, ROF-10, ROF-11, ROF-12, ROF-13, ROF-14, ROF-15, ROF-16, ROF-17, ROF-18, ROF-19, ROF-20, ROF-21, ROF-22, ROF-23, ROF-24, RDF-1, RDF-2, RDF-3, RDF-4, RDF-5, RDF-6, RDF-7, RDF-8, RDF-9, RDF-10, RDF-11, RDF-12, RDF-13, RDF-14, RDF-15, RDF-16, RDF-17, RDF-18, RDF-19, RFF-1, RFF-2, RFF-3, RFF-4, RFF-5, RFF-6, RFF-7, RFF-8, RFF-9],
    [Riunioni interne], [ROF-3, ROF-4, ROF-5, ROF-13, ROF-14, ROF-16, ROF-17, ROF-18, ROF-20, ROF-22, ROF-23, ROF-24, ROF-25, ROF-26, ROF-27, ROF-28, ROF-29, ROF-30, ROF-31, ROF-32, ROQ-2, ROQ-3, ROV-1],
    [Capitolato], [ROF-1, ROF-6, ROF-7, ROF-8, ROF-9, ROF-10, ROF-11, ROF-12, ROF-15, ROF-33, ROF-34, ROQ-1, ROQ-4, ROQ-5, RFF-10],
    [Norme di Progetto], [ROQ-2],
    [Piano di Qualifica], [ROQ-3],
  )
)

== Riepilogo
#table(
  align: (left, left, left, left, left),
  columns: (1.3fr, 1fr, 1fr, 1fr, 1fr),
  table.header([*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*], [*Totale*]),
  [Funzionali], [34], [19], [10], [63],
  [Qualità], [5], [0], [0], [5],
  [Vincolo], [1], [0], [0], [1],
  [*Totale*], [40], [19], [10], [*69*],
)
