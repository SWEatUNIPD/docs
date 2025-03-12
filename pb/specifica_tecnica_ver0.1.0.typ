#import "/templates/template.typ": *
#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.1": *

#show: codly-init.with()
#codly(
  languages: (
    ts: (name: "TypeScript"),
    java: (name: "Java")
  ),
  zebra-fill: none
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
    "Klaudio Merja",
    "Andrea Perozzo"
  ),
  titolo: "Specifica Tecnica",
  uso: "Esterno",
  versioni: (
    "0.2.0",
    "12/03/2025",
    "Andrea Precoma",
    "-",
    [
      - Completate tecnologie del simulatore
      - Redatta sezione relativa al simulatore
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
// === Inversify
// _Tool_ utilizzato per gestire la _Dipendency Injection_ in applicativi sviluppati in JavaScript e TypeScript. Viene sfruttato nel servizio del simulatore per risolvere le dipendenze esplicitate nei costruttori. In particolare nel _file_ `client/src/config/Inversify.config.ts` vengono risolte le seguenti dipendenze:
// - *Simulator* possiede una lista di noleggi. Il numero iniziale di noleggi è stabilito dalla variabile d'ambiente `INIT_RENT_COUNT`.
// - *Rent* possiede un sensore.

// DATABASE TECNOLOGIES //
== Database
=== PostgreSQL
=== PostGIS

// SIMULATOR TECNOLOGIES //
== Simulatore di sensori
Questo servizio deve simulare l'attivazione di alcuni noleggi e lo spostamento degli utenti con i mezzi. All'avvio vengono istanziati dei noleggi (numero arbitrario definito nelle variabili d'ambiente nel _file_ `client/src/config/env-var.env`) e viene richiesta l'attivazione da parte del _server_ che li registra e restituisce loro l'identificativo. Ciascun sensore collegato a un noleggio esegue una chiamata API al servizio OpenStreetMap ottenendo così un percorso verosimile. Vengono infine inviate le posizioni al _server_ a intervalli regolari. Il sensore rimane inoltre in ascolto dei possibili annunci generati dal sistema, tuttavia non è stato richiesto di elaborarli in una interfaccia per l'utente quindi una volta ricevuti vengono persi. // TODO: vengono persi?

Per gestire _producer_ e _consumer_ di Apache Kafka è stato creato un _manager_ in modo che fosse incentrato in un unico luogo la responsabilità di creare il _broker_ e le connessioni ai _topic_.

[IMG E ALTRO]

Dopo che `Simulator` istanzia un noleggio rimane in ascolto della sua terminazione. Allo stesso modo `Rent` rimane in attesa che il sensore termini di consumare tutti i punti del percorso. In questo modo una volta che `Tracker` ha inviato tutti i dati GPS al sistema notifica `Rent` di aver terminato, [SUCCEDONO COSE?] e questo informa a sua volta `Simulator` che può ora chiudere il noleggio.

Per assicurarsi che esista un solo _manager_ di Kafka che gestisce i _broker_ è stato implementato il _design pattern Singleton_.

// STREAM PROCESSOR TECNOLOGIES //
== Stream Processor
// TODO: aggiungere, immagino sicuramente flink ma forse c'è altro

// LLM INTERACTION //
== Generazione annunci
=== LangChain
// TODO: da capire se bisogna anche inserire la libreria usata per interfacciarsi con Langchain


// ARCHITECTURE //
= Architettura
== Architettura logica
== Architettura di deploy
== Design patterns
=== Dependency injection
Quando un progetto è costituito da un numero considerevole di componenti risulta fondamentale minimizzare le dipendenze. Più si riesce ad evitare debito tecnico e più semplice risulta aggiungere funzionalità perché le parti del sistema non sono fortemente accopiate. L'obiettivo di questo _design pattern_ è quindi quello togliere a un componente la responsabilità della risoluzione delle proprie dipendenze.

=== Implementazione della dependency injection
Il gruppo ha deciso di utilizzare la libreria Inversify per gestire la _dependency injection_ nel servizio del simulatore. Possedendo delle annotazioni specifiche lo strumento di *IoC* (_Inversion of Control_) ha agevolato l'implementazione del _design pattern_. È stato infatti sufficiente contrassegnare le dipendenze con delle annotazioni (`@Injectable` e `@Inject`) e definire la risoluzione nel _file_ `client/src/config/Inversify.config.ts`.

=== Concetti principali di Inversify ed esempio di utilizzo
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
const container = new Container();
container.bind<Tracker>('Tracker').to(Tracker);
container.bind(Rent).toSelf();

export { container }
```

// Il primo _bind_ a riga 2 indica che ad ogni `@Inject('Tracker')` verrà costruita una istanza della classe `Tracker`. Il secondo _bind_ a riga 3 CACCIO INDICA? non posso mettere self anche a tracker?

Al momento della creazione dell'oggetto di tipo `Rent` è sufficiente la funzione `get()` del _container_ e questa risolverà le dipendenze come specificate.

#codly(header: [*App.ts*])
```ts
const rent = container.get(Rent);
```

=== Integrazione del design pattern nel progetto
Nel servizio del simulatore sono state risolte le dipendenze tra il simulatore e la lista di noleggi, il singolo noleggio e il sensore. Nel _file_ di configurazione è stato personalizzato il _binding_ poiché nel caso del simulatore si necessita di una lista di oggetti, negli altri è richiesto l'id che non è possibile "iniettare" automaticamente [VEDI API KLA].

Le classi e di conseguenza la _dependency injection_ sono state configurate nel seguente modo. Per evitare incongruenze tra i _serviceId_ delle classi "iniettabili" è stata crata una mappa univoca.

#codly(header: [*config/InversifyTypes.ts*])
```ts
const TYPES {
  Tracker: Symbol.for('Tracker'),
  Rent: Symbol.for('Rent'),
  RentList: Symbol.for('RentList')
}

export { TYPES }
```

#codly(header: [*Tracker.ts*])
```ts
@Injectable()
export class Tracker extends TrackerSubject {
  constructor(
    private id: string
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

Poiché i _bind_ di `Tracker`, `Rent` e `RentList` non sono immediatamente risolvibili è stato necessario definirli più nel dettaglio con `toDynamicValue()`. // TODO: gli id presi da API
Il _bind_ del simulatore è stato contrassegnato dalla funzione `inSingletonScope()` per assicurare che ne esita una sola istanza.

#codly(header: [*config/Inversify.config.ts*])
```ts
const container = new Container();

container
    .bind<Tracker>(TYPES.Tracker)
    .toDynamicValue(() => {
        const tracker: Tracker = new Tracker(uuidv4());
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

export { container }
```

Nel _file_ principale è sufficiente quindi richiedere l'istanza di `Simulator` tramite la funzione `get()` del _container_.

#codly(header: [*App.ts*])
```ts
const simulator = container.get(Simulator);
simulator.startSimulation();
```

=== Observer
Il simulatore è un gestore di noleggi quindi deve rimanere in ascolto dei loro cambi di stato. Allo stesso modo i noleggi che controllano i sensori devono essere informati di quando questi terminano il tracciato. Viene quindi conveniente utilizzare il _design pattern Observer_ per risolvere questa esigenza.

Ad ogni `Subject` è stato assegnato l'osservatore come attributo (non una lista di osservatori perché deve esistere un solo simulatore per tutti i noleggi e un solo sensore è installato sul mezzo col quale è fatto partire il noleggio), il metodo per registrare l'osservatore è quello per notificarlo. Gli `Observer` contengono il metodo per riceve la notifica che se necessario accetta nei parametri le informazioni per aggiornare l'osservatore. Non è stato necessario aggiungere un metodo `getState()` ai `Subject` perché nel caso dei noleggi non ci sono informazioni da recuperare, nel caso del simulatore sarebbe necessario sapere al momento della notifica l'identificativo del noleggio per richiamare il `getState()` dall'elemento nella lista dei noleggi; a questo punto tuttavia l'informazione dell'identificatore è già presente nel parametro del metodo `update()` quindi non ha più valenza recuperare lo stato del noleggio.

// FUNCTIONAL REQUIRIMETS //
= Stato dei requisiti funzionali