#import "/templates/template.typ": *
#import "@preview/treet:0.1.1": *

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
    "14/03/2025",
    "Andrea Precoma",
    "Klaudio Merja",
    [
      - Redazione K-_architecture_
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

// TODO: FARE TEST GLOSSARIO PRIMA DI APPROVARE

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
=== Inversify
// TODO: aggiungere le tecnologie usate per automatizzare i test

// DATABASE TECNOLOGIES //
== Database
=== PostgreSQL
=== PostGIS

// SIMULATOR TECNOLOGIES //
== Simulatore di sensori
// TODO: aggiungere tecnologie 

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
== Architettura di deployment
// TODO: breve introduzione, cos'è e a cosa serve

=== K-architecture
La K-_architecture_ è un modello architetturale per l'elaborazione di dati in _streaming_. Derivante dalla #box[λ-_architecture_] la sua particolarità è l'eliminazione del _batching_ mantenendo un flusso costante di dati in _real time_.

// TODO: pro/cons

#figure(
  image("../assets/img/ST/Kappa-architecture-data-flow.png", width: 80%),
  caption: [Diagramma della K-_architecture_],
)

- *_Data source_*: la sorgente di dati è costituita dal simulatore che imita l'attivazione dei noleggi e lo spostamento degli utenti sui mezzi. I sensori inviano quindi a intervalli regolari la posizione GPS.

- *_Streaming layer_*: questo livello gestisce la trasmissione in tempo reale dei dati che vengono inoltrati al _processing layer_. Lo _streaming layer_ è costituito da:
  
  - *Apache Kafka*: sistema di messaggistica distribuito che permette di pubblicare, sottoscrivere e archiviare messaggi in tempo reale. Riceve i dati dal simulatore e li inserisce nei _topic_ in attesa che lo _stream processor_ nello _streaming layer_ li consumi.

- *_Processing layer_*: i dati ricevuti dallo _streaming layer_ vengono processati in tempo reale prima di essere memorizzati in _database_. Il _processing layer_ è costituito da:

  - *Apache Flink*: KLA AIUTAMI TU

- *_Storage layer_*: la persistenza è gestita da un _database_ relazionale che archivia i dati in arrivo dal _processing layer_. Lo _storage layer_ è costituito da *PostgreSQL* affiancato da *PostGIS*, una estensione che facilita l'elaborazione di dati geospaziali.

- *_Data visualization layer_*: i dati archiviati nello _storage layer_ vengono resi disponibile tramite una interfaccia grafica. Costituito da *Grafana* questo _layer_ recupera le informazioni dal _database_ a intervalli regolari ravvicinati in modo da aggiornare rapidamente l'interfaccia ai nuovi cambiamenti.

=== Flusso dati
Il diagramma sottostante descrive il precorso dei dati tra i _layer_ del sistema e le relative elaborazioni.

[IMG KLA CHE SI FA LA CERETTA]

== Design patterns

// FUNCTIONAL REQUIRIMETS //
= Stato dei requisiti funzionali