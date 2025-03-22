#import "/templates/template.typ": *
#import "@preview/treet:0.1.1": *

#show: content => verbale(
  data: "21 marzo 2025",
  destinatari: ("Gruppo SWE@", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.L."),
  responsabile: "-",
  redattori: (
    "Andrea Precoma",
    "Davide Marin",
  ),
  verificatori: (
    "Klaudio Merja",
    "Andrea Precoma",
  ),
  titolo: "Manuale Utente",
  uso: "Esterno",
  versioni: (
    "0.2.0",
    "21/03/2025",
    "Davide Marin",
    "Andrea Precoma",
    [
      - Modifiche vecchie sezioni
      - Aggiunta sezione "Guida all'utilizzo della _dashboard_" 
    ],
    "0.1.0",
    "04/03/2025",
    "Andrea Precoma",
    "Klaudio Merja",
    [
      - Struttura e introduzione del documento
      - Istruzioni principali per _set up_ e avvio del sistema
    ],
  ),
  content: content,
)

= Introduzione
// TODO: controllare che ci sia tutto
== Scopo del documento
Lo scopo del documento Manuale Utente è quello di spiegare ai committenti il funzionamento e l'utilizzo del prodotto _software_. Vengono quindi elencati i procedimenti per eseguire il sistema isolato con #rifGlossario("Docker"), le istruzioni per collegarsi ai servizi esposti e come utilizzarli.
// TODO: test?

== Scopo del prodotto
Lo scopo del progetto _NearYou - Smart custom advertising platform_ proposto dall'azienda Sync Lab S.r.l. è quello di sviluppare un prodotto che sfrutti la #rifGlossario("GenAI") per la creazione di pubblicità mirate sui singoli utenti. Al fine di personalizzare gli annunci vengono inviati dei _#rifGlossario("prompt")_ con i dati necessari come la posizione in tempo reale, le informazioni personali e i dati di profilazione degli utenti stessi.

L'obiettivo del prodotto è quello di rendere le campagne pubblicitarie delle aziende interessate il più personalizzate e ottimizzate possibili, aumentando così il coinvolgimento dell'utente finale. Questo ha lo scopo di ridurre la disconnessione tra messaggio e destinatario e portare un miglioramento sul #rifGlossario("ROI") della campagna stessa.

== Glossario
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo, viene fornito un glossario.

La prima occorrenza di un termine definito all'interno del glossario presente all'interno di un documento viene sottolineato e seguito dalla lettera "g" posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/norme_di_progetto_ver2.0.0.pdf")
- Regolamento del progetto didattico, _slide_ 23 (ultimo accesso 04/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")
- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso 04/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")
=== Riferimenti informativi
- Glossario (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/glossario_ver2.0.0.pdf")
- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso 04/03/2025 \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")
- Guida ufficiale per l'installazione di Docker (ultimo accesso 04/03/2025) \ #formatLink(url: "https://docs.docker.com/engine/install")


= Avvio del sistema
== Requisiti tecnici per avviare il sistema <req>
// TODO: VERSIONE DOCKER?
Al fine di usufruire del prodotto _software_ è richiesta l'installazione di Docker e #rifGlossario("Docker Compose") per la gestione dei _container_. Si mette a disposizione la #formatLink(label: "guida ufficiale", url: "https://docs.docker.com/engine/install/") per l'installazione.

=== Requisiti opzionali ??

== Download della repository <download>
Una volta configurato l'ambiente locale si può procedere al _download_ della _repository_ contenete il codice sorgente. Recandosi alla #formatLink(label: "pagina dedicata", url: "https://github.com/SWEatUNIPD/NearYou") si può scaricare il `.zip` e successivamente decomprimere.

In alternativa, se si ha installato #rifGlossario("Git"), è possibile "clonare" la _repository_ posizionandosi sulla destinazione desiderata ed eseguendo il comando \ `git clone https://github.com/SWEatUNIPD/NearYou.git`.

== Principali file
=== File docker-compose.yml
_File_ di configurazione utilizzato per definire le proprietà dei servizi. Viene utilizzato per avviare e, nel caso si eseguisse per la prima volta, creare i _container_ contenenti i servizi descritti.
- *kafka*: _#rifGlossario("data broker")_ con immagine `bitnami/kafka:latest`.
- *postgis*: _#rifGlossario("database")_ in #rifGlossario("PostgreSQL") con installato l'estensione PostGIS per gli incroci geospaziali con immagine `postgis/postgis:latest`.
- *pgadmin*: interfaccia per monitorare lo stato del _database_ con immagine `dpage/pgadmin4:latest`.
- *spring-backend*: TODO?? con immagine _custom_ `spring-backend`.
- *grafana*: _front-end_ con immagine `grafana/grafana:latest`.
- *simulator*: simulatore dei sensori con immagine _custom_ `simulator`.

== Istruzioni per l'avvio del sistema <avvio>
Prima di proseguire all'avvio del sistema ci si assicuri di aver rispettato i requisiti tecnici (#link(<req>)[sez. 2.1]) e di aver scaricato la _repository_ (#link(<download>)[sez 2.2]).

Di seguito i passi per avviare correttamente il sistema. Le stesse istruzioni sono disponibili nel `README.md` della _#formatLink(label: "repository", url: "https://github.com/SWEatUNIPD/NearYou")_.
+ Aprire il terminale nella cartella scaricata dalla _repository_.
+ "Buildare" l'immagine del _back-end_ in Spring eseguendo il comando \ `docker build -t spring-backend` \ Questa istruzione è necessaria solo la prima volta che si vuole avviare il sistema.
+ "Buildare" l'immagine del simulatore eseguendo il comando \ `docker build -t simulator client/` \ Questa istruzione è necessaria solo la prima volta che si vuole avviare il sistema.
+ Avviare il sistema tramite Docker Compose eseguendo il comando \ `docker compose up -d` \ Dovrebbero comparire la _network_ seguita dalla scritta "Created" e la lista dei _container_ seguiti dalla scritta "Started".

Per maggiori informazioni riguardo ai _container_ e per visualizzare lo stato degli stessi è possibile eseguire il comando \ `docker ps -a`.

== Istruzioni per lo spegnimento del sistema
Si ricorda che per eseguire qualunque dei seguenti comandi è necessario posizionarsi col terminale nella cartella dove è presente il _file_ `docker-compose.yml`.

Per interrompere l'esecuzione dell'ambiente avviato secondo le istruzioni descritte nella #link(<avvio>)[sez 2.4] è sufficiente eseguire il comando \ `docker compose down` \ Per riavviare il sistema è sufficiente eseguire il comando \ `docker compose up -d`

Se si vuole solo mettere in pausa il sistema in modo da riprenderlo più rapidamente in un secondo momento si può eseguire il comando \ `docker compose stop` \ Per riattivare il sistema è sufficiente eseguire il comando \ `docker compose start`

= Collegamento ai servizi
Prima di collegarsi ai servizi è richiesto di aver soddisfatto i requisiti tecnici (#link(<req>)[sez. 2.1]), di aver scaricato la _repository_ (#link(<download>)[sez 2.2]) e di aver avviato correttamente il sistema (#link(<avvio>)[sez 2.4]).

== Dashboard dell'amministratore
Collegarsi all'indirizzo `localhost:3000` (oppure `127.0.0.1:3000`) e inserire le credenziali "admin" per _username_ e _password_.

#figure(
  image("../assets/img/Manuale/grafana-login.png", width: 50%),
  caption: [Inserimento credenziali per #rifGlossario("Grafana")],
)
#v(5pt)

In seguito viene richiesto di cambiare la _password_ perché poco sicura ma si può saltare l'operazione.

== Interfaccia per lo stato del database
Collegarsi all'indirizzo `localhost:8888` (oppure `127.0.0.1:8888`) e inserire le credenziali "sweat.unipd\@gmail.com" per _username_ e "Admin12!" per _password_.

#figure(
  image("../assets/img/Manuale/db-login.png", width: 50%),
  caption: [Inserimento credenziali per PgAdmin],
)
#v(5pt)

// TODO: bisogna spiegare anche il simulatore?

= Guida all'utilizzo della dashboard

== Mappa principale dei noleggi
Una volta effettuato l'accesso a Grafana tramite opportuna pagina di accesso, si viene indirizzati in automatico alla visualizzazione della _dashboard_ della mappa geografica.

#figure(
  image("../assets/img/Manuale/grafana-geomap.png", width: 95%),
  caption: [_Dashboard_ della mappa geografica di Grafana], 
)
#v(5pt)

In questa schermata è possibile effettuare le classiche operazioni interattive con una mappa, come "zoom in" e "zoom out" tramite rotella del _mouse_ e anche spostare a proprio piacimento la porzione di mappa visualizzata tramite "_click_ and drag" con il tasto sinistro del _mouse_.

All'interno della mappa sono visualizzabili immediatamente tutti i punti di interesse, in seguito riferiti dall'acronimo POI, presenti in _database_ per la zona geografica visualizzata, caratterizzati da un _marker_ rappresentante un negozio di colore nero.
È possibile interagire con questi marker sia tramite un _hoover_, sia tramite un _click_ con il pulsante sinistro del _mouse_; interagendo con essi si apre una finestra in corrispondenza del marker premuto, nella quale sono presenti i dati relativi a quel POI. Per chiudere la finestra di dettaglio è possibile premere sul simbolo "X" in alto a destra della stessa, oppure cliccare in un punto qualsiasi al di fuori della finestra.

#figure(
  image("../assets/img/Manuale/dettaglio-POI-click.png", width: 50%),
  caption: [Dettaglio del POI selezionato], 
)
#v(5pt)

Se ci sono dei noleggi attivi, essi appaiono all'interno della mappa e sono contraddistinti da una linea di colore blu che segue gli ultimi spostamenti di ogni mezzo.
Nel caso un utente di un noleggio passi nelle prossimità di un POI, è possibile che si visualizzino altri tipi di marker relativi agli annunci:
1. Annuncio generato: contraddistinto da un pallino di colore arancione
2. Annuncio non generato: contraddistinto da una X di colore rosso.
Con entrambi i tipi di _marker_ è possibile interagire effettuando un _click_ col pulsante sinistro del _mouse_. Sopra di essi si apre una finestra in corrispondenza del marker premuto, nella quale sono presenti i dati relativi al noleggio, al POI e il testo dell'annuncio se generato, altrimenti il motivo per cui non è stato prodotto.
Come per la finestra di dettaglio dei POI, è possibile chiudere la finestra di dettaglio degli annunci premendo sul simbolo "X", oppure cliccare in un punto qualsiasi al di fuori della finestra.

== Storico degli annunci generati
È possibile visualizzare anche sotto forma di lista tutti gli annunci generati dalla LLM.
Per aprire questa pagina, premere la voce _"Dashboard"_ nel menu a sinistra dello schermo, questo apre una pagina con la lista di tutte le _dashboard_ disponibili. Selezionare la voce "Storico annunci". Aperta la _dashboard_ ci si trova davanti ad una lista contenente tutti i dati degli annunci generati.

Per ogni voce della lista, inoltre, è possibile premere "Vedi altro" per esaminare il dettaglio di ogni generazione, nonchè il testo dell'annuncio generato per intero.


// TODO: test
