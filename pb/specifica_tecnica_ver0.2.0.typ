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
    "Andrea Precoma",
    "Riccardo Milan",
  ),
  verificatori: (
    "Andrea Perozzo",
    "Klaudio Merja",
    "Davide Picello",
    "Riccardo Milan"
  ),
  titolo: "Specifica Tecnica",
  uso: "Esterno",
  versioni: (
    "0.2.0",
    "12/03/2025",
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

// INFRASTRUCTURE AND TESTING //
== Linguaggi
=== TypeScript
TypeScript è un _superset_ di JavaScript che supporta sia la programmazione orientata agli oggetti con classi, interfacce ed ereditarietà, sia la programmazione procedurale basata su funzioni e blocchi di istruzioni.

==== Versione
Versione utilizzata: 5.7.2

==== Utilizzo nel progetto
Creazione delle simulazioni dei noleggi e dello spostamento dei relativi mezzi.

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

== Infrastruttura
=== Docker


// DATABASE TECNOLOGIES //
== Database
=== PostgreSQL
=== PostGIS

// STREAM PROCESSOR TECNOLOGIES //
== Stream processor
// TODO: aggiungere, immagino sicuramente flink ma forse c'è altro

// LLM INTERACTION //
== Generazione annunci
=== LangChain
// TODO: da capire se bisogna anche inserire la libreria usata per interfacciarsi con Langchain


// ARCHITECTURE //
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
  TrackerMap: Symbol.for('TrackerMap')
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
export class Tracker extends TrackerSubject {
  ...

  constructor(
    private id: string,
    @inject(TYPES.KafkaManager)
    private kafkaManager: KafkaManager
  ) {
    super();
  }

  ...
}
```

#codly(header: [*Simulator.ts*])
```ts
export class Simulator implements SimulatorObserver {
  ...

  constructor(
    @inject(TYPES.TrackerMap)
    private trackerMap: Map<string, Tracker>
  ) {
    ...
  }

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
  .bind<Map<string, Tracker>>(TYPES.TrackerMap)
  .toDynamicValue((context: ResolutionContext): Map<string, Tracker> => {
    const kafkaManager: KafkaManager =
      context.get<KafkaManager>(TYPES.KafkaManager);
    let trackerMap: Map<string, Tracker> = new Map();
    for (let i = 1; i <= Number(env.INIT_TRACKER_COUNT); i++) {
      const id = i.toString();
      const tracker: Tracker = new Tracker(id, kafkaManager);
      trackerMap.set(id, tracker);
    }
    return trackerMap;
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

=== Observer
Il _design pattern Observer_ risolve un problema legato alla reattività in seguito alla notifica di alcuni cambi di stato. Il cambiamento in una componente provoca una notifica a tutti i suoi osservatori, cioè chi è in ascolto. Ricevuto il segnale questi osservatori si aggiornano in base al nuovo stato dell'emittente. Per evitare una dipendenza circolare nella classe astratta ereditata dall'emittente viene aggiunto un "_setter_" con il quale gli ascoltatori possono iscriversi alla lista.

==== Implementazione dell'observer
Il simulatore gestisce i noleggi e i relativi mezzi attivi quindi deve rimanere in ascolto dei loro cambi di stato. Viene quindi conveniente utilizzare il _design pattern Observer_ per risolvere questa esigenza: al completamento del percorso `Tracker` notifica a `Simulator` di chiudere il noleggio e rendere nuovamente disponibile il mezzo (quindi il sensore).

==== Integrazione del design pattern nel progetto
A `TrackerSubject` è stato assegnato l'osservatore come attributo (non una lista perché deve esistere un solo simulatore nel sistema), il metodo per registrare l'osservatore e quello per notificarlo. `SimulatorObserver` contiene il metodo per ricevere la notifica accettando come parametro l'identificativo del sensore. È stato omesso un metodo `getState()` a `TrackerSubject` perché per richiamarlo sarebbe necessario conoscere l'identificativo del sensore in modo da selezionarlo dalla mappa (`trackerMap`); a questo punto tuttavia l'informazione dell'identificativo è già presente nel parametro del metodo `update()` quindi non ha più valenza recuperare lo stato del sensore.

Il metodo `trackEndedUpdate()` è reso asincrono perché nell'implementazione deve effettuare una chiamata API al _back-end_.

#codly(header: [*SimulatorObserver.ts*])
```ts
export interface SimulatorObserver {
  trackEndedUpdate(id: string): Promise<void>;
}
```

#codly(header: [*TrackerSubject.ts*])
```ts
export abstract class TrackerSubject {
  private simulatorObserver!: SimulatorObserver;

  register(simulatorObserver: SimulatorObserver): void {
    this.simulatorObserver = simulatorObserver;
  }

  protected async notifyTrackEnded(id: string): Promise<void> {
    if (this.simulatorObserver == null) {
      throw new Error(
        `Track ended notify error: simulatorObserver not initialized`
      );
    }

    try {
      await this.simulatorObserver.trackEndedUpdate(id);
    } catch (err) {
      console.error(`Error caught trying to update the tracker map.\n${err}`);
    }
  }
}
```

Quando `Tracker` ha consumato tutti i punti del percorso notifica a `Simulator` che ha terminato.

#codly(
  header: [*Tracker.ts*],
  highlights: ((line: 9, start: 9, end: none, fill: blue),),
)
```ts
export class Tracker extends TrackerSubject {
  ...

  private async move(trackPoints: GeoPoint[]): Promise<void> {
    ...
    const intervalId = setInterval(async () => {
      if (currIndex == trackPoints.length) {
        ...
        this.notifyTrackEnded(this.id);
      }
      ...
    }, sendingIntervalMilliseconds);
  }
}
```

`Simulator` quando riceve la notifica effettua una chiamata API al _back-end_ per informarlo di chiudere il noleggio, rimuove quest'ultimo dalla lista dei noleggi attivi e rende nuovamente disponibile il sensore (inteso come mezzo).

#codly(header: [*Simulator.ts*])
```ts
export class Simulator implements SimulatorObserver {
  ...

  async trackEndedUpdate(id: string): Promise<void> {
    try {
      const requestUrl =
        `http://localhost:9000/close-rent/${this.rentIdMap.get(id)}`;
      const response = await fetch(requestUrl);
      if (!response.ok) {
        throw new Error(
          `Close rent request error: ${response.status} - ${await response.text()}`
        );
      }
      this.rentIdMap.delete(id);

      this.trackerMap.get(id)?.setIsAvailable(true);
    } catch (err) {
      throw err;
    }
  }
  
  ...
}
```

== Diagrammi delle classi
=== Simulatore
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
  TrackerMap: Symbol.for('TrackerMap')
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
  .bind<Map<string, Tracker>>(TYPES.TrackerMap)
  .toDynamicValue((context: ResolutionContext): Map<string, Tracker> => {
    const kafkaManager: KafkaManager = context.get<KafkaManager>(TYPES.KafkaManager);
    let trackerMap: Map<string, Tracker> = new Map();
    for (let i = 1; i <= Number(env.INIT_TRACKER_COUNT); i++) {
      const id = i.toString();
      const tracker: Tracker = new Tracker(id, kafkaManager);
      trackerMap.set(id, tracker);
    }
    return trackerMap;
  });

container.bind(Simulator).toSelf().inSingletonScope();
```

=== Stream processor

// FUNCTIONAL REQUIRIMETS //
= Stato dei requisiti funzionali
