#import "/templates/template.typ": *
#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.1": *

#show: codly-init.with()
#codly(
  languages: (
    ts: (name: "TypeScript"),
    java: (name: "Java"),
  ),
  zebra-fill: none,
)

#show: content => verbale(
  data: "27 marzo 2025",
  destinatari: ("Gruppo SWE@", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.L."),
  responsabile: "Andrea Perozzo",
  redattori: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Picello",
    "Klaudio Merja",
    "Riccardo Milan",
  ),
  verificatori: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Picello",
    "Klaudio Merja",
    "Riccardo Milan",
  ),
  titolo: "Specifica Tecnica",
  uso: "Esterno",
  versioni: (
    "1.0.0",
    "27/03/2025",
    [Klaudio Merja],
    [Andrea Precoma],
    [
      - Redazione delle sezioni relative al _data broker_ e _stream processor_
    ],
    "0.7.0",
    "25/03/2025",
    "Klaudio Merja",
    "Andrea Precoma",
    [
      - Redazione della sezione relativa al linguaggio Java
    ],
    "0.6.0",
    "25/03/2025",
    "Andrea Precoma",
    "Klaudio Merja",
    [
      - Redazione architetture del sistema
    ],
    "0.5.0",
    "22/03/2025",
    "Davide Picello",
    "Riccardo Milan\nAndrea Precoma",
    [- Completata sezione "Stato dei requisiti funzionali"],
    "0.4.0",
    "21/03/2025",
    "Riccardo Milan",
    "Davide Marin\nDavide Picello",
    [
      - Aggiunta sezione Grafana
    ],
    "0.3.0",
    "20/03/2025",
    "Andrea Perozzo",
    "Andrea Precoma\nKlaudio Merja",
    [
      - Redatta sezione Database
    ],
    "0.2.0",
    "18/03/2025",
    "Andrea Precoma",
    "Riccardo Milan\nDavide Picello",
    [
      - Completate tecnologie del simulatore
      - Redatta sezione relativa al simulatore
      - Redatta sezione relativa ai _design #box[pattern]_
    ],
    "0.1.0",
    "11/03/2025",
    "Riccardo Milan",
    "Klaudio Merja",
    [
      - Costruita struttura del documento
      - Redazione introduzione del documento
    ],
  ),
  content: content,
)

// TODO: TEST GLOSSARIO PRIMA DI APPROVARE

= Introduzione
== Scopo del documento
Lo scopo principale del documento Specifiche Tecniche è quello di presentare in maniera dettagliata le scelte tecniche e tecnologiche effettuate dal gruppo al fine di sviluppare il prodotto oggetto del capitolato 4 _NearYou - Smart Custom Advertising Platform_ dell'azienda proponente SyncLab S.r.l..

Il documento espone una descrizione dettagliata delle tecnologie, delle scelte architetturali e implementative e dei _design pattern_ utilizzati dal gruppo per realizzare l'infrastruttura informatica che compone il prodotto _software_ NearYou.

Il documento riporta inoltre il tracciamento dei requisiti funzionali soddisfatti come conseguenza dello sviluppo del prodotto corredate da grafici che ne attestano la copertura di questi ultimi.

== Scopo del progetto
Il prodotto NearYou - Smart custom advertising platform è una piattaforma che sfrutta la #rifGlossario("GenAI") per la creazione di pubblicità personalizzate da mostrare a ciascun utente, sfruttando dati come la posizione trasmessi in tempo reale, le informazioni personali e i dati di profilazione, in maniera tale da migliorare l'esperienza finale dell'utente e aumentando contemporaneamente il #rifGlossario("ROI") e l'efficacia delle campagne pubblicitarie.

== Glossario
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo, viene fornito un glossario.
La prima occorrenza di un termine definito all'interno del glossario presente all'interno di un documento viene sottolineato e seguito dalla lettera "g" posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti

=== Riferimenti normativi
- Norme di Progetto (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/pb/norme_di_progetto_ver2.0.0.pdf")

- Regolamento del progetto didattico, _slide_ 23 (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")

- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")

=== Riferimenti informativi
- Glossario (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/pb/glossario_ver2.0.0.pdf")

- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")
- Guida ufficiale per l'installazione di #rifGlossario("Docker") (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://docs.docker.com/engine/install")

- #rifGlossario("Apache Flink") - Documentazione relativa al supporto di Flink a Java 17 (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://nightlies.apache.org/flink/flink-docs-release-1.20/docs/deployment/java_compatibility/#java-17")

- Apache Flink - Documentazione relativa agli _async_ I/O per l'accesso ai dati esterni (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://nightlies.apache.org/flink/flink-docs-master/docs/dev/datastream/operators/asyncio/#async-io-api")

- Java _records_ (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Record.html")

- #rifGlossario("Apache Kafka") (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://kafka.apache.org")

- Documentazione della classe `ConnectionFactory` - R2DBC (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://javadoc.io/doc/io.r2dbc/r2dbc-spi/latest/index.html")

- Introduzione di LangChain4j - "_What if I don't have an #rifGlossario("API") key_" (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://docs.langchain4j.dev/get-started")

#pagebreak(weak: true)

= Tecnologie
In questa sezione vengono definite le tecnologie e gli strumenti adottati per lo sviluppo del prodotto _software_ e le loro funzionalità all'interno del sistema. Per chiarezza, le tecnologie sono state suddivise in base al ruolo che svolgono all'interno del sistema.

== Infrastruttura del sistema
=== Docker
Docker è una piattaforma _#rifGlossario("open source")_ che permette di sviluppare, distribuire ed eseguire applicazioni. Mette a disposizione un ambiente isolato e permette di replicare l'ambiente di esecuzione in maniera tale da garantire portabilità e la replicabilità. Porta particolare vantaggio per quanto riguarda il suo utilizzo in ambito _testing_, permettendo di ridurre il tempo tra la codifica e il rilascio in produzione del prodotto.
=== Configurazione di Docker
La replicabilità del sistema viene resa possibile grazie a #rifGlossario("Docker Compose"). Questo strumento permette di definire e gestire applicazioni _multi-container_. In particolare, Docker Compose semplifica la creazione e la gestione dell'intero sistema, semplificando la configurazione dei servizi, delle reti e dei volumi dei singoli tramite un _file_ di configurazione in YAML.

Nel nostro caso specifico, il file YAML si trova nella _root_ del progetto denominato `compose.yml`. Questo _file_ contiene tutti i servizi necessari a far funzionare il sistema. Ogni servizio è definito da un blocco di configurazione che specifica l'identificativo del servizio e le varie proprietà come l'immagine Docker da utilizzare, il comando da eseguire, porte da mappare e molto altro.

Di seguito vengono elencati tutti i servizi che compongono il sistema (le relative configurazioni vengono omesse e si rimanda il lettore al file #link("https://github.com/SWEatUNIPD/NearYou/blob/main/compose.yml")[`compose.yml`] per ulteriori dettagli):

=== Servizi Docker implementati
- *kafka*
  - *Immagine*: apache/kafka
  - *Versione dell'immagine*: 4.0.0
  - *Riferimento*: #formatLink(url: "https://hub.docker.com/r/apache/kafka") (ultimo accesso in data 27/03/2025)

- *postgis*
  - *Immagine*: postgis/postgis
  - *Versione dell'immagine*: 17-3.5
  - *Riferimento*: #formatLink(url: "https://hub.docker.com/r/postgis/postgis") (ultimo accesso in data 27/03/2025)

- *grafana*
  - *Immagine*: rmilan/grafana-rm
  - *Riferimento*: #formatLink(url: "https://hub.docker.com/r/rmilan/grafana-rm") (ultimo accesso in data 27/03/2025)

- *jobmanager*
  - *Immagine*: flink
  - *Versione dell'immagine*: 1.20.1-scala_2.12-java17
  - *Riferimento*: #formatLink(url: "https://hub.docker.com/_/flink") (ultimo accesso in data 27/03/2025)

- *taskmanager*
  - *Immagine*: flink
  - *Versione dell'immagine*: 1.20.1-scala_2.12-java17
  - *Riferimento*: #formatLink(url: "https://hub.docker.com/_/flink") (ultimo accesso in data 27/03/2025)

- *simulator*
  - *Immagine*: _Build_ in locale con Dockerfile
  - *_Path_ del Dockerfile*: `./client` (relativo alla _root_ del progetto)
  - *Riferimento*: #formatLink(url: "https://github.com/SWEatUNIPD/NearYou/tree/main/client")

#pagebreak(weak: true)
== Linguaggi di sviluppo
=== TypeScript
TypeScript è un _superset_ di JavaScript che supporta sia la programmazione orientata agli oggetti con classi, interfacce ed ereditarietà, sia la programmazione procedurale basata su funzioni e blocchi di istruzioni.

==== Utilizzo nel progetto
TypeScript è stato utilizzato per la realizzazione del simulatore dei sensori, il quale si occupa di generare i dati di localizzazione di un percorso casuale per inviarli ad Apache Kafka mediante le API fornite dalla libreria Kafkajs.

==== Versione
La versione di TypeScript utilizzata per lo sviluppo del simulatore è la 5.7.2.

==== Librerie e framework
La seguente lista elenca le dipendenze utilizzate nel simulatore.

- *\@mapbox/polyline*
  - *Documentazione*: #formatLink(url: "https://www.npmjs.com/package/@mapbox/polyline") (ultimo accesso in data 27/03/2025)
  - *Versione*: 1.2.1
  - *Descrizione*: Implementa un formato dell'algoritmo di Google per comprimere i dati di coordinate geografiche di un percorso.

- *Dotenv*
  - *Documentazione*: #formatLink(url: "https://www.npmjs.com/package/dotenv") (ultimo accesso in data 27/03/2025)
  - *Versione*: 16.4.7
  - *Descrizione*: Modulo che carica le variabili d'ambiente da un _file_ `.env` in `process.env`. In questo modo si possono configurare dei parametri del sistema in modo agile.

- *Inversify*
  - *Documentazione*: #formatLink(url: "https://inversify.io") (ultimo accesso in data 27/03/2025)
  - *Versione*: 7.1.0
  - *Descrizione*: _Tool_ utilizzato per gestire la _dependency injection_ in applicativi sviluppati in #box[JavaScript] e TypeScript.

- *Kafkajs*
  - *Documentazione*: #formatLink(url: "https://kafka.js.org/docs/introduction") (ultimo accesso in data 27/03/2025)
  - *Versione*: 2.2.4
  - *Descrizione*: Usata per agevolare le operazioni di produzione e consumo di messaggi attraverso Apache Kafka.

Per effettuare i _test_ e le analisi statiche del codice invece sono state utilizzate le seguenti librerie:
- *Vitest* per i _test_ di unità
- *ESLint* per l'analisi statica del codice

=== Java
Java è un linguaggio di programmazione orientato agli oggetti che nasce con lo scopo di creare applicazioni indipendenti dalla piattaforma, grazie alla sua capacità di compilare il codice in _bytecode_ ed eseguirlo su una JVM.

==== Utilizzo nel progetto
Nel nostro specifico caso, viene adottato per la creazione del servizio di _#rifGlossario("stream processing")_ (denominato anche _job_) per Apache Flink. Questo si occupa di elaborare i dati di localizzazione in tempo reale provenienti dai sensori, garantendone la persistenza all'interno del _#rifGlossario("database")_, e di arricchire tali dati con le informazioni necessarie a creare il _#rifGlossario("prompt")_ da inviare alla #rifGlossario("LLM") per poter generare un annuncio il più personalizzato possibile.

==== Versione
Per soddisfare i requisiti di Apache Flink è stata adottato Java 17 #rifGlossario("LTS").

La documentazione di Apache Flink riporta l'introduzione in maniera sperimentale di Java 17 dalla versione 1.18 di Flink. Tuttavia il prodotto è stato validato e le funzionalità fondamentali che hanno un impatto dovuto a questa scelta, ovvero i _records_ in Java, funzionano correttamente.

==== Librerie e framework
Per la gestione del progetto e l'automazione delle operazioni di _build_ e _test_ è stato utilizzato #rifGlossario("Apache Maven"). Per avere una visione nel dettaglio di tutte le librerie utilizzate all'interno del nostro sistema, è possibile visionare il _file_ `pom.xml` presente all'interno della cartella `job` del nostro progetto.

La seguente lista rappresenta le dipendenze più rilevanti presenti all'interno del progetto e non vuole essere un mero elenco di tutte le dipendenze e librerie presenti all'interno del nostro progetto.

- *Apache Flink*
  - *Documentazione*: #formatLink(url: "https://nightlies.apache.org/flink/flink-docs-release-1.20") (ultimo accesso in data 27/03/2025)
  - *Versione*: 1.20.1
  - *Descrizione*: _Framework_ ed _engine_ per effettuare operazioni _#rifGlossario("stateful")_ su un flusso di dati (nel nostro caso dati di localizzazione), elevato o meno che sia, in tempo reale in maniera reattiva, scalabile e affidabile.

- *PostgreSQL JDBC Driver*
  - *Documentazione*: #formatLink(url: "https://jdbc.postgresql.org/documentation") (ultimo accesso in data 27/03/2025)
  - *Versione*: 42.7.5
  - *Descrizione*: _#rifGlossario("Driver")_ per la connessione a un database #rifGlossario("PostgreSQL").

- *PostgreSQL R2DBC Driver*
  - *Documentazione*: #formatLink(url: "https://github.com/pgjdbc/r2dbc-postgresql") (ultimo accesso in data 27/03/2025)
  - *Versione*: 1.0.7.RELEASE
  - *Descrizione*: _Driver_ per la connessione a un _database_ PostgreSQL, sfruttando l'API della programmazione reattiva (per maggiori informazioni: #formatLink(url: "https://www.reactivemanifesto.org/it", label: "Reactive Manifesto") - ultimo accesso in data 27/03/2025). Permette di effettuare richieste asincrone e non bloccanti al _database_, come richiesto dalla documentazione di Flink per le operazioni di I/O asincrone.
- *R2DBC Pool*
  - *Documentazione*: #formatLink(url: "https://github.com/r2dbc/r2dbc-pool") (ultimo accesso in data 27/03/2025)
  - *Versione*: 1.0.2
  - *Descrizione*: Implementazione della _connection pool_ per R2DBC.

- *Project Reactor*
  - *Documentazione*: #formatLink(url: "https://projectreactor.io/docs/core/release/reference") (ultimo accesso in data 27/03/2025)
  - *Versione*: 3.7.4
  - *Descrizione*: Libreria di programmazione reattiva, completamente non bloccante. Viene utilizzato all'interno del nostro prodotto come _client_ per le operazioni asincrone di _data enrichment_. Nel nostro caso sono quella di richiesta del punto di interesse più vicino alla posizione del sensore che soddisfi gli interessi dell'utente e quella di generazione dell'annuncio tramite LLM sfruttando la profilazione dell'utente e i dati del punto di interesse registrati nel _database_.

- *SLF4J*
  - *Documentazione*: #formatLink(url: "https://www.slf4j.org/docs.html")
  - *Versione*: 2.0.17
  - *Descrizione*: Libreria che serve da astrazione (_#rifGlossario("facade")_) per i vari _framework_ di _#rifGlossario("log")_ in Java, permettendo di cambiare _framework_ senza dover modificare il codice.

- *LogBack*
  - *Documentazione*: #formatLink(url: "https://logback.qos.ch/documentation.html")
  - *Versione*: 1.5.17
  - *Descrizione*: _Framework_ di _logging_ per Java, utilizzato per la configurazione dei _logger_ all'interno del nostro servizio di _stream processing_.

- *LangChain4j*
  - *Documentazione*: #formatLink(url: "https://docs.langchain4j.dev/intro")
  - *Versione*: 1.0.0-beta1
  - *Descrizione*: Libreria per LLM che permette, nel nostro caso, la generazione di annunci personalizzati in base ai dati di profilazione dell'utente e del punto di interesse.

Per effettuare i _test_ e le analisi statiche del codice invece sono state utilizzate le seguenti librerie:
- *JUnit* per i _test_ di unità
- *TestContainers* per i test di _integrazione_
- *Mockito* per effettuare il _mocking_ delle dipendenze
- *CheckStyle* per l'analisi statica del codice

#pagebreak(weak: true)

== Data broker
Il _#rifGlossario("data broker")_ svolge un ruolo fondamentale all'interno del nostro sistema in quanto si occupa di ricevere i dati e inoltrarli ai servizi che ne fanno uso in maniera efficiente e scalabile. Nel nostro caso, il _data broker_ riceve i dati di localizzazione dai sensori e li inoltra successivamente al servizio di _stream processing_.
=== Apache Kafka
Apache Kafka è una piattaforma di _streaming_ di dati. Progettato per essere scalabile, _fault-tolerant_ e ad avere elevate prestazioni, viene utilizzato per la gestione dei dati in tempo reale. In particolare nel nostro caso, Kafka viene utilizzato per creare le _#rifGlossario("pipeline")_ di dati tra il simulatore e il servizio di _stream processing_.

Tuttavia non tutte le funzionalità che Apache Kafka fornisce ai programmatori sono state sfruttate all'interno del nostro progetto come la replicazione dei dati su più _broker_. Per la natura dimostrativa del progetto, è stato scelto di utilizzare un singolo _broker_ Kafka, ma ciò non preclude l'utilizzo di questa funzionalità, che può avere impatti positivi sulla tolleranza agli errori del sistema.

=== Formato dei dati di localizzazione
Ogni dato di localizzazione emesso da un sensore (o simulatore nel nostro caso specifico) è composto da un oggetto JSON con le seguenti proprietà:
```JSON
{
  "rent_id": 1,
  "latitude": 45.123456,
  "longitude": 11.123456,
  "timestamp": 12345678910
}
```

- `rent_id`: ID del noleggio che ha emesso il dato di localizzazione (si rimanda il lettore alla #link(<db>, "sez. 2.6") per maggiori dettagli riguardo l'entità `Rent`).
- `latitude`: latitudine del noleggio che ha emesso il dato di localizzazione.
- `longitude`: longitudine del noleggio che ha emesso il dato di localizzazione.
- `timestamp`: timestamp del dato di localizzazione in millisecondi. Questo campo è fondamentale per la gestione della persistenza dei dati all'interno del _database_ e per la generazione degli annunci, in quanto permette di evitare conflitti tra più dati di localizzazione emessi dallo stesso noleggio.

#pagebreak(weak: true)

== Stream processor
Lo _stream processor_ è il cuore pulsante dell'intero sistema sviluppato dal gruppo. Esso si occupa dell'ingestione dei dati di localizzazione, di arricchirli di informazioni necessarie alla creazione del _prompt_ da inviare all'LLM e di persistere questi ultimi all'interno del _database_.
=== Apache Flink
Apache Flink è un _framework_ ed _engine_ di _processing_ distribuito che permette di eseguire delle operazioni definite _stateful_ su uno _stream_ di dati in entrata, limitati o meno che siano. È progettato per un funzionamento in modo continuo e con tempi di inattività e di risposta molto bassi.

Nel nostro caso Flink viene utilizzato per elaborare i dati di localizzazione in tempo reale provenienti dai sensori, garantendone la persistenza all'interno del _database_ e, a partire da questi dati, trovare più informazioni possibili al fine di generare l'annuncio più adatto da spedire all'utente finale.

== Generazione annunci
Il capitolato prevede l'utilizzo di LLM per la generazione degli annunci utilizzando come _prompt_ gli interessi dell'utente finale, la categoria commerciale e l'offerta del punto di interesse più vicino alla posizione del sensore. Si fa notare che il peso maggiore dei dati è risieduto nei campi di testo libero (interessi dell'utente e offerta del punto di interesse) poiché le LLM sono specializzate proprio a interpretare queste tipologie di _input_.
=== LangChain4j
LangChain4j è una libreria Java che semplifica l'integrazione di LLM con applicazioni Java. Fornisce una serie di strumenti per lavorare con LLM, tra cui la creazione di _prompt_ e la generazione di risposte tramite la LLM stessa. LangChain4j supporta diversi modelli di LLM: uno tra questi, da noi utilizzato, è GPT-4o-mini di OpenAI. Questo modello è stato utilizzato per un semplice motivo: permettere al gruppo di sviluppare il progetto in locale senza dover pagare l'API _key_ di OpenAI, sfruttando la chiave `demo` fornita da #rifGlossario("LangChain") stessa. Il modello può essere comunque modificato in un secondo momento per permettere l'utilizzo di altri modelli grazie anche in parte alla modularità della libreria.

#pagebreak(weak: true)

== Database <db>
=== PostgreSQL
Per la gestione dei dati relazionali è stato scelto PostgreSQL, un #rifGlossario("DBMS") che offre affidabilità e una certa flessibilità per l'estensione tramite _plugin_ ed estensioni. Nel nostro contesto, all'avvio viene eseguito automaticamente lo _script_ `create.sql` che crea lo schema del _database_ (tabelle, relazioni, ecc.) secondo le esigenze del progetto e popola le tabelle di dati necessari a provare il funzionamento del nostro sistema.

=== PostGIS <2.2.2>
Per l'elaborazione e l'archiviazione di dati geografici si fa uso dell'estensione #rifGlossario("PostGIS"), la quale aggiunge a PostgreSQL il supporto per tipi, funzioni e indici spaziali.

In particolare l'immagine Docker utilizzata è postgis/postgis. Oltre a #box[PostgreSQL] questa contiene già la libreria PostGIS e le relative dipendenze. Questo _setup_ permette, nel nostro caso, di:

- Persistere le coordinate geografiche (latitudine e longitudine) dei punti di interesse e delle posizioni trasmesse in tempo reale da ogni noleggio attivo.
- Effettuare _query_ geospaziali all'interno del _database_ per individuare i potenziali punti di interesse rispetto ad una determinata posizione ed entro un determinato _range_.

=== Struttura del database

==== Diagramma ER

Di seguito viene mostrata la struttura del _database_:

#v(20pt)
#figure(
  image("../assets/diagrams/ER-diagram.png"),
  caption: [Diagramma ER],
)

==== Scelte progettuali

Alcune scelte progettuali, apparentemente ridondanti, sono state adottate per soddisfare specifiche esigenze, in particolare per strumenti come #rifGlossario("Grafana").

- *Chiavi primarie composte:* La tabella `positions` utilizza una chiave primaria composta da `time_stamp` e `rent_id`. Questo garantisce l'univocità di ogni posizione registrata per un noleggio. Nella tabella `advertisements`, `position_time_stamp` e `position_rent_id` fungono da chiavi esterne per collegare un annuncio alla posizione di un noleggio.

- *Scelta delle chiavi primarie:* La tabella `points_of_interest` utilizza `latitude` e `longitude` come chiavi primarie per garantire che ogni punto di interesse sia univocamente identificabile in base alla sua posizione. Questo evita la creazione di ID artificiali e semplifica l'integrazione con strumenti GIS e di analisi spaziale. Tuttavia, in altre tabelle come `rents` o `advertisements`, è stato mantenuto un ID univoco separato per facilitare la visualizzazione e l'interazione con i dati nell'interfaccia di Grafana.

== Interfaccia amministratore
L'interfaccia fornita dal _software_ deve permettere all'amministratore di visualizzare la mappa con i punti di interesse, i sensori che si muovono e gli eventuali annunci generati. Deve disporre di una visualizzazione per lo storico degli annunci e una per entrare nel dettaglio di un singolo annuncio. Infine si mette a disposizione una sezione dedicata a dei grafici di analisi dei dati, utile all'amministratore per monitorare l'efficienza del servizio di noleggio.
=== Grafana
Grafana non è un sistema "reattivo", cioè non reagisce agli eventi, bensì si recupera i dati con delle _query_ indipendentemente da cosa venga aggiornato nel _database_. Per questo motivo non è propriamente corretto parlare di "interfaccia _real time_", tuttavia le _query_ vengono effettuate a intervalli molto ravvicinati simulando quindi con elevata accuratezza il tipo di interfaccia desiderata. Le funzionalità principali di Grafana nel nostro sistema sono:
- *Monitoraggio in tempo reale*: Grafana raccoglie in tempo reale i dati dei sensori registrati nel sistema, ovvero identificativo del sensore, noleggio associato ad esso, latitudine e longitudine.
- *Visualizzazione dei dati in tempo reale*: i dati dei sensori raccolti in tempo reale vengono infatti mostrati in una _#rifGlossario("dashboard")_ di tipo _geomap_ interattiva, nella quale le posizioni dei sensori sono rappresentate da _#rifGlossario("layer")_ di tipo _#rifGlossario("route")_ e i punti di interesse e gli annunci con _layer_ di tipo _#rifGlossario("marker")_.
- *Visualizzazione dei dati statici*: viene messa a disposizione dell'amministratore una _dashboard_ che raccoglie lo storico degli annunci generati nel tempo; interagendo con i dati nel _database_, Grafana ci permette di mostrare tutti i dati rilevanti legati ad ogni annuncio.

#pagebreak(weak: true)

= Architettura del sistema
L'architettura definisce come i componenti di un'applicazione vengono distribuiti ed eseguiti su diversi ambienti. Nel caso di un sistema in _real time_ si possono individuare separati servizi che comunicano reattivamente per inviare e processare i dati. Nel nostro progetto inoltre è presente un'interfaccia grafica che non agisce in seguito a una notifica, bensì a intervalli piccoli e regolari di tempo recupera i dati dal _database_. Abbiamo quindi optato per la K-_architecture_ in quanto soddisfa tutte le caratteristiche del prodotto.

== K-architecture
La K-_architecture_ è un modello architetturale per l'elaborazione di dati in _streaming_. Derivante dalla #box[λ-_architecture_] la sua particolarità è l'eliminazione del _batching_ mantenendo un flusso costante di dati in _real time_.

#align(center)[
  #figure(
    image("../assets/img/ST/KappaArch.png", width: 100%),
    caption: [K-_architecture_],
  )
]

- *_Data source_*: la sorgente di dati è costituita dal simulatore che imita l'attivazione dei noleggi e lo spostamento degli utenti sui mezzi. I sensori inviano quindi a intervalli regolari la posizione #rifGlossario("GPS") e ricevono l'eventuale annuncio.

- *_Streaming layer_*: questo livello gestisce la trasmissione in tempo reale dei dati che vengono inoltrati al _processing layer_.

- *_Processing layer_*: i dati ricevuti dallo _streaming layer_ vengono processati in tempo reale prima di essere memorizzati in _database_.

- *_Storage layer_*: la persistenza è gestita da un _database_ relazionale che archivia i dati in arrivo dal _processing layer_. Lo _storage layer_ è costituito da PostgreSQL affiancato da PostGIS, una estensione che facilita l'elaborazione di dati geospaziali.

- *_#rifGlossario("Data visualization") layer_*: i dati archiviati nello _storage layer_ vengono resi disponibile tramite una interfaccia grafica. Costituito da Grafana questo _layer_ recupera le informazioni dal _database_ a intervalli regolari in modo da aggiornare rapidamente l'interfaccia ai nuovi cambiamenti.

#pagebreak(weak: true)

== Flusso dei dati
Il diagramma sottostante descrive il percorso dei dati tra i _layer_ del sistema e le relative elaborazioni.

#figure(
  image("../assets/img/ST/Kappa-architecture-data-flow.png", width: 90%),
  caption: [Flusso dei dati],
)

+ *Generazione dei dati*: il simulatore genera in tempo reale dei percorsi tramite una chiamata API al servizio OpenStreetMap.

+ *Invio dei dati*: ogni sensore attivo del simulatore invia a intervalli regolari la posizione GPS in un Kafka _#rifGlossario("topic")_.

+ *_Processing_ dei dati*: lo _stream processor_ è iscritto al _topic_ delle posizioni GPS e riceve i messaggi dei sensori. Elabora quindi i dati ricevuti nel seguente modo:
  + *Salvataggio in _database_*: salva le posizioni nel _database_.
  + *Ricerca del punto di interesse*: viene fatta la ricerca del punto di interesse più vicino alla posizione del sensore. Il punto di interesse dovrà soddisfare i seguenti requisiti:
    - Deve trovarsi entro un raggio di 100 metri dalla posizione del sensore.
    - La categoria commerciale del punto deve corrispondere a una delle categorie di interesse dell'utente, estratte dalla tabella `user_interests` del _database_.
    - Il punto di interesse deve essere aperto.
    Una volta trovato il punto di interesse, vengono estratte tutte le informazioni relative ad esso tra cui, la fondamentale, l'offerta del punto di interesse.

  + *Richiesta di generazione dell'annuncio*: se la ricerca del punto di interesse ha avuto successo, vengono estratti gli interessi dell'utente a cui è destinato l'annuncio, in particolar modo la stringa libera che descrive i suoi interessi. Le informazioni del punto di interesse e dell'utente vengono successivamente utilizzate per costruire il _prompt_ da inviare alla LLM.

  + *Ricezione della risposta della LLM*: una volta processata la risposta da parte della LLM, il risultato viene inviato a una coda di Kafka denominata _adv-data_ che salva questa generazione all'interno della tabella `advertisements`. Nel caso in cui la LLM ritornasse una stringa vuota, l'annuncio non viene mandato all'utente finale, ma viene gestita la sua persistenza a fini analitici per l'amministratore.

+ *Ricezione dell'eventuale annuncio*: il sensore riceve l'annuncio se questo è stato generato. In uno scenario reale l'annuncio verrebbe visualizzato dall'utente, ma il capitolato non prevedeva lo sviluppo dell'applicazione lato _client_.

+ *Visualizzazione grafica*: Grafana recupera le informazioni dal _database_ a intervalli regolari ravvicinati per aggiornare costantemente la visuale dell'amministratore. Se questo richiede informazioni specifiche, ad esempio i dettagli di un annuncio, viene effettuata una _query_ per recuperare i dati.

#pagebreak(weak: true)

== Diagramma delle classi
Il diagramma delle classi del sistema descrive le classi implementate e le loro relazioni. Vengono riportate tutte le classi di libreria, di cui si omettono attributi e metodi per non appesantire il diagramma, fatta eccezione per le classi ereditate o interfacce implementate da altre classi del _job_ appartenenti alle librerie utilizzate.

Per migliorare la leggibilità sono omessi attributi e metodi delle classi di libreria. Inoltre il diagramma è stato diviso per sezioni a seconda del loro ruolo all'interno del sistema.

=== Infrastruttura
Questa sezione rappresenta le classi impiegate nella gestione dell'infrastruttura del sistema, ovvero quelle che si occupano della connessione al _database_, della serializzazione e deserializzazione dei dati e della creazione delle code di Kafka.
==== Struttura delle classi
===== GPSDataDto
#figure(
  image("../assets/img/ST/SystemUML/GPSDataDto.png", width: 35%),
  caption: [Diagramma della classe `GPSDataDto`],
)
La classe `GPSDataDto` rappresenta il _data transfer object_ (DTO) per i dati di localizzazione. Viene utilizzata per trasferire i dati di localizzazione tra il simulatore e il servizio di _stream processing_. Il dato viene inviato in formato JSON serializzato dal simulatore, per poi essere deserializzato dallo _stream processor_ tramite la classe di utilità `GPSDataDeserializationSchema`, che estende la classe astratta `AbstractDeserializationSchema` di Flink.
====== Attributi
- ```java -rentId: int```: identificativo del noleggio associato al sensore.
- ```java -latitude: float```: latitudine della posizione GPS.
- ```java -longitude: float```: longitudine della posizione GPS.
- ```java -timestamp: long```: _timestamp_ della posizione GPS.

====== Costruttori
Il costruttore della classe `GPSDataDto` è un costruttore di _default_. Non viene utilizzato il costruttore di _default_ implicito fornito da Java in quanto la libreria di serializzazione/deserializzazione Jackson richiede un costruttore esplicito per la creazione di oggetti a partire da un JSON.

====== Metodi
- ```java +getRentId(): int```: restituisce l'identificativo del noleggio associato al sensore.
- ```java +getLatitude(): float```: restituisce la latitudine della posizione GPS.
- ```java +getLongitude(): float```: restituisce la longitudine della posizione GPS.
- ```java +getTimestamp(): long```: restituisce il _timestamp_ della posizione GPS.
- ```java +setRentId(rentId: int): void```: imposta l'identificativo del noleggio associato al sensore.
- ```java +setLatitude(latitude: float): void```: imposta la latitudine della posizione GPS.
- ```java +setLongitude(longitude: float): void```: imposta la longitudine della posizione GPS.
- ```java +setTimestamp(timestamp: long): void```: imposta il _timestamp_ della posizione GPS.
- ```java +equals(o: Object): boolean```: _overriding_ del metodo della classe `Object` di Java, confronta l'uguaglianza tra l'oggetto `GPSDataDto` da cui viene invocato il metodo e l'oggetto posto a parametro e restituisce `true` se sono uguali, `false` altrimenti.
- ```java +hashCode(): int```: _overriding_ del metodo della classe `Object` di Java, restituisce il codice _hash_ dell'oggetto `GPSDataDto` da cui viene invocato il metodo.

Nel nostro caso, i _setters_ della classe `GPSDataDto` sono stati implementati per garantire la deserializzazione del JSON che descrive il dato di localizzazione che viene spedito dal simulatore.

===== KafkaTopicService
#figure(
  image("../assets/img/ST/SystemUML/KafkaTopicService.png", width: 55%),
  caption: [Diagramma della classe `KafkaTopicService`],
)
La classe `KafkaTopicService` rappresenta il servizio di creazione dei _topic_ di Kafka. Viene impiegato dal _job_ per la creazione dei topic "gps-_data_" e "_adv-data_" se non già creati, utilizzati rispettivamente per la ricezione dei dati di localizzazione e l'invio degli annunci generati dalla LLM.

====== Attributi
- ```java -admin: Admin```: oggetto fornito dalla libreria Kafka per la gestione dei _topic_. Nel nostro caso è costante per ogni istanza dell'oggetto.

====== Costruttori
- ```java +KafkaTopicService(admin: Admin)```: costruttore della classe `KafkaTopicService` che inizializza l'attributo `admin` con il valore passato come parametro.

====== Metodi
- ```java +createTopic(topicName: String, numPartitions: int, replicationFactor: short): void```: metodo che crea un _topic_ di Kafka con il nome e le caratteristiche specificate. Se il _topic_ esiste già, non viene creato nuovamente.
- ```java +createTopics(topicNames: String*): void```: metodo che crea più _topic_ di Kafka con i nomi specificati all'interno dell'_array_ con numero di partizioni e di _replication factor_ pari a 1. Se i _topic_ esistono già, non vengono creati nuovamente.

===== GPSDataDeserializationSchema
#figure(
  image("../assets/img/ST/SystemUML/GPSDataDeserializationSchema.png", width: 40%),
  caption: [Diagramma della classe `GPSDataDeserializationSchema`],
)
La classe `GPSDataDeserializationSchema` estende la classe astratta parametrica `AbstractDeserializationSchema<T>` di Flink e ridefinisce i metodi `deserialize` e `open`, dove T rappresenta la classe in cui viene deserializzato il JSON. In questo caso, i dati in arrivo sono in formato JSON e vengono deserializzati in un oggetto `GPSDataDto`, nonché parametro della classe estesa.

====== Attributi
- ```java -objectMapper: ObjectMapper```: oggetto fornito dalla libreria Jackson (interno alla dipendenza di Flink) per la serializzazione e deserializzazione di oggetti in formato JSON.

====== Costruttori
Viene mantenuto il costruttore di _default_ fornito da Java.

====== Metodi
- ```java +open(context: InitializationContext): void```: metodo che viene invocato all'avvio del processo di deserializzazione. Viene invocato per effettuare il _setup_ dell'oggetto. In questo caso, viene inizializzato l'oggetto `objectMapper` per la deserializzazione del JSON.
- ```java +deserialize(message: byte[]): GPSDataDto```: metodo che viene invocato per deserializzare il messaggio in arrivo. In questo caso, il messaggio viene deserializzato in un oggetto `GPSDataDto` tramite l'utilizzo dell'oggetto `objectMapper`.

===== AdvertisementSerializationSchema
#figure(
  image("../assets/img/ST/SystemUML/AdvertisementSerializationSchema.png", width: 45%),
  caption: [Diagramma della classe `AdvertisementSerializationSchema`],
)
La classe `AdvertisementSerializationSchema` implementa l'interfaccia parametrica `SerializationSchema<T>` di Flink e ridefinisce il metodo `serialize`, dove T rappresenta la classe oggetto della serializzazione. Nel nostro caso, T corrisponde a una classe `Tuple3<GPSData, PointOfInterest, String>`, che rappresenta l'annuncio generato dalla LLM, comprensivo dei dati del punto di interesse e di localizzazione. La classe `AdvertisementSerializationSchema` viene utilizzata per serializzare l'annuncio in un messaggio JSON da inviare al _topic_ "_adv-data_" di Kafka che simula la comunicazione del messaggio all'utente.

====== Attributi
- ```java -objectMapper: ObjectMapper```: oggetto fornito dalla libreria Jackson (interno alla dipendenza di Flink) per la serializzazione e deserializzazione di oggetti in formato JSON.

====== Costruttori
Viene mantenuto il costruttore di _default_ fornito da Java.

====== Metodi
- ```java +serialize(adv: Tuple3<GPSData, PointOfInterest, String>): byte*```: metodo che viene invocato per serializzare l'annuncio.

===== DatabaseConnectionSingleton
#figure(
  image(
    "../assets/img/ST/SystemUML/DatabaseConnectionSingleton.png",
    width: 40%,
  ), //FIXME: ci sarebbe anche il metodo create
  caption: [Diagramma della classe `DatabaseConnectionSingleton`],
)
La classe `DatabaseConnectionSingleton` rappresenta il _singleton_ della `ConnectionFactory` fornita dalla libreria R2DBC. Essa viene utilizzata per istanziare in maniera univoca durante tutto il processo una _factory_ di connessioni, creabili attraverso il metodo `create()`.

====== Attributi
- #underline[```java -instance: ConnectionFactory```]: istanza della `ConnectionFactory` che viene creata globalmente per l'intero processo grazie all'implementazione del _design pattern singleton_.

====== Costruttori
Il costruttore viene reso inutilizzabile attraverso la ridefinizione del costruttore di _default_, ponendo l'accesso privato per implementare il _design pattern singleton_.

====== Metodi
- #underline[```java +getConnectionFactory(): ConnectionFactory```]: metodo statico che restituisce l'istanza della `ConnectionFactory`. Se l'istanza non è ancora stata creata, viene creata e restituita. Il metodo è _synchronized_ per garantire che venga creata una sola istanza della `ConnectionFactory` durante l'intero processo.

=== Entità
Questa sezione rappresenta le entità del sistema, ovvero le classi che rappresentano i dati persistenti all'interno del _database_.

==== Struttura delle classi

===== GPSData
#figure(
  image("../assets/img/ST/SystemUML/GPSData.png", width: 55%),
  caption: [Diagramma della classe `GPSData`],
)
La classe `GPSData` rappresenta il dato di localizzazione GPS, pressoché simile al DTO `GPSDataDto`, ma permette di rappresentare l'attributo `timestamp` tramite l'oggetto `Timestamp` di Java (`java.sql.Timestamp`), facilitando così le operazioni da effettuare tramite il _database_.
All'interno della _#rifGlossario("codebase")_, l'entità `GPSData` non è rappresentata tramite una classe, ma tramite i _record_ in Java. Questi permettono di definire delle classi immutabili, ovvero non modificabili una volta create. Tuttavia, per mantenere la rappresentazione #rifGlossario("UML"), il gruppo ha deciso di rappresentare la classe come un oggetto aventi attributi costanti e metodi _getter_.

====== Attributi
In quanto _record_, gli attributi della classe `GPSData` sotto elencati sono costanti data l'immutabilità della classe per definizione.
- ```java -rentId: int```: identificativo del noleggio associato al sensore.
- ```java -latitude: float```: latitudine della posizione GPS.
- ```java -longitude: float```: longitudine della posizione GPS.
- ```java -timestamp: Timestamp```: _timestamp_ della posizione GPS.

====== Costruttori
- ```java +GPSData(rentId: int, latitude: float, longitude: float, timestamp: Timestamp)```: costruttore della classe `GPSData` che inizializza gli attributi `rentId`, `latitude`, `longitude` e `timestamp` con i valori passati come parametro.

====== Metodi
I metodi _getter_, nella reale implementazione della classe, vengono omessi in quanto creati dal _record_.
- ```java +rentId(): int```: restituisce l'identificativo del noleggio associato al sensore.
- ```java +latitude(): float```: restituisce la latitudine della posizione GPS.
- ```java +longitude(): float```: restituisce la longitudine della posizione GPS.
- ```java +timestamp(): Timestamp```: restituisce il _timestamp_ della posizione GPS.
- ```java +equals(o: Object): boolean```: _overriding_ del metodo della classe `Object` di Java, confronta l'uguaglianza tra l'oggetto `GPSData` da cui viene invocato il metodo e l'oggetto posto a parametro e restituisce `true` se sono uguali, `false` altrimenti.
- ```java +hashCode(): int```: _overriding_ del metodo della classe `Object` di Java, restituisce il codice _hash_ dell'oggetto `GPSData` da cui viene invocato il metodo.

===== PointOfInterest
#figure(
  image("../assets/img/ST/SystemUML/PointOfInterest.png", width: 70%),
  caption: [Diagramma della classe `PointOfInterest`],
)
La classe `PointOfInterest` rappresenta un qualsiasi punto di interesse presente all'interno del _database_. Come per la classe `GPSData`, anche in questo caso è stato scelto di rappresentare l'entità tramite un _record_ in Java.

====== Attributi
In quanto _record_, gli attributi della classe `PointOfInterest` sotto elencati sono costanti.
- ```java -latitude: float```: latitudine del punto di interesse.
- ```java -longitude: float```: longitudine del punto di interesse.
- ```java -vat: String```: partita IVA del punto di interesse.
- ```java -name: String```: nome del punto di interesse.
- ```java -category: String```: categoria del punto di interesse.
- ```java -offer: String```: offerta del punto di interesse, ovvero ciò che il punto mette a disposizione per i clienti e che possa essere fondamentale per il contesto degli annunci pubblicitari.

====== Costruttori
- ```java +PointOfInterest(latitude: float, longitude: float, vat: String, name: String, category: String, offer: String)```: costruttore della classe `PointOfInterest` che inizializza gli attributi `latitude`, `longitude`, `vat`, `name`, `category` e `offer` con i valori passati come parametro.

====== Metodi
I metodi _getter_, nella reale implementazione della classe, vengono omessi in quanto creati dal _record_.
- ```java +latitude(): float```: restituisce la latitudine del punto di interesse.
- ```java +longitude(): float```: restituisce la longitudine del punto di interesse.
- ```java +vat(): String```: restituisce la partita IVA del punto di interesse.
- ```java +name(): String```: restituisce il nome del punto di interesse.
- ```java +category(): String```: restituisce la categoria del punto di interesse.
- ```java +offer(): String```: restituisce l'offerta del punto di interesse.
- ```java +equals(o: Object): boolean```: _overriding_ del metodo della classe `Object` di Java, confronta l'uguaglianza tra l'oggetto `PointOfInterest` da cui viene invocato il metodo e l'oggetto posto a parametro e restituisce `true` se sono uguali, `false` altrimenti.
- ```java +hashCode(): int```: _overriding_ del metodo della classe `Object` di Java, restituisce il codice _hash_ dell'oggetto `PointOfInterest` da cui viene invocato il metodo.

=== Richieste asincrone
Questa sezione rappresenta le classi che si occupano di effettuare le richieste asincrone per arricchire i dati al fine di migliorare il _prompt_ da inviare all'LLM. Esse estendono la classe astratta `RichAsyncFunction` della libreria di Flink per eseguire queste richieste su ogni dato dello _stream_.

==== Struttura delle classi

===== NearestPOIRequest
#figure(
  image("../assets/img/ST/SystemUML/NearestPOIRequest.png", width: 90%),
  caption: [Diagramma della classe `NearestPOIRequest`],
)
La classe `NearestPOIRequest` rappresenta la richiesta asincrona di ricerca del punto di interesse più vicino alla posizione del sensore. La classe estende la classe astratta parametrica `RichAsyncFunction<IN, OUT>` fornita dalla libreria di Flink con parametri `IN`:`GPSData` e `OUT`:`Tuple2<GPSData,PointOfInterest>`, che permette di eseguire operazioni asincrone all'interno di un _job_ in Flink. In questo caso, viene fatta una richiesta al _database_ per la ricerca del punto di interesse più vicino, sfruttando le _query_ geospaziali fornite dall'estensione PostGIS. Come menzionato in precedenza, in quanto Flink richiede un _client_ asincrono per le operazioni con il _database_, è stato scelto di utilizzare le libreria R2DBC e Project Reactor per effettuare richieste non bloccanti al _database_.

====== Attributi
- #underline[```java -STMT: String```]: _statement_ SQL da eseguire per la ricerca del punto di interesse più vicino alla posizione del sensore. L'attributo è statico e costante.

====== Costruttori
Viene mantenuto il costruttore implicito di _default_ fornito da Java, in quanto non sono necessari costruttori specifici per la classe `NearestPOIRequest`.

====== Metodi
In quanto classe che estende `RichAsyncFunction`, la classe `NearestPOIRequest` ridefinisce solamente il metodo `asyncInvoke`, mantenendo l'implementazione _default_ della classe estesa per i metodi `open` e `close`.
- ```java +asyncInvoke(gpsData: GPSData, resultFuture: ResultFuture<Tuple2<GPSData, PointOfInterest>>): void```: metodo che viene invocato in modo asincrono per eseguire la ricerca del punto di interesse più vicino alla posizione del sensore. Il risultato della ricerca viene restituito tramite il parametro `resultFuture`, che rappresenta il risultato della richiesta asincrona.

===== AdvertisementGenerationRequest
#figure(
  image("../assets/img/ST/SystemUML/AdvertisementGenerationRequest.png", width: 95%),
  caption: [Diagramma della classe `AdvertisementGenerationRequest`],
)
La classe `AdvertisementGenerationRequest` rappresenta la richiesta asincrona di generazione dell'annuncio da inviare alla LLM. Estende la classe astratta `RichAsyncFunction<IN, OUT>` fornita dalla libreria di Flink con parametri `IN`:`Tuple2<GPSData,PointOfInterest>` e `OUT`:`Tuple3<GPSData, PointOfInterest, String>`, che permette di eseguire operazioni asincrone all'interno di un _job_ in Flink. In questo caso viene fatta una richiesta alla LLM per la generazione dell'annuncio, sfruttando le API fornite dalla libreria LangChain4j.

====== Attributi
- ```java -model: ChatLanguageModel```: rappresenta il modello LLM utilizzato per effettuare le richieste di generazione degli annunci.

====== Costruttori
Viene mantenuto il costruttore implicito di _default_ fornito da Java, in quanto non sono necessari costruttori specifici per la classe `AdvertisementGenerationRequest`.

====== Metodi
In quanto classe che estende `RichAsyncFunction`, la classe `AdvertisementGenerationRequest` ridefinisce solamente il metodo `asyncInvoke`, mantenendo l'implementazione _default_ della classe estesa per i metodi `open` e `close`.
- ```java +asyncInvoke(Tuple2<GPSData, PointOfInterest> input, ResultFuture<Tuple3<GPSData, PointOfInterest, String>> resultFuture): void```: metodo che viene invocato in modo asincrono per eseguire la generazione dell'annuncio. Il risultato della generazione viene restituito tramite il parametro `resultFuture` che rappresenta il risultato della richiesta asincrona.

=== Classe main
La classe _main_ del _job_ di Flink si occupa di eseguire il _job_, creando l'_execution environment_ e avviando il processo di _stream processing_. Essa si occupa di organizzare le varie componenti del sistema, creando i _topic_ di Kafka e avviando il processo di _stream processing_.

==== Struttura della classe: attributi, costruttori e metodi
==== DataStreamJob
#figure(
  image("../assets/img/ST/SystemUML/DataStreamJob.png", width: 95%),
  caption: [Diagramma della classe `DataStreamJob`],
)
La classe `DataStreamJob` è la _main class_ del _job_ di Flink. Essa avvia l'esecuzione dello _stream processor_, organizzando le varie componenti di quest'ultimo e gestendo il flusso dei dati tra i vari _layer_ del sistema.

==== Attributi
- ```java -env: StreamExecutionEnvironment```: oggetto fornito dalla libreria Flink per la gestione dell'ambiente di esecuzione del _job_. L'attributo è costante.
- ```java -topicService: KafkaTopicService```: istanza della classe `KafkaTopicService` per la creazione dei _topic_ necessari al _job_. L'attributo è costante.
- #underline[```java -KAFKA_ADMIN_PROPS: Properties```]: oggetto che contiene tutte le configurazioni dell'_admin_ di Kafka. L'attributo è statico e costante.
- #underline[```java -STREAM_EXECUTION_ENVIRONMENT_CONFIG: Configuration```]: oggetto che contiene tutte le configurazioni dell'_execution environment_ di Flink. L'attributo è statico e costante.

==== Costruttori
- ```java +DataStreamJob(env: StreamExecutionEnvironment, topicService: KafkaTopicService)```: costruttore della classe `DataStreamJob` che inizializza gli attributi `env` e `topicService` con i valori passati come parametro.

==== Metodi
- ```java +execute(): void```: metodo che avvia l'esecuzione del _job_ di Flink. Inizializza i _topic_ di Kafka, crea il flusso di dati e avvia l'esecuzione del _job_.
- #underline[```java +main(args: String*)```]: metodo _main_ della classe `DataStreamJob` che avvia l'esecuzione del _job_ di Flink. Inizializza l'_execution environment_, il servizio di creazione dei _topic_ e il _job_ stesso.

#pagebreak(weak: true)
== Design pattern adottati
=== Singleton
Il _design pattern singleton_ è uno dei _pattern_ creazionali della GoF (_Gang of Four_) che garantisce che una classe abbia una sola istanza e fornisce un punto di accesso globale a tale istanza.

Nel nostro caso questo _pattern_ è stato adottato per garantire la creazione di una singola istanza di `ConnectionFactory`, classe di utilità fornita dalla libreria R2DBC per la creazione di connessioni al _database_ PostgreSQL ottenute tramite la _connection pool_ gestita internamente dal _driver_ R2DBC utilizzando il metodo `create`.

==== Integrazione del design pattern nel progetto
Il concetto di _singleton_ prevede la presenza di un'istanza univoca per l'intero sistema. Si verifica quindi l'accesso ad una risorsa condivisa da più parti del sistema, ponendo il problema dell'accesso concorrente alla risorsa.

Per garantire la soluzione a questo problema è stata fornita un'implementazione _thread-safe_ del _design pattern singleton_ utilizzando il meccanismo di sincronizzazione di Java all'unico punto di accesso dell'istanza globale, ovvero il metodo `getConnectionFactory`, per garantire l'accesso univoco e atomico alla risorsa.

#codly(header: [*DatabaseConnectionSingleton.java*])
```java
public class DatabaseConnectionSingleton {
  private static ConnectionFactory instance;

  private DatabaseConnectionSingleton() { }

  public static synchronized ConnectionFactory getConnectionFactory() {
    if (instance == null) {
      instance =
        ConnectionFactories.get(
          ConnectionFactoryOptions.builder()
            .option(ConnectionFactoryOptions.DRIVER, "pool")
            .option(ConnectionFactoryOptions.PROTOCOL, "postgresql")
            .option(
              ConnectionFactoryOptions.HOST,
              System.getProperty("postgres.hostname", "postgis"))
            .option(
              ConnectionFactoryOptions.PORT,
              Integer.parseInt(System.getProperty("postgres.port", "5432")))
            .option(
              ConnectionFactoryOptions.USER,
              System.getProperty("postgres.username", "admin"))
            .option(
              ConnectionFactoryOptions.PASSWORD,
              System.getProperty("postgres.password", "adminadminadmin"))
            .option(
              ConnectionFactoryOptions.DATABASE,
              System.getProperty("postgres.dbname", "admin"))
            .build());
    }
    return instance;
  }
}
```

#pagebreak(weak: true)
= Struttura del simulatore
Nonostante il simulatore di posizioni GPS non sia un componente centrale del sistema, ma semplicemente un _mock_ per generare dati di _test_ richiesto dall'azienda proponente nell'ambito del progetto didattico, il gruppo ha comunque intrapreso un approccio progettuale.

Di seguito verrà descritto nel dettaglio la struttura del simulatore presentando il diagramma delle classi, i ruoli di ogni componente all'interno del simulatore e le scelte progettuali adottate.

== Diagramma delle classi
#figure(
  image("../assets/img/ST/simulator.svg", width: 110%),
  caption: [Diagramma delle classi del simulatore],
)

=== Struttura delle classi
==== Simulator
La classe `Simulator` rappresenta il simulatore vero e proprio. Questo riceve i mezzi disponibili dal servizio di noleggio e attiva i primi "x" (valore indicato dalla variabile d'ambiente `INIT_RENT_COUNT`). Poiché è fondamentale ne esista una sola istanza viene adottato il _design pattern singleton_. Non ne viene indicata l'implementazione perché questa viene gestita dalla libreria Inversify (#link(<singleton>)[sez. 4.2.2]).

===== Attributi
- ```ts -trackerList: Tracker*```: lista dei sensori disponibili, uno per ogni mezzo. Vengono istanziati con un identificatore incrementale partendo da 1.

===== Costruttore
- ```ts +Simulator(trackerList: Tracker*)```: costruttore della classe `Simulator` che inizializza la lista locale con i sensori passati per parametro.

===== Metodi
- ```ts +startSimulation(): void```: avvia la simulazione attivando i primi "x" sensori.
- ```ts -startRent(): void```: prende il primo sensore in ordine di identificativo crescente e, se disponibile, lo attiva.

==== Tracker
La classe `Tracker` rappresenta un sensore installato su un mezzo. Quando viene attivato richiede un percorso verosimile da seguire, manda le posizioni GPS al sistema e riceve gli eventuali annunci che vengono generati.

===== Attributi
- ```ts -id: string```: l'identificativo univoco del sensore, e quindi anche del mezzo.
- ```ts -isAvailable: boolean = true```: indica se il mezzo è disponibile e quindi può essere noleggiato. Per ogni istanza di `Tracker` viene sempre inizializzato a `true`.
- ```ts -kafkaManager: KafkaManager```: riferimento al _manager_ dell'istanza di Kafka.
- ```ts -consumer!: Consumer```: una istanza di un _consumer_ di Kafka che rimane in ascolto degli eventuali annunci. Viene inizializzata nel metodo `listenToAdv`, non nel costruttore.

===== Costruttore
- ```ts +Tracker(id: string, kafkaManager: KafkaManager)```: costruttore della classe `Tracker` che riceve l'identificativo del sensore e il _manager_ di Kafka.

===== Metodi
- ```ts +activate(): void```: attiva il sensore, quindi lo rende indisponibile, richiama `listenToAdv` per rimanere in ascolto nel _topic_ degli annunci, richiede un tracciato da seguire e richiama `move`.
- ```ts -listenToAdv(): void```: utilizza `kafkaManager` per creare un _consumer_ iscritto al _topic_ "_adv-data_". Il metodo richiamato alla ricezione di un messaggio è vuoto perché il progetto non prevede di far visualizzare l'annuncio all'utente.
- ```ts -move(trackerPoints: GeoPoint*): void```: riceve il tracciato da seguire sotto forma di lista di `GeoPoint`, istanzia un _producer_ utilizzando `kafkaManager` e invia i dati GPS al _topic_ "gps-_data_" a intervalli regolari. Quando termina il percorso disconnette il _producer_ e il _consumer_ terminando il noleggio, reimpostando cioè `isAvailable` a `true`.
- ```ts +getIsAvailable(): boolean```: restituisce il valore della variabile `isAvailable`.

==== KafkaManager
La classe `KafkaManager` gestisce le operazioni fondamentali dei _producer_ e _consumer_ dell'oggetto di `Kafka` della libreria Kafkajs. Poiché è fondamentale ne esista una sola istanza viene adottato il _design pattern singleton_. Non ne viene indicata l'implementazione perché questa viene gestita dalla libreria Inversify (#link(<singleton>)[sez. 4.2.2]).

===== Attributi
- ```ts -kafka: Kafka```: istanza della classe `Kafka` della libreria Kafkajs.

===== Costruttore
- ```ts +KafkaManager(kafka: Kafka)```: costruttore della classe `KafkaManager` che assegna l'istanza di Kafka all'oggetto proprio.

===== Metodi
- ```ts +initAndConnectProducer(): Producer```: crea un _producer_ di Kafka, lo connette e lo ritorna in modo che possa essere utilizzato.
- ```ts +disconnectProducer(producer: Producer): void```: disconnette il _producer_ passato per parametro.
- ```ts +sendMessage(producer: Producer, topic: string, data: string): void```: fa inviare al _producer_ passato per parametro il messaggio `data` nel _topic_ specificato.
- ```ts +initAndConnectConsumer(topic: string, groupId: string, eachMessageHandler: EachMessageHandler): Consumer```: crea un _consumer_ di Kafka, lo connette al _topic_ indicato, lo assegna al "groupId" passato e lo ritorna in modo che possa essere utilizzato. Assegna inoltre la funzione `eachMessageHandler` come metodo da eseguire ogni volta che il _consumer_ riceve un messaggio.
- ```ts +disconnectConsumer(consumer: Consumer): void```: disconnette il _consumer_ passato per parametro.

==== TrackFetcher
La classe `TrackFetcher` si occupa di inoltrare una richiesta API al servizio OpenStreetMap per recuperare un tracciato verosmile da far percorrere ai sensori.

===== Metodi
- ```ts +fetchTrack(): GeoPoint*```: richiama il metodo `request` che restituisce la risposta della chiamata API, estrae i punti del percorso sotto forma di `GeoPoint` e ritorna una loro lista rappresentante il tracciato.
- ```ts -request(): response```: recupera dalle variabili d'ambiente il centro della mappa e il raggio di generazione. Con l'ausilio della classe `GeoPoint` genera i punti di inizio e fine tracciato, li passa come parametri alla _API request_ e ritorna la risposta.

==== GeoPoint
La classe `GeoPoint` rappresenta un punto geospaziale costituito da latitudine e longitudine.

===== Attributi
- ```ts -latitude: double```: il valore della latitudine del punto geospaziale.
- ```ts -longitude: double```: il valore della longitudine del punto geospaziale.

===== Costruttore
- ```ts +GeoPoint(latitude: double, longitude: double)```: costruttore della classe `GeoPoint` che inizializza la latitudine e longitudine con i valori ricevuti.

===== Metodi
- #underline([```ts +radiusKmToGeoPoint(radiusKm: double): GeoPoint```]): metodo statico che converte il valore di un raggio in chilometri in un `GeoPoint` che dista `radiusKm` dall'equatore. All'aumentare del raggio si va a perdere precisione ma ai fini dimostrativi del progetto sono sufficienti pochi chilometri.
- ```ts +generateRandomPoint(radiusGeoPoint: GeoPoint): GeoPoint```: genera un `GeoPoint` all'interno del raggio ricevuto e con centro l'oggetto di invocazione del metodo.
- ```ts +getLatitude(): double```: restituisce il valore della variabile `latitude`.
- ```ts +getLongitude(): double```: restituisce il valore della variabile `longitude`.

=== Componenti di utilità
Sfruttando l'aspetto procedurale del linguaggio TypeScript sono state create delle componenti di supporto. Queste non contengono classi o interfacce quindi diventa più efficace descriverle di seguito piuttosto che in un diagramma delle classi.
- *App*: rappresenta il punto di accesso al servizio e si occupa della creazione di una istanza del simulatore e del suo avvio.
#codly(header: [*App.ts*])
```ts
const simulator = container.get(Simulator);
simulator.startSimulation();
```

- *EnvManager*: espone l'accesso per le variabili d'ambiente. Per utilizzarne una è sufficiente importare il modulo e richiamare `env.VAR_NAME`.
#codly(header: [*config/EnvManager.ts*])
```ts
dotenv.config({ path: './src/config/.env' });
export const env = process.env;
```

- *InversifyType*: espone una mappa delle componenti da "iniettare" con il _design pattern dependency injection_. In questo modo si evitano i problemi di _mistyping_ dei _serviceId_.
#codly(header: [*config/InversifyType.ts*])
```ts
export const TYPES = {
  KafkaManager: Symbol.for('KafkaManager'),
  TrackerList: Symbol.for('TrackerList')
};
```

- *Inversify.config*: definisce il _container_ e i _binding_ per risolvere le dipendenze con la libreria #box[Inverisfy].
#codly(header: [*config/InversifyType.ts*])
```ts
export const container = new Container();

container
  .bind<KafkaManager>(TYPES.KafkaManager)
  .toDynamicValue(() => {
    const kafkaConfig: KafkaConfig = {
      clientId: env.CLIENT_ID,
      brokers: [env.BROKER ?? 'localhost:9094']
    };
    const kafka: Kafka = new Kafka(kafkaConfig);
    return new KafkaManager(kafka);
  })
  .inSingletonScope();

container
  .bind<Tracker[]>(TYPES.TrackerList)
  .toDynamicValue((context: ResolutionContext): Tracker[] => {
    const kafkaManager: KafkaManager = context.get<KafkaManager>(TYPES.KafkaManager);
    let trackerList: Tracker[] = [];
    for (let i = 1; i <= Number(env.INIT_TRACKER_COUNT); i++) {
      const id = i.toString();
      const tracker: Tracker = new Tracker(id, kafkaManager);
      trackerList.push(tracker);
    }
    return trackerList;
  });

container.bind(Simulator).toSelf().inSingletonScope();
```

#pagebreak(weak: true)

== Design pattern adottati
=== Dependency injection
Quando un progetto è costituito da un numero considerevole di componenti risulta fondamentale minimizzare le dipendenze. Più si riesce ad evitare debito tecnico e più semplice risulta aggiungere funzionalità perché le parti del sistema non sono fortemente accoppiate. L'obiettivo di questo _design pattern_ è quindi quello togliere a un componente la responsabilità della risoluzione delle proprie dipendenze.

==== Implementazione della dependency injection <inversify-1>
Il gruppo ha deciso di utilizzare la libreria Inversify per gestire la _dependency injection_ nel servizio del simulatore. Possedendo delle annotazioni specifiche lo strumento di *IoC* (_Inversion of Control_) ha agevolato l'implementazione del _design pattern_. È stato infatti sufficiente contrassegnare le dipendenze con delle annotazioni (`@Injectable` e `@Inject`) e definire la risoluzione nel _file_ #box[`client/src/config/Inversify.config.ts`].

==== Concetti principali di Inversify ed esempio di utilizzo <inversify-2>
Adottando il _design pattern dependency injection_ le dipendenze sono dichiarate come parametri nel costruttore annotate da `@Inject('serviceId')` e le relative classi devono essere contrassegnate da `@Injectable()`. In un _file_ di configurazione poi deve essere dichiarato il _container_ e i _binding_ tra i serviceId e le classi "iniettabili".

#codly(header: [*Tracker.ts*])
```ts
@Injectable()
class Tracker { }
```

#codly(header: [*Rent.ts*])
```ts
class Rent {
  constructor(
    @Inject('Tracker')
    private tracker: Tracker
  ) { }
}
```

#codly(header: [*Inversify.config.ts*])
```ts
export const container = new Container();
container.bind<Tracker>('Tracker').to(Tracker);
container.bind(Rent).toSelf();
```

Al momento della creazione dell'oggetto di tipo `Rent` è sufficiente la funzione `get()` del _container_ e questa risolverà le dipendenze come specificato.

#codly(header: [*App.ts*])
```ts
const rent = container.get(Rent);
```

==== Integrazione del design pattern nel progetto <inversify-3>
Nel servizio del simulatore sono state risolte le dipendenze tra i sensori e il _manager_ di Apache Kafka, tra il simulatore e la lista di sensori. Nel _file_ di configurazione è stato personalizzato il _binding_ poiché entrambi richiedono delle precedenti impostazioni che non sono possibili da "iniettare" automaticamente.

Le classi e di conseguenza la _dependency injection_ sono state configurate nel seguente modo. Per evitare incongruenze tra i _serviceId_ delle classi "iniettabili" è stata crata una mappa univoca.

#codly(header: [*config/InversifyTypes.ts*])
```ts
export const TYPES = {
  KafkaManager: Symbol.for('KafkaManager'),
  TrackerList: Symbol.for('TrackerList')
};
```

#codly(header: [*KafkaManager.ts*])
```ts
@Injectable()
export class KafkaManager {
  constructor(
      private kafka: Kafka
  ) { }

  ...
}
```

#codly(header: [*Tracker.ts*])
```ts
@Injectable()
export class Tracker {
  ...

  constructor(
    private id: string,
    @inject(TYPES.KafkaManager)
    private kafkaManager: KafkaManager
  ) { }

  ...
}
```

#codly(header: [*Simulator.ts*])
```ts
export class Simulator {
  constructor(
    @inject(TYPES.TrackerList)
    private trackerMap: Tracker[]
  ) { }

  ...
}
```

Poiché i _bind_ di `KafkaManager` e `Tracker` non sono immediatamente risolvibili è stato necessario definirli con `toDynamicValue()`. Per inizializzare i sensori è stato assegnato loro un identificativo incrementale coincidente con quelli in _database_.

Il _bind_ di `KafkaManager` e `Simulator` è stato contrassegnato dalla funzione `inSingletonScope()` per assicurare che esista una sola istanza per tipo.

#codly(header: [*config/Inversify.config.ts*])
```ts
export const container = new Container();

container
  .bind<KafkaManager>(TYPES.KafkaManager)
  .toDynamicValue(() => {
    const kafkaConfig: KafkaConfig = {
      clientId: env.CLIENT_ID,
      brokers: [env.BROKER ?? 'localhost:9094']
    };
    const kafka: Kafka = new Kafka(kafkaConfig);
    return new KafkaManager(kafka);
  })
  .inSingletonScope();

container
  .bind<Tracker[]>(TYPES.TrackerList)
  .toDynamicValue((context: ResolutionContext): Tracker[] => {
    const kafkaManager: KafkaManager = context.get<KafkaManager>(TYPES.KafkaManager);
    let trackerList: Tracker[] = [];
    for (let i = 1; i <= Number(env.INIT_TRACKER_COUNT); i++) {
      const id = i.toString();
      const tracker: Tracker = new Tracker(id, kafkaManager);
      trackerList.push(tracker);
    }
    return trackerList;
  });

container.bind(Simulator).toSelf().inSingletonScope();
```

Nel _file_ principale è sufficiente quindi richiedere l'istanza di `Simulator` tramite la funzione `get()` del _container_.

#codly(header: [*App.ts*])
```ts
const simulator = container.get(Simulator);
simulator.startSimulation();
```

=== Singleton <singleton>
Può essere che alcune componenti debbano mantenere un'integrità per tutta l'esecuzione del prodotto, non potendo quindi esistere diverse istanze con diversi valori. Il _design pattern singleton_ assicura che ovunque si acceda al componente venga restituita sempre la stessa istanza.


==== Implementazione del design pattern
Il gruppo è consapevole della potenziale fallacità di questo _design pattern_ in quanto due processi potrebbero concorrere alla stessa risorsa e, in particolari situazioni, far generare due istanze. Nel caso del simulatore per minimizzare gli errori è stato scelto di demandare il lavoro alla libreria Inversify (spiegata nel dettaglio nelle #link(<inversify-1>)[sez. 4.2.1.1] e #link(<inversify-2>)[sez. 4.2.1.2]).

==== Integrazione del design pattern nel progetto
Come anticipato nella #link(<inversify-3>)[sez. 4.2.1.3] è stata dichiarata la risoluzione della dipendenza nel _file_ `client/src/config/Inversify.config.ts` e le componenti interessate, quindi `KafkaManager` e `Simulator`, sono state contrassegnate dalla funzione `inSingletonScope()`.

#codly(
  header: [*config/Inversify.config.ts*],
  highlights: (
    (line: 13, start: 3, end: none, fill: blue),
    (line: 17, start: 35, end: none, fill: blue),
  ),
)
```ts
export const container = new Container();

container
  .bind<KafkaManager>(TYPES.KafkaManager)
  .toDynamicValue(() => {
    const kafkaConfig: KafkaConfig = {
      clientId: env.CLIENT_ID,
      brokers: [env.BROKER ?? 'localhost:9094']
    };
    const kafka: Kafka = new Kafka(kafkaConfig);
    return new KafkaManager(kafka);
  })
  .inSingletonScope();

...

container.bind(Simulator).toSelf().inSingletonScope();
```

#pagebreak()

= Stato dei requisiti funzionali
Nella seguente tabella verranno riportati i requisiti funzionali individuati durante l'Analisi dei Requisiti ed il loro stato.

In particolare per ogni requisito verrà riportato:

- *Codice identificativo*

  Ogni requisito è identificato univocamente da un codice che presenta la seguente struttura:
  #align(center)[*R[Importanza][Tipo]-[ID]*]
  Dove
  - *Importanza*: indica il grado di importanza di ogni requisito, che si distingue in:
    - *O*: requisito obbligatorio.
    - *D*: requisito desiderabile.
    - *F*: requisito facoltativo.
  - *Tipo*: indica la tipologia di requisito, che si distingue in:
    - *F*: requisito funzionale.
    - *Q*: requisito di qualità.
    - *V*: requisito di vincolo.
  - *ID*: numero progressivo che identifica univocamente il requisito nella sua categoria.

- *Descrizione*

- *Stato*
  - Soddisfatto
  - Non soddisfatto

Per una spiegazione più approfondita si rimanda al documento `analisi_dei_requisiti_ver2.0.0`.

== Tracciamento dei requisiti funzionali soddisfatti
#table(
  align: (center, left, center),
  columns: (0.6fr, 3fr, 1fr),
  table.header([*Codice*], [*Descrizione*], [*Stato*]),

  table.cell(colspan: 3)[Obbligatori],

  [ROF-1],
  [Il sensore deve trasmettere i suoi dati di identificazione e localizzazione al sistema a intervalli regolari.],
  [Soddisfatto],

  [ROF-2],
  [La _dashboard_ dell'amministratore, per essere accessibile solamente da quest'ultimo, deve essere protetta da un sistema di autenticazione. Per poter visualizzare la _dashboard_ l'amministratore deve quindi autenticarsi con le proprie credenziali.],
  [Soddisfatto],

  [ROF-3],
  [L'amministratore, per poter accedere alla _dashboard_, deve fornire l'indirizzo _e-mail_ dell'_account_ con cui è registrato all'interno del sistema.],
  [Soddisfatto],

  [ROF-4],
  [L'amministratore, per poter accedere alla _dashboard_, deve fornire la _password_ dell'_account_ con cui è registrato all'interno del sistema.],
  [Soddisfatto],

  [ROF-5],
  [Se l'amministratore inserisce delle credenziali non valide, come una _e-mail_ o _password_ non valida, il sistema deve ritornare il messaggio di errore "Credenziali errate".],
  [Soddisfatto],

  [ROF-6],
  [L'amministratore, una volta autenticato, deve poter visualizzare la mappa geografica sulla _dashboard_ del sistema.],
  [Soddisfatto],

  [ROF-7],
  [L'amministratore deve poter visualizzare i punti di interesse presenti all'interno del sistema tramite dei _marker_ posizionati all'interno della mappa geografica.],
  [Soddisfatto],

  [ROF-8],
  [L'amministratore, per ogni noleggio attivo che viene erogato, deve poter visualizzare il tracciato percorso dal mezzo a noleggio attraverso la mappa geografica.],
  [Soddisfatto],


  [ROF-9],
  [L'amministratore deve poter visualizzare un _marker_ in corrispondenza di una posizione, in prossimità di un punto di interesse, che ha causato la generazione di un annuncio tramite LLM per l'utente del mezzo.],
  [Soddisfatto],

  [ROF-10],
  [L'amministratore deve poter visualizzare un _marker_ in corrispondenza di una posizione, in prossimità di un punto di interesse, dove la LLM non ha generato un annuncio perché ha valutato l'utente come non interessato al punto di interesse in base alla sua profilazione.],
  [Soddisfatto],

  [ROF-11],
  [L'amministratore deve poter visualizzare tramite un'interazione con il _marker_ (come un _hover_ o un _click_) le informazioni relative al punto di interesse.],
  [Soddisfatto],

  [ROF-12],
  [L'amministratore deve poter visualizzare dalle informazioni fornite tramite l'interazione con il _marker_ del punto di interesse il nome dello stesso.],
  [Soddisfatto],

  [ROF-13],
  [L'amministratore deve poter visualizzare, dalle informazioni fornite tramite interazione con il _marker_ del punto di interesse, la categoria di esercizio commerciale (e.g. alimentare, sportivo, etc.).],
  [Soddisfatto],

  [ROF-14],
  [L'amministratore deve poter visualizzare le informazioni relative all'annuncio generato tramite l'interazione con un _marker_ di generazione annuncio.],
  [Soddisfatto],

  [ROF-15],
  [L'amministratore deve poter visualizzare il nome del punto di interesse legato all'annuncio dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [Soddisfatto],

  [ROF-16],
  [L'amministratore deve poter visualizzare l'_e-mail_ dell'utente destinatario dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [Soddisfatto],

  [ROF-17],
  [L'amministratore deve poter visualizzare la data e l'ora di generazione dell'annuncio dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [Soddisfatto],

  [ROF-18],
  [L'amministratore deve poter visualizzare l'annuncio dalle informazioni visualizzate tramite l'interazione con un _marker_ di generazione annuncio.],
  [Soddisfatto],

  [ROF-19],
  [L'amministratore deve poter visualizzare la categoria di esercizio commerciale del punto di interesse coinvolto nella generazione dell'annuncio visualizzato tramite un'interazione con un _marker_ di generazione annuncio.],
  [Soddisfatto],

  [ROF-20],
  [L'amministratore deve poter visualizzare un messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [Soddisfatto],

  [ROF-21],
  [L'amministratore deve poter visualizzare il nome del punto di interesse sul messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [Soddisfatto],

  [ROF-22],
  [L'amministratore deve poter visualizzare l'_e-mail_ dell'utente destinatario sul messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [Soddisfatto],

  [ROF-23],
  [L'amministratore deve poter visualizzare la data e ora di tentata generazione sul messaggio con le informazioni di un annuncio non generato, tramite l'interazione con un _marker_ di mancata generazione.],
  [Soddisfatto],

  [ROF-24],
  [L'amministratore deve poter chiudere la vista con le informazioni sull'annuncio generato visualizzata sulla mappa tramite l'interazione con un _marker_ di generazione annuncio.],
  [Soddisfatto],

  [ROF-25],
  [L'amministratore deve poter chiudere il messaggio di annuncio non generato visualizzato sulla mappa tramite l'interazione con un _marker_ di mancata generazione.],
  [Soddisfatto],

  [ROF-26],
  [L'amministratore deve essere in grado di interagire con la mappa per spostare il centro della visuale.],
  [Soddisfatto],

  [ROF-27],
  [L'amministratore deve essere in grado di modificare l'ampiezza della visuale sulla mappa. In particolare bisogna permettere l'ampliamento e il restringimento del campo visivo che l'amministratore ha sul territorio visualizzato all'interno della mappa.],
  [Soddisfatto],

  [ROF-28],
  [Creazione di un generatore di dati GPS per simulare il funzionamento di un sensore che interagisce col sistema.],
  [Soddisfatto],

  [ROF-29],
  [Il generatore deve generare dei percorsi che siano realistici, ovvero che seguano le varie strade, vie e piste ciclabili che una bicicletta può percorrere.],
  [Soddisfatto],

  table.cell(colspan: 3)[Desiderabili],


  [RDF-1],
  [L'amministratore deve essere in grado di accedere alla sezione dedicata allo storico degli annunci generati all'interno della _dashboard_.],
  [Soddisfatto],

  [RDF-2],
  [L'amministratore deve essere in grado di visualizzare, nella sezione dedicata allo storico degli annunci, l'elenco degli annunci generati dal sistema.],
  [Soddisfatto],

  [RDF-3],
  [L'amministratore deve essere in grado di visualizzare l'elenco degli annunci nello storico sotto forma di lista oppure di griglia a seconda delle preferenze dell'amministratore stesso.],
  [Non soddisfatto],

  [RDF-4],
  [L'amministratore deve essere in grado di visualizzare un singolo elemento con le informazioni dell'annuncio all'interno dello storico.],
  [Soddisfatto],

  [RDF-5],
  [L'amministratore deve essere in grado di visualizzare il nome del punto di interesse di ogni singolo elemento presente all'interno dello storico.],
  [Soddisfatto],

  [RDF-6],
  [L'amministratore deve essere in grado di visualizzare l'_e-mail_ dell'utente destinatario di ogni singolo elemento all'interno dello storico.],
  [Soddisfatto],

  [RDF-7],
  [L'amministratore deve essere in grado di visualizzare data e ora relativi al tentativo di generazione di ogni singolo elemento all'interno dello storico.],
  [Soddisfatto],

  [RDF-8],
  [L'amministratore deve essere in grado di poter visualizzare i dettagli di un singolo elemento all'interno dello storico.],
  [Soddisfatto],

  [RDF-9],
  [L'amministratore deve essere in grado di visualizzare il nome del punto di interesse relativo ad un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [Soddisfatto],

  [RDF-10],
  [L'amministratore deve essere in grado di visualizzare l'_e-mail_ dell'utente destinatario di un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [Soddisfatto],

  [RDF-11],
  [L'amministratore deve essere in grado di visualizzare data e ora del tentativo di generazione di un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [Soddisfatto],

  [RDF-12],
  [L'amministratore deve essere in grado di visualizzare il corpo dell'annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [Soddisfatto],

  [RDF-13],
  [L'amministratore deve essere in grado di visualizzare la categoria del punto di interesse collegato all'annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [Soddisfatto],

  [RDF-14],
  [L'amministratore deve essere in grado di chiudere la vista di visualizzazione dei dettagli di un singolo annuncio.],
  [Soddisfatto],

  [RDF-15],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico per _e-mail_ dell'utente destinatario dell'annuncio.],
  [Soddisfatto],

  [RDF-16],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico per nome del punto di interesse.],
  [Soddisfatto],

  [RDF-17],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico generati in un certo intervallo di date.],
  [Soddisfatto],

  [RDF-18],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico generati in una determinata fascia oraria.],
  [Soddisfatto],

  table.cell(colspan: 3)[Facoltativi],

  [RFF-1],
  [L'amministratore deve poter visualizzare la sezione dedicata ai grafici all'interno della _dashboard_ del sistema.],
  [Soddisfatto],

  [RFF-2],
  [L'amministratore deve poter visualizzare un singolo grafico relativo ad una particolare analisi dati.],
  [Soddisfatto],

  [RFF-3],
  [L'amministratore deve poter visualizzare il titolo di uno specifico grafico a seconda dell'analisi dati che viene rappresentata.],
  [Soddisfatto],

  [RFF-4],
  [L'amministratore deve poter visualizzare in uno specifico grafico un'etichetta relativa alla tipologia di misura rappresentata sulle assi delle ascisse e delle ordinate e, infine, i relativi valori.],
  [Soddisfatto],

  [RFF-5],
  [L'amministratore deve poter visualizzare, all'interno di ciascun grafico, la rappresentazione dello specifico _set_ di dati previsti per quel grafico.],
  [Soddisfatto],

  [RFF-6],
  [L'amministratore deve poter visualizzare un grafico che mostri il numero di annunci generati dal sistema nelle ultime 24 ore, con granularità oraria.],
  [Soddisfatto],

  [RFF-7],
  [L'amministratore deve poter visualizzare un grafico raffigurante il numero medio di noleggi che vengono effettuati in ciascun mese dell'anno, risultato della media di noleggi effettuati in quel mese nel corso degli anni.],
  [Soddisfatto],

  [RFF-8],
  [L'amministratore, dalla sezione dedicata ai grafici, deve poter selezionare uno specifico punto di interesse per poter poi visualizzare i grafici delle statistiche ad esso correlate.],
  [Soddisfatto],

  [RFF-9],
  [L'amministratore deve poter visualizzare un grafico che mette a confronto il numero di annunci generati con il numero di annunci non generati per un certo punto di interesse nell'ultima settimana.],
  [Soddisfatto],

  [RFF-10],
  [Viene richiesta la creazione di uno strumento di visualizzazione degli annunci in tempo reale per l'utente utilizzatore del servizio.],
  [Non soddisfatto],
)

#pagebreak(weak: true)

= Grafici riassuntivi
== Requisiti funzionali obbligatori
#align(center)[
  #figure(
    kind: image,
    caption: "Grafico a torta riassunto dei requisiti funzionali obbligatori",
    cetz.canvas({
      let colors = gradient.linear(red, yellow, green, blue)

      chart.piechart(
        (("Non soddisfatti", 0), ("Soddisfatti", 29)),
        value-key: 1,
        label-key: 0,
        radius: 3,
        slice-style: colors,
        gap: 0,
        outer-label: (content: "%"),
      )
    }),
  )]
== Requisiti funzionali desiderabili
#align(center)[
  #figure(
    kind: image,
    caption: "Grafico a torta riassunto dei requisiti funzionali desiderabili",
    cetz.canvas({
      let colors = gradient.linear(red, yellow, green, blue)

      chart.piechart(
        (("Non soddisfatti", 1), ("Soddisfatti", 17)),
        value-key: 1,
        label-key: 0,
        radius: 3,
        slice-style: colors,
        gap: 0,
        outer-label: (content: "%"),
      )
    }),
  )]
== Requisiti funzionali facoltativi
#align(center)[
  #figure(
    kind: image,
    caption: "Grafico a torta riassunto dei requisiti funzionali facoltativi",
    cetz.canvas({
      let colors = gradient.linear(red, yellow, green, blue)

      chart.piechart(
        (("Non soddisfatti", 1), ("Soddisfatti", 9)),
        value-key: 1,
        label-key: 0,
        radius: 3,
        slice-style: colors,
        gap: 0,
        outer-label: (content: "%"),
      )
    }),
  )]
== Requisiti funzionali totali
#align(center)[
  #figure(
    kind: image,
    caption: "Grafico a torta riassunto dei requisiti funzionali totali",
    cetz.canvas({
      let colors = gradient.linear(red, yellow, green, blue)

      chart.piechart(
        (("Non soddisfatti", 2), ("Soddisfatti", 55)),
        value-key: 1,
        label-key: 0,
        radius: 3,
        slice-style: colors,
        gap: 0,
        outer-label: (content: "%"),
      )
    }),
  )]
