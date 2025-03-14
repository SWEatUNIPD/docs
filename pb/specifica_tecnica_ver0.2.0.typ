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
    "Andrea Perozzo"
  ),
  titolo: "Specifica Tecnica",
  uso: "Esterno",
  versioni: (
    "0.2.0",
    "13/03/2025",
    "Andrea Perozzo",
    "Andrea Precoma\nKlaudio Merja",
    [
      - Redatta sezione Database
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

// DATABASE TECNOLOGIES //
== Database
=== PostgreSQL
Per la gestione dei dati relazionali è stato scelto #rifGlossario("PostgreSQL"), un #rifGlossario("DBMS") che offre affidabilità, prestazioni e una certa flessibilità per l'estensione tramite _plugin_ ed estensioni. Nel nostro contesto, PostgreSQL:

- Viene eseguito all'interno di un container Docker (immagine #rifGlossario("postgis")/postgis, vedere sezione #link(<2.2.2>)[2.2.2]).
- È configurato tramite #rifGlossario("docker-compose") (nel file `compose.yml`) con il _mapping_ della porta 5432:5432, utente e _password_ specificati nelle variabili d'ambiente.
- All'avvio esegue automaticamente lo _script_ `create.sql` che crea lo schema del #rifGlossario("database") (tabelle, relazioni, ecc.) secondo le esigenze del progetto.

Nel _file_ `create.sql`:

- Vengono definite tutte le relazioni fondamentali del sistema (ad esempio _users_, _rents_, _positions_, _points_of_interest_, ecc.).
- Vengono impostati i vincoli di integrità referenziale (_primary key_, _foreign key_, _on delete cascade_, ecc.).
- Ove opportuno, si creano tipi enumerati (ad esempio per le categorie di un punto di interesse), oppure si definiscono relazioni 1:N, 1:1 e N:N necessarie al dominio applicativo.

=== PostGIS <2.2.2>
Per l'elaborazione e l'archiviazione di dati geografici si fa uso dell'estensione PostGIS, la quale aggiunge a PostgreSQL il supporto per tipi, funzioni e indici spaziali.

In particolare l'immagine Docker utilizzata è postgis/postgis. Oltre a #box[PostgreSQL] questa contiene già la libreria PostGIS e le relative dipendenze. Questo _setup_ permette di:

- Gestire campi che rappresentano coordinate geografiche (latitudine e longitudine). Nel nostro caso, vengono memorizzate le posizioni dei punti di interesse e dei mezzi noleggiati.
- Sfruttare _query_ geospaziali (calcolo delle distanze, ricerca di punti in un certo raggio, ecc.)

=== Struttura del Database

Di seguito viene descritta la struttura del _database_:

#v(20pt)
#figure(
  image("../assets/diagrams/ER-diagram.svg"),
  caption: [Diagramma ER],
)

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
== Architettura di deploy
== Design patterns

// FUNCTIONAL REQUIRIMETS //
= Stato dei requisiti funzionali