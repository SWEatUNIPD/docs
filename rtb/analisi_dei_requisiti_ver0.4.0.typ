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
    [20/12/2024],
    "Andrea Perozzo\nAndrea Precoma",
    "Davide Marin\nKlaudio Merja",
    [
      - TODO
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
- *Inclusioni* (se presenti)
- *Estensioni* (se presenti)

== Attori
Gli attori coinvolti nei casi d'uso sono i seguenti:
- *Amministratore*: gestore di un servizio di noleggio.
- *Utente*: utente che utilizza il servizio di noleggio.
- *Utente non autenticato*: un qualsiasi individuo che intende accedere al sistema, sia esso un utente inteso come utilizzatore del servizio di noleggio o un amministratore.
- *Sensore*: strumento attraverso il quale il mezzo noleggiato da uno specifico utente trasmette la sua posizione in tempo reale.
- *#rifGlossario("LLM")*: servizio esterno che si occupa della generazione degli annunci pubblicitari personalizzati tramite #rifGlossario("prompt") fornito dal sistema.

== Elenco dei casi d'uso

=== UC1 - Trasmissione dei dati di localizzazione

- *Attore principale*: Sensore.
- *Precondizioni*: il mezzo in cui è installato il sensore ha un noleggio attivo.
- *Postcondizioni*: il sistema riceve i dati di localizzazione #rifGlossario("GPS") del mezzo in uso dall'utente.
- *Trigger*: il sensore intende notificare al sistema la localizzazione GPS del mezzo.
- *Scenario principale*:
  + L'utente noleggia un mezzo.
  + Il sensore invia a intervalli di tempo regolari i dati di localizzazione GPS del mezzo.
- *Inclusioni*:
  + Controllo della posizione in prossimità di un punto di interesse (#link(<uc2>)[UC2]).

=== UC2 - Controllo della posizione in prossimità di un punto di interesse <uc2>

- *Attore principale*: Sensore.
- *Precondizioni*: il sensore ha inviato dei dati di localizzazione.
- *Postcondizioni*: il sensore si trova in prossimità di un punto di interesse.
- *Trigger*: il sensore invia al sistema la localizzazione GPS del mezzo.
- *Scenario principale*:
  + Il sensore invia al sistema la localizzazione GPS del mezzo.
  + Il sistema verifica che il sensore sia in prossimità di un punto di interesse.
- *Estensione*:
  + Il sensore non è in prossimità di un punto di interesse (#link(<uc3>)[UC3]).

=== UC3 - Il sensore non è in prossimità di un punto di interesse<uc3>
//TODO: https://github.com/SWEatUNIPD/docs/pull/67#discussion_r1882217372
- *Attore principale*: Sensore.
- *Precondizioni*: il sensore ha inviato dei dati di localizzazione.
- *Postcondizioni*: il sistema verifica che il sensore non si trova in prossimità di un punto di interesse.
- *Trigger*: il sensore invia al sistema la localizzazione GPS del mezzo.
- *Scenario principale*:
  + Il sensore invia al sistema la localizzazione GPS del mezzo.
  + Il sistema verifica che il sensore non è in prossimità di un punto di interesse.
#v(20pt)
#figure(image("../assets/use_cases/UC1-2-3.svg"), caption: [Diagramma dei casi d'uso UC1, UC2 e UC3])

#pagebreak()

=== UC4 - Invio richiesta di annuncio personalizzato alla LLM
- *Attore principale*: Sensore.
- *Attore secondario*: LLM.
- *Precondizioni*: il sensore si trova in prossimità di un punto di interesse.
- *Postcondizioni*: il sistema ha inviato alla LLM la richiesta per la generazione di un annuncio personalizzato.
- *Trigger*: il sensore si trova in prossimità di un punto di interesse.
- *Scenario principale*:
  + Il sensore si trova in prossimità di un punto di interesse.
  + Il sistema invia alla LLM una richiesta di annuncio personalizzato in caso la profilazione dell'utente risulti idonea al punto di interesse.
#v(20pt)
#figure(image("../assets/use_cases/UC4.svg", width: 90%), caption: [Diagramma del caso d'uso UC4])
#pagebreak()

=== UC5 - Invio dell'annuncio pubblicitario generato
- *Attore principale*: LLM.
- *Precondizioni*: la LLM deve aver ricevuto dal sistema il _prompt_ di generazione dell'annuncio, come la profilazione dell'utente e il punto di interesse per cui si vuole generare l'annuncio.
- *Postcondizioni*: il sistema riceve l'annuncio pubblicitario generato dalla LLM.
- *Trigger*: il sistema ha fatto una richiesta di generazione tramite le #rifGlossario("API") della LLM.
- *Scenario principale*:
  + La LLM riceve la richiesta da parte del sistema
  + La LLM genera l'annuncio pubblicitario basandosi sui dati ricevuti come _prompt_.
  + La LLM invia l'annuncio pubblicitario generato al sistema.
- *Estensione*: Annuncio pubblicitario non generato (#link(<uc6>)[UC6]).
=== UC6 - Annuncio pubblicitario non generato <uc6>
//TODO: https://github.com/SWEatUNIPD/docs/pull/67#discussion_r1882335589
- *Attore principale*: LLM
- *Precondizioni*: La LLM considera il punto di interesse non pertinente in base alla profilazione dell'utente per cui si vuole generare l'annuncio.
- *Postcondizioni*: il sistema non riceve l'annuncio pubblicitario generato dalla LLM.
- *Trigger*: l'utente del noleggio si trova in prossimità di un punto di interesse non pertinente.
- *Scenario principale*:
  + La LLM verifica che il punto di interesse non è pertinente per l'utente.
  + La LLM decide di non generare alcun annuncio pubblicitario
#v(20pt)
#figure(
  image("../assets/use_cases/UC5-6.svg"),
  caption: [Diagramma dei casi d'uso UC5 e UC6],
)
#pagebreak()


=== UC7 - Autenticazione alla _dashboard_ del sistema
- *Attori principali*: Utente non autenticato.
- *Precondizioni*: l'individuo che intende accedere alla _dashboard_ deve essere registrato all'interno del sistema per poter accedere.
- *Postcondizioni*: l'utente o l'amministratore che si è appena autenticato accede alla _dashboard_ personale con le relative funzionalità (a seconda dei loro privilegi).
- *Trigger*: l'utente o l'amministratore intende accedere alla _dashboard_ personale.
- *Scenario principale*:
  + L'utente non autenticato accede alla pagina di login del sistema.
  + L'utente non autenticato inserisce le proprie credenziali di accesso.
  + Il sistema verifica se le credenziali inserite sono valide o meno.
  + Nel caso in cui le credenziali fossero valide, l'utente o l'amministratore (a seconda del ruolo all'interno del sistema) accede alla propria _dashboard_ personale.
- *Estensione*: Errore "Credenziali errate" (#link(<uc8>)[UC8]).

=== UC8 - Errore "Credenziali errate" <uc8>
- *Attori principali*: Utente non autenticato.
- *Precondizioni*: l'utente non autenticato tenta di accedere alla _dashboard_ con delle credenziali errate.
- *Postcondizioni*: l'utente non autenticato riceve un messaggio di errore.
- *Trigger*: l'utente non autenticato inserisce delle credenziali errate.
- *Scenario principale*:
  + L'utente inserisce delle credenziali errate durante la fase di autenticazione alla _dashboard_.
  + L'utente riceve un messaggio di errore, segnalando il fatto che le credenziali di accesso inserite siano invalide e invitando a riprovare l'autenticazione.
#v(20pt)
#figure(
  image("../assets/use_cases/UC7-8.svg"),
  caption: [Diagramma dei casi d'uso UC7 e UC8],
)

#pagebreak()

=== UC9 - Visualizzazione della mappa dei mezzi noleggiati
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore del sistema è autenticato e ha accesso alla _dashboard_ del sistema.
- *Postcondizioni*: l'amministratore ottiene una visione della posizione e del movimento dei mezzi attualmente in uso all'interno di una mappa.
- *Trigger*: l'amministratore intende visualizzare la posizione dei mezzi noleggiati.
- *Scenario principale*:
  + L'amministratore è collegato e autenticato alla _dashboard_ del sistema.
  + La _dashboard_ mette a disposizione una mappa interattiva con i mezzi attualmente a noleggio, la cui posizione viene indicata attraverso dei _#rifGlossario("marker")_.
#v(20pt)
#figure(
  image("../assets/use_cases/UC9.svg"),
  caption: [Diagramma del caso d'uso UC9],
)

#pagebreak()

=== UC10 - Visualizzazione degli annunci pubblicitari generati lato amministratore
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato al sistema.
- *Postcondizioni*: l'amministratore visualizza gli annunci generati dalla LLM per ogni utente con un noleggio attivo all'interno della mappa.
- *Trigger*: l'amministratore vuole prendere visione di quanto generato da parte della LLM per i clienti del noleggio e per i punti di interesse convenzionati.
- *Scenario principale*:
  + L'amministratore accede alla mappa dei mezzi noleggiati.
  + L'amministratore, tramite un "_click_" sul _marker_ che indica la posizione di un mezzo, visualizza l'annuncio pubblicitario generato per l'utente che ha attualmente in uso il mezzo.
#v(20pt)
#figure(
  image("../assets/use_cases/UC10.svg"),
  caption: [Diagramma del caso d'uso UC10],
)

//TODO: valutare se raffinare i casi d'uso con dei sottocasi

//UC Perruz

/*
L'attore sarebbe il sistema => no UC
Domanda: il capitolato chiede di avvisare l'admin, si può immaginare tramite notifica, però l'attore della notifica è il sistema quindi non andrebbe creato il caso d'uso. Come si fa ad implementare?
*/
#pagebreak()
=== UC11 - Visualizzazione notifica di un annuncio generato
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato e ha accesso alla _dashboard_ del sistema.
- *Postcondizioni*: l'amministratore riceve una notifica relativa ad un annuncio generato.
- *Trigger*: il sistema genera e invia all'utente un annuncio personalizzato relativo al punto di interesse in cui si trova.
- *Scenario principale*: 
  + Un utente si avvicina a un punto di interesse e il sistema genera un annuncio personalizzato che viene inviato all'utente.
  + Nello stesso istante, nella _dashboard_, compare una notifica _pop-up_ visibile all'amministratore, con i seguenti dettagli:
    - Utente destinatario.
    - Punto di interesse associato.
    - Data e ora di generazione dell'annuncio.
- *Inclusioni*: 
  + Scomparsa automatica della notifica di un annuncio generato (#link(<uc12>)[UC12]).
  + Chiusura della notifica di un annuncio generato (#link(<uc13>)[UC13]).
  + Apertura dello storico degli annunci dalla notifica (#link(<uc14>)[UC14]).

// vedi uc11, l'amministratore che sarebbe attore non interagisce nemmeno
=== UC12 - Scomparsa automatica della notifica di un annuncio generato <uc12>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato, ha accesso alla _dashboard_ del sistema e ha ricevuto una notifica di annuncio generato.
- *Postcondizioni*: la notifica scompare automaticamente dopo un tempo prestabilito.
- *Trigger*: l'amministratore non interagisce con la notifica.
- *Scenario principale*: 
  + L'amministratore riceve sulla _dashboard_ la notifica relativa ad un annuncio generato.
  + La notifica resta visibile per un tempo predefinito, terminato il quale scomparirà automaticamente.

=== UC13 - Chiusura della notifica di un annuncio generato <uc13>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato, ha accesso alla _dashboard_ del sistema e ha ricevuto una notifica di annuncio generato.
- *Postcondizioni*: l'amministratore chiude la notifica confermando di aver preso visione.
- *Trigger*: l'amministratore vuole chiudere la notifica di annuncio generato.
- *Scenario principale*: 
  + L'amministratore riceve sulla _dashboard_ la notifica relativa ad un annuncio generato.
  + L'amministratore segnala alla notifica di aver preso visione del messaggio.
  + La notifica viene chiusa fatta scomparire dalla _dashboard_.

=== UC14 - Apertura dello storico degli annunci dalla notifica <uc14>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato, ha accesso alla _dashboard_ del sistema e ha ricevuto una notifica di annuncio generato.
- *Postcondizioni*: l'amministratore visualizza lo storico degli annunci.
- *Trigger*: l'amministratore vuole visualizzare per intero l'annuncio che è appena stato generato tramite la notifica ricevuta.
- *Scenario principale*: 
  + L'amministratore riceve sulla _dashboard_ la notifica relativa ad un annuncio generato.
  + L'amministratore, interagendo con la notifica, acccede allo storico degli annunci ordinati dal più recente, dove in cima sarà quindi presente l'annuncio appena generato.

// vedi uc11
=== UC15 - Visualizzazione notifica di una mancata generazione
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato e ha accesso alla _dashboard_ del sistema.
- *Postcondizioni*: l'amministratore riceve e visualizza una notifica relativa ad una generazione fallita.
- *Trigger*: il sistema notifica all'amministratore che un annuncio non è stato generato per mancanza di interesse da parte dell'utente.
- *Scenario principale*: 
  + L'amministratore ha effettuato l'accesso alla _dashboard_.
  + La _dashboard_ mostra una notifica relativa ad una mancata generazione di annuncio in quanto l'utente vicino ad un determinato punto di interesse è stato valutato come disinteressato.
- *Inclusioni*:
  + Scomparsa automatica della notifica di mancata generazione (#link(<uc16>)[UC16]).
  + Chiusura della notifica di mancata generazione (#link(<uc17>)[UC17]).

// vedi uc12, in ogni caso sarebbe da creare un unico uc da riutilizzare del tipo "chiusura automatica notifica"
=== UC16 - Scomparsa automatica della notifica di mancata generazione <uc16> 
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato, ha accesso alla _dashboard_ del sistema e ha ricevuto una notifica di mancata generazione.
- *Postcondizioni*: la notifica scompare automaticamente dopo un tempo prestabilito.
- *Trigger*: l'amministratore non interagisce con la notifica.
- *Scenario principale*: 
  + L'amministratore riceve sulla _dashboard_ una notifica di mancata generazione.
  + La notifica resta visibile per un tempo predefinito, al termine del quale scomparirà automaticamente.

// vedi uc16
=== UC17 - Chiusura della notifica di mancata generazione <uc17> 
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato, ha accesso alla _dashboard_ del sistema e ha ricevuto una notifica di mancata generazione.
- *Postcondizioni*: l'amministratore chiude la notifica confermando di aver preso visione.
- *Trigger*: l'amministratore vuole chiudere la notifica.
- *Scenario principale*: 
  + L'amministratore riceve sulla _dashboard_ una notifica di mancata generazione.
  + L'amministratore preme sul pulsante "Presa visione" per chiudere il _pop-up_ e farla scomparire dalla _dashboard_.

#pagebreak()

//UC Prec
// TODO: pagine (tanti annunci)
=== UC18 - Visualizzazione storico degli annunci <uc18>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per i clienti dell'amministratore. Questo è autenticato e ha accesso alla _dashboard_.
- *Postcondizioni*: il sistema espone gli annunci generati fino a quel momento ordinati dal più recente.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita degli annunci.
  + Il sistema espone le _preview_ degli annunci con le informazioni principali.
- *Inclusione*:
  + Visualizzazione singolo annuncio nello storico (#link(<uc19>)[UC19]).

=== UC19 - Visualizzazione singolo annuncio nello storico <uc19>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia delle informazioni principali degli annunci generati per i clienti dell'amministratore. Questo è autenticato ed è acceduto alla sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone le informazioni principali relative al singolo annuncio:
  - Nome del punto di interesse collegato.
  - _E-mail_ dell'utente destinatario.
  - Data e ora di emissione.
  - Un _flag_ che indica se il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Trigger*: l'amministratore desidera visualizzare le informazioni principali di un annuncio.
- *Scenario principale*:
  + L'amministratore visualizza le seguenti informazioni relative all'annuncio:
    - Nome del punto di interesse collegato.
    - _E-mail_ dell'utente destinatario.
    - Data e ora di erogazione.
    - _Flag_ che indica se il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse collegato all'annuncio (#link(<uc20>)[UC20]).
  + Visualizzazione _e-mail_ dell'utente destinatario dell'annuncio (#link(<uc21>)[UC21]).
  + Visualizzazione data e ora di emissione dell'annuncio (#link(<uc22>)[UC22]).
  + Visualizzazione _flag_ sugli annunci nello storico inviati a noleggi attivi (#link(<uc23>)[UC23]).

=== UC20 - Visualizzazione nome del punto di interesse collegato all'annuncio <uc20>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia del punto di interesse collegato al relativo annuncio. L'amministratore è autenticato e ha accesso alla _dashboard_.
- *Postcondizioni*: il sistema espone il nome del punto di interesse collegato al relativo annuncio.
- *Trigger*: l'amministratore desidera visualizzare il nome del punto di interesse collegato al relativo annuncio.
- *Scenario principale*:
  + L'amministratore visualizza il nome del punto di interesse.

=== UC21 - Visualizzazione e-mail dell'utente destinatario dell'annuncio <uc21>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia della _e-mail_ dell'utente al quale viene mandato l'annuncio. L'amministratore è autenticato e ha accesso alla _dashboard_.
- *Postcondizioni*: il sistema espone l'_e-mail_ dell'utente al quale è stato inviato l'annuncio.
- *Trigger*: l'amministratore desidera visualizzare l'_e-mail_ dell'untente destinatario dell'annuncio.
- *Scenario principale*:
  + L'amministratore visualizza l'_e-mail_ dell'utente destinatario dell'annuncio.

=== UC22 - Visualizzazione data e ora di emissione dell'annuncio <uc22>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia della data e dell'ora alle quali è stato inviato il relativo annuncio all'utente. L'amministratore è autenticato e ha accesso alla _dashboard_.
- *Postcondizioni*: il sistema espone la data e l'ora alle quali è stato inviato il relativo annuncio all'utente.
- *Trigger*: l'amministratore desidera visualizzare la data e l'ora di emissione dell'annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la data e l'ora di emissione dell'annuncio.

=== UC23 - Visualizzazione flag sugli annunci nello storico inviati a noleggi attivi
<uc23>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia dello stato del noleggio al quale è stato inviato l'annuncio, se è cioè ancora attivo o meno. L'amministratore è autenticato e ha accesso alla _dashboard_.
- *Postcondizioni*: il sistema espone un _flag_ nel caso il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Trigger*: l'amministratore desidera visualizzare se l'annuncio è stato inviato ad un mezzo con noleggio attivo.
- *Scenario principale*:
  + L'amministratore visualizza il _flag_ nel caso in cui il noleggio relativo all'annuncio è ancora attivo.
#v(20pt)
#figure(
  image("../assets/use_cases/storico.png"),
  caption: [Diagramma dei casi d'uso UC18, UC19, UC20, UC21, UC22 e UC23],
)

=== UC24 - Visualizzazione dettagli singolo annuncio nello storico
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutte le informazioni degli annunci generati per i clienti dell'amministratore. Questo è autenticato ed è acceduto alla sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone interamente l'annuncio insieme alle relative informazioni:
  - Nome del punto di interesse collegato.
  - Categoria del punto di interesse collegato.
  - _E-mail_ dell'utente destinatario.
  - Data e ora di erogazione.
  - _Flag_ che indica se il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Trigger*: l'amministratore desidera visualizzare l'annuncio insieme alle relative informazioni.
- *Scenario principale*:
  + L'amministratore seleziona l'opzione per visualizzare i dettagli dell'annuncio desiderato.
  + Viene esposto l'annuncio insieme alle relative informazioni:
    - Nome del punto di interesse collegato.
    - Categoria del punto di interesse collegato.
    - _E-mail_ dell'utente destinatario.
    - Data e ora di erogazione.
    - Un _flag_ che indica se il noleggio al quale è stato inviato l'annuncio è ancora attivo.
- *Inclusioni*:
  + Visualizzazione nome del punto di interesse collegato all'annuncio (#link(<uc20>)[UC20]).
  + Visualizzazione _e-mail_ dell'utente destinatario dell'annuncio (#link(<uc21>)[UC21]).
  + Visualizzazione data e ora di emissione dell'annuncio (#link(<uc22>)[UC22]).
  + Visualizzazione _flag_ sugli annunci nello storico inviati a noleggi attivi (#link(<uc23>)[UC23]).
  + Visualizzazione completa dell'annuncio (#link(<uc25>)[UC25]).
  + Visualizzazione categoria del punto di interesse collegato all'annuncio (#link(<uc26>)[UC26]).
  + Chiusura della finestra di dialogo aperta (#link(<uc27>)[UC27]).

=== UC25 - Visualizzazione completa dell'annuncio <uc25>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia degli annunci generati. L'amministratore è autenticato e ha accesso alla _dashboard_.
- *Postcondizioni*: il sistema espone l'annuncio per intero.
- *Trigger*: l'amministratore desidera visualizzare l'annuncio generato precedentemente.
- *Scenario principale*:
  + L'amministratore visualizza interamente l'annuncio generato precedentemente.

=== UC26 - Visualizzazione categoria del punto di interesse collegato all'annuncio <uc26>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia della categoria del punto di interesse collegato al relativo annuncio. L'amministratore è autenticato e ha accesso alla _dashboard_.
- *Postcondizioni*: il sistema espone la categoria del punto di interesse collegato al relativo annuncio.
- *Trigger*: l'amministratore desidera visualizzare la categoria del punto di interesse collegato al relativo annuncio.
- *Scenario principale*:
  + L'amministratore visualizza la categoria del punto di interesse.

=== UC27 - Chiusura della finestra di dialogo aperta <uc27>
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
  caption: [Diagramma dei casi d'uso UC20, UC21, UC22, UC23, UC24, UC25, UC26 e UC27],
)

#pagebreak()

=== UC28 - Visualizzazione storico annunci per lista
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per i clienti dell'amministratore. Questo è autenticato e ha accesso alla _dashboard_.
- *Postcondizioni*: il sistema espone gli annunci generati fino a quel momento ordinati dal più recente in formato a lista.
- *Trigger*: l'amministratore vuole prendere visione degli annunci generati fino a quel momento in formato a lista.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore selezione l'opzione per visualizzare gli annunci in formato a lista.

=== UC29 - Visualizzazione storico annunci per griglia
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per i clienti dell'amministratore. Questo è autenticato e ha accesso alla _dashboard_.
- *Postcondizioni*: il sistema espone gli annunci generati fino a quel momento ordinati dal più recente in formato a griglia.
- *Trigger*: l'amministratore vuole prendere visione degli annunci generati fino a quel momento in formato a griglia.
- *Scenario principale*:
  + L'amministratore accede alla _dashboard_ principale.
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore selezione l'opzione per visualizzare gli annunci in formato a griglia.
#v(20pt)
#figure(
  image("../assets/use_cases/display.png"),
  caption: [Diagramma dei casi d'uso UC28 e UC29],
)

#pagebreak()

=== UC30 - Ricerca degli annunci nello storico
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per i clienti dell'amministratore. Questo è autenticato ed è acceduto alla sezione dedicata agli annunci.
- *Postcondizioni*: il sistema espone gli annuci filtrati secondo alcune opzioni fornite: _e-mail_ dell'utente destinatario dell'annuncio, nome del punto di interesse collegato all'annuncio, intervallo di date e fascia oraria di emissione.
- *Trigger*: l'amministratore desidera prendere visione di alcuni specifici annunci generati precedentemente.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita degli annunci.
  + L'amministratore esegue una ricerca degli annunci desiderati.
- *Inclusione*:
  + Ricerca degli annunci nello storico per _e-mail_ utente (#link(<uc31>)[UC31]).
  + Ricerca degli annnunci nello storico per nome del punto di interesse (#link(<uc32>)[UC32]).
  + Ricerca degli annunci nello storico per intervallo di date di emissione (#link(<uc33>)[UC33]).
  + Ricerca degli annunci nello storico per fascia oraria di emissione (#link(<uc34>)[UC34]).

=== UC31 - Ricerca degli annunci nello storico per e-mail utente <uc31>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati per l'utente selezionato. L'amministratore è acceduto alla sezione dedicata agli annunci e ha eseguito una ricerca degli annunci.
- *Postcondizioni*: il sistema espone lo storico degli annunci destinati all'utente selezionato.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento per uno specifico utente.
- *Scenario principale*:
  + L'amministratore seleziona l'_e-mail_ di un utente.
  + Vengono visualizzati solo gli annunci destinati all'utente selezionato.

=== UC32 - Ricerca degli annunci nello storico per nome del punto di interesse <uc32>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci generati collegati al punto di interesse selezionato. L'amministratore è acceduto alla sezione dedicata agli annunci e ha eseguito una ricerca degli annunci.
- *Postcondizioni*: il sistema espone lo storico degli annunci collegati al punto di interesse selezionato.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento per uno specifico punto di interesse.
- *Scenario principale*:
  + L'amministratore seleziona il nome di un punto di interesse.
  + Vengono visualizzati solo gli annunci collegati al punto di interesse selezionato.

=== UC33 - Ricerca degli annunci nello storico per intervallo di date di emissione <uc33>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci emessi nell'intervallo di date selezionato. L'amministratore è acceduto alla sezione dedicata agli annunci e ha eseguito una ricerca degli annunci.
- *Postcondizioni*: il sistema espone lo storico degli annunci emessi nell'intervallo di date selezionato.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento in un determinato intervallo di date.
- *Scenario principale*:
  + L'amministratore seleziona un intervallo di date.
  + Vengono visualizzati solo gli annunci emessi nell'intervallo di date selezionato.

=== UC34 - Ricerca degli annunci nello storico per fascia oraria di emissione <uc34>
- *Attore principale*: Amministratore.
- *Precondizioni*: il sistema tiene traccia di tutti gli annunci emessi nella fascia oraria selezionata. L'amministratore è acceduto alla sezione dedicata agli annunci e ha eseguito una ricerca degli annunci.
- *Postcondizioni*: il sistema espone lo storico degli annunci emessi nella fascia oraria selezionata.
- *Trigger*: l'amministratore desidera prendere visione degli annunci generati fino a quel momento in una determinata fascia oraria.
- *Scenario principale*:
  + L'amministratore seleziona una fascia oraria.
  + Vengono visualizzati solo gli annunci emessi nella fascia oraria selezionata.
#v(20pt)
#figure(
  image("../assets/use_cases/filtro.png"),
  caption: [Diagramma dei casi d'uso UC30, UC31, UC32, UC33 e UC34],
)

#pagebreak()

// TODO: OPZIONALI

=== UC35 - Visualizzazione statistiche in grafici
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
  + Vengono visualizzati i grafici relativi alle seguenti analisi:
    - Rapporto degli annnunci generati sulle richieste totali
    - Quantità di annunci generati per ogni punto di interesse in un intervallo di date selezionato.
    - Quantità di annunci generati legati a un punto di interesse in una data e fascia oraria selezionati.
- *Inclusioni*:
  + Visualizzazione singolo grafico (#link(<uc36>)[UC36]).

=== UC36 - Visualizzazione singolo grafico <uc36>
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
  + Viene visualizzato il grafico con le relative informazioni:
    - Titolo del grafico.
    - Etichetta dell'asse delle ascisse.
    - Etichetta dell'asse delle ordinate.
    - Etichette dei valori sugli assi.
    - Dati del grafico.
  // TODO: AGGIORNATO IN AUTOMATICO ALL'ARRIVO DI NUOVI DATI?
- *Inclusioni*:
  + Visualizzazione titolo del grafico (#link(<uc37>)[UC37]).
  + Visualizzazione etichetta asse delle ascisse e relativi valori (#link(<uc38>)[UC38]).
  + Visualizzazione etichetta asse delle ordinate e relativi valori (#link(<uc39>)[UC39]).
  + Visualizzazione dati sul grafico (#link(<uc40>)[UC40]).

=== UC37 - Visualizzazione titolo del grafico <uc37>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato al sistema ed ha accesso alla sezione dedicata ai grafici.
- *Postcondizioni*: l'amministratore visualizza il titolo del relativo grafico.
- *Trigger*: l'amministratore desidera prendere visione del titolo del grafico.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita dei grafici.
  + Viene esposto il titolo del relativo grafico.

=== UC38 - Visualizzazione etichetta asse delle ascisse e relativi valori <uc38>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato al sistema ed ha accesso alla sezione dedicata ai grafici.
- *Postcondizioni*: l'amministratore visualizza le etichette dell'asse delle ascisse e dei valori dell'asse del relativo grafico.
- *Trigger*: l'amministratore desidera prendere visione delle etichette dell'asse delle ascisse e dei rispettivi valori.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita dei grafici.
  + Viene esposta l'etichetta dell'asse delle ascisse del relativo grafico.
  + Vengono esposte le etichette dei valori segnati sull'asse delle ascisse del relativo grafico.

=== UC39 - Visualizzazione etichetta asse delle ordinate e relativi valori <uc39>
- *Attore principale*: Amministratore.
- *Precondizioni*: l'amministratore è autenticato al sistema ed ha accesso alla sezione dedicata ai grafici.
- *Postcondizioni*: l'amministratore visualizza le etichette dell'asse delle ordiante e dei valori dell'asse del relativo grafico.
- *Trigger*: l'amministratore desidera prendere visione delle etichette dell'asse delle ordinate e dei rispettivi valori.
- *Scenario principale*:
  + L'amministratore accede alla sezione apposita dei grafici.
  + Viene esposta l'etichetta dell'asse delle ordinate del relativo grafico.
  + Vengono esposte le etichette dei valori segnati sull'asse delle ordinate del relativo grafico.

=== UC40 - Visualizzazione dati sul grafico <uc40>
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
  caption: [Diagramma dei casi d'uso UC35, UC36, UC37, UC38, UC39 e UC40],
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




