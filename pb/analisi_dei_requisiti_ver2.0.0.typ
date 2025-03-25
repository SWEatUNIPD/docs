#import "/templates/template.typ": *

#show: content => verbale(
  data: "24 marzo 2025",
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
    "2.0.0",
    [24/03/2025],
    "Andrea Perozzo",
    "Davide Martinelli",
    [
      - Rimozione dei caso d'uso relativi al _marker_ GPS e messaggi di errore
      - Rinumerati i casi d'uso e i requisiti
    ],
    "1.2.0",
    [22/03/2025],
    "Andrea Perozzo",
    "Andrea Precoma\nDavide Martinelli",
    [
      - Rimozione dei caso d'uso relativi alla _flag_ di noleggio attivo
      - Rinumerati i casi d'uso e i requisiti
    ],
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
- Norme di Progetto (v2.0.0)\ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/norme_di_progetto_ver2.0.0.pdf")
- Regolamento del progetto didattico\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")\ (ultimo accesso in data 24/03/2025)
- Capitolato C4 (Sync Lab)\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")\ (ultimo accesso in data 24/03/2025)

=== Riferimenti informativi
- Glossario (v2.0.0)\ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/glossario_ver2.0.0.pdf")
- T5 - Analisi dei Requisiti\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")\ (ultimo accesso in data 24/03/2025)
- P2 - I Diagrammi dei Casi d'Uso\ #formatLink(url: "https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")\ (ultimo accesso in data 24/03/2025)
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
  - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza della generazione di un annuncio (#link(<uc12>)[UC12]).
  - Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza della mancata generazione di un annuncio (#link(<uc13>)[UC13]).

=== UC12 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza della generazione di un annuncio <uc12>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema memorizza gli annunci generati e le relative informazioni.
  - L'amministratore si trova nella _dashboard_ di visualizzazione della mappa.
- *Postcondizioni*:
  - Il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui è stato generato un annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali è stato generato un annuncio.


=== UC13 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza della mancata generazione di un annuncio <uc13>
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
  image("../assets/use_cases/pb/UC11-12-13.png"),
  caption: [Diagramma dei caso d'uso UC11, UC12, UC13],
)

#pagebreak()


=== UC14 - Visualizzazione informazioni punto di interesse tramite marker sulla mappa <uc14>
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
  - Visualizzazione nome del punto di interesse dal _marker_ del punto di interesse (#link(<uc15>)[UC15]).
  - Visualizzazione categoria del punto di interesse dal _marker_ del punto di interesse (#link(<uc16>)[UC16]).

=== UC15 - Visualizzazione nome del punto di interesse dal marker del punto di interesse <uc15>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - Il sistema sta esponendo la _dashboard_ con la mappa e l'amministratore ha interagito col _marker_ del punto di interesse.
- *Postcondizioni*:
  - Il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC16 - Visualizzazione categoria del punto di interesse dal marker del punto di interesse <uc16>
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
  image("../assets/use_cases/pb/UC14-15-16.png"),
  caption: [Diagramma dei caso d'uso UC14, UC15, UC16],
)


#pagebreak()

=== UC17 - Visualizzazione informazioni dell'annuncio tramite marker sulla mappa <uc17>
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
  - Visualizzazione nome del punto di interesse dell'annuncio aperto dal _marker_ (#link(<uc18>)[UC18]).
  - Visualizzazione _e-mail_ dell'utente dell'annuncio aperto dal _marker_ (#link(<uc19>)[UC19]).
  - Visualizzazione data e ora di generazione annuncio aperto dal _marker_ (#link(<uc20>)[UC20]).
  - Visualizzazione dell'annuncio aperto dal _marker_ (#link(<uc21>)[UC21]).
  - Visualizzazione categoria del punto di interesse dell'annuncio aperto dal _marker_ (#link(<uc22>)[UC22]).

=== UC18 - Visualizzazione nome del punto di interesse dell'annuncio aperto dal marker <uc18>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*:
  - Il sistema espone il nome del punto di interesse dell'annuncio aperto dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse dell'annuncio aperto dal _marker_.

=== UC19 - Visualizzazione e-mail dell'utente dell'annuncio aperto dal marker <uc19>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*:
  - Il sistema espone l'_e-mail_ dell'utente dell'annuncio aperto dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente destinatario dell'annuncio aperto dal _marker_.

=== UC20 - Visualizzazione data e ora di generazione annuncio aperto dal marker <uc20>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*:
  - Il sistema espone la data e l'ora di tentativo di generazione dell'annuncio aperto dal _marker_.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio aperto dal _marker_.

=== UC21 - Visualizzazione dell'annuncio aperto dal marker <uc21>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia degli annunci generati.
  - L'amministratore sta visualizzando le informazioni dell'annuncio aperto dal _marker_.
- *Postcondizioni*:
  - Il sistema espone l'annuncio aperto dal _marker_ per intero.
- *Scenario principale*:
  + L'amministratore visualizza interamente l'annuncio generato aperto dal _marker_.

=== UC22 - Visualizzazione categoria del punto di interesse dell'annuncio aperto dal marker <uc22>
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
  image("../assets/use_cases/pb/UC17-18-19-20-21-22.png"),
  caption: [Diagramma dei caso d'uso UC17, UC18, UC19, UC20, UC21, UC22],
)


#pagebreak()

=== UC23 - Visualizzazione messaggio annuncio non generato tramite marker sulla mappa <uc23>
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
  - Visualizzazione nome del punto di interesse nel messaggio di tentativo di generazione annuncio aperto dal _marker_ (#link(<uc24>)[UC24]).
  - VVisualizzazione _e-mail_ dell'utente nel messaggio di tentativo di generazione annuncio aperto dal _marker_ (#link(<uc25>)[UC25]).
  - Visualizzazione data e ora di tentata generazione annuncio nel messaggio di tentativo di generazione annuncio aperto dal _marker_ (#link(<uc26>)[UC26]).

=== UC24 - Visualizzazione nome del punto di interesse nel messaggio di tentativo di generazione annuncio aperto dal marker <uc24>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando il messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Postcondizioni*:
  - Il sistema espone il nome del punto di interesse.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC25 - Visualizzazione _e-mail_ dell'utente nel messaggio di tentativo di generazione annuncio aperto dal marker <uc25>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando il messaggio di tentativo di generazione annuncio nella vista aperta dal _marker_.
- *Postcondizioni*:
  - Il sistema espone l'_e-mail_ dell'utente.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente.

=== UC26 - Visualizzazione data e ora di tentata generazione annuncio nel messaggio di tentativo di generazione annuncio aperto dal marker <uc26>
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
  image("../assets/use_cases/pb/UC23-24-25-26.png"),
  caption: [Diagramma dei caso d'uso UC23, UC24, UC25, UC26],
)

#pagebreak()


=== UC27 - Chiusura vista delle informazioni dell'annuncio visualizzate tramite marker sulla mappa <uc27>
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
  image("../assets/use_cases/pb/UC27.png"),
  caption: [Diagramma del caso d'uso UC27],
)
#pagebreak()

=== UC28 - Chiusura messaggio annuncio non generato visualizzato tramite marker sulla mappa <uc28>
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
  image("../assets/use_cases/pb/UC28.png"),
  caption: [Diagramma del caso d'uso UC28],
)

#pagebreak()

=== UC29 - Spostamento della visuale sulla mappa <uc29>
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
  image("../assets/use_cases/pb/UC29.png"),
  caption: [Diagramma del caso d'uso UC29],
)

#pagebreak()

=== UC30 - Modifica ampiezza della visuale sulla mappa <uc30>
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
  - Ampliamento della visuale sulla mappa (#link(<uc31>)[UC31])).
  - Restringimento della visuale sulla mappa (#link(<uc32>)[UC32])).

=== UC31 - Ampliamento della visuale sulla mappa <uc31>
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

=== UC32 - Restringimento della visuale sulla mappa <uc32>
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
  image("../assets/use_cases/pb/UC30-31-32.png"),
  caption: [Diagramma dei casi d'uso UC30, UC31 e UC32],
)

#pagebreak()

=== UC33 - Visualizzazione sezione storico annunci <uc33>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore.
- *Postcondizioni*:
  - Il sistema espone la sezione dedicata alla visualizzazione dello storico annunci e al relativo filtraggio degli stessi.
- *Scenario principale*:
  + L'amministratore accede alla sezione dello storico annunci.
  + L'amministratore visualizza lo storico degli annunci generati e ha accesso alle opzioni di filtraggio degli stessi.
- *Inclusioni*:
  - Visualizzazione storico degli annunci (#link(<uc34>)[UC34]).

=== UC34 - Visualizzazione storico degli annunci <uc34>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore.
  - L'amministratore si trova nella sezione dello storico annunci.
- *Postcondizioni*:
  - Il sistema espone gli annunci generati fino a quel momento.
- *Scenario principale*:
  + Il sistema espone un insieme di annunci mostrando, per ognuno di essi, una _preview_ con le informazioni principali (UC37).
- *Generalizzazioni*:
  - Visualizzazione storico annunci in lista (#link(<uc35>)[UC35]).
  - Visualizzazione storico annunci in griglia (#link(<uc36>)[UC36]).
- *Inclusioni*:
  - Visualizzazione elemento nello storico (#link(<uc37>)[UC37]).

=== UC35 - Visualizzazione storico annunci in lista <uc35>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema espone gli annunci generati fino a quel momento.
  - L'amministratore ha selezionato l'opzione per visualizzare gli annunci sotto forma di lista.
- *Postcondizioni*:
  - Gli annunci vengono mostrati nella _dashboard_ all'amministratore sotto forma di lista.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore seleziona l'opzione per visualizzare gli annunci in lista.

=== UC36 - Visualizzazione storico annunci in griglia <uc36>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema espone gli annunci generati fino a quel momento.
  - L'amministratore ha selezionato l'opzione per visualizzare gli annunci sotto forma di griglia.
- *Postcondizioni*:
  - Gli annunci vengono mostrati nella _dashboard_ all'amministratore sotto forma di griglia.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore seleziona l'opzione per visualizzare gli annunci in griglia.

=== UC37 - Visualizzazione elemento nello storico <uc37>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia delle informazioni principali degli annunci generati per gli utenti dell'amministratore.
  - L'amministratore sta visualizzando lo storico degli annunci.
- *Postcondizioni*:
  - Il sistema espone le informazioni principali relative al singolo elemento nello storico.
- *Scenario principale*:
  + L'amministratore visualizza un elemento contenente le informazioni principali di un annuncio.
- *Inclusioni*:
  - Visualizzazione nome del punto di interesse dall'elemento nello storico (#link(<uc38>)[UC38]).
  - Visualizzazione _e-mail_ dell'utente dall'elemento nello storico (#link(<uc39>)[UC39]).
  - Visualizzazione data e ora di tentativo di generazione annuncio dall'elemento nello storico (#link(<uc40>)[UC40]).
#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC33-34-35-36-37.png"),
  caption: [Diagramma dei casi d'uso UC33, UC34, UC35, UC36, UC37],
)
#pagebreak()
=== UC38 - Visualizzazione nome del punto di interesse dall'elemento nello storico <uc38>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando un elemento nello storico.
- *Postcondizioni*:
  - Il sistema espone il nome del punto di interesse dell'annuncio nell'elemento dello storico.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse dell'annuncio nell'elemento dello storico.

=== UC39 - Visualizzazione e-mail dell'utente dall'elemento nello storico <uc39>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando un elemento nello storico.
- *Postcondizioni*:
  - Il sistema espone l'_e-mail_ dell'utente destinatario dell'annuncio nell'elemento dello storico.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente destinatario dell'annuncio nell'elemento dello storico.

=== UC40 - Visualizzazione data e ora di tentativo di generazione annuncio dall'elemento nello storico <uc40>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  - L'amministratore sta visualizzando un elemento nello storico.
- *Postcondizioni*:
  - Il sistema espone la data e l'ora di tentativo di generazione dell'annuncio nell'elemento dello storico.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione dell'annuncio nell'elemento dello storico.

#v(20pt)
#figure(
  image("../assets/use_cases/pb/UC37-38-39-40.png"),
  caption: [Diagramma dei casi d'uso UC37, UC38, UC39, UC40 (continuazione di Figura 14)],
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
  - Visualizzazione nome del punto di interesse dai dettagli aperti dall'elemento nello storico (#link(<uc42>)[UC42]).
  - Visualizzazione _e-mail_ dell'utente dai dettagli aperti dall'elemento nello storico (#link(<uc43>)[UC43]).
  - Visualizzazione data e ora di tentativo di generazione annuncio dai dettagli aperti dall'elemento nello storico (#link(<uc44>)[UC44]).
  - Visualizzazione dell'annuncio dai dettagli aperti dall'elemento nello storico (#link(<uc45>)[UC45]).
  - Visualizzazione categoria del punto di interesse collegato all'annuncio dai dettagli aperti dall'elemento nello storico (#link(<uc46>)[UC46]).

=== UC42 - Visualizzazione nome del punto di interesse dai dettagli aperti dall'elemento nello storico <uc42>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del nome di ciascun punto di interesse.
  - L'amministratore sta visualizzando il dettaglio di un singolo elemento aperto nello storico.
- *Postcondizioni*:
  - Il sistema espone il nome del punto di interesse nei dettagli di un elemento aperto nello storico.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse nei dettagli di un elemento aperto nello storico.

=== UC43 - Visualizzazione e-mail dell'utente dai dettagli aperti dall'elemento nello storico <uc43>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dell'_e-mail_ di ciascun utente.
  - L'amministratore sta visualizzando il dettaglio di un singolo elemento aperto nello storico.
- *Postcondizioni*:
  - Il sistema espone l'_e-mail_ dell'utente nei dettagli di un elemento aperto nello storico.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente nei dettagli di un elemento aperto nello storico.

=== UC44 - Visualizzazione data e ora di tentativo di generazione annuncio dai dettagli aperti dall'elemento nello storico <uc44>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia della data e dell'ora nelle quali il sistema ha richiesto di generare un annuncio.
  - L'amministratore sta visualizzando il dettaglio di un singolo elemento aperto nello storico.
- *Postcondizioni*:
  - Il sistema espone la data e l'ora di tentativo di generazione annuncio nei dettagli di un elemento aperto nello storico.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di tentativo di generazione annuncio nei dettagli di un elemento aperto nello storico.

=== UC45 - Visualizzazione dell'annuncio dai dettagli aperti dall'elemento nello storico <uc45>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia degli annunci generati.
  - L'amministratore sta visualizzando il dettaglio di un singolo elemento aperto nello storico.
- *Postcondizioni*:
  - Il sistema espone l'annuncio aperto dall'elemento nello storico.
- *Scenario principale*:
  + L'amministratore visualizza interamente l'annuncio generato aperto dall'elemento nello storico.

=== UC46 - Visualizzazione categoria del punto di interesse collegato all'annuncio dai dettagli aperti dall'elemento nello storico <uc46>
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
  image("../assets/use_cases/pb/UC41-42-43-44-45-46.png"),
  caption: [Diagramma dei casi d'uso UC41, UC42, UC43, UC44, UC45, UC46],
)

#pagebreak()

=== UC47 - Chiusura della vista di visualizzazione dettagli di un singolo elemento nello storico <uc47>
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
  image("../assets/use_cases/pb/UC47.png"),
  caption: [Diagramma del caso d'uso UC47],
)

#pagebreak()

=== UC48 - Ricerca degli annunci nello storico per e-mail utente <uc48>
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
  image("../assets/use_cases/pb/UC48.png"),
  caption: [Diagramma del caso d'uso UC48],
)

#pagebreak()

=== UC49 - Ricerca degli annunci nello storico per nome del punto di interesse <uc49>
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
  image("../assets/use_cases/pb/UC49.png"),
  caption: [Diagramma del caso d'uso UC49],
)

#pagebreak()

=== UC50 - Ricerca degli annunci nello storico per intervallo di date di emissione <uc50>
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
  image("../assets/use_cases/pb/UC50.png"),
  caption: [Diagramma del caso d'uso UC50],
)

#pagebreak()

=== UC51 - Ricerca degli annunci nello storico per fascia oraria di emissione <uc51>
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
  image("../assets/use_cases/pb/UC51.png"),
  caption: [Diagramma del caso d'uso UC51],
)

#pagebreak()

// OPZIONALI

=== UC52 - Visualizzazione sezione grafici <uc52>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema mantiene delle informazioni utili per un'analisi statistica.
- *Postcondizioni*: 
  - Il sistema espone la vista dedicata ai grafici.
- *Scenario principale*:
  + L'amministratore entra nella _dashboard_ con i grafici per le analisi sui dati.
- *Inclusioni*:
  - Visualizzazione singolo grafico (#link(<uc53>)[UC53]).

=== UC53 - Visualizzazione singolo grafico <uc53>
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
  - Visualizzazione titolo del grafico (#link(<uc54>)[UC54]).
  - Visualizzazione etichetta asse delle ascisse e relativi valori (#link(<uc55>)[UC55]).
  - Visualizzazione etichetta asse delle ordinate e relativi valori (#link(<uc56>)[UC56]).
  - Visualizzazione dati sul grafico (#link(<uc57>)[UC57]).
- *Generalizzazioni*:
  - Visualizzazione grafico del numero di annunci generati nelle ultime 24 ore (#link(<uc58>)[UC58]).
  - Visualizzazione grafico del numero medio di noleggi per mese (#link(<uc59>)[UC59]).
  - Visualizzazione grafico del rapporto tra numero di annunci generati e numero di annunci non generati per un certo punto di interesse nell'ultima settimana (#link(<uc60>)[UC60]).

=== UC54 - Visualizzazione titolo del grafico <uc54>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia del titolo del grafico.
  - L'amministratore sta visualizzando un grafico.
- *Postcondizioni*:
  - Il sistema espone il titolo del grafico.
- *Scenario principale*:
  + L'amministratore visualizza il titolo del grafico.

=== UC55 - Visualizzazione etichetta asse delle ascisse e relativi valori <uc55>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia delle etichette dell'asse delle ascisse e dei relativi valori di ciascun grafico.
  - L'amministratore sta visualizzando un grafico.
- *Postcondizioni*:
  - Il sistema espone le etichette dell'asse delle ascisse e dei relativi valori.
- *Scenario principale*:
  + L'amministratore visualizza l'etichetta dell'asse delle ascisse del relativo grafico.
  + L'amministratore visualizza le etichette dei valori segnati sull'asse delle ascisse del relativo grafico.

=== UC56 - Visualizzazione etichetta asse delle ordinate e relativi valori <uc56>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia delle etichette dell'asse delle ordinate e dei relativi valori di ciascun grafico.
  - L'amministratore sta visualizzando un grafico.
- *Postcondizioni*:
  - Il sistema espone le etichette dell'asse delle ordinate e dei relativi valori.
- *Scenario principale*:
  + l'amministratore visualizza l'etichetta dell'asse delle ordinate del relativo grafico.
  + l'amministratore visualizza le etichette dei valori segnati sull'asse delle ordinate del relativo grafico.

=== UC57 - Visualizzazione dati sul grafico <uc57>
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
  image("../assets/use_cases/pb/UC52-53-54-55-56-57.png", width: 90%),
  caption: [Diagramma dei casi d'uso UC52, UC53, UC54, UC55, UC56 e UC57 (inclusioni UC53)],
)

#pagebreak()

=== UC58 - Visualizzazione grafico del numero di annunci generati nelle ultime 24 ore <uc58>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia degli annunci generati.
  - L'amministratore sta visualizzando la sezione dedicata ai grafici.
- *Postcondizioni*:
  - Il sistema espone il grafico con il numero di annunci generati per ciascuna ora nell'arco delle ultime 24 ore.
- *Scenario principale*:
  + L'amministratore visualizza il grafico con il numero di annunci generati per ciascuna ora nelle ultime 24 ore.

=== UC59 - Visualizzazione grafico del numero medio di noleggi per mese <uc59>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia dei noleggi effettuati.
  - L'amministratore sta visualizzando la sezione dedicata ai grafici.
- *Postcondizioni*:
  - Il sistema espone il grafico con il numero medio di noleggi che vengono effettuati in ciascun mese dell'anno.
- *Scenario principale*: 
  + L'amministratore visualizza il grafico che mostra il numero medio di noleggi che vengono effettuati in ciascun mese dell'anno solare.

=== UC60 - Visualizzazione grafico del rapporto tra numero di annunci generati e numero di annunci non generati per un certo punto di interesse nell'ultima settimana <uc60>
- *Attore principale*: Amministratore.
- *Precondizioni*:
  - Il sistema tiene traccia degli annunci generati e non generati per ciascun punto di interesse.
  - L'amministratore sta visualizzando la sezione dedicata ai grafici.
- *Postcondizioni*:
  - Il sistema espone il grafico con il numero di annunci generati e non generati per ciascun punto di interesse nell'ultima settimana.
- *Scenario principale*: 
  + L'amministratore visualizza il grafico che mette a confronto il numero di annunci generati con il numero di annunci non generati per un certo punto di interesse nell'arco dell'ultima settimana.
 
#figure(
  image("../assets/use_cases/pb/UC52-53-58-59-60.png"),
  caption: [Diagramma dei casi d'uso UC52, UC53, UC58, UC59, UC60 (generalizzazioni UC53)],
)
#v(20pt)

=== UC61 - Selezione di un punto di interesse nella sezione grafici <uc61>
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
  image("../assets/use_cases/pb/UC61.png"),
  caption: [Diagramma del caso d'uso UC61],
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
  [L'amministratore deve poter visualizzare un _marker_ in corrispondenza di una posizione, in prossimità di un punto di interesse, che ha causato la generazione di un annuncio tramite LLM per l'utente del mezzo.],
  [#link(<uc11>)[UC11]\ #link(<uc12>)[UC12]\ Capitolato\ Riunioni esterne],

  [ROF-10],
  [L'amministratore deve poter visualizzare un _marker_ in corrispondenza di una posizione, in prossimità di un punto di interesse, dove la LLM non ha generato un annuncio perché ha valutato l'utente come non interessato al punto di interesse in base alla sua profilazione.],
  [#link(<uc11>)[UC11]\ #link(<uc13>)[UC13]\ Capitolato\ Riunioni esterne],

  [ROF-11],
  [L'amministratore deve poter visualizzare tramite un'interazione con il _marker_ (come un _hover_ o un _click_) le informazioni relative al punto di interesse.],
  [#link(<uc14>)[UC14]\ Capitolato\ Riunioni esterne],

  [ROF-12],
  [L'amministratore deve poter visualizzare dalle informazioni fornite tramite l'interazione con il _marker_ del punto di interesse il nome dello stesso.],
  [#link(<uc14>)[UC14]\ #link(<uc15>)[UC15]\ Riunioni interne\ Riunioni esterne],

  [ROF-13],
  [L'amministratore deve poter visualizzare, dalle informazioni fornite tramite interazione con il _marker_ del punto di interesse, la categoria di esercizio commerciale (e.g. alimentare, sportivo, etc.).],
  [#link(<uc14>)[UC14]\ #link(<uc16>)[UC16]\ Riunioni interne\ Riunioni esterne],

  [ROF-14],
  [L'amministratore deve poter visualizzare le informazioni relative all'annuncio generato tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc17>)[UC17]\ Capitolato\ Riunioni esterne],

  [ROF-15],
  [L'amministratore deve poter visualizzare il nome del punto di interesse legato all'annuncio dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc17>)[UC17]\ #link(<uc18>)[UC18]\ Riunioni interne\ Riunioni esterne],

  [ROF-16],
  [L'amministratore deve poter visualizzare l'_e-mail_ dell'utente destinatario dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc17>)[UC17]\ #link(<uc19>)[UC19]\ Riunioni interne\ Riunioni esterne],

  [ROF-17],
  [L'amministratore deve poter visualizzare la data e l'ora di generazione dell'annuncio dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc17>)[UC17]\ #link(<uc20>)[UC20]\ Riunioni interne\ Riunioni esterne],

  [ROF-18],
  [L'amministratore deve poter visualizzare l'annuncio dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc17>)[UC17]\ #link(<uc21>)[UC21]\ Riunioni esterne],

  [ROF-19],
  [L'amministratore deve poter visualizzare la categoria di esercizio commerciale del punto di interesse coinvolto nella generazione dell'annuncio visualizzato tramite un'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc17>)[UC17]\ #link(<uc22>)[UC22]\ Riunioni interne\ Riunioni esterne],

  [ROF-20],
  [L'amministratore deve poter visualizzare un messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [#link(<uc23>)[UC23]\ Riunioni esterne],

  [ROF-21],
  [L'amministratore deve poter visualizzare il nome del punto di interesse sul messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [#link(<uc23>)[UC23]\ #link(<uc24>)[UC24]\ Riunioni interne\ Riunioni esterne],

  [ROF-22],
  [L'amministratore deve poter visualizzare l'_e-mail_ dell'utente destinatario sul messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [#link(<uc23>)[UC23]\ #link(<uc25>)[UC25]\ Riunioni interne\ Riunioni esterne],

  [ROF-23],
  [L'amministratore deve poter visualizzare la data e ora di tentata generazione sul messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [#link(<uc23>)[UC23]\ #link(<uc26>)[UC26]\ Riunioni interne\ Riunioni esterne],

  [ROF-24],
  [L'amministratore deve poter chiudere la vista con le informazioni sull'annuncio generato visualizzata sulla mappa tramite l'interazione con un _marker_ di generazione annuncio.],
  [#link(<uc27>)[UC27]\ Riunioni interne],

  [ROF-25],
  [L'amministratore deve poter chiudere il messaggio di annuncio non generato visualizzato sulla mappa tramite l'interazione con un _marker_ di mancata generazione.],
  [#link(<uc28>)[UC28]\ Riunioni interne],

  [ROF-26],
  [L'amministratore deve essere in grado di interagire con la mappa per spostare il centro della visuale.],
  [#link(<uc29>)[UC29]\ Riunioni interne],

  [ROF-27],
  [L'amministratore deve essere in grado di modificare l'ampiezza della visuale sulla mappa. In particolare bisogna permettere l'ampliamento e il restringimento del campo visivo che l'amministratore ha sul territorio visualizzato all'interno della mappa.],
  [#link(<uc30>)[UC30]\ #link(<uc31>)[UC31]\ #link(<uc32>)[UC32]\ Riunioni interne],

  [ROF-28],
  [Creazione di un generatore di dati GPS per simulare il funzionamento di un sensore che interagisce col sistema.],
  [Capitolato],

  [ROF-29],
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

  [ROV-1],
  [Il sistema, essendo accessibile puramente via web, deve garantire la compatibilità con l'ultima versione dei principali browser in commercio: Google Chrome v134.0.6998.88, Mozilla Firefox v136.0.2, Microsoft Edge v134.0.3124.72 e Safari v18.3.],
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
  [#link(<uc33>)[UC33]\ Riunioni esterne],

  [RDF-2],
  [L'amministratore deve essere in grado di visualizzare lo storico degli annunci generati dal sistema sotto forma di lista oppure di griglia a seconda delle preferenze dell'amministratore stesso.],
  [#link(<uc34>)[UC34]\ #link(<uc35>)[UC35]\ #link(<uc36>)[UC36]\ Riunioni esterne],

  [RDF-3],
  [L'amministratore deve essere in grado di visualizzare un singolo elemento con le informazioni degli annunci all'interno dello storico.],
  [#link(<uc37>)[UC37]\ Riunioni esterne],

  [RDF-4],
  [L'amministratore deve essere in grado di visualizzare il nome del punto di interesse di ogni singolo elemento presente all'interno dello storico.],
  [#link(<uc38>)[UC38]\ Riunioni esterne],

  [RDF-5],
  [L'amministratore deve essere in grado di visualizzare l'_e-mail_ dell'utente destinatario di ogni singolo elemento all'interno dello storico.],
  [#link(<uc39>)[UC39]\ Riunioni esterne],

  [RDF-6],
  [L'amministratore deve essere in grado di visualizzare data e ora relativi al tentativo di generazione di ogni singolo elemento all'interno dello storico.],
  [#link(<uc40>)[UC40]\ Riunioni esterne],

  [RDF-7],
  [L'amministratore deve essere in grado di poter visualizzare i dettagli di un singolo elemento all'interno dello storico.],
  [#link(<uc41>)[UC41]\ Riunioni esterne],

  [RDF-8],
  [L'amministratore deve essere in grado di visualizzare il nome del punto di interesse relativo ad un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc41>)[UC41]\ #link(<uc42>)[UC42]\ Riunioni esterne],

  [RDF-9],
  [L'amministratore deve essere in grado di visualizzare l'_e-mail_ dell'utente destinatario di un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc41>)[UC41]\ #link(<uc43>)[UC43]\ Riunioni esterne],

  [RDF-10],
  [L'amministratore deve essere in grado di visualizzare data e ora del tentativo di generazione di un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc41>)[UC41]\ #link(<uc44>)[UC44]\ Riunioni esterne],

  [RDF-11],
  [L'amministratore deve essere in grado di visualizzare il corpo dell'annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc41>)[UC41]\ #link(<uc45>)[UC45]\ Riunioni esterne],

  [RDF-12],
  [L'amministratore deve essere in grado di visualizzare la categoria del punto di interesse collegato all'annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [#link(<uc41>)[UC41]\ #link(<uc46>)[UC46]\ Riunioni esterne],

  [RDF-13],
  [L'amministratore deve essere in grado di chiudere la vista di visualizzazione dei dettagli di un singolo annuncio.],
  [#link(<uc47>)[UC47]\ Riunioni esterne],

  [RDF-14],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico per _e-mail_ dell'utente destinatario dell'annuncio.],
  [#link(<uc48>)[UC48]\ Riunioni esterne],

  [RDF-15],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico per nome del punto di interesse.],
  [#link(<uc49>)[UC49]\ Riunioni esterne],

  [RDF-16],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico generati in un certo intervallo di date.],
  [#link(<uc50>)[UC50]\ Riunioni esterne],

  [RDF-17],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico generati in una determinata fascia oraria.],
  [#link(<uc51>)[UC51]\ Riunioni esterne],
)
== Requisiti facoltativi
=== Requisiti funzionali
#table(
  align: (center, left, center),
  columns: (0.6fr, 3fr, 1fr),
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [RFF-1],
  [L'amministratore deve poter visualizzare la sezione dedicata ai grafici all'interno della _dashboard_ del sistema.],
  [#link(<uc52>)[UC52]\ Riunioni esterne],

  [RFF-2],
  [L'amministratore deve poter visualizzare un singolo grafico relativo ad una particolare analisi dati.],
  [#link(<uc53>)[UC53]\ Riunioni esterne],

  [RFF-3],
  [L'amministratore deve poter visualizzare il titolo di uno specifico grafico a seconda dell'analisi dati che viene rappresentata.],
  [#link(<uc54>)[UC54]\ Riunioni esterne],

  [RFF-4],
  [L'amministratore deve poter visualizzare in uno specifico grafico un'etichetta relativa alla tipologia di misura rappresentata sulle assi delle ascisse e delle ordinate e, infine, i relativi valori.],
  [#link(<uc55>)[UC55]\ #link(<uc56>)[UC56]\ Riunioni esterne],

  [RFF-5],
  [L'amministratore deve poter visualizzare, all'interno di ciascun grafico, la rappresentazione dello specifico _set_ di dati previsti per quel grafico.],
  [#link(<uc57>)[UC57]\ Riunioni esterne],

  [RFF-6],
  [L'amministratore deve poter visualizzare un grafico che mostri il numero di annunci generati dal sistema nelle ultime 24 ore, con granularità oraria.],
  [#link(<uc58>)[UC58]\ Riunioni esterne],

  [RFF-7],
  [L'amministratore deve poter visualizzare un grafico raffigurante il numero medio di noleggi che vengono effettuati in ciascun mese dell'anno, risultato della media di noleggi effettuati in quel mese nel corso degli anni.],
  [#link(<uc59>)[UC59]\ Riunioni esterne],

  [RFF-8],
  [L'amministratore, dalla sezione dedicata ai grafici, deve poter selezionare uno specifico punto di interesse per poter poi visualizzare i grafici delle statistiche ad esso correlate.],
  [#link(<uc61>)[UC61]\ Riunioni esterne],

  [RFF-9],
  [L'amministratore deve poter visualizzare un grafico che mette a confronto il numero di annunci generati con il numero di annunci non generati per un certo punto di interesse nell'ultima settimana.],
  [#link(<uc60>)[UC60]\ Riunioni esterne],

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
    [UC11], [ROF-9, ROF-10],
    [UC12], [ROF-9],
    [UC13], [ROF-10],
    [UC14], [ROF-11, ROF-12, ROF-13],
    [UC15], [ROF-12],
    [UC16], [ROF-13],
    [UC17], [ROF-14, ROF-15, ROF-16, ROF-17, ROF-18, ROF-19],
    [UC18], [ROF-15],
    [UC19], [ROF-16],
    [UC20], [ROF-17],
    [UC21], [ROF-18],
    [UC22], [ROF-19],
    [UC23], [ROF-20, ROF-21, ROF-22, ROF-23],
    [UC24], [ROF-21],
    [UC25], [ROF-22],
    [UC26], [ROF-23],
    [UC27], [ROF-24],
    [UC28], [ROF-25],
    [UC29], [ROF-26],
    [UC30], [ROF-27],
    [UC31], [ROF-27],
    [UC32], [ROF-27],
    [UC33], [RDF-1],
    [UC34], [RDF-2],
    [UC35], [RDF-2],
    [UC36], [RDF-2],
    [UC37], [RDF-3],
    [UC38], [RDF-4],
    [UC39], [RDF-5],
    [UC40], [RDF-6],
    [UC41], [RDF-7, RDF-8, RDF-9, RDF-10, RDF-12, RDF-11, RDF-12],
    [UC42], [RDF-8],
    [UC43], [RDF-9],
    [UC44], [RDF-10],
    [UC45], [RDF-11],
    [UC46], [RDF-12],
    [UC47], [RDF-13],
    [UC48], [RDF-14],
    [UC49], [RDF-15],
    [UC50], [RDF-16],
    [UC51], [RDF-17],
    [UC52], [RFF-1],
    [UC53], [RFF-2],
    [UC54], [RFF-3],
    [UC55], [RFF-4],
    [UC56], [RFF-4],
    [UC57], [RFF-5],
    [UC58], [RFF-6],
    [UC59], [RFF-7],
    [UC60], [RFF-9],
    [UC61], [RFF-8],
    [Riunioni esterne], [ROF-2, ROF-9, ROF-10, ROF-11, ROF-12, ROF-13, ROF-14, ROF-15, ROF-16, ROF-17, ROF-18, ROF-19, ROF-20, ROF-21, ROF-22, ROF-23, RDF-1, RDF-2, RDF-3, RDF-4, RDF-5, RDF-6, RDF-7, RDF-8, RDF-9, RDF-10, RDF-11, RDF-12, RDF-13, RDF-14, RDF-15, RDF-16, RDF-17, RFF-1, RFF-2, RFF-3, RFF-4, RFF-5, RFF-6, RFF-7, RFF-8, RFF-9],
    [Riunioni interne], [ROF-3, ROF-4, ROF-5, ROF-12, ROF-13, ROF-15, ROF-16, ROF-17, ROF-19, ROF-21, ROF-22, ROF-23, ROF-24, ROF-25, ROF-26, ROF-27, ROQ-2, ROQ-3, ROV-1],
    [Capitolato], [ROF-1, ROF-6, ROF-7, ROF-8, ROF-9, ROF-10, ROF-11, ROF-14, ROF-28, ROF-29, ROQ-1, ROQ-4, ROQ-5, RFF-10],
    [Norme di Progetto], [ROQ-2],
    [Piano di Qualifica], [ROQ-3],
  )
)

== Riepilogo
#table(
  align: (left, left, left, left, left),
  columns: (1.3fr, 1fr, 1fr, 1fr, 1fr),
  table.header([*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*], [*Totale*]),
  [Funzionali], [29], [17], [10], [56],
  [Qualità], [5], [0], [0], [5],
  [Vincolo], [1], [0], [0], [1],
  [*Totale*], [35], [17], [10], [*62*],
)
