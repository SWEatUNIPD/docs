#import "/templates/template.typ": *

#show: content => verbale(
  data: "11 Novembre 2024",
  uso: "Interno",
  responsabile: "Klaudio Merja",
  redattori: ("Riccardo Milan", "Klaudio Merja"),
  titolo: "Glossario",
  verificatori: ("Andrea Precoma", "Andrea Perozzo"),
  versioni: (
    "1.1.0",
    "14/11/2024",
    "Klaudio Merja",
    "Andrea Precoma",
    [- Aggiunti i termini "Way of Working", "GenAI", "prompt" e "ROI"],
    "1.0.0",
    "11/11/2024",
    "Riccardo Milan",
    "Andrea Perozzo",
    [- Redazione glossario con termini del capitolato],
  ),
  content: content,
)

= Introduzione
Il seguente documento ha lo scopo di disambiguare e definire correttamente i termini specifici e non banali del dominio d'uso, presenti nella documentazione.
\
La presenza di un termine o espressione all'interno del `Glossario` negli altri documenti viene indicata aggiungendogli un apice con la lettera "g" e sottolineando l'intera espressione (es. #underline[Apache Superset#rifGlossario]) per indicare chiaramente l'intero costrutto da cercare nel glossario.

#pagebreak()
= A
#v(10pt)
#text(weight: "bold", size: 12pt, "Apache Kafka")

Piattaforma di broker e data streaming che consente di gestire e trasferire big data in tempo reale.
#v(10pt)

#text(weight: "bold", size: 12pt, "Apache Airflow")

Orchestratore di flussi di lavoro opensource per applicazioni data-intensive.
#v(10pt)

#text(weight: "bold", size: 12pt, "Apache Nifi")

Sistema di integrazione di dati open-source per l'elaborazione e la distribuzione di flussi di dati.
#v(10pt)

#text(weight: "bold", size: 12pt, "Apache Spark")

Elaborazione dati in-memory opensource, ad alte prestazioni, progettato per eseguire elaborazioni complesse su grandi volumi di dati in modo rapido e scalabile.
#v(10pt)

#text(weight: "bold", size: 12pt, "Apache Flink")

Framework di elaborazione dati a flusso open-source, ottimizzato per applicazioni in tempo reale.
#v(10pt)

#pagebreak()
= B
#v(10pt)
#text(weight: "bold", size: 12pt, "Broker di Eventi")

Componente software che funge da intermediario per lo scambio asincrono di eventi tra diversi sistemi o applicazioni.
#v(10pt)

#pagebreak()
= C
#v(10pt)
#text(weight: "bold", size: 12pt, "ClickHouse")

ClickHouse è un database di analisi open source orientato alle colonne per casi di utilizzo in ambito big data.
#v(10pt)

#pagebreak()
= D
#v(10pt)
#text(weight: "bold", size: 12pt, "Data Visualization")

Rappresentazione grafica di dati e informazioni, al fine di facilitarne la comprensione e l'interpretazione.
#v(10pt)

#pagebreak()
= G
#v(10pt)
#text(weight: "bold", size: 12pt, "GenAI")

Acronimo di "Generative Artificial Intelligence", si intende tutte le tecnologie di intelligenza artificiale capaci di generare contenuti come testo, immagini, codice, idee ed altro con l'obiettivo di simulare le attività di un essere umano.
#v(10pt)

#text(weight: "bold", size: 12pt, "Git")

Sistema di controllo di versione distribuito open-source, che permette di tracciare e gestire le modifiche al codice sorgente in progetti software, supportando il lavoro collaborativo.
#v(10pt)

#text(weight: "bold", size: 12pt, "GitHub")

Piattaforma basata su Git che offre strumenti per la gestione del codice sorgente e la collaborazione, con funzionalità avanzate come il tracking delle issues, le pull requests e l'integrazione continua.
#v(10pt)

#text(weight: "bold", size: 12pt, "GPX")

Formato di file XML standard per la memorizzazione di dati di localizzazione GPS, come punti di interesse, tracce e percorsi, utilizzato in applicazioni geospaziali.
#v(10pt)

#v(10pt)
#text(weight: "bold", size: 12pt, "Grafana")

Piattaforma interattiva open source per la visualizzazione dei dati. Permette agli utenti di visualizzare i dati attraverso diagrammi e grafici unificati in una singola dashboard.
#v(10pt)

#pagebreak()
= H
#v(10pt)
#text(weight: "bold", size: 12pt, "Hive MQ")

Broker MQTT open-source ad alte prestazioni per l'IoT.
#v(10pt)

#pagebreak()
= L
#v(10pt)
#text(weight: "bold", size: 12pt, "LangChain")

Framework open-source per la creazione di applicazioni basate su LLM, che consente di collegare questi modelli a diverse fonti di dati e API.
#v(10pt)

#pagebreak()
= M
#v(10pt)
#text(weight: "bold", size: 12pt, "MVP")

Acronimo di Minimum Viable Product, rappresenta la versione iniziale di un prodotto con le funzionalità minime indispensabili per essere testato dagli utenti e validato sul mercato.
#v(10pt)

#pagebreak()
= P
#v(10pt)
#text(weight: "bold", size: 12pt, "PoC")

Acronimo di Proof of Concept, è un prototipo o un modello iniziale creato per dimostrare la fattibilità di un'idea o concetto, senza dover sviluppare un prodotto completo.
#v(10pt)

#text(weight: "bold", size: 12pt, "PostGIS")

Estensione open-source di PostgreSQL per la gestione di dati spaziali.
#v(10pt)

#text(weight: "bold", size: 12pt, "Prompt")

Testo in linguaggio naturale richiesto in input dall'IA generativa con lo scopo di generare un output dalla stessa.
#v(10pt)

#pagebreak()
= R
#v(10pt)
#text(weight: "bold", size: 12pt, "Rabbit MQ")

Broker di messaggi open-source AMQP utilizzato per creare sistemi di messaggistica asincrona.
#v(10pt)

#text(weight: "bold", size: 12pt, "ROI")

Acronimo di "Return On Investment", è un indice economico che misura la redditività di un investimento, calcolato dal rapporto tra i risultati economici ottenuti e il capitale investito.
#v(10pt)

#pagebreak()
= S
#v(10pt)
#text(weight: "bold", size: 12pt, "Stream Processing")

Paradigma di programmazione parallela di tipo SIMD che permette ad alcune applicazioni di sfruttare semplicemente una forma limitata di elaborazione parallela di dati in tempo reale, man mano che vengono generati.
#v(10pt)

#text(weight: "bold", size: 12pt, "Superset")

Piattaforma open-source di business intelligence per esplorare e visualizzare dati in modo interattivo.
#v(10pt)

#text(weight: "bold", size: 12pt, "SAL")

Stato Avanzamento Lavori per misurare il progresso delle attività rispetto alla pianificazione.
#v(10pt)

#pagebreak()
= T
#v(10pt)
#text(weight: "bold", size: 12pt, "Typst")

Linguaggio di markup per la formattazione dei documenti e strumento di typesetting, simile a LaTeX, progettato per creare documenti complessi con sintassi moderna e funzionalità avanzate.
#v(10pt)

#pagebreak()
= W
#v(10pt)
#text(weight: "bold", size: 12pt, "Way of Working")

Letteralmente "modo di lavorare", si intende l'insieme di regole, best practice e strumenti utilizzati per organizzare al meglio le attività del gruppo. Permette al gruppo di svolgere il proprio lavoro in maniera efficiente e professionale e di operare allo stato dell'arte.
#v(10pt)

