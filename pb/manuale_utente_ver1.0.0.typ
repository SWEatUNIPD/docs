#import "/templates/template.typ": *
#import "@preview/treet:0.1.1": *

#show: content => verbale(
  data: "28 marzo 2025",
  destinatari: ("Gruppo SWE@", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.L."),
  responsabile: "Riccardo Milan",
  redattori: (
    "Andrea Precoma",
    "Davide Marin",
  ),
  verificatori: (
    "Andrea Precoma",
    "Klaudio Merja",
  ),
  titolo: "Manuale Utente",
  uso: "Esterno",
  versioni: (
    "1.0.0",
    "28/03/2025",
    "Davide Marin",
    "Andrea Precoma",
    [
      - Rimossa sezione del _database_
      - Aggiunta sezione "Grafici statistici degli annunci"
    ],
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

== Scopo del documento
Lo scopo del documento Manuale Utente è quello di spiegare ai committenti il funzionamento e l'utilizzo del prodotto _software_. Vengono quindi elencati i procedimenti per eseguire il sistema isolato con #rifGlossario("Docker"), le istruzioni per collegarsi ai servizi esposti e come utilizzarli.

== Scopo del prodotto
Lo scopo del progetto _NearYou - Smart custom advertising platform_ proposto dall'azienda Sync Lab S.r.l. è quello di sviluppare un prodotto che sfrutti la #rifGlossario("GenAI") per la creazione di pubblicità mirate sui singoli utenti. Al fine di personalizzare gli annunci vengono inviati dei _#rifGlossario("prompt")_ con i dati necessari come la posizione in tempo reale, le informazioni personali e i dati di profilazione degli utenti stessi.

L'obiettivo del prodotto è quello di rendere le campagne pubblicitarie delle aziende interessate il più personalizzate e ottimizzate possibili, aumentando così il coinvolgimento dell'utente finale. Questo ha lo scopo di ridurre la disconnessione tra messaggio e destinatario e portare un miglioramento sul #rifGlossario("ROI") della campagna stessa.

== Glossario
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo, viene fornito un glossario.

La prima occorrenza di un termine definito all'interno del glossario presente all'interno di un documento viene sottolineato e seguito dalla lettera "g" posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/norme_di_progetto_ver2.0.0.pdf")
- Regolamento del progetto didattico, _slide_ 23 (ultimo accesso 28/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")
- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso 28/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")
=== Riferimenti informativi
- Glossario (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/glossario_ver2.0.0.pdf")
- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso 28/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")
- Guida ufficiale per l'installazione di Docker (ultimo accesso 28/03/2025) \ #formatLink(url: "https://docs.docker.com/engine/install")


= Avvio del sistema
== Requisiti tecnici per avviare il sistema <req>

Al fine di usufruire del prodotto _software_ è richiesta l'installazione di Docker e #rifGlossario("Docker Compose") per la gestione dei _container_. Si mette a disposizione la #formatLink(label: "guida ufficiale", url: "https://docs.docker.com/engine/install/") per l'installazione.

== Download della repository <download>
Una volta configurato l'ambiente locale si può procedere al _download_ della _repository_ contenete il codice sorgente. Recandosi alla #formatLink(label: "pagina dedicata", url: "https://github.com/SWEatUNIPD/NearYou") si può scaricare il `.zip` e successivamente decomprimere.

In alternativa, se si ha installato #rifGlossario("Git"), è possibile "clonare" la _repository_ posizionandosi sulla destinazione desiderata ed eseguendo il comando \ `git clone https://github.com/SWEatUNIPD/NearYou.git`.

== Principali file
=== File compose.yml
_File_ di configurazione utilizzato per definire le proprietà dei servizi. Viene utilizzato per avviare e, nel caso si eseguisse per la prima volta, creare i _container_ contenenti i servizi descritti.
- *kafka*: _#rifGlossario("data broker")_ con immagine `apache/kafka:4.0.0`.
- *postgis*: _#rifGlossario("database")_ in #rifGlossario("PostgreSQL") con installato l'estensione #rifGlossario("PostGIS") per gli incroci geospaziali con immagine `postgis/postgis:17-3.5`.
- *grafana*: _front-end_ con immagine `rmilan/grafana-rm`.
- *flink*: _data #rifGlossario("stream processing")_ con immagine `flink:1.20.1-scala_2.12-java17`.
- *simulator*: simulatore dei sensori con immagine _custom_ `simulator`.
- *maven*: strumento di _build automation_ con immagine maven:3.8-openjdk-17.

== Istruzioni per l'avvio del sistema <avvio>
Prima di proseguire all'avvio del sistema ci si assicuri di aver rispettato i requisiti tecnici (#link(<req>)[sez. 2.1]) e di aver scaricato la _repository_ (#link(<download>)[sez 2.2]).

Di seguito i passi per avviare correttamente il sistema. Le stesse istruzioni sono disponibili nel `README.md` della _#formatLink(label: "repository", url: "https://github.com/SWEatUNIPD/NearYou")_.
+ Aprire il terminale nella cartella scaricata dalla _repository_.
+ La prima volta avviare il sistema tramite Docker Compose eseguendo il comando \ `docker compose up -d --build` \ In seguito è sufficiente \ `docker compose up -d` \ Dovrebbero comparire la _network_ seguita dalla scritta "Created" e la lista dei _container_ seguiti dalla scritta "Started".

Per maggiori informazioni riguardo ai _container_ e per visualizzare lo stato degli stessi è possibile eseguire il comando \ `docker ps -a`.

== Istruzioni per lo spegnimento del sistema
Si ricorda che per eseguire qualunque dei seguenti comandi è necessario posizionarsi col terminale nella cartella scaricata dalla _repository_.

Per interrompere l'esecuzione dell'ambiente avviato secondo le istruzioni descritte nella #link(<avvio>)[sez 2.4] è sufficiente eseguire il comando \ `docker compose down -v` \ Per riavviare il sistema è sufficiente eseguire il comando \ `docker compose up -d`

Se si vuole solo mettere in pausa il sistema in modo da riprenderlo più rapidamente in un secondo momento si può eseguire il comando \ `docker compose stop` \ Per riattivare il sistema è sufficiente eseguire il comando \ `docker compose start`

= Collegamento ai servizi
Prima di collegarsi ai servizi è richiesto di aver soddisfatto i requisiti tecnici (#link(<req>)[sez. 2.1]), di aver scaricato la _repository_ (#link(<download>)[sez 2.2]) e di aver avviato correttamente il sistema (#link(<avvio>)[sez 2.4]).

== Dashboard dell'amministratore
Collegarsi all'indirizzo `localhost:3000` (oppure `128.0.0.1:3000`) e inserire le credenziali "admin" per _username_ e _password_.

#figure(
  image("../assets/img/Manuale/grafana-login.png", width: 50%),
  caption: [Inserimento credenziali per #rifGlossario("Grafana")],
)
#v(5pt)

In seguito viene richiesto di cambiare la _password_ perché poco sicura ma si può saltare l'operazione.

= Guida all'utilizzo della dashboard

== Mappa principale dei noleggi
Una volta effettuato l'accesso a Grafana tramite opportuna pagina di accesso, si viene indirizzati in automatico alla visualizzazione della _#rifGlossario("dashboard")_ della mappa geografica.

#figure(
  image("../assets/img/Manuale/grafana-geomap.png", width: 95%),
  caption: [_Dashboard_ della mappa geografica di Grafana], 
)
#v(5pt)

In questa schermata è possibile effettuare le classiche operazioni interattive con una mappa, come "zoom in" e "zoom out" tramite rotella del _mouse_ e anche spostare a proprio piacimento la porzione di mappa visualizzata tramite "_click_ and drag" con il tasto sinistro del _mouse_.

All'interno della mappa sono visualizzabili immediatamente tutti i punti di interesse, in seguito riferiti dall'acronimo POI, presenti in _database_ per la zona geografica visualizzata, caratterizzati da un _#rifGlossario("marker")_ rappresentante un negozio di colore nero.
È possibile interagire con questi _marker_ sia tramite un _hover_, sia tramite un _click_ con il pulsante sinistro del _mouse_; interagendo con essi si apre un #rifGlossario("popover") in corrispondenza del _marker_ premuto, nella quale sono presenti i dati relativi a quel POI. Per chiudere il _popover_ di dettaglio è possibile premere sul simbolo "X" in alto a destra della stessa, oppure cliccare in un punto qualsiasi al di fuori del _popover_.

#figure(
  image("../assets/img/Manuale/dettaglio-POI-click.png", width: 50%),
  caption: [Dettaglio del POI selezionato], 
)
#v(5pt)

Se ci sono dei noleggi attivi, essi appaiono all'interno della mappa e sono contraddistinti da una linea di colore blu che segue gli ultimi spostamenti di ogni mezzo.
Nel caso un utente di un noleggio passi nelle prossimità di un POI, è possibile che si visualizzino altri tipi di _marker_ relativi agli annunci:
1. Annuncio generato: contraddistinto da un pallino di colore arancione
2. Annuncio non generato: contraddistinto da una X di colore rosso.

#figure(
  image("../assets/img/Manuale/marker_annuncio_multipli.png", width: 75%),
  caption: [Mappa con noleggi attivi e _marker_ di annunci generati], 
)
#v(5pt)

Con entrambi i tipi di _marker_ è possibile interagire effettuando un _click_ col pulsante sinistro del _mouse_. Sopra di essi si apre un _popover_ in corrispondenza del _marker_ premuto, nella quale sono presenti i dati relativi al noleggio, al POI e il testo dell'annuncio se generato, altrimenti il motivo per cui non è stato prodotto.
Come per il _popover_ di dettaglio dei POI, è possibile chiudere il _popover_ di dettaglio degli annunci premendo sul simbolo "X", oppure cliccare in un punto qualsiasi al di fuori del _popover_.


#figure(
  image("../assets/img/Manuale/annuncio_marker_dettaglio.png", width: 85%),
  caption: [Dettagli dell'annuncio relativo al _marker_ selezionato], 
)
#v(5pt)

Nel caso di un annuncio generato, è possibile visualizzare i dettagli di quest'ultimo premendo sul _link_ "Dettagli annuncio" in fondo al _popover_. Questo apre una nuova finestra contenente tutti i dettagli dell'annuncio generato, similmente a come viene mostrato nella #link(<lista_dashboard>)[sez. 4.2] (figura 10).


== Storico degli annunci generati <lista_dashboard>
È possibile visualizzare anche sotto forma di lista tutti gli annunci generati dal #rifGlossario("LLM").
Per aprire questa pagina, premere la voce _"Dashboards"_ nel menu a sinistra dello schermo.

#figure(
  image("../assets/img/Manuale/sel_dashboards.png", width: 50%),
  caption: [Selezione voce "_Dashboards_" dal menu], 
)
#v(5pt)

Questo apre una pagina con la lista di tutte le _dashboard_ disponibili. Selezionare la voce "Storico annunci". 

#figure(
  image("../assets/img/Manuale/lista_dashboards.png", width: 85%),
  caption: [Selezione voce "Storico annunci" dalla lista delle _dashboard_], 
)
#v(5pt)

Aperta la _dashboard_ ci si trova davanti ad una lista contenente tutti i dati degli annunci generati.

#figure(
  image("../assets/img/Manuale/storico_annunci.png", width: 95%),
  caption: [Storico annunci], 
)
#v(5pt)

Per ogni voce della lista, inoltre, è possibile premere l'ID dell'annuncio interessato per esaminare il suo dettaglio.

#figure(
  image("../assets/img/Manuale/annuncio_selezionato.png", width: 50%),
  caption: [Selezione dettaglio tramite ID annuncio], 
)
#v(5pt)

Questo apre una nuova finestra contenente tutti i dettagli dell'annuncio generato, compreso il testo dell'annuncio per intero.

#figure(
  image("../assets/img/Manuale/dettaglio_annuncio.png", width: 95%),
  caption: [Dettaglio annuncio selezionato dallo storico], 
)
#v(5pt)


== Grafici statistici degli annunci
È possibile visualizzare sotto forma di grafici le statistiche relative agli annunci per ogni POI.
Per aprire questa pagina, similmente a come visto nella #link(<lista_dashboard>)[sez. 4.2], premere la voce _"Dashboards"_ nel menu a sinistra dello schermo (figura 6) e selezionare la voce "Grafici" nella lista delle _dashboard_ che appare (figura 7).

Questo apre la visualizzazione dei grafici statistici degli annunci.
#figure(
  image("../assets/img/Manuale/grafici.png", width: 95%),
  caption: [Pagina dei grafici statistici], 
)
#v(5pt)

All'interno della pagina sono presenti tre grafici:
1. Grafico a torta che mostra il numero di annunci generati e quelli non generati dal LLM per il POI selezionato. Per cambiare il POI di interesse, è sufficiente selezionare quello desiderato dal menu a tendina in alto a sinistra.

#figure(
  image("../assets/img/Manuale/grafici_menu_tendina.png", width: 50%),
  caption: [Selezione POI da menu a tendina], 
)
#v(5pt)
2. Grafico a linee che mostra il numero di annunci generati dal sistema nelle ultime 24 ore, con granularità oraria. I valori contenuti all'interno di questo grafico fanno riferimento al totale degli annunci generati.
3. Grafico a barre che mostra il numero medio di noleggi che vengono effettuati in ciascun mese dell’anno, risultato della media di noleggi effettuati in quel mese nel corso degli anni. I valori contenuti all'interno di questo grafico fanno riferimento al totale dei noleggi.



Per visualizzare le misure esatte di ogni punto dei grafici, è sufficiente effettuare un _hover_ del cursore del _mouse_ al di sopra del punto di interesse. Questo apre un _popover_ contenente il valore preciso di tale punto. L'operazione è possibile su tutti i tipi di grafico. 

#figure(
  image("../assets/img/Manuale/dettaglio_grafico.png", width: 55%),
  caption: [Visualizzazione dettaglio del punto di un grafico], 
)
#v(5pt)