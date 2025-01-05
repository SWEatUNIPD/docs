#import "/templates/template.typ": *

#show: content => verbale(
  data: "25 novembre 2024",
  destinatari: ("Gruppo SWE@", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.L."),
  responsabile: "-",
  redattori: ("Andrea Perozzo", "Andrea Precoma","Davide Marin", "Davide Martinelli", "Klaudio Merja", "Riccardo Milan"),
  verificatori: ("Andrea Precoma", "Davide Marin", "Davide Picello", "Klaudio Merja", "Riccardo Milan"),
  titolo: "Analisi dei Requisiti",
  uso: "Esterno",
  versioni: (
    "0.4.0",
    [05/01/2025],
    "Andrea Perozzo\nAndrea Precoma",
    "Davide Marin\nKlaudio Merja",
    [
      - Aggiunti casi d'uso relativi alla mappa, agli anunci e ai grafici
      - Sistemati i primi casi d'uso
      - Aggiunti casi d'uso relativi alle interazioni con la mappa
    ],
    "0.3.0",
    [10/12/2024],
    "Davide Marin\nKlaudio Merja",
    "Andrea Precoma\nRiccardo Milan",
    [
      - Aggiunta di nuovi casi d'uso relativi all'autenticazione alla _dashboard_, alla prossimità dell'utente ad un punto di interesse e alla generazione degli annunci pubblicitari tramite la LLM
    ],
    "0.3.0",
    [05/12/2024],
    "Davide Marin\nKlaudio Merja",
    "Andrea Precoma\nRiccardo Milan",
    [
      - Modifica di stile per quanto riguarda la sintassi delle frasi
      - Modifica dei casi d'uso a seguito di una riunione con Sync Lab S.r.L.
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
- *Utente*: utente che utilizza il servizio di noleggio e che ha accesso solo alla funzionalità di visualizzazione degli annunci pubblicitari. //FIXME: da rivedere per quanto riguarda i voleri di Sync Lab

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
// - *Utente*: utente che utilizza il servizio di noleggio.
// - *Utente non autenticato*: un qualsiasi individuo che intende accedere al sistema, sia esso un utente inteso come utilizzatore del servizio di noleggio o un amministratore.
- *Amministratore non autenticato*: gestore di un servizio di noleggio non autenticato al sistema.
- *Sensore*: strumento attraverso il quale il mezzo noleggiato da uno specifico utente trasmette la sua posizione in tempo reale.
- *#rifGlossario("LLM")*: servizio esterno che si occupa della generazione degli annunci pubblicitari personalizzati tramite #rifGlossario("prompt") fornito dal sistema.

== Elenco dei casi d'uso

=== UC1 - Trasmissione dei dati di localizzazione

- *Attore principale*: Sensore.
- *Precondizioni*: il sistema monitora i sensori sui mezzi con un noleggio attivo. In particolare mantiene l'informazione riguardo l'ultima posizione #rifGlossario("GPS") inviata dal sensore.
- *Postcondizioni*: il sistema riceve l'informazione riguardo la posizione GPS del sensore in quel momento.
// - *Precondizioni*: il mezzo in cui è installato il sensore ha un noleggio attivo.
// - *Postcondizioni*: il sistema riceve i dati di localizzazione GPS del mezzo in uso dall'utente.
- *Trigger*: il sensore intende notificare al sistema la localizzazione GPS del mezzo sul quale è installato.
- *Scenario principale*:
  + L'utente noleggia un mezzo.
  + Il sensore invia a intervalli di tempo regolari i dati di localizzazione GPS del mezzo.
// - *Inclusioni*:
//   + Controllo della posizione in prossimità di un punto di interesse (#link(<uc2>)[UC2]).

// === UC2 - Controllo della posizione in prossimità di un punto di interesse <uc2>
// - *Attore principale*: Sensore.
// - *Precondizioni*: il sensore ha inviato dei dati di localizzazione.
// - *Postcondizioni*: il sensore si trova in prossimità di un punto di interesse.
// - *Trigger*: il sensore invia al sistema la localizzazione GPS del mezzo.
// - *Scenario principale*:
//   + Il sensore invia al sistema la localizzazione GPS del mezzo.
//   + Il sistema verifica che il sensore sia in prossimità di un punto di interesse.
// - *Estensione*:
//   + Il sensore non è in prossimità di un punto di interesse (#link(<uc3>)[UC3]).

// === UC3 - Il sensore non è in prossimità di un punto di interesse<uc3>
// //TODO: https://github.com/SWEatUNIPD/docs/pull/67#discussion_r1882217372
// - *Attore principale*: Sensore.
// - *Precondizioni*: il sensore ha inviato dei dati di localizzazione.
// - *Postcondizioni*: il sistema verifica che il sensore non si trova in prossimità di un punto di interesse.
// - *Trigger*: il sensore invia al sistema la localizzazione GPS del mezzo.
// - *Scenario principale*:
//   + Il sensore invia al sistema la localizzazione GPS del mezzo.
//   + Il sistema verifica che il sensore non è in prossimità di un punto di interesse.
// #v(20pt)
// #figure(image("../assets/use_cases/UC1-2-3.svg"), caption: [Diagramma dei casi d'uso UC1, UC2 e UC3])
#v(20pt)
#figure(image("../assets/use_cases/UC1.png"), caption: [Diagramma del caso d'uso UC1])

#pagebreak()

// === UC4 - Invio richiesta di annuncio personalizzato alla LLM
// // È il sistema che invia la richiesta, non il sensore
// - *Attore principale*: Sensore.
// - *Attore secondario*: LLM.
// - *Precondizioni*: il sensore si trova in prossimità di un punto di interesse.
// - *Postcondizioni*: il sistema ha inviato alla LLM la richiesta per la generazione di un annuncio personalizzato.
// - *Trigger*: il sensore si trova in prossimità di un punto di interesse.
// - *Scenario principale*:
//   + Il sensore si trova in prossimità di un punto di interesse.
//   + Il sistema invia alla LLM una richiesta di annuncio personalizzato in caso la profilazione dell'utente risulti idonea al punto di interesse.
// #v(20pt)
// #figure(image("../assets/use_cases/UC4.svg", width: 90%), caption: [Diagramma del caso d'uso UC4])
// #pagebreak()

// TODO: è implicito in "visualizzazione annuncio", LLM attore secondario
// === UC5 - Invio dell'annuncio pubblicitario generato
// - *Attore principale*: LLM.
// - *Precondizioni*: la LLM deve aver ricevuto dal sistema il _prompt_ di generazione dell'annuncio, come la profilazione dell'utente e il punto di interesse per cui si vuole generare l'annuncio.
// - *Postcondizioni*: il sistema riceve l'annuncio pubblicitario generato dalla LLM.
// - *Trigger*: il sistema ha fatto una richiesta di generazione tramite le #rifGlossario("API") della LLM.
// - *Scenario principale*:
//   + La LLM riceve la richiesta da parte del sistema
//   + La LLM genera l'annuncio pubblicitario basandosi sui dati ricevuti come _prompt_.
//   + La LLM invia l'annuncio pubblicitario generato al sistema.
// - *Estensione*: Annuncio pubblicitario non generato (#link(<uc6>)[UC6]).

// === UC6 - Annuncio pubblicitario non generato <uc6>
// //TODO: https://github.com/SWEatUNIPD/docs/pull/67#discussion_r1882335589
// - *Attore principale*: LLM
// - *Precondizioni*: La LLM considera il punto di interesse non pertinente in base alla profilazione dell'utente per cui si vuole generare l'annuncio.
// - *Postcondizioni*: il sistema non riceve l'annuncio pubblicitario generato dalla LLM.
// - *Trigger*: l'utente del noleggio si trova in prossimità di un punto di interesse non pertinente.
// - *Scenario principale*:
//   + La LLM verifica che il punto di interesse non è pertinente per l'utente.
//   + La LLM decide di non generare alcun annuncio pubblicitario
// #v(20pt)
// #figure(
//   image("../assets/use_cases/UC5-6.svg"),
//   caption: [Diagramma dei casi d'uso UC5 e UC6],
// )
// #pagebreak()

// DOBBIAMO GESTIRE ANCHE SIGN UP O SOLO SIGN IN?
=== UC2 - Autenticazione alla dashboard del sistema
- *Attori principali*: Amministratore non autenticato.
- *Precondizioni*: il sistema possiede le credenziali dell'amministratore che in quel momento non è autenticato. L'amministratore non autenticato accede alla pagina di _login_.
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
- *Precondizioni*: il sistema possiede l'_e-mail_ dell'amministratore che in quel momento non è autenticato. L'amministratore non autenticato accede alla pagina di _login_.
- *Postcondizioni*: il sistema accetta l'_e-mail_ inserita.
- *Trigger*: l'amministratore intende accede alla _dashboard_ personale.
- *Scenario principale*:
  + L'amministratore non autenticato accede alla pagina di _login_ del sistema.
  + L'amministratore non autenticato inserisce l'_e-mail_ con la quale è registrato nel sistema.

=== UC4 - Inserimento password per l'autenticazione alla dashboard <uc4>
- *Attore principale*: Amministratore non autenticato.
- *Precondizioni*: il sistema possiede la _password_ dell'amministratore che in quel momento non è autenticato. L'amministratore non autenticato accede alla pagina di _login_.
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
  image("../assets/use_cases/autenticazione.png"),
  caption: [Diagramma dei casi d'uso UC2, UC3, UC4 e UC5],
)

#pagebreak()

=== UC6 - Visualizzazione della mappa geografica sulla dashboard
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia delle informazioni relative ai mezzi noleggiati, ai punti di interesse e agli annunci.
- *Postcondizioni*: il sistema espone una mappa geografica sulla _dashboard_ dell'amministratore.
- *Trigger*: l'amministratore intende visualizzare la mappa geografica sulla propria _dashboard_.
- *Scenario principale*:
  + L'amministratore è autenticato alla _dashboard_ del sistema.
  + La _dashboard_ del sistema espone una mappa geografica del territorio.
- *Inclusioni*:
  + Visualizzazione _#rifGlossario("marker")_ sulla mappa per i punti di interesse (#link(<uc7>)[UC7]).

=== UC7 - Visualizzazione marker sulla mappa per i punti di interesse <uc7>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia della posizione di ciascun punto di interesse.
- *Postcondizioni*: il sistema espone sulla mappa dei _marker_ in corrispondenza dei punti di interesse.
- *Trigger*: l'amministratore intende visualizzare sulla mappa le locazioni dei punti di interesse.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza di ciascun punto di interesse.
#v(20pt)
#figure(
  image("../assets/use_cases/mappa.png"),
  caption: [Diagramma dei casi d'uso UC6 e UC7],
)

#pagebreak()

=== UC8 - Visualizzazione percorso del mezzo in noleggio sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia delle posizioni nel tempo dei mezzi con noleggio attivo.
- *Postcondizioni*: il sistema espone sulla mappa il percorso dei mezzi con noleggio attivo.
- *Trigger*: l'amministratore desidera visualizzare il percorso di un mezzo dall'inizio del suo noleggio fino a quel momento.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza il percorso del mezzo noleggiato.
- *Inclusioni*:
  + Visualizzazione _marker_ sul tracciato dei mezzi con noleggio attivo in corrispondenza del dato GPS (#link(<uc9>)[UC9]).

=== UC9 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza del dato GPS <uc9>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema memorizza i dati GPS dei sensori quando il mezzo sul quale sono installati ha un noleggio attivo.
- *Postcondizioni*: il sistema espone sulla mappa un _marker_ in corrispondenza di ciascuna coordinata GPS fornita dal sensore.
- *Trigger*: l'amministratore intende visualizzare sulla mappa le posizioni del mezzo in noleggio fino a quel momento.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza di ogni dato GPS ritornato dal sensore di un relativo mezzo in noleggio.
#v(20pt)
#figure(
  image("../assets/use_cases/percorso.png"),
  caption: [Diagramma dei casi d'uso UC8 e UC9],
)

#pagebreak()

=== UC10 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza della generazione di un annuncio
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema memorizza gli annunci generati e le relative informazioni.
- *Postcondizioni*: il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui è stato generato un annuncio.
- *Trigger*: l'amministratore intende visualizzare sulla mappa le posizioni del mezzo in noleggio nelle quali è stato generato un annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali è stato generato un annuncio.
#v(20pt)
#figure(
  image("../assets/use_cases/marker annuncio.png"),
  caption: [Diagramma del caso d'uso UC10],
)

#pagebreak()

=== UC11 - Visualizzazione marker sul tracciato dei mezzi con noleggio attivo in corrispondenza della mancata generazione di un annuncio
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema memorizza le mancate generazioni degli annunci e le relative informazioni.
- *Postcondizioni*: il sistema espone sulla mappa un _marker_ in corrispondenza dei punti in cui la LLM non ha ritenuto l'utente interessato, quindi non è stato generato l'annuncio.
- *Trigger*: l'amministratore intende visualizzare sulla mappa le posizioni del mezzo in noleggio nelle quali la LLM non ha generato un annuncio.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore visualizza un _marker_ in corrispondenza delle posizioni nelle quali la LLM non ha generato un annuncio..
#v(20pt)
#figure(
  image("../assets/use_cases/marker annuncio fallito.png"),
  caption: [Diagramma del caso d'uso UC11],
)

#pagebreak()

=== UC69 - Visualizzazione informazioni punto di interesse tramite marker sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia delle informazioni di ciascun punto di interesse.
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
  image("../assets/use_cases/info poi marker.png"),
  caption: [Diagramma del caso d'uso UC11],
)

#pagebreak()

=== UC12 - Visualizzazione annuncio tramite marker sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia degli annunci generati e le relative informazioni.
- *Postcondizioni*: il sistema espone l'annuncio generato, con le relative informazioni, in corrispondenza del _marker_ sulla mappa.
- *Trigger*: l'amministratore desidera visualizzare l'annuncio generato in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un annuncio generato.
  + Viene visualizzato l'annuncio generato in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  + VISUALIZZAZIONE ANNUNCIO E RELATIVE INFORMAZIONI
#v(20pt)
#figure(
  image("../assets/use_cases/annuncio marker.png"),
  caption: [Diagramma del caso d'uso UC12],
)

#pagebreak()

=== UC13 - Visualizzazione messaggio annuncio non generato tramite marker sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia degli annunci non generati e le relative informazioni.
- *Postcondizioni*: il sistema espone un messaggio circa l'annuncio non generato, con le relative informazioni, in corrispondenza del _marker_ sulla mappa.
- *Trigger*: l'amministratore desidera visualizzare le informazioni dell'annuncio non generato in corrispondenza del _marker_ sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce col _marker_ che indica un annuncio non generato.
  + Viene visualizzato il messaggio con le informazioni dell'annuncio che non è stato generato in corrispondenza del _marker_ selezionato.
- *Inclusioni*:
  + VISUALIZZAZIONE MESSAGGIO ANNUNCIO FALLITO E RELATIVE INFORMAZIONI
#v(20pt)
#figure(
  image("../assets/use_cases/annuncio mancato marker.png"),
  caption: [Diagramma del caso d'uso UC13],
)

#pagebreak()

=== UC14 - Chiusura annuncio visualizzato tramite marker sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia dell'annuncio visualizzato sulla mappa tramite una interazione con il _marker_ corrispondente.
- *Postcondizioni*: il sistema chiude l'annuncio visualizzato tramite una interazione con il _marker_ corrispondente.
- *Trigger*: l'amministratore desidera chiudere l'annuncio fatto comparire sulla mappa in corrispondenza del _marker_.
- *Scenario principale*:
  + L'amministratore visualiza l'annuncio sulla mappa in corrispondenza del _marker_.
  + L'amministratore chiude l'annuncio.

=== UC15 - Chiusura messaggio annuncio non generato visualizzato tramite marker sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia del messaggio di annuncio non generato visualizzato sulla mappa in corrispondenza del _marker_.
- *Postcondizioni*: il sistema chiude il messaggio di annuncio non generato visualizzato tramite una interazione con il _marker_ corrispondente.
- *Trigger*: l'amministratore desidera chiudere il messaggio di annuncio non generato fatto comparire sulla mappa in corrispondenza del _marker_.
- *Scenario principale*:
  + L'amministratore visualiza il messaggio di annuncio non generato sulla mappa in corrispondenza del _marker_.
  + L'amministratore chiude il messaggio.
#v(20pt)
#figure(
  image("../assets/use_cases/chiusure.png"),
  caption: [Diagramma dei casi d'uso UC14 e UC15],
)

#pagebreak()

=== UC16 - Spostamento della visuale sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia del centro della porzione di territorio visualizzata sulla mappa.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio centrata su un nuovo punto.
- *Trigger*: l'amministratore desidera spostare la visuale sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per spostare il centro della mappa, quindi anche l'intera visuale.
#v(20pt)
#figure(
  image("../assets/use_cases/spostamento mappa.png"),
  caption: [Diagramma dei casi d'uso UC16, UC17 e UC18],
)

#pagebreak()

=== UC100 - Modifica dall'ampiezza della visuale sulla mappa
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio più o meno ampia a seconda dell'azione dell'amministratore.
- *Trigger*: l'amministratore desidera modificare l'ampiezza della visuale sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per modificare l'ampiezza della visuale.
- *Generalizzazioni*:
  + Ampliamento della visuale sulla mappa (#link(<uc17>)[UC17])).
  + Restringimento della visuale sulla mappa (#link(<uc18>)[UC188])).

=== UC17 - Ampliamento della visuale sulla mappa <uc17>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio più ampia.
- *Trigger*: l'amministratore desidera ampliare la visuale sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per ampliare la visuale.

=== UC18 - Restringimento della visuale sulla mappa <uc18>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia della porzione di territorio mostrata dalla mappa sulla _dashboard_.
- *Postcondizioni*: il sistema fa visualizzare sulla mappa una porzione di territorio meno ampia.
- *Trigger*: l'amministratore desidera restringere la visuale sulla mappa.
- *Scenario principale*:
  + L'amministratore accede alla mappa sulla _dashboard_.
  + L'amministratore interagisce con la mappa per restringere la visuale.
#v(20pt)
#figure(
  image("../assets/use_cases/zoom mappa.png"),
  caption: [Diagramma dei casi d'uso UC16, UC17 e UC18],
)

#pagebreak()

=== UC19 - Visualizzazione notifica di un annuncio generato
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema ha generato un annuncio personalizzato ad un utente.
- *Postcondizioni*: il sistema mostra una notifica sulla _dashboard_ contenente le informazioni principlai riguardo l'annuncio appena generato.
- *Trigger*: l'amministratore desidera prendere visione della notifica.
- *Scenario principale*: 
  + Un utente si avvicina a un punto di interesse e il sistema genera un annuncio personalizzato che viene inviato all'utente.
  + Nello stesso istante, nella _dashboard_, viene mostrata una notifica che informa l'amministratore con i seguenti dettagli:
    - E-mail dell'utente destinatario.
    - Punto di interesse associato all'annuncio.
    - Data e ora di emissione dell'annuncio.
- *Inclusioni*: 
  + Visualizzazione nome del punto di interesse associato (#link(<uc25>)[UC25]).
  + Visualizzazione _e-mail_ dell'utente associato (#link(<uc26>)[UC26]).
  + Visualizzazione data e ora dell'evento associato (#link(<uc27>)[UC27]).

#v(20pt)
#figure(
  image("../assets/use_cases/notifica_annuncio_generato.png"),
  caption: [Diagramma dei caso d'uso UC19, UC25, UC26, UC27],
)

#pagebreak()

=== UC20 - Visualizzazione notifica di mancata generazione di un annuncio
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema ha valutato un utente come disinteressato ad un punto di interesse.
- *Postcondizioni*: il sistema mostra una notifica sulla _dashboard_ contenente le informazioni principlai riguardo alla mancata generazione di un annuncio.
- *Trigger*: l'amministratore desidera prendere visione della notifica.
- *Scenario principale*: 
  + Un utente si avvicina a un punto di interesse e il sistema valuta che l'utente non è interessato.
  + Nello stesso istante, nella _dashboard_, viene mostrata una notifica contenente un messaggio che informa l'amministratore che l'utente non è interessato al punto di interesse.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse associato (#link(<uc25>)[UC25]).
  + Visualizzazione _e-mail_ dell'utente associato (#link(<uc26>)[UC26]).
  + Visualizzazione data e ora dell'evento associato (#link(<uc27>)[UC27]).

#v(20pt)
#figure(
  image("../assets/use_cases/notifica_annuncio_NON_generato.png"),
  caption: [Diagramma dei caso d'uso UC20, UC25, UC26, UC27],
)

#pagebreak()

=== UC21 - Apertura dettagli singolo annuncio dalla notifica
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema ha generato un annuncio personalizzato ad un utente. L'amministratore ha ricevuto una notifica di annuncio generato.
- *Postcondizioni*: il sistema espone i dettagli dell'annuncio generato.
- *Trigger*: l'amministratore desidera prendere visione dei dettagli dell'annuncio generato.
- *Scenario principale*: 
  + L'amministratore riceve sulla _dashboard_ la notifica relativa ad un annuncio generato.
  + L'amministratore interagisce con la notifica per visualizzare i dettagli dell'annuncio generato.
- *Inclusioni*:
  + Visualizzazione dettagli di un singolo annuncio(#link(<uc29>)[UC29]).

#v(20pt)
#figure(
  image("../assets/use_cases/notifica_apertura_dettagli_annuncio.png"),
  caption: [Diagramma dei caso d'uso UC21, UC29],
)

#pagebreak()

=== UC22 - Chiusura di una notifica 
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema ha generato un annuncio personalizzato ad un utente. L'amministratore ha ricevuto una notifica.
- *Postcondizioni*: il sistema chiude la notifica.
- *Trigger*: l'amministratore vuole chiudere la notifica.
- *Scenario principale*: 
  + L'amministratore riceve sulla _dashboard_ una notifica.
  + L'amministratore interagisce con la notifica per farla scomparire dalla _dashboard_.

#v(20pt)
#figure(
  image("../assets/use_cases/notifica_chiusura.png"),
  caption: [Diagramma del caso d'uso UC22],
)

#pagebreak()

=== UC23 - Visualizzazione storico degli annunci
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per i clienti dell'amministratore.
- *Postcondizioni*: il sistema espone gli annunci generati fino a quel momento ordinati dal più recente.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + Il sistema espone le _preview_ degli annunci con le informazioni principali.
- *Inclusione*:
  + Visualizzazione singolo annuncio nello storico (#link(<uc24>)[UC24]).

=== UC24 - Visualizzazione singolo annuncio nello storico <uc24>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia delle informazioni principali degli annunci generati per i clienti dell'amministratore. Questo visualizza la sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone le informazioni principali relative al singolo annuncio:
  - Nome del punto di interesse collegato.
  - _E-mail_ dell'utente destinatario.
  - Data e ora di emissione.
  - Un _flag_ che indica se il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Trigger*: l'amministratore desidera visualizzare le informazioni principali di un annuncio.
- *Scenario principale*:
  + L'amministratore visualizza le informazioni principali relative all'annuncio.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse associato (#link(<uc25>)[UC25]).
  + Visualizzazione _e-mail_ dell'utente associato (#link(<uc26>)[UC26]).
  + Visualizzazione data e ora dell'evento associato (#link(<uc27>)[UC27]).
  + Visualizzazione _flag_ sugli annunci nello storico inviati a noleggi attivi (#link(<uc28>)[UC28]).

=== UC25 - Visualizzazione nome del punto di interesse associato <uc25>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia del punto di interesse associato a un annuncio o alla mancata generazione di un annuncio.
- *Postcondizioni*: il sistema espone il nome del punto di interesse associato all'annuncio o alla mancata generazione dell'annuncio.
- *Trigger*: l'amministratore desidera visualizzare il nome del punto di interesse associato.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse associato.

=== UC26 - Visualizzazione e-mail dell'utente associato <uc26>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia dell'_e-mail_ dell'utente associato a un annuncio o alla mancata generazione di un annuncio.
- *Postcondizioni*: il sistema espone l'_e-mail_ dell'utente associato all'annuncio o alla mancata generazione dell'annuncio.
- *Trigger*: l'amministratore desidera visualizzare l'_e-mail_ dell'utente associato.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente associato.

=== UC27 - Visualizzazione data e ora dell'evento associato <uc27>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia della data e dell'ora associate all'emissione di un annuncio o alla mancata generazione di un annuncio.
- *Postcondizioni*: il sistema espone la data e l'ora associate all'evento di interesse (emissione o mancata generazione dell'annuncio).
- *Trigger*: l'amministratore desidera visualizzare la data e l'ora dell'evento associato.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora dell'evento associato.

=== UC28 - Visualizzazione flag sugli annunci nello storico inviati a noleggi attivi
<uc28>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia dello stato del noleggio al quale è stato inviato l'annuncio, se è cioè ancora attivo o meno.
- *Postcondizioni*: il sistema espone un _flag_ nel caso il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Trigger*: l'amministratore desidera visualizzare se l'annuncio è stato inviato ad un mezzo con noleggio attivo.
- *Scenario principale*:
  + L'amministratore visualizza il _flag_ nel caso in cui il noleggio relativo all'annuncio è ancora attivo.
#v(20pt)
#figure(
  image("../assets/use_cases/storico.png"),
  caption: [Diagramma dei casi d'uso UC23, UC24, UC25, UC26, UC27 e UC28],
)

=== UC29 - Visualizzazione dettagli di un singolo annuncio <uc29>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutte le informazioni degli annunci generati per i clienti dell'amministratore.
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
  + Visualizzazione nome del punto di interesse associato (#link(<uc25>)[UC25]).
  + Visualizzazione _e-mail_ dell'utente associato (#link(<uc26>)[UC26]).
  + Visualizzazione data e ora dell'evento associato (#link(<uc27>)[UC27]).
  + Visualizzazione _flag_ sugli annunci nello storico inviati a noleggi attivi (#link(<uc28>)[UC28]).
  + Visualizzazione completa dell'annuncio (#link(<uc30>)[UC30]).
  + Visualizzazione categoria del punto di interesse collegato all'annuncio (#link(<uc31>)[UC31]).
  + Chiusura della finestra di dialogo aperta (#link(<uc32>)[UC32]).

=== UC30 - Visualizzazione completa dell'annuncio <uc30>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia degli annunci generati.
- *Postcondizioni*: il sistema espone l'annuncio per intero.
- *Trigger*: l'amministratore desidera visualizzare l'annuncio generato precedentemente.
- *Scenario principale*:
  + L'amministratore visualizza interamente l'annuncio generato precedentemente.

=== UC31 - Visualizzazione categoria del punto di interesse collegato all'annuncio <uc31>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia della categoria del punto di interesse collegato al relativo annuncio.
- *Postcondizioni*: il sistema espone la categoria del punto di interesse collegato al relativo annuncio.
- *Trigger*: l'amministratore desidera visualizzare la categoria del punto di interesse collegato al relativo annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la categoria del punto di interesse.

=== UC32 - Chiusura della finestra di dialogo aperta <uc32>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema espone una finestra di dialogo con la quale l'amministratore può interagire.
- *Postcondizioni*: il sistema chiude la finestra di dialogo.
- *Trigger*: l'amministratore desidera chiudere la finestra di dialogo aperta.
- *Scenario principale*:
  + L'amministratore visualizza una finestra di dialogo aperta.
  + L'amministratore chiude la finestra di dialogo aperta.
#v(20pt)
#figure(
  image("../assets/use_cases/dettagli storico.png"),
  caption: [Diagramma dei casi d'uso UC25, UC26, UC27, UC28, UC29, UC30, UC31 e UC32],
)

#pagebreak()

=== UC420 - Visualizzazione storico annunci
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore.
- *Postcondizioni*: il sistema espone gli annunci generati fino a quel momento.
- *Trigger*: l'amministratore vuole prendere visione degli annunci generati fino a quel momento.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita degli annunci.
- *Generalizzazioni*:
  + Visualizzazione storico annunci in lista (#link(<uc33>)[UC33]).
  + Visualizzazione storico annunci in griglia (#link(<uc34>)[UC34]).

=== UC33 - Visualizzazione storico annunci in lista <uc33>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore. Questo visualizza la sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone gli annunci generati fino a quel momento.
- *Trigger*: l'amministratore vuole prendere visione degli annunci generati fino a quel momento in lista.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore selezione l'opzione per visualizzare gli annunci in lista.

=== UC34 - Visualizzazione storico annunci in griglia <uc34>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per gli utenti dell'amministratore. Questo visualizza la sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone gli annunci generati fino a quel momento ordinati dal più recente in griglia.
- *Trigger*: l'amministratore vuole prendere visione degli annunci generati fino a quel momento in griglia.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore selezione l'opzione per visualizzare gli annunci in griglia.
#v(20pt)
#figure(
  image("../assets/use_cases/display.png"),
  caption: [Diagramma dei casi d'uso UC33 e UC34],
)

#pagebreak()

=== UC35 - Ricerca degli annunci nello storico
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per i clienti dell'amministratore. Questo visualizza la sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone gli annuci filtrati secondo alcune opzioni fornite: _e-mail_ dell'utente destinatario dell'annuncio, nome del punto di interesse collegato all'annuncio, intervallo di date e fascia oraria di emissione.
- *Trigger*: l'amministratore desidera prendere visione di alcuni specifici annunci generati precedentemente.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore esegue una ricerca degli annunci desiderati.
- *Inclusione*:
  + Ricerca degli annunci nello storico per _e-mail_ utente (#link(<uc36>)[UC36]).
  + Ricerca degli annnunci nello storico per nome del punto di interesse (#link(<uc37>)[UC37]).
  + Ricerca degli annunci nello storico per intervallo di date di emissione (#link(<uc38>)[UC38]).
  + Ricerca degli annunci nello storico per fascia oraria di emissione (#link(<uc39>)[UC39]).

=== UC36 - Ricerca degli annunci nello storico per e-mail utente <uc36>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per l'utente selezionato. Questo visualizza la sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone lo storico degli annunci destinati all'utente selezionato.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento per uno specifico utente.
- *Scenario principale*:
  + L'amministratore seleziona l'_e-mail_ di un utente.
  + Vengono visualizzati solo gli annunci destinati all'utente selezionato.

=== UC37 - Ricerca degli annunci nello storico per nome del punto di interesse <uc37>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati collegati al punto di interesse selezionato. Questo visualizza la sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone lo storico degli annunci collegati al punto di interesse selezionato.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento per uno specifico punto di interesse.
- *Scenario principale*:
  + L'amministratore seleziona il nome di un punto di interesse.
  + Vengono visualizzati solo gli annunci collegati al punto di interesse selezionato.

=== UC38 - Ricerca degli annunci nello storico per intervallo di date di emissione <uc38>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci emessi nell'intervallo di date selezionato. Questo visualizza la sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone lo storico degli annunci emessi nell'intervallo di date selezionato.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento in un determinato intervallo di date.
- *Scenario principale*:
  + L'amministratore seleziona un intervallo di date.
  + Vengono visualizzati solo gli annunci emessi nell'intervallo di date selezionato.

=== UC39 - Ricerca degli annunci nello storico per fascia oraria di emissione <uc39>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci emessi nella fascia oraria selezionata. Questo visualizza la sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone lo storico degli annunci emessi nella fascia oraria selezionata.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento in una determinata fascia oraria.
- *Scenario principale*:
  + L'amministratore seleziona una fascia oraria.
  + Vengono visualizzati solo gli annunci emessi nella fascia oraria selezionata.
#v(20pt)
#figure(
  image("../assets/use_cases/filtro.png"),
  caption: [Diagramma dei casi d'uso UC35, UC36, UC37, UC38 e UC39],
)

#pagebreak()





















// OPZIONALI

=== UC40 - Visualizzazione statistiche in grafici
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato al sistema.
- *Postcondizioni*: l'amministratore visualizza i grafici relativi alle seguenti analisi:
  - Rapporto degli annnunci generati sulle richieste totali
  - Quantità di annunci generati per ogni punto di interesse in un intervallo di date selezionato.
  - Quantità di annunci generati legati a un punto di interesse in una data e fascia oraria selezionati.
- *Trigger*: l'amministratore desidera prendere visione dell'andamento di alcuni parametri in formato grafico.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita dei grafici.
  + Vengono visualizzati i grafici relativi alle analisi proposte.
- *Inclusioni*:
  + Visualizzazione singolo grafico (#link(<uc41>)[UC41]).

=== UC41 - Visualizzazione singolo grafico <uc41>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato al sistema ed ha accesso alla sezione dedicata ai grafici.
- *Postcondizioni*: l'amministratore visualizza il grafico con le relative informazioni:
  - Titolo del grafico.
  - Etichetta dell'asse delle ascisse.
  - Etichetta dell'asse delle ordinate.
  - Etichette dei valori sugli assi.
  - Dati del grafico.
- *Trigger*: l'amministratore desidera prendere visione del grafico che espone l'andamento di uno specifico parametro.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita dei grafici.
  + Viene visualizzato il grafico con le relative informazioni.
  // TODO: AGGIORNATO IN AUTOMATICO ALL'ARRIVO DI NUOVI DATI?
- *Inclusioni*:
  + Visualizzazione titolo del grafico (#link(<uc42>)[UC42]).
  + Visualizzazione etichetta asse delle ascisse e relativi valori (#link(<uc43>)[UC43]).
  + Visualizzazione etichetta asse delle ordinate e relativi valori (#link(<uc44>)[UC44]).
  + Visualizzazione dati sul grafico (#link(<uc45>)[UC45]).

=== UC42 - Visualizzazione titolo del grafico <uc42>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato al sistema ed ha accesso alla sezione dedicata ai grafici.
- *Postcondizioni*: l'amministratore visualizza il titolo del relativo grafico.
- *Trigger*: l'amministratore desidera prendere visione del titolo del grafico.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita dei grafici.
  + Viene esposto il titolo del relativo grafico.

=== UC43 - Visualizzazione etichetta asse delle ascisse e relativi valori <uc43>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato al sistema ed ha accesso alla sezione dedicata ai grafici.
- *Postcondizioni*: l'amministratore visualizza le etichette dell'asse delle ascisse e dei valori dell'asse del relativo grafico.
- *Trigger*: l'amministratore desidera prendere visione delle etichette dell'asse delle ascisse e dei rispettivi valori.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita dei grafici.
  + Viene esposta l'etichetta dell'asse delle ascisse del relativo grafico.
  + Vengono esposte le etichette dei valori segnati sull'asse delle ascisse del relativo grafico.

=== UC44 - Visualizzazione etichetta asse delle ordinate e relativi valori <uc44>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato al sistema ed ha accesso alla sezione dedicata ai grafici.
- *Postcondizioni*: l'amministratore visualizza le etichette dell'asse delle ordiante e dei valori dell'asse del relativo grafico.
- *Trigger*: l'amministratore desidera prendere visione delle etichette dell'asse delle ordinate e dei rispettivi valori.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita dei grafici.
  + Viene esposta l'etichetta dell'asse delle ordinate del relativo grafico.
  + Vengono esposte le etichette dei valori segnati sull'asse delle ordinate del relativo grafico.

=== UC45 - Visualizzazione dati sul grafico <uc45>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato al sistema ed ha accesso alla sezione dedicata ai grafici.
- *Postcondizioni*: l'amministratore visualizza i dati sul relativo grafico. Viene mostrato il valore esatto di un dato immediatamente vicino al punto nel grafico.
- *Trigger*: l'amministratore desidera prendere visione dei dati del parametro in esame sul grafico.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita dei grafici.
  + Vengono disposti i dati sul grafico con i relativi valori.
#v(20pt)
#figure(
  image("../assets/use_cases/grafici.png"),
  caption: [Diagramma dei casi d'uso UC40, UC41, UC42, UC43, UC44 e UC45],
)/**
 * ========
 * Vecchi casi d'uso
 * ========
 **/

// === UC4 - Visualizzazione storico amministratore

// - *Attore principale*: Amministratore
// - *Precondizioni*: l'amministratore del sistema è autenticato e ha accesso alla _dashboard_ Grafana.
// - *Postcondizioni*: l'amministratore ha una visione dello storico degli annunci pubblicitari comparsi associato al rispettivo utente, con un _feedback_ indicante il successo o l'insuccesso che l'annuncio ha avuto.
// - *Scenario principale*:
//   + L'amministratore è collegato e autenticato nella _dashboard_ Grafana;
//   + La _dashboard_ mette a disposizione una sezione con lo storico degli annunci prodotti dal sistema e il relativo esito.
// - *User story*:
// #figure(image("../assets/use_cases/old/oldUC4.svg", width: 80%), caption: [UC4 - Visualizzazione storico amministratore])

// === UC5 - Interazione con l'annuncio pubblicitario //FIXME: questo caso d'uso è da capire sempre se mantenere o meno in quanto è opzionale e non necessario ai fini del PoC
// - *Attore principale*: Utente
// - *Precondizioni*: l'utente visualizza un annuncio pubblicitario.
// - *Postcondizioni*: se l'utente interagisce con l'annuncio pubblicitario, il sistema memorizza l'interazione come _feedback_ sull'annuncio generato.
// - *Scenario principale*:
//   + L'utente visualizza un annuncio pubblicitario;
//   + L'utente interagisce con l'annuncio pubblicitario;
//   + Il sistema memorizza un _feedback_ associato all'annuncio visualizzato.
// - *User story*:
// #figure(image("../assets/use_cases/old/oldUC5.svg", width: 80%), caption: [UC5 - Interazione con l'annuncio pubblicitario])

// Il caso d'uso sottostante rappresenta un'interazione alternativa al caso d'uso UC5, in cui l'utente si ferma presso il punto d'interesse pubblicizzato per un periodo di tempo prolungato
// Da valutare se implementarla in quanto risulterebbe ridondante

/*=== UC5.1 - Sosta presso il punto d'interesse pubblicizzato

- *Attore principale*: Utente

- *Precondizioni*: l'utente visualizza un annuncio pubblicitario

- *Postcondizioni*: se l'utente si ferma presso il punto di interesse pubblicizzato, il sistema memorizza l'interazione come feedback positivo sull'annuncio generato

- *Scenario principale*:
+ L'utente visualizza un annuncio pubblicitario
+ L'utente si ferma presso il punto di interesse pubblicizzato per un periodo di tempo prolungato
+ Il sistema memorizza un feedback positivo associato all'annuncio visualizzato

- *User story*:
#figure(image("../assets/use_cases/UC5.1.svg", width: 80%), caption: [UC5.1 - Sosta presso il punto d'interesse pubblicizzato])
*/

#pagebreak()
= Requisiti




