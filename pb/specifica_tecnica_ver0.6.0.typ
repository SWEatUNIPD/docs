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
    [Andrea Precoma\ Riccardo Milan],
    [- Redazione],
    "0.7.0",
    "25/03/2025",
    "Klaudio Merja",
    "Andrea Precoma",
    [
      - Redazione dell'architettura logica
      - Redazione della sezione relativa al linguaggio Java
    ],
    "0.6.0",
    "25/03/2025",
    "Andrea Precoma",
    "Klaudio Merja",
    [
      - Redazione architetture di _deployment_
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
Il prodotto NearYou - Smart custom advertising platform è una piattaforma che sfrutta la GenAI per la creazione di pubblicità personalizzate da mostrare a ciascun utente, sfruttando dati come la posizione trasmessi in tempo reale, le informazioni personali e i dati di profilazione, in maniera tale da migliorare l'esperienza finale dell'utente e aumentando contemporaneamente il ROI e l'efficacia delle campagne pubblicitarie.

== Glossario
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo, viene fornito un glossario.
La prima occorrenza di un termine definito all'interno del glossario presente all'interno di un documento viene sottolineato e seguito dalla lettera "g" posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti

=== Riferimenti normativi
- Norme di Progetto (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/norme_di_progetto_ver2.0.0.pdf")
- Regolamento del progetto didattico, _slide_ 23 \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf") \ (ultimo accesso in data 25/03/2025)
- Capitolato C4 - Sync Lab S.r.l. \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf") \ (ultimo accesso in data 25/03/2025)

=== Riferimenti informativi
- Glossario (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/glossario_ver2.0.0.pdf")
- Capitolato C4 - Sync Lab S.r.l. \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf") \ (ultimo accesso in data 25/03/2025)
- Guida ufficiale per l'installazione di Docker \ #formatLink(url: "https://docs.docker.com/engine/install") \ (ultimo accesso in data 25/03/2025)
- Documentazione relativa al supporto di Flink a Java 17 \ #formatLink(url: "https://nightlies.apache.org/flink/flink-docs-release-1.20/docs/deployment/java_compatibility/#java-17") \ (ultimo accesso in data 25/03/2025)
- Java _records_ \ #formatLink(url: "https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Record.html") \ (ultimo accesso in data 25/03/2025)
- Documentazione relativa agli _async_ I/O per l'accesso ai dati esterni \ #formatLink(url: "https://nightlies.apache.org/flink/flink-docs-master/docs/dev/datastream/operators/asyncio/#async-io-api") \ (ultimo accesso in data 25/03/2025)
- Apache Kafka - Homepage \ #formatLink(url: "https://kafka.apache.org/") \ (ultimo accesso in data 25/03/2025)

#pagebreak(weak: true)

= Tecnologie
In questa sezione vengono definite le tecnologie e gli strumenti adottati per lo sviluppo del prodotto _sofware_ e le loro funzionalità all'interno del sistema. Per chiarezza, le tecnologie sono state suddivise in base al ruolo che svolgono all'interno del sistema.

== Infrastruttura del sistema
=== Docker
Docker è una piattaforma _open source_ che permette di sviluppare, distribuire ed eseguire applicazioni. Permette di eseguire queste ultime in un ambiente isolato e di replicare l'ambiente di esecuzione in maniera tale da garantire portabilità e la replicabilità. Porta particolare vantaggio per quanto riguarda il suo utilizzo in ambito _testing_, permettendo di simulare il prodotto in un ambiente isolato durante lo sviluppo e di ridurre il tempo tra la codifica ed il rilascio in produzione del prodotto.
=== Configurazione di Docker
La replicabilità del sistema viene resa possibile grazie a Docker Compose. Questo strumento permette di definire e gestire applicazioni _multi-container_. In particolare, Docker Compose semplifica la creazione e la gestione dell'intero sistema, semplificando la configurazione dei servizi, delle reti e dei volumi dei singoli tramite un _file_ di configurazione in YAML.

Nel nostro caso specifico, il file YAML si trova nella _root_ del progetto denominato `compose.yml`. Questo _file_ contiene tutti i servizi necessari a far funzionare il sistema. Ogni servizio è definito da un blocco di configurazione che specifica l'identificativo del servizio e le varie proprietà come l'immagine Dokcer da utilizzare, il comando da eseguire, porte da mappare e molto altro.

Di seguito vengono elencati tutti i servizi che compongono il sistema (le relative configurazioni vengono omesse e si rimanda il lettore al file #link("https://github.com/SWEatUNIPD/NearYou/blob/main/compose.yml")[`compose.yml`] per ulteriori dettagli):

=== Servizi Docker implementati
- *kafka*
  - *Immagine*: apache/kafka
  - *Versione dell'immagine*: 4.0.0
  - *Riferimento*: #formatLink(url: "https://hub.docker.com/r/apache/kafka") (ultimo accesso in data 25/03/2025)

- *postgis*
  - *Immagine*: postgis/postgis
  - *Versione dell'immagine*: 17-3.5
  - *Riferimento*: #formatLink(url: "https://hub.docker.com/r/postgis/postgis") (ultimo accesso in data 25/03/2025)

- *grafana*
  - *Immagine*: rmilan/grafana-rm
  - *Riferimento*: #formatLink(url: "https://hub.docker.com/r/rmilan/grafana-rm") (ultimo accesso in data 25/03/2025)

- *jobmanager*
  - *Immagine*: flink
  - *Versione dell'immagine*: 1.20.1-scala_2.12-java17
  - *Riferimento*: #formatLink(url: "https://hub.docker.com/_/flink") (ultimo accesso in data 25/03/2025)

- *taskmanager*
  - *Immagine*: flink
  - *Versione dell'immagine*: 1.20.1-scala_2.12-java17
  - *Riferimento*: #formatLink(url: "https://hub.docker.com/_/flink") (ultimo accesso in data 25/03/2025)

- *simulator*
  - *Immagine*: _Build_ in locale con Dockerfile
  - *_Path_ del Dockerfile*: `./client` (relativo alla _root_ del progetto)
  // TODO: mettere label "_repository_ NearYou del gruppo"
  - *Riferimento*: #formatLink(url: "https://github.com/SWEatUNIPD/NearYou/tree/main/client")

== Linguaggi di sviluppo
=== TypeScript
TypeScript è un _superset_ di JavaScript che supporta sia la programmazione orientata agli oggetti con classi, interfacce ed ereditarietà, sia la programmazione procedurale basata su funzioni e blocchi di istruzioni.

==== Utilizzo nel progetto
TypeScript è stato utilizzato per la realizzazione del simulatore dei sensori, il quale si occupa di generare i dati di localizzazione di un percorso casuale per inviarli ad Apache Kafka mediante le API fornite dalla libreria Kafkajs.

Il seguente diagramma delle classi descrive la struttura del simulatore realizzato in TypeScript.

==== Versione
La versione di TypeScript utilizzata per lo sviluppo del simulatore è la 5.7.2.

#figure(
  image("../assets/img/ST/simulator.svg", width: 110%),
  caption: [Diagramma delle classi del simulatore],
)

==== Componenti di utilità
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

==== Librerie e framework
- *\@mapbox/polyline*
  - *Documentazione*: #formatLink(url: "https://www.npmjs.com/package/@mapbox/polyline") (ultimo accesso 18/03/2025)
  - *Versione*: 1.2.1
  - *Descrizione*: Implementa un formato dell'algoritmo di Google per comprimere i dati di coordinate geografiche di un percorso.

- *Dotenv*
  - *Documentazione*:
  - *Versione*: 16.4.7
  - *Descrizione*:

- *Inversify*
  - *Documentazione*: #formatLink(url: "https://inversify.io") (utlimo accesso 18/03/2025)
  - *Versione*: 7.1.0
  - *Descrizione*: _Tool_ utilizzato per gestire la _Dipendency Injection_ in applicativi sviluppati in JavaScript e TypeScript.

- *Kafkajs*
  - *Documentazionee*: #formatLink(url: "https://kafka.js.org/docs/introduction") (ultimo accesso 18/03/2025)
  - *Versione*: 2.2.4
  - *Descrizione*: Usata per agevolare le operazioni di produzione e consumo di messaggi attraverso Apache Kafka.

// - *Vitest*
//   - *Documentazione*: #formatLink(url: "https://vitest.dev/guide/") (ultimo accesso 18/03/2025)
//   - *Versione*: 3.0.8
//   - *Descrizione*: _Framework_ utilizzato per i _test_ di unità in TypeScript. Aggiungendo alcune dipendenze è possibile generare anche un _report_ del _code coverage_.

// - *ESLint*
//   - *Documentazione*: #formatLink(url: "https://eslint.org/docs/latest/") (ultimo accesso 18/03/2025)
//   - *Versione*: 8.22.0
//   - *Descrizione*: _Tool_ utilizzato per i _test_ statici in TypeScript. Nel _file_ di configurazione è possibile specificare quali controlli fare, ad esempio stile del codice e complessità ciclomatica.

=== Java
Java è un linguaggio di programmazione orientato agli oggetti che nasce con lo scopo di creare applicazioni indipendenti dalla piattaforma, grazie alla sua capacità di compilare il codice in _bytecode_ ed eseguirlo su una JVM. //TODO: JVM a glossario da mettere

==== Utilizzo nel progetto
Nel nostro specifico caso, viene adottato per la creazione del servizio di _stream processing_ (denominato anche _job_) per Apache Flink, che si occupa di elaborare i dati di localizzazione in tempo reale provenienti dai sensori, garantendone la persistenza all'interno del _database_, e di arricchire tali dati con le informazioni necessarie a creare il _prompt_ da inviare alla LLM per poter generare un annuncio il più personalizzato possibile.

==== Versione
Per soddisfare i requisiti di Apache Flink è stata adottato *Java 17 LTS*. //TODO: mettere a glossario LTS

La documentazione di Apache Flink riporta l'introduzione in maniera sperimentale di Java 17 dalla versione 1.18 di Flink; tuttavia, il prodotto è stato _testato_ e le funzionalità fondamentali che avessero un impatto dovuto a questa scelta, ovvero i _records_ in Java, funzionano correttamente.

==== Librerie e framework
Per la gestione del progetto e l'automazione delle operazioni di _build_ e _test_ è stato utilizzato Apache Maven. Per avere una visione nel dettaglio di tutte le librerie utilizzate all'interno del nostro sistema, è possibile visionare il _file_ `pom.xml` presente all'interno della cartella `job` del nostro progetto.

La seguente lista è da intendersi generica e non vuole essere un mero elenco di tutte le dipendenze e le librerie presenti all'interno del nostro progetto.//TODO: riportare maven a glossario

- *Apache Flink*
  - *Documentazione*: #formatLink(url: "https://nightlies.apache.org/flink/flink-docs-release-1.20/") (ultimo accesso in data 25/03/2025)
  - *Versione*: 1.20.1
  - *Descrizione*: _Framework_ ed _engine_ per effettuare operazioni _stateful_ su un flusso di dati (nel nostro caso dati di localizzazione), elevato o meno che sia, in tempo reale in maniera reattiva, scalabile e affidabile. //TODO: stateful a glosario

- *PostgreSQL JDBC Driver*
  - *Documentazione*: #formatLink(url: "https://jdbc.postgresql.org/documentation/") (ultimo accesso in data 25/03/2025)
  - *Versione*: 42.7.5
  - *Descrizione*: _Driver_ per la connessione a un _database_ PostgreSQL. //TODO: mettere JDBC a glossario

- *PostgreSQL R2DBC Driver*
  - *Documentazione*: #formatLink(url: "https://github.com/pgjdbc/r2dbc-postgresql") (ultimo accesso in data 25/03/2025)
  - *Versione*: 1.0.7.RELEASE
  - *Descrizione*: _Driver_ per la connessione a un _database_ PostgreSQL, sfruttando l'API della programmazione reattiva (per maggiori informazioni: #formatLink(url: "https://www.reactivemanifesto.org/it", label: "Reactive Manifesto") - ultimo accesso in data 25/03/2025). Permette di effettuare richieste asincrone e non bloccanti al _database_, come richiesto dalla documentazione di Flink per le operazioni di I/O asincrone. //TODO: mettere R2DBC a glossario e programmazione reattiva
- *R2DBC Pool*
  - *Documentazione*: #formatLink(url: "https://github.com/r2dbc/r2dbc-pool") (ultimo accesso in data 25/03/2025)
  - *Versione*: 1.0.2
  - *Descrizione*: Implementazione del _connection pooling_ per R2DBC. //TODO: mettere connection pooling a glossario

- *Project Reactor*
  - *Documentazione*: #formatLink(url: "https://projectreactor.io/docs/core/release/reference/") (ultimo accesso in data 25/03/2025)
  - *Versione*: 3.7.4
  - *Descrizione*: Libreria di programmazione reattiva, completamente non bloccante. Viene utilizzato all'interno del nostro prodotto come _client_ per le operazioni asincrone di _data enrichment_, che nel nostro caso sono quella di richiesta del punto di interesse più vicino alla posizione del sensore che soddisfi gli interessi dell'utente e quella di generazione dell'annuncio tramite LLM sfruttando i dati di profilazione dell'utente e del punto di interesse registrati nel _database_.

- *SLF4J*
  - *Documentazione*: #formatLink(url: "https://www.slf4j.org/docs.html")
  - *Versione*: 2.0.17
  - *Descrizione*: Libreria che serve da astrazione (_facade_) per i vari _framework_ di _logging_ in Java, permettendo di cambiare _framework_ senza dover modificare il codice. //TODO: mettere logging e facade a glossario (vedere se c'è framework)

- *LogBack*
  - *Documentazione*: #formatLink(url: "https://logback.qos.ch/documentation.html")
  - *Versione*: 1.5.17
  - *Descrizione*: _Framework_ di _logging_ per Java, utilizzato per la configurazione dei _logger_ all'interno del nostro servizio di _stream processing_.

- *LangChain4j*
  - *Documentazione*: #formatLink(url: "https://docs.langchain4j.dev/intro")
  - *Versione*: 1.0.0-beta1
  - *Descrizione*: Libreria per LLM che permette, nel nostro caso, la generazione di annunci personalizzati in base ai dati di profilazione dell'utente e del punto di interesse.

== Data broker
Il _data broker_ svolge un ruolo fondamentale all'interno del nostro sistema in quanto si occupa di ricevere i dati e inoltrarli ai servizi che ne fanno uso in maniera efficiente e scalabile. Nel nostro caso, il _data broker_ riceve i dati di localizzazione dai sensori e li inoltra successivamente al servizio di _stream processing_.
=== Apache Kafka
Apache Kafka è una piattaforma di _streaming_ di dati. Progettato per essere scalabile, _fault-tolerant_ e ad avere elevate prestazioni, viene utilizzato per la gestione dei dati in tempo reale. In particolare nel nostro caso, Kafka viene utilizzato per creare le _pipeline_ di dati tra il simulatore e il servizio di _stream processing_.

Tuttavia non tutte le funzionalità che Apache Kafka fornisce ai programmatori sono state sfruttate all'interno del nostro progetto: fanno parte di queste funzionalità come la replicazione dei dati e il partizionamento dei _topic_. Per la natura dimostrativa del progetto, è stato scelto di utilizzare un singolo _broker_ Kafka, ma ciò non preclude l'utilizzo di queste funzionalità, che possono avere impatti notevoli all'aumentare del _data rate_ in entrata verso il sistema. //TODO: topic a glossario (?)

== Stream processor
Lo _stream processor_ è il cuore pulsante dell'intero sistema sviluppato dal gruppo. Esso si occupa dell'ingestione dei dati, di arricchirli di informazioni necessarie successivamente alla creazione del _prompt_ da inviare all'LLM in maniera tale da generare l'annuncio e di inviare i dati di localizzazione elaborati e gli annunci al _database_ per la persistenza.
=== Apache Flink
Apache Flink è un _framework_ ed _engine_ di _processing_ distribuito, che permette di eseguire delle operazioni definite _stateful_ su uno _stream_ di dati in entrata, limitati o meno che siano. È progettato per un funzionamento in modo continuo e con tempi di inattività e di risposta molto bassi. Nel nostro caso, Flink viene utilizzato per elaborare i dati di localizzazione in tempo reale provenienti dai sensori, garantendone la persistenza all'interno del _database_ e la generazione degli annunci, a partire da questi ultimi, tramite la LLM.

== Generazione annunci
Per la creazione degli annunci, il capitolato prevede l'utilizzo di LLM per la generazione di questi ultimi, utilizzando come _prompt_ gli interessi dell'utente finale, la categoria commerciale e l'offerta (che consiste nel catalogo del punto o di qualsiasi altra informazione che possa essere utile alla generazione che viene fornita dall'esercente) del punto di interesse più vicino alla posizione del sensore.
=== LangChain
LangChain
#pagebreak(weak: true)
== Database
=== PostgreSQL
Per la gestione dei dati relazionali è stato scelto PostgreSQL, un DBMS che offre affidabilità e una certa flessibilità per l'estensione tramite _plugin_ ed estensioni. Nel nostro contesto, PostgreSQL:

- Viene eseguito all'interno di un container Docker (immagine postgis/postgis, vedere sezione #link(<2.2.2>)[2.2.2]).
- È configurato tramite docker-compose (nel file `compose.yml`) con il _mapping_ della porta 5432:5432, utente e _password_ specificati nelle variabili d'ambiente.
- All'avvio esegue automaticamente lo _script_ `create.sql` che crea lo schema del _database_ (tabelle, relazioni, ecc.) secondo le esigenze del progetto.

Nel _file_ `create.sql`:

- Vengono definite tutte le relazioni fondamentali del sistema (ad esempio _users_, _rents_, _positions_, _points_of_interest_, ecc.).
- Vengono impostati i vincoli di integrità referenziale (_primary key_, _foreign key_, _on delete cascade_, ecc.).
- Ove opportuno, si creano tipi enumerati (ad esempio per le categorie di un punto di interesse), oppure si definiscono relazioni 1:N, 1:1 e N:N necessarie al dominio applicativo.

=== PostGIS <2.2.2>
Per l'elaborazione e l'archiviazione di dati geografici si fa uso dell'estensione PostGIS, la quale aggiunge a PostgreSQL il supporto per tipi, funzioni e indici spaziali.

In particolare l'immagine Docker utilizzata è postgis/postgis. Oltre a #box[PostgreSQL] questa contiene già la libreria PostGIS e le relative dipendenze. Questo _setup_ permette, nel nostro caso, di:

- Persistere/Memorizzare le coordinate geografiche (latitudine e longitudine) dei punti di interesse e delle posizioni trasmesse in tempo reale da ogni noleggio attivo.
- Effettuare _query_ geospaziali all'interno del _database_ per individuare i potenziali punti di interesse rispetto ad una determinata posizione, entro un determinato _range_.

=== Struttura del database

==== Diagramma ER

Di seguito viene mostrata la struttura del _database_:

#v(20pt)
#figure(
  image("../assets/diagrams/ER-diagram.png"),
  caption: [Diagramma ER],
)

==== Scelte progettuali

Alcune scelte progettuali, apparentemente ridondanti, sono state adottate per soddisfare specifiche esigenze, in particolare per strumenti come Grafana.

- *Chiavi primarie composte:* La tabella `positions` utilizza una chiave primaria composta da `time_stamp` e `rent_id`. Questo garantisce l'univocità di ogni posizione registrata per un noleggio. Nella tabella `advertisements`, `position_time_stamp` e `position_rent_id` fungono da chiavi esterne per collegare un annuncio alla posizione di un noleggio.

- *Scelta delle chiavi primarie:* La tabella `points_of_interest` utilizza `latitude` e `longitude` come chiavi primarie per garantire che ogni punto di interesse sia univocamente identificabile in base alla sua posizione. Questo evita la creazione di ID artificiali e semplifica l'integrazione con strumenti GIS e di analisi spaziale. Tuttavia, in altre tabelle come `rents` o `advertisements`, è stato mantenuto un ID univoco separato per facilitare la visualizzazione e l'interazione con i dati nell'interfaccia di Grafana.

- *Ripetizione di attributi per _performance_ e analisi dati:* Alcuni attributi, come `latitude_poi` e `longitude_poi`, sono replicati in più tabelle (ad esempio, `advertisements` e `poi_hours`) poiché fanno parte della chiave primaria composta della tabella `points_of_interest`. Questa ridondanza è necessaria per mantenere l'integrità referenziale e la coerenza dei dati. Per ottimizzare le _query_ geospaziali, è stato implementato un indice spaziale (`idx_points_of_interest_location`) sulla posizione dei punti di interesse.

In conclusione, alcune scelte apparentemente ridondanti sono state adottate con lo scopo di migliorare la scalabilità, la velocità di interrogazione dei dati e la compatibilità con strumenti di analisi esterni.

== Interfaccia amministratore
L'interfaccia fornita dal _software_ deve permettere all'amministratore di visualizzare la mappa con i punti di interesse, i sensori che si muovono e gli eventuali annunci generati. Inoltre deve fornire una visualizzazione per lo storico degli annunci e una per entrare nel dettaglio di un singolo annuncio.
Gran parte dei dati dunque deve essere analizzata e mostrata all'utente finale in _real time_. Tale necessità ha dirottato la scelta del gruppo riguardo la tecnologia da utilizzare verso Grafana.
=== Grafana
- *Documentazione*: #formatLink(url: "https://grafana.com/docs/") (ultimo accesso 21/03/2025)
- *Versione*: 11.5.2
- *Descrizione*: Grafana è una piattaforma _open source_ per la visualizzazione e l'analisi dei dati, con cui è possibile creare _dashboard_ interattive e grafici da diverse fonti.

==== Utilizzo nel progetto
Per l'avvio di Grafana nel nostro _software_ è stata predisposta un'immagine nel file `compose.yml`, che viene avviata contestualmente al comando _docker-compose_.
Le funzionalità principali di Grafana nel nostro sistema sono:
- Monitoraggio in tempo reale: Grafana raccoglie in tempo reale i dati dei sensori registrati nel sistema, ovvero identificativo del sensore, noleggio associato ad esso, latitudine e longitudine.
- Visualizzazione dei dati in tempo reale: i dati dei sensori raccolti in tempo reale vengono infatti mostrati in una _dashboard_ di tipo _geomap_ interattiva, nella quale le posizioni dei sensori sono rappresentate da _layer_ di tipo _route_ e i punti di interesse e gli annunci con _layer_ di tipo _marker_.
- Visualizzazione dei dati statici: viene messa a disposizione dell'amministratore una _dashboard_ che raccoglie lo storico degli annunci generati nel tempo; interagendo con i dati nel _database_, Grafana ci permette di mostrare tutti i dati interessanti legati ad ogni annuncio.

#pagebreak(weak: true)

= Architettura del sistema
== Architettura di deployment
L'architettura di _deployment_ definisce come i componenti di un'applicazione vengono distribuiti ed eseguiti su diversi ambienti. Nel caso di un sistema in _real time_ si possono individuare separati servizi che comunicano reattivamente per inviare e processare i dati. Nel nostro progetto inoltre è presente un'interfaccia grafica che non agisce in seguito a una notifica, bensì a intervalli piccoli e regolari di tempo recupera i dati dal _database_. Abbiamo quindi optato per la K-_architecture_ in quanto soddisfa tutte le caratteristiche del prodotto.

=== K-architecture
La K-_architecture_ è un modello architetturale per l'elaborazione di dati in _streaming_. Derivante dalla #box[λ-_architecture_] la sua particolarità è l'eliminazione del _batching_ mantenendo un flusso costante di dati in _real time_.

// TODO: pro/cons

[IMG ARCH COI LAYER]

- *_Data source_*: la sorgente di dati è costituita dal simulatore che imita l'attivazione dei noleggi e lo spostamento degli utenti sui mezzi. I sensori inviano quindi a intervalli regolari la posizione GPS e ricevono l'eventuale annuncio.

- *_Streaming layer_*: questo livello gestisce la trasmissione in tempo reale dei dati che vengono inoltrati al _processing layer_. Lo _streaming layer_ è costituito da:

  - *Apache Kafka*: sistema di messaggistica distribuito che permette di pubblicare, sottoscrivere e archiviare messaggi in tempo reale. Riceve i dati dal simulatore e li inserisce nei _topic_ in attesa che lo _stream processor_ nello _streaming layer_ li consumi.

- *_Processing layer_*: i dati ricevuti dallo _streaming layer_ vengono processati in tempo reale prima di essere memorizzati in _database_. Il _processing layer_ è costituito da:

  - *Apache Flink*: _framework_ ed _engine_ di _processing_ dati distribuito che permette di processare i dati in tempo reale tramite delle operazioni definite "_stateful_", ovvero che mantengono lo stato nel tempo. Il nostro _job_ realizzato per Apache Flink riceve i dati dal _topic_ `gps-data` di Apache Kafka, li elabora, trovando il punto di interesse più vicino all'utente e generando l'annuncio tramite la LLM, e infine li invia al _database_ nello _storage layer_ per persisterli. Il _job_ si occupa inoltre di inviare l'annuncio generato al simulatore.

- *_Storage layer_*: la persistenza è gestita da un _database_ relazionale che archivia i dati in arrivo dal _processing layer_. Lo _storage layer_ è costituito da *PostgreSQL* affiancato da *PostGIS*, una estensione che facilita l'elaborazione di dati geospaziali.

- *_Data visualization layer_*: i dati archiviati nello _storage layer_ vengono resi disponibile tramite una interfaccia grafica. Costituito da *Grafana* questo _layer_ recupera le informazioni dal _database_ a intervalli regolari in modo da aggiornare rapidamente l'interfaccia ai nuovi cambiamenti.

#pagebreak(weak: true)
== Architettura logica
L'architettura logica, a differenza di quella di _deployment_, si concentra sulle componenti da un punto di vista più astratto, descrivendo come funziona il _software_ dal punto di vista della _business logic_ e delle interazioni tra le varie parti ad alto livello.

La scelta della architettura logica adottata è stata influenzata dalle esigenze del progetto e dai requisiti richiesti dall'azienda, in particolare la necessità di un sistema _real time_ in grado di gestire un flusso di dati elevato.
=== Architettura data streaming
L'architettura _data streaming_ è una tipologia di architettura che nasce per gestire flussi di dati generati in maniera continua in tempo reale.

Questo tipo di architettura è particolarmente adatto ad applicazioni/sistemi che richiedono il _processing_ di una mole di dati particolarmente elevata con un tempo di risposta molto basso (ovvero in _real time_, o per lo meno _near-real time_), che non possono essere gestiti da un tradizionale _batch processing_. Di fatto, un'architettura _data streaming_ consuma i dati immediatamente alla loro generazione, persistendoli in un _database_ e processandoli in tempo reale.

[IMG ARCH LOGICA]

L'architettura _data streaming_ è composta dai seguenti _layer_:
- *Sorgente dati*: questa componente rappresenta le fonti di dati in tempo reale, che nel nostro caso provengono dai dispositivi di localizzazione dei noleggi attivi.
- *_Stream ingestion_*: _layer_ che si occupa di raccogliere i dati in tempo reale provenienti dai sensori, inoltrandoli al _processing layer_. A questo _layer_ viene inoltre demandato il compito di salvare i dati dello _stream_ in memoria per un periodo di tempo limitato per garantire la tolleranza agli errori. Questo compito viene a volte viene delineato da un altro _layer_ conosciuto anche come _stream storage_.
- *_Stream processing_*: _layer_ che si occupa di progessare i dati in tempo reale, applicando loro delle trasformazioni, filtri oppure operazioni computazionali per estrarne informazioni utili. Nel nostro caso, questo _layer_ si occupa di arricchire i dati di localizzazione con le informazioni necessarie per generare l'annuncio, e di inviarli al _database_ per la persistenza.
- *Data destination*: _layer_ a cui viene demandato il compito di inoltrare i dati verso una determinata destinazione, come può essere un _database_ per la persistenza dei dati, un servizio di notifica per l'invio di messaggi o altro ancora.
- *Data visualization*: _layer_ che si occupa di visualizzare i dati in maniera comprensibile all'utente finale. Questo _layer_ può essere costituito da un'interfaccia grafica come una _dashboard_ .
#pagebreak(weak: true)

== Design pattern adottati

#pagebreak(weak: true)

== Flusso dei dati
Il diagramma sottostante descrive il precorso dei dati tra i _layer_ del sistema e le relative elaborazioni.

#figure(
  image("../assets/img/ST/Kappa-architecture-data-flow.png", width: 80%),
  caption: [Flusso dei dati],
)

+ *Generazione dei dati*: Il simulatore genera in tempo reale dei percorsi tramite una chiamata API al servizio OpenStreetMap.

+ *Invio dei dati*: Ogni sensore attivo del simulatore invia a intervalli regolari la posizione GPS in un Kafka _topic_.

+ *_Processing_ dei dati*: Lo _stream processor_ è iscritto alla _topic_ delle posizioni GPS e riceve i messaggi dei sensori. Elabora quindi i dati ricevuti nel seguente modo:
  + *Salvataggio in _database_*: Salva le posizioni nel _database_.
  + *Controllo interesse*: Viene controllato se almeno una categoria dell'utente coincide con quella del punto di interesse. In caso affermativo è probabile che venga generato l'annuncio, in caso negativo è probabile il contrario quindi non si va nemmeno a effettuare la richiesta alla LLM.
  + *Recupero dei dati in _database_*: Se le categorie combaciano vengono recuperati i dati di profilazione dell'utente e le informazioni del punto di interesse, ovvero:
    - Il campo di testo libero dove l'utente ha descritto i suoi interessi.
    - La descrizione del punto di interesse (cosa offre).
    - La categoria del punto di interesse.
    - Il nome del punto di interesse.

+ *Richiesta alla LLM*: Se l'utente è stato considerato potenzialmente interessato viene effettuata la richiesta alla LLM di generare l'annuncio.

+ *_Processing_ della risposta della LLM*: viene processata la risposta della LLM, in particolare:
  + *Salvataggio in _database_*: Viene salvata la risposta in _database_, indipendentemente che sia l'annuncio o la risposta che l'utente non è interessato nonostante le categorie coincidano (quindi non è stato generato l'annuncio).
  + *Eventuale invio dell'annuncio*: In caso l'annncio sia stato generato, questo viene inviato al sensore.

+ *Ricezione dell'eventuale annuncio*: Il sensore riceve l'annuncio se questo è stato generato. In uno scenario reale l'annuncio verrebbe visualizzato dall'utente, ma il capitolato non prevedeva lo sviluppo dell'applicazione lato _client_.

+ *Visualizzazione grafica*: Grafana recupera le informazioni dal _database_ a intervalli regolari ravvicinati per aggiornare costantemente la visuale dell'amministratore. Se questo richiede informazioni specifiche, ad esempio i dettagli di un annuncio, viene effettuata una _query_ per recuperare i dati.

= Architettura del simulatore
== Design pattern adottati
=== Dependency injection
Quando un progetto è costituito da un numero considerevole di componenti risulta fondamentale minimizzare le dipendenze. Più si riesce ad evitare debito tecnico e più semplice risulta aggiungere funzionalità perché le parti del sistema non sono fortemente accopiate. L'obiettivo di questo _design pattern_ è quindi quello togliere a un componente la responsabilità della risoluzione delle proprie dipendenze.

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

Al momento della creazione dell'oggetto di tipo `Rent` è sufficiente la funzione `get()` del _container_ e questa risolverà le dipendenze come specificate.

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

=== Singleton
Può essere che alcune componenti debbano mantenere un'integrità per tutta l'esecuzione del prodotto, non possono quindi esistere diverse istanze con diversi valori. Il _design pattern Singleton_ assicura che ovunque si acceda al componente venga restituita sempre la stessa istanza.


==== Implementazione del singleton
Il gruppo è consapevole della potenziale fallacità di questo _design pattern_ in quanto due processi potrebbero concorrere alla stessa risorsa e, in particolari situazioni, far generare due istanze. Nel caso del simulatore per minimizzare gli errori è stato scelto di demandare il lavoro alla libreria Inversify (spiegata nel dettaglio nelle #link(<inversify-1>)[sez. 3.3.1.1] e #link(<inversify-2>)[sez. 3.3.1.2]).

==== Integrazione del design pattern nel progetto
Come anticipato nella #link(<inversify-3>)[sez. 3.3.1.3] è stata dichiarata la risoluzione della dipendenza nel _file_ `client/src/config/Inversify.config.ts` e le componenti interessate, quindi `KafkaManager` e `Simulator` sono state contrassegnate dalla funzione `inSingletonScope()`.

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
  [L'amministratore deve essere in grado di visualizzare lo storico degli annunci generati dal sistema sotto forma di lista oppure di griglia a seconda delle preferenze dell'amministratore stesso.],
  [Soddisfatto],

  [RDF-3],
  [L'amministratore deve essere in grado di visualizzare un singolo elemento con le informazioni degli annunci all'interno dello storico.],
  [Soddisfatto],

  [RDF-4],
  [L'amministratore deve essere in grado di visualizzare il nome del punto di interesse di ogni singolo elemento presente all'interno dello storico.],
  [Soddisfatto],

  [RDF-5],
  [L'amministratore deve essere in grado di visualizzare l'_e-mail_ dell'utente destinatario di ogni singolo elemento all'interno dello storico.],
  [Soddisfatto],

  [RDF-6],
  [L'amministratore deve essere in grado di visualizzare data e ora relativi al tentativo di generazione di ogni singolo elemento all'interno dello storico.],
  [Soddisfatto],

  [RDF-7],
  [L'amministratore deve essere in grado di poter visualizzare i dettagli di un singolo elemento all'interno dello storico.],
  [Soddisfatto],

  [RDF-8],
  [L'amministratore deve essere in grado di visualizzare il nome del punto di interesse relativo ad un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [Soddisfatto],

  [RDF-9],
  [L'amministratore deve essere in grado di visualizzare l'_e-mail_ dell'utente destinatario di un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [Soddisfatto],

  [RDF-10],
  [L'amministratore deve essere in grado di visualizzare data e ora del tentativo di generazione di un annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [Soddisfatto],

  [RDF-11],
  [L'amministratore deve essere in grado di visualizzare il corpo dell'annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [Soddisfatto],

  [RDF-12],
  [L'amministratore deve essere in grado di visualizzare la categoria del punto di interesse collegato all'annuncio tramite la visualizzazione dei dettagli dell'elemento nello storico.],
  [Soddisfatto],

  [RDF-13],
  [L'amministratore deve essere in grado di chiudere la vista di visualizzazione dei dettagli di un singolo annuncio.],
  [Soddisfatto],

  [RDF-14],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico per _e-mail_ dell'utente destinatario dell'annuncio.],
  [Soddisfatto],

  [RDF-15],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico per nome del punto di interesse.],
  [Soddisfatto],

  [RDF-16],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico generati in un certo intervallo di date.],
  [Soddisfatto],

  [RDF-17],
  [L'amministratore deve essere in grado, tramite un sistema di filtraggio, di visualizzare gli annunci dello storico generati in una determinata fascia oraria.],
  [Soddisfatto],

  table.cell(colspan: 3)[Facoltativi],

  [RFF-1],
  [L'amministratore deve poter visualizzare la sezione dedicata ai grafici all'interno della _dashboard_ del sistema.],
  [Non soddisfatto],

  [RFF-2],
  [L'amministratore deve poter visualizzare un singolo grafico relativo ad una particolare analisi dati.],
  [Non soddisfatto],

  [RFF-3],
  [L'amministratore deve poter visualizzare il titolo di uno specifico grafico a seconda dell'analisi dati che viene rappresentata.],
  [Non soddisfatto],

  [RFF-4],
  [L'amministratore deve poter visualizzare in uno specifico grafico un'etichetta relativa alla tipologia di misura rappresentata sulle assi delle ascisse e delle ordinate e, infine, i relativi valori.],
  [Non soddisfatto],

  [RFF-5],
  [L'amministratore deve poter visualizzare, all'interno di ciascun grafico, la rappresentazione dello specifico _set_ di dati previsti per quel grafico.],
  [Non soddisfatto],

  [RFF-6],
  [L'amministratore deve poter visualizzare un grafico che mostri il numero di annunci generati dal sistema nelle ultime 24 ore, con granularità oraria.],
  [Non soddisfatto],

  [RFF-7],
  [L'amministratore deve poter visualizzare un grafico raffigurante il numero medio di noleggi che vengono effettuati in ciascun mese dell'anno, risultato della media di noleggi effettuati in quel mese nel corso degli anni.],
  [Non soddisfatto],

  [RFF-8],
  [L'amministratore, dalla sezione dedicata ai grafici, deve poter selezionare uno specifico punto di interesse per poter poi visualizzare i grafici delle statistiche ad esso correlate.],
  [Non soddisfatto],

  [RFF-9],
  [L'amministratore deve poter visualizzare un grafico che mette a confronto il numero di annunci generati con il numero di annunci non generati per un certo punto di interesse nell'ultima settimana.],
  [Non soddisfatto],

  [RFF-10],
  [Viene richiesta la creazione di uno strumento di visualizzazione degli annunci in tempo reale per l'utente utilizzatore del servizio.],
  [Non soddisfatto],
)

#pagebreak(weak: true)

= Grafici riassuntivi
