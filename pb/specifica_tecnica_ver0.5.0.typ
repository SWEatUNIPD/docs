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
  data: "- marzo 2025",
  destinatari: ("Gruppo SWE@", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.L."),
  responsabile: "-",
  redattori: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Picello",
    "Riccardo Milan",
  ),
  verificatori: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Picello",
    "Klaudio Merja",  
    "Riccardo Milan"
  ),
  titolo: "Specifica Tecnica",
  uso: "Esterno",
  versioni: (
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
      - Redatta sezione relativa ai _design \ pattern_
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

= Introduzione
== Scopo del documento
Lo scopo principale di questo documento è quello di esporre le tecnologie, le scelte architetturali e i _design patterns_ utilizzati dal gruppo per realizzare l'infrastruttura informatica che compone il prodotto _software_ NearYou. Quindi vengono esposte le motivazioni e le descrizioni delle scelte corredate ove possibile da diagrammi di classi per spiegare nella maniera più chiara possibile il _software_.

== Glossario
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo, viene fornito un glossario.
La prima occorrenza di un termine definito all'interno del glossario presente all'interno di un documento viene sottolineato e seguito dalla lettera "g" posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/norme_di_progetto_ver2.0.0.pdf")
- Regolamento del progetto didattico, _slide_ 23 (ultimo accesso 18/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")
- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso 18/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")
=== Riferimenti informativi
- Glossario (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/glossario_ver2.0.0.pdf")
- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso 18/03/2025 \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")
- Guida ufficiale per l'installazione di Docker (ultimo accesso 18/03/2025) \ #formatLink(url: "https://docs.docker.com/engine/install")


= Tecnologie
In questa sezione vengono elencate le tecnologie scelte e le loro funzionalità all'interno del sistema. Per chiarezza vengono divise in sezioni, dove ogni sezione è una parte del nostro _software_.

== Infrastruttura
=== Docker
Per lo sviluppo, il _testing_ e il rilascio del prodotto sono stati utilizzati _container_ Docker in modo tale da garantire ambienti consistenti e riproducibili. I servizi sono poi gestiti da Docker compose in una _network_ apposita.

==== Docker services
- *kafka*
  - *Immagine*: apache/kafka:X.X.X
  - *Riferimento*: #formatLink(url: "TODO") (ultimo accesso 18/03/2025)

- *kafka-ui*
  - *Immagine*: provectuslabs/kafka-ui:X.X.X
  - *Riferimento*: #formatLink(url: "TODO") (ultimo accesso 18/03/2025)

- *jobmanager*
  - *Immagine*: flink:1.20.1-scala_2.12-java17
  - *Riferimento*: #formatLink(url: "TODO") (ultimo accesso 18/03/2025)

- *taskmanager*:
  - *Immagine*: flink:1.20.1-scala_2.12-java17
  - *Riferimento*: #formatLink(url: "TODO") (ultimo accesso 18/03/2025)

- *postgis*
  - *Immagine*: postgis/postgis:X.X.X
  - *Riferimento*: #formatLink(url: "TODO") (ultimo accesso 18/03/2025)

- *grafana*
  - *Immagine*: rmilan/grafana-rm
  - *Riferimento*: #formatLink(url: "TODO") (ultimo accesso 18/03/2025)

== Linguaggi
=== TypeScript
TypeScript è un _superset_ di JavaScript che supporta sia la programmazione orientata agli oggetti con classi, interfacce ed ereditarietà, sia la programmazione procedurale basata su funzioni e blocchi di istruzioni.

==== Versione
Versione utilizzata: 5.7.2

==== Utilizzo nel progetto
Creazione delle simulazioni dei noleggi e dello spostamento dei relativi mezzi.

Il seguente diagramma delle classi descrive la struttura del simulatore realizzato in TypeScript.

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

- *Kafkajs*
  - *Documentazionee*: #formatLink(url: "https://kafka.js.org/docs/introduction") (ultimo accesso 18/03/2025)
  - *Versione*: 2.2.4
  - *Descrizione*: Usata per agevolare le operazioni di produzione e consumo di messaggi attraverso Apache Kafka.

- *Inversify*
  - *Documentazione*: #formatLink(url: "https://inversify.io") (utlimo accesso 18/03/2025)
  - *Versione*: 7.1.0
  - *Descrizione*: _Tool_ utilizzato per gestire la _Dipendency Injection_ in applicativi sviluppati in JavaScript e TypeScript.

- *Vitest*
  - *Documentazione*: #formatLink(url: "https://vitest.dev/guide/") (ultimo accesso 18/03/2025)
  - *Versione*: 3.0.8
  - *Descrizione*: _Framework_ utilizzato per i _test_ di unità in TypeScript. Aggiungendo alcune dipendenze è possibile generare anche un _report_ del _code coverage_.

- *ESLint*
  - *Documentazione*: #formatLink(url: "https://eslint.org/docs/latest/") (ultimo accesso 18/03/2025)
  - *Versione*: 8.22.0
  - *Descrizione*: _Tool_ utilizzato per i _test_ statici in TypeScript. Nel _file_ di configurazione è possibile specificare quali controlli fare, ad esempio stile del codice e complessità ciclomatica.

=== Java
==== Versione
==== Utilizzo nel progetto
==== Librerie e framework

== Data broker
=== Apache Kafka

== Stream processor
=== Apache Flink

== Generazione annunci
=== LangChain

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

= Architettura
== Architettura logica
== Architettura di deployment
== Design pattern
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
Il gruppo è consapevole della potenziale fallacità di questo _design pattern_ in quanto due processi potrebbero concorrere alla stessa risorsa e, in particolari situazioni, far generare due istanze. Per minimizzare gli errori è stato scelto di demandare il lavoro alla libreria Inversify (spiegata nel dettaglio nelle #link(<inversify-1>)[sez. 3.3.1.1] e #link(<inversify-2>)[sez. 3.3.1.2]).

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

== Tabella
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