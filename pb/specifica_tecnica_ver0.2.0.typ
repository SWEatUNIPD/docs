#import "/templates/template.typ": *
#import "@preview/treet:0.1.1": *

#show: content => verbale(
  data: "11 marzo 2025",
  destinatari: ("Gruppo SWE@", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.L."),
  responsabile: "-",
  redattori: (
    "Riccardo Milan",
  ),
  verificatori: (
    "Klaudio Merja",
    "Davide Marin",
    "Davide Picello"
  ),
  titolo: "Specifica Tecnica",
  uso: "Esterno",
  
  versioni: (
    "0.2.0",
    "18/03/2025",
    "Riccardo Milan",
    "Davide Marin, Davide Picello",
    [
      - Aggiunta sezione Grafana
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
=== Inversify
// TODO: aggiungere le tecnologie usate per automatizzare i test

// DATABASE TECHNOLOGIES //
== Database
=== PostgreSQL
=== PostGIS

// SIMULATOR TECHNOLOGIES //
== Simulatore di sensori
// TODO: aggiungere tecnologie 

// STREAM PROCESSOR TECHNOLOGIES //
== Stream Processor
// TODO: aggiungere, immagino sicuramente flink ma forse c'è altro

// LLM INTERACTION //
== Generazione annunci
=== LangChain
// TODO: da capire se bisogna anche inserire la libreria usata per interfacciarsi con Langchain

// USER INTERFACE TECHNOLOGIES//
== Interfaccia amministratore
L'interfaccia fornita dal _software_ deve permettere all'amministratore di visualizzare la mappa con i punti di interesse, i sensori che si muovono e gli eventuali annunci generati. Inoltre deve fornire una visualizzazione per lo storico degli annunci e una per entrare nel dettaglio di un singolo annuncio.
Gran parte dei dati dunque devono essere analizzati e mostrati all'utente finale _in real time_. Tale necessità ha dirottato la scelta del gruppo riguardo la tecnologia da utilizzare verso #rifGlossario("Grafana").
=== Grafana
Grafana è una piattaforma _#rifGlossario("open source")_ per la visualizzazione e l'analisi dei dati, con cui è possibile creare _dashboard_ interattive e grafici da diverse fonti.
==== Versione
11.5.2
==== Documentazione
https://grafana.com/docs/ (ultimo accesso in data 18/03/2025)
==== Utilizzo nel progetto
Per l'avvio di grafana nel nostro _software_ è stata predisposta un'immagine nel file `compose.yml`, che viene avviata contestualmente al comando #rifGlossario("docker-compose"). 
Le funzionalità principali di grafana nel nostro sistema sono:
- Monitoraggio in tempo reale: grafana raccoglie in tempo reale i dati dei sensori registrati nel sistema, ovvero identificativo del sensore, noleggio associato ad esso, latitudine e longitudine.
- Visualizzazione dei dati in tempo reale: i dati dei sensori raccolti in tempo reale vengono infatti mostrati in una dashboard di tipo _geomap_ interattiva, nella quale le posizioni dei sensori sono rappresentate da _layer_ di tipo _#rifGlossario("route")_ e i punti di interesse e gli annunci con _#rifGlossario("layer")_ di tipo _marker_.
- Visualizzazione dei dati statici: viene messa a disposizione dell'amministratore una _dashboard_ che raccoglie lo storico degli annunci generati nel tempo; interagendo con i dati nel _database_, grafana ci permette di mostrare tutti i dati interessanti legati ad ogni annuncio.

// ARCHITECTURE //
= Architettura
== Architettura logica
== Architettura di deploy
== Design patterns

// FUNCTIONAL REQUIRIMETS //
= Stato dei requisiti funzionali