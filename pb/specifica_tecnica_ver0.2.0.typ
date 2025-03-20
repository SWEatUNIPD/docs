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
    "Andrea Perozzo",
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
==== Docker services

== Linguaggi
=== TypeScript
==== Versione
==== Utilizzo nel progetto
==== Librerie e framework

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
Per la gestione dei dati relazionali è stato scelto PostgreSQL, un DBMS che offre affidabilità, prestazioni e una certa flessibilità per l'estensione tramite _plugin_ ed estensioni. Nel nostro contesto, PostgreSQL:

- Viene eseguito all'interno di un container Docker (immagine postgis/postgis, vedere sezione #link(<2.2.2>)[2.2.2]).
- È configurato tramite docker-compose (nel file `compose.yml`) con il _mapping_ della porta 5432:5432, utente e _password_ specificati nelle variabili d'ambiente.
- All'avvio esegue automaticamente lo _script_ `create.sql` che crea lo schema del _database_ (tabelle, relazioni, ecc.) secondo le esigenze del progetto.

Nel _file_ `create.sql`:

- Vengono definite tutte le relazioni fondamentali del sistema (ad esempio _users_, _rents_, _positions_, _points_of_interest_, ecc.).
- Vengono impostati i vincoli di integrità referenziale (_primary key_, _foreign key_, _on delete cascade_, ecc.).
- Ove opportuno, si creano tipi enumerati (ad esempio per le categorie di un punto di interesse), oppure si definiscono relazioni 1:N, 1:1 e N:N necessarie al dominio applicativo.

=== PostGIS <2.2.2>
Per l'elaborazione e l'archiviazione di dati geografici si fa uso dell'estensione PostGIS, la quale aggiunge a PostgreSQL il supporto per tipi, funzioni e indici spaziali.

In particolare l'immagine Docker utilizzata è postgis/postgis. Oltre a #box[PostgreSQL] questa contiene già la libreria PostGIS e le relative dipendenze. Questo _setup_ permette di:

- Gestire campi che rappresentano coordinate geografiche (latitudine e longitudine). Nel nostro caso, vengono memorizzate le posizioni dei punti di interesse e dei mezzi noleggiati.
- Sfruttare _query_ geospaziali (calcolo delle distanze, ricerca di punti in un certo raggio, ecc.)

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

- *Chiavi primarie composte e ridondanza di identificatori:* La tabella `positions` utilizza una chiave primaria composta da `time_stamp` e `rent_id`. Questo garantisce l'univocità di ogni posizione registrata per un noleggio e permette una gestione temporale più efficiente delle informazioni. Nella tabella `advertisements`, `position_time_stamp` e `position_rent_id` fungono da chiavi esterne per collegare un annuncio alla posizione di un noleggio. Sebbene possa sembrare ridondante, questa scelta è necessaria per correlare annunci pubblicitari con la cronologia di utilizzo delle biciclette.

- *Scelta delle chiavi primarie:* La tabella `points_of_interest` utilizza `latitude` e `longitude` come chiavi primarie per garantire che ogni punto di interesse sia univocamente identificabile in base alla sua posizione. Questo evita la creazione di ID artificiali e semplifica l'integrazione con strumenti GIS e di analisi spaziale. Tuttavia, in altre tabelle come `rents` o `advertisements`, è stato mantenuto un ID univoco separato per facilitare le relazioni con altre entità e garantire _query_ più efficienti su database di grandi dimensioni.

- *Ripetizione di attributi per performance e analisi dati:* Alcuni ID e coordinate geografiche sono replicati in più tabelle (es. `latitude_poi` e `longitude_poi` in `advertisements` e `poi_hours`) per facilitare le _query_ su strumenti di analisi. Questa ridondanza riduce la necessità di complesse _join_ su tabelle di grandi dimensioni, migliorando le prestazioni. L'uso di indici spaziali (come `idx_points_of_interest_location`) è pensato per ottimizzare la ricerca di punti di interesse sulla base della loro posizione geografica.

- *Gestione dei punti di interesse e orari di apertura:* La tabella `points_of_interest` utilizza `latitude` e `longitude` come chiavi primarie per garantire l'unicità spaziale dei punti di interesse, evitando duplicazioni indesiderate. La tabella `poi_hours` include `day_of_week` come parte della chiave primaria per gestire gli orari di apertura dei punti di interesse in modo strutturato ed efficiente.

In conclusione, alcune scelte apparentemente ridondanti sono state adottate con lo scopo di migliorare la scalabilità, la velocità di interrogazione dei dati e la compatibilità con strumenti di analisi esterni.

#pagebreak()

= Architettura
== Architettura logica
== Architettura di deployment
== Design pattern
=== Dependency injection

==== Implementazione della dependency injection <inversify-1>

==== Concetti principali di Inversify ed esempio di utilizzo <inversify-2>

==== Integrazione del design pattern nel progetto <inversify-3>

=== Singleton

==== Implementazione del singleton

==== Integrazione del design pattern nel progetto

=== Observer

==== Implementazione dell'observer

==== Integrazione del design pattern nel progetto

== Diagrammi delle classi
=== Simulatore

==== Componenti di utilità

=== Stream processor

// FUNCTIONAL REQUIRIMETS //
= Stato dei requisiti funzionali
