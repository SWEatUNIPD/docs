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
- Regolamento del progetto didattico, _slide_ 23 (ultimo accesso 11/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")
- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso 11/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")
=== Riferimenti informativi
- Glossario (v2.0.0) \ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/glossario_ver2.0.0.pdf")
- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso 11/03/2025 \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")
- Guida ufficiale per l'installazione di Docker (ultimo accesso 11/03/2025) \ #formatLink(url: "https://docs.docker.com/engine/install")


= Tecnologie
In questa sezione vengono elencate le tecnologie scelte e le loro funzionalità all'interno del sistema. Per chiarezza vengono divise in sezioni, dove ogni sezione è una parte del nostro _software_.

// INFRASTRUCTURE AND TESTING //
== Infrastruttura e test
=== Docker
// libreria per automatizzare i test sul simulatore
=== Vitest
// analisi statica del codice
=== ESLint
// Libreria per scrivere i test sul simulatore

// == Simulatore
// === Inversify per la versione?

// DATABASE TECNOLOGIES //
== Database
=== PostgreSQL
=== PostGIS

// SIMULATOR TECNOLOGIES //
// == Simulatore di sensori
// Questo servizio deve simulare l'attivazione di alcuni noleggi e lo spostamento degli utenti con i mezzi. All'avvio vengono istanziati dei noleggi (numero arbitrario definito nelle variabili d'ambiente nel _file_ `client/src/config/env-var.env`) e viene richiesta l'attivazione da parte del _server_ che li registra e restituisce loro l'identificativo. Ciascun sensore collegato a un noleggio esegue una chiamata API al servizio OpenStreetMap ottenendo così un percorso verosimile. Vengono infine inviate le posizioni al _server_ a intervalli regolari. Il sensore rimane inoltre in ascolto dei possibili annunci generati dal sistema, tuttavia non è stato richiesto di elaborarli in una interfaccia per l'utente. Questi infatti sono disponibili solo nella _dashboard_ dell'amministratore.

// === Inversify
// _Tool_ utilizzato per gestire la _Dipendency Injection_ in applicativi sviluppati in JavaScript e TypeScript. Viene sfruttato nel servizio del simulatore per risolvere le dipendenze esplicitate nei costruttori. In particolare nel _file_ `client/src/config/Inversify.config.ts` vengono risolte le seguenti dipendenze:
// - *Simulator* possiede una lista di noleggi. Il numero iniziale di noleggi è stabilito dalla variabile d'ambiente `INIT_RENT_COUNT`.
// - *Rent* possiede un sensore.

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
Adottando il _dependency injection design pattern_ le dipendenze sono dichiarate come parametri nel costruttore annotate da `@Inject('serviceId')` e le relative classi devono essere contrassegnate da `@Injectable()`. In un _file_ di configurazione poi deve essere dichiarato il _container_ e i _binding_ tra i serviceId e le classi "iniettabili".

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
Nel servizio del simulatore sono state risolte le dipendenze tra il simulatore e la lista di noleggi, il singolo noleggio e il sensore. Nel _file_ di configurazione è stato personalizzato il _binding_ poiché nel caso del simulatore si necessita di una lista di oggetti, negli altri è richiesto l'id che non è possibile "iniettare" automaticamente.
// TODO: VEDI API KLA

Le classi e di conseguenza la _dependency injection_ sono state configurate nel seguente modo. Per evitare incongruenze tra i _serviceId_ delle classi "iniettabili" è stata crata una mappa univoca.

#codly(header: [*config/InversifyTypes.ts*])
```ts
export const TYPES = {
  KafkaManager: Symbol.for('KafkaManager'),
  Tracker: Symbol.for('Tracker'),
  Rent: Symbol.for('Rent'),
  RentList: Symbol.for('RentList')
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

#codly(header: [*Rent.ts*])
```ts
@Injectable()
export class Rent extends RentSubject implements RentObserver {
  constructor(
    private id: string,
    @Inject(TYPES.Tracker)
    private tracker: Tracker
  ) {
    super();
  }
  ...
}
```

#codly(header: [*Simulator.ts*])
```ts
export class Simulator implements SimulatorObserver {
  constructor(
    @Inject(TYPES.RentList)
    private rentList: Rent[]
  ) { }
  ...
}
```

Poiché i _bind_ di `KafkaManager`, `Tracker`, `Rent` e `RentList` non sono immediatamente risolvibili è stato necessario definirli più nel dettaglio con `toDynamicValue()`. // TODO: gli id presi da API
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
  .bind<Tracker>(TYPES.Tracker)
  .toDynamicValue((context: ResolutionContext) => {
    const kafkaManager: KafkaManager = 
      context.get<KafkaManager>(TYPES.KafkaManager);
    const tracker: Tracker = new Tracker(uuidv4(), kafkaManager);
    return tracker;
  });

container
  .bind<Rent>(TYPES.Rent)
  .toDynamicValue((context: ResolutionContext) => {
    const tracker: Tracker = context.get<Tracker>(TYPES.Tracker);
    const rent: Rent = new Rent(uuidv4(), tracker);
    return rent;
  });

container
  .bind<Rent[]>(TYPES.RentList)
  .toDynamicValue((context: ResolutionContext) => {
    let rentList: Rent[] = [];
    for (let i = 0; i < Number(env.INIT_RENT_COUNT); i++) {
      const rent: Rent = context.get<Rent>(TYPES.Rent);
      rentList.push(rent);
    }
    return rentList;
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
Il gruppo è consapevole della potenziale fallacità di questo _design pattern_ in quanto due processi potrebbero concorrere alla stessa risorsa e, in particolari situazioni, far generare due istanze. Per minimizzare gli errori è stato scelto di demandare il lavoro alla libreria Inversify (spiegata nel dettaglio nelle #link(<inversify-1>)[sez. SISTEMARE] e #link(<inversify-2>)[sez. SISTEMARE]).

==== Integrazione del design pattern nel progetto
Come anticipato nella #link(<inversify-3>)[sez. SISTEMARE] è stata dichiarata la risoluzione della dipendenza nel _file_ `client/src/config/Inversify.config.ts` e le componenti interessate, quindi `KafkaManager` e `Simulator` sono state contrassegnate dalla funzione `inSingletonScope()`.

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
Il simulatore gestisce i noleggi attivi quindi deve rimanere in ascolto dei loro cambi di stato. Allo stesso modo i noleggi, che controllano i sensori, devono essere informati quando questi terminano il tracciato. Viene quindi conveniente utilizzare il _design pattern Observer_ per risolvere queste esigenze: al completamento del percorso `Tracker` notifica `Rent` il quale notifica a sua volta `Simulator` che chiude il noleggio rimuovendolo dalla lista.
// TODO: Rent è passacarte?

==== Integrazione del design pattern nel progetto
Ad ogni `Subject` è stato assegnato l'osservatore come attributo (non una lista di osservatori perché deve esistere un solo simulatore per tutti i noleggi e un solo sensore è installato sul mezzo col quale è fatto partire il noleggio), il metodo per registrare l'osservatore è quello per notificarlo. Gli `Observer` contengono il metodo per riceve la notifica che se necessario accetta nei parametri le informazioni per aggiornare l'osservatore. Non è stato necessario aggiungere un metodo `getState()` ai `Subject` perché nel caso dei noleggi non ci sono informazioni da recuperare, nel caso del simulatore sarebbe necessario sapere al momento della notifica l'identificativo del noleggio per richiamare il `getState()` dall'elemento nella lista dei noleggi; a questo punto tuttavia l'informazione dell'identificatore è già presente nel parametro del metodo `update()` quindi non ha più valenza recuperare lo stato del noleggio.

#codly(header: [*RentObserver.ts*])
```ts
export interface RentObserver {
  updateTrackEnded(): void;
}
```

#codly(header: [*SimulatorObserver.ts*])
```ts
export interface SimulatorObserver {
  updateRentEnded(id: string): void;
}
```

#codly(header: [*TrackerSubject.ts*])
```ts
export abstract class TrackerSubject {
  private rentObserver!: RentObserver;

  register(rentObserver: RentObserver): void {
    this.rentObserver = rentObserver;
  }

  protected notifyTrackEnded(): void {
    if (this.rentObserver == null) {
      throw new Error(
        `Track ended notify error: rentObserver not initialized`
      );
    }

    this.rentObserver.updateTrackEnded();
  }
}
```

#codly(header: [*RentSubject.ts*])
```ts
export abstract class RentSubject {
  private simulatorObserver!: SimulatorObserver;

  register(simulatorObserver: SimulatorObserver): void {
    this.simulatorObserver = simulatorObserver;
  }

  protected notifyRentEnded(id: string): void {
    if (this.simulatorObserver == null) {
      throw new Error(
        `Rent ended notify error: simulatorObserver not initialized`
      );
    }

    this.simulatorObserver.updateRentEnded(id);
  }
}
```

Quando `Tracker` ha consumato tutti i punti del percorso notifica a `Rent` che ha terminato.

#codly(
  header: [*Tracker.ts*],
  highlights: ((line: 14, start: 9, end: none, fill: blue),),
)
```ts
export class Tracker extends TrackerSubject {
  ...

  async activate(): Promise<void> {
      ...
      await this.move(trackPoints);
    }

  private async move(trackPoints: GeoPoint[]): Promise<void> {
    ...
    const intervalId = setInterval(async () => {
      if (currIndex == trackPoints.length) {
        ...
        this.notifyTrackEnded();
      }
      ...
    }, sendingIntervalMilliseconds);
  }
}
```

`Rent` appena riceve al notifica da `Tracker` FA COSE? e segnala a `Simulator` di chiudere il noleggio.

#codly(
  header: [*Rent.ts*],
  highlights: (
    (line: 9, start: 3, end: 26, fill: blue),
    (line: 10, start: 5, end: none, fill: green)
  )
)
```ts
export class Rent extends RentSubject implements RentObserver {
  ...

  activate(): void {
    this.tracker.register(this);
    ...
  }

  updateTrackEnded(): void {
    this.notifyRentEnded(this.id);
  }
  ...
}
```

`Simulator` quando riceve la notifica da `Rent` rimuove dalla lista dei noleggi attivi quello che corrisponde all'identificativo ricevuto.

#codly(
  header: [*Simulator.ts*],
  highlights: ((line: 12, start: 3, end: 35, fill: green),)
)
```ts
export class Simulator implements SimulatorObserver {
  ...

  startSimulation(): void {
    this.rentList.forEach(rent => {
      rent.register(this);
      ...
    });
    ...
  }

  updateRentEnded(id: string): void {
    const endedRentIndex = this.rentList.findIndex((trk) => trk.getId() == id);

    if (endedRentIndex == -1) {
      throw new Error(
        `Rent with id '${id}' is ended but not found in list`
      );
    }

    this.rentList.splice(endedRentIndex, 1);
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

- *EnvManager*: espone l'accesso per le variabili d'ambiente. Per utilizzarene una è sufficiente importare il modulo e richiamare `env.VAR_NAME`.
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
  Tracker: Symbol.for('Tracker'),
  Rent: Symbol.for('Rent'),
  RentList: Symbol.for('RentList')
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
  .bind<Tracker>(TYPES.Tracker)
  .toDynamicValue((context: ResolutionContext) => {
    const kafkaManager: KafkaManager =
      context.get<KafkaManager>(TYPES.KafkaManager);
    const tracker: Tracker = new Tracker(uuidv4(), kafkaManager);
    return tracker;
  });

container
  .bind<Rent>(TYPES.Rent)
  .toDynamicValue((context: ResolutionContext) => {
    const tracker: Tracker = context.get<Tracker>(TYPES.Tracker);
    const rent: Rent = new Rent(uuidv4(), tracker);
    return rent;
  });

container
  .bind<Rent[]>(TYPES.RentList)
  .toDynamicValue((context: ResolutionContext) => {
    let rentList: Rent[] = [];
    for (let i = 0; i < Number(env.INIT_RENT_COUNT); i++) {
      const rent: Rent = context.get<Rent>(TYPES.Rent);
      rentList.push(rent);
    }
    return rentList;
  });

container.bind(Simulator).toSelf().inSingletonScope();
```

=== Stream processor

// FUNCTIONAL REQUIRIMETS //
= Stato dei requisiti funzionali
