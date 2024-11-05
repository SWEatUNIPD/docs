#import "/templates/template.typ": *

#show: content=>verbale(
  data: "4 Novembre 2024", 
  uso: "Esterno",
  responsabile: "Davide Marin", 
  redattori: ("Davide Picello", ""), 
  titolo: "Valutazione capitolati", 
  riassunto: "Questo documento racchiude i pareri del gruppo riguardo ogni singolo capitolato, esprimendo la propria preferenza verso il C4.",
  verificatori: (
    "Andrea Precoma",
    "Klaudio Merja",
  ),
  versioni: (
    "1.2.0",
    "4/11/2024",    
    "Davide Picello",
    "Klaudio Merja",
    [
      - Correzione struttura in seguito a modifiche al template
      - Aggiunto riassunto nella prima pagina
      - Modificato nome del file per essere coerente con il versionamento
    ],

    "1.1.0",
    "31/10/2024",
    "Andrea Precoma",
    "Davide Picello",
    [
      - Correzione della struttura del contenuto
      - Modifica dello stile
    ],

    "1.0.0",
    "30/10/2024",    
    "Davide Picello",
    "Andrea Precoma",
    [- Stesura del verbale],

  ),
  content: content
)

Questo documento racchiude le impressioni che il gruppo ha avuto di ogni singolo capitolato. 

Il gruppo ha espresso come prima preferenza il capitolato *C4*, e come seconda il capitolato *C3*.

= Capitolato C1: Artificial QI
== Informazioni generali
- *Proponente:* Zucchetti S.p.A.
- *Committente:* Prof. Tullio Vardanega e Prof. Riccardo Cardin

== Descrizione generale

Il comportamento dei Large Language Model è di difficile comprensione e predizione, essendo sistemi con miliardi di parametri, il cui risultato non può essere deterministico. Il capitolato richiede di sviluppare un sistema che valuti la bontà degli LLM analizzando le risposte fornite a domande selezionate dai test.

== Finalità del progetto

Il progetto richiede lo sviluppo di un'applicazione che svolga i seguenti compiti:
- Archiviazione di una lista di domande e risposte attese.
- Programma di esecuzione del test che, tramite una API, pone domande a un programma esterno e ne registra la risposta.
- Programma di valutazione della correttezza delle risposte ricevute.
- Procedura di presentazione dei risultati del test.
- Tutti i punti devono essere integrati in un sistema unico, non come utility separate.
Per il PoC viene richiesto di esplorare diversi algoritmi di confronto delle risposte, mentre per il MVP devono essere rispettati tutti i requisiti sopra elencati.

== Tecnologie interessate

Non vengono specificate tecnologie particolari. È consigliato l'uso di file JSON o XML per memorizzare le risposte in strutture definite.

== Aspetti positivi

- Capitolato ben definito e approfondito.
- Libertà nella scelta delle tecnologie.

== Criticità e fattori di rischio

- MVP corposo.

== Conclusioni

Il progetto non ha suscitato grande interesse nel gruppo, sia per il tema trattato sia per le richieste del proponente.

#pagebreak()

= Capitolato C2: Vimar GENIALE
== Informazioni generali
- *Proponente:* Vimar S.p.A.
- *Committente:* Prof. Tullio Vardanega e Prof. Riccardo Cardin

== Descrizione generale

Il progetto prevede la creazione di una piattaforma per elettricisti e professionisti, assistendoli nella progettazione di impianti e installazione dei dispositivi. La piattaforma sfrutterà un modello LLM per interagire tramite linguaggio naturale, facilitando l'uso.

== Finalità del progetto

Il progetto richiede lo sviluppo di:
- un'applicazione web responsive per gli installatori, con un'interfaccia simile a ChatGPT.
- un server per estrazione, salvataggio dati e risposte alle domande.
- una infrastruttura cloud per ospitare i componenti.

== Tecnologie interessate

Il progetto richiede l'utilizzo delle seguenti tecnologie:
- Python e librerie di web scraping
- Docker (obbligatorio)
- RAG con LLM (obbligatorio)
- PostgreSQL + pgvector o NoSQL
- Framework frontend
Nel documento non è stato specificato alcun requisito per quanto riguarda il PoC, mentre per il MVP viene richiesto il 75% di test coverage (80% per End-to-End).

== Aspetti positivi

- Capitolato ben definito e approfondito.
- Ampio utilizzo di tecnologie.

== Criticità e fattori di rischio

- MVP corposo.
- SAL bisettimanali di un'ora.

== Conclusioni

Il progetto ha suscitato interesse iniziale, ma è stato scartato per il numero elevato di gruppi interessati a questo capitolato e incertezza del supporto aziendale.

#pagebreak()

= Capitolato C3: Automatizzare le routine digitali tramite l'intelligenza generativa  

== Informazioni generali
- *Proponente:* Var Group S.p.A.  
- *Committente:* Prof. Tullio Vardanega e Prof. Riccardo Cardin  

== Descrizione generale
Il progetto mira a realizzare un sistema che sfrutti l'intelligenza generativa in cloud per automatizzare attività digitali di routine. Questo sistema permetterà agli utenti di progettare flussi di lavoro personalizzati, utilizzando interfacce conversazionali e strumenti drag & drop per creare automazioni complesse, come gestione di email, calendario e integrazioni con altre applicazioni. L'obiettivo è facilitare l'automazione di processi ripetitivi in modo intuitivo e accessibile tramite l'interfaccia di un client per Windows o Mac, integrato con un'architettura basata su AWS e MongoDB per l'archiviazione e gestione dei dati.

== Finalità del progetto 
Il progetto richiede la creazione di una piattaforma basata su Generative AI, con architettura AWS, per automatizzare attività quotidiane attraverso workflow definiti dagli utenti. La piattaforma includerà funzionalità di elaborazione del linguaggio naturale per interpretare comandi descritti in linguaggio comune e tradurli in sequenze di azioni da eseguire, il tutto senza intervento manuale continuo. Verranno inclusi almeno tre blocchi di automazione, come l'invio di email, la gestione di calendari e la creazione di eventi, garantendo un approccio modulare che supporti estensioni future.
L'azienda propone di fare design thinking con il gruppo e quindi decidere il PoC insieme: l'idea attuale è prendere un blocco (ad esempio Outlook) e, senza interfaccia grafica, far vedere che con il linguaggio naturale l'IA sceglie le API giuste per l'azione. Per il MVP viene richiesta un'interfaccia a drag and drop delle azioni che si vuole far eseguire al prodotto.

== Tecnologie interessate  
Il proponente richiede l'utilizzo delle seguenti tecnologie:
- Client locale (Windows/Mac): sviluppato con Python o C\# su Windows, Swift su Mac, con React per le interfacce web.
- Backend e API cloud: NodeJS, Python, o Typescript per il backend, con l'uso di AWS Bedrock per i sistemi di intelligenza generativa.
- Database: MongoDB per la memorizzazione dei dati.
- Interfaccia utente: drag & drop per i workflow, più un'interfaccia conversazionale che consenta l'inserimento di comandi in linguaggio naturale.

== Aspetti positivi  
- La piattaforma Var Group offre esperienza e supporto tecnico consolidato.
- Gli obiettivi sono concreti, con una chiara visione dell'applicazione pratica.
- L'ampio utilizzo di tecnologie di tendenza (GenAI, AWS, MongoDB) rende il progetto stimolante e attuale.
- Opportunità di apprendere e utilizzare strumenti innovativi di automazione e machine learning.

== Criticità e fattori di rischio
- Potenziale complessità nell'integrazione delle funzionalità di intelligenza generativa con servizi locali e cloud.
- La necessità di personalizzare le automazioni per vari tipi di utenti potrebbe allungare i tempi di sviluppo.
- Il rischio che l'interfaccia conversazionale richieda affinamenti complessi per interpretare comandi naturali.
- Possibile difficoltà nella creazione di un'interfaccia utente che sia intuitiva per utenti non tecnici e allo stesso tempo completa per utenti avanzati.

== Conclusioni 
Il capitolato di Var Group presenta un progetto innovativo e tecnicamente sfidante, che unisce automazione, intelligenza artificiale e user experience. Nonostante le criticità legate all'integrazione di diversi sistemi e all'interpretazione in linguaggio naturale, il team ritiene che le potenzialità e l'approfondimento di tecnologie emergenti rendano questo capitolato una proposta interessante e motivante.

#pagebreak()

= Capitolato C4: NearYou - Smart custom advertising platform

== Informazioni generali
- *Proponente:* Sync Lab S.r.l.
- *Committente:* Prof. Tullio Vardanega e Prof. Riccardo Cardin 

== Descrizione generale

Il progetto pone come obiettivo la risoluzione di uno dei problemi principali nell’ambito della pubblicità digitale: creare degli annunci “su misura” per gli utenti, basandosi sul contesto in cui essi si trovano e i loro interessi personali. 

Il proponente pone come obiettivo la realizzazione di una piattaforma di advertising che sfrutta l’intelligenza artificiale per creare annunci personalizzati utilizzando i dati di profilazione degli utenti, come la geolocalizzazione e i comportamenti dello stesso come prompt del LLM. Ciò permette ai vari brand di poter attivare campagne pubblicitarie coerenti e mirate sull’utente, con lo scopo di massimizzare il ritorno sull’investimento.

== Finalità del progetto
Il progetto richiede la creazione di un sistema che sfrutti il LLM per generare degli annunci personalizzati a misura di utente. Il LLM, per garantire tale azione, dovrà utilizzare come prompt i dati di profilazione dei singoli utenti che verranno salvati all’interno di un database. Il progetto richiede inoltre un simulatore di dati GPS, i cui dati verranno inviati mediante un message broker e interpretati da un data stream processor, tecnologia fondamentale su cui il progetto proposto si basa.

== Tecnologie interessate
Il proponente non impone particolari vincoli sulle specifiche tecnologie, ma più una struttura/schema che il sistema deve rispettare, ovvero:

- Simulatore GPS per la generazione di dati geospaziali che permette di simulare un effettivo utilizzo del sistema. Si consiglia uno script in Python (con l’utilizzo di librerie di generazione dati come Faker). I dati generati dovranno essere quanto più realistici.
- Message broker/MQTT broker/Event streaming per gli stream di dati provenienti dai vari simulatori GPS. Vengono fornite tecnologie come Apache Kafka, RabbitMQ e molte altre.
- Strumenti di data stream processing per prelevare e processare i vari dati provenienti dagli stream. Si consiglia l’utilizzo di strumenti come Apache Airflow, Apache NiFi o altri.
- Strumenti per processare i messaggi in input e fornire una risposta tramite LLM come LangChain e altri.
- Database per lo storage dei dati di profilazione, che supporti un elevato numero di dati in entrata e che permetta l’elaborazione di dati geospaziali,
- Strumenti per la data visualization come Grafana o Apache Superset.

== Aspetti positivi
- SAL settimanali.
- Sostegno di professionisti per quanto riguarda le varie fasi del progetto.
- Sessioni di “deep dive” tecnologico ed architetturale a disposizione dei componenti del gruppo.

== Criticità e fattori di rischio
- Utilizzo di tecnologie non note ad alcun componente del gruppo che possono causare rallentamenti nello svolgimento del progetto.
- Gestione di un carico elevato di dati all'interno del database.

== Conclusioni

Il progetto proposto da Sync Lab ha avuto grande attenzione da parte del gruppo, sia per quanto riguarda l’idea proposta, sia per quanto riguarda l’interesse e il supporto che l’azienda ha fornito fin da subito e che si prepone a fornire durante tutto il percorso.

Nonostante le criticità individuate, il team ritiene il progetto valido e fattibile, denotando vari aspetti come l’interesse e il supporto dell’azienda e le tecnologie che vengono proposte per lo svolgimento del progetto.

#pagebreak()

= Capitolato C5: Progetto 3Dataviz

== Informazioni generali
- *Proponente:* Sanmarco Informatica S.p.A.
- *Committente:* Prof. Tullio Vardanega e Prof. Riccardo Cardin

== Descrizione generale
Il capitolato richiede di realizzare un'interfaccia web per la visualizzazione in forma
tridimensionale di dati tramite grafici interattivi, per permettere una facile visualizzazione e comprensione dei dati anche quando questi possono avere grandi volumi (ad es. meteo, stock, voli).

== Finalità del progetto
Il progetto richiede lo sviluppo obbligatorio delle seguenti funzionalità:
- Creazione di un'interfaccia web per la visualizzazione dei grafici tridimensionali.
- Grafici comprendenti di tutte le funzioni classiche di un ambiente 3D (rotation, pan, zoom, auto-positioning).
- Selezionando un elemento del grafico o una cella della griglia, nascondere / opacizzare le barre con i valori superiori o inferiori al valore della barra selezionata.
- Lasciare come unici elementi visibili / non opacizzati i top X / bottom Y valori.
- Poter visualizzare il piano parallelo alla base, che rappresenta il valore medio globale.
- Visualizzare i valori corrispettivi alla barra, tramite evento hover del mouse.
- Architettura che permette di aggiungere nuove funzionalità e in grado di supportare i ragionamenti su valori e stato di visualizzazione sui grandi volumi.

== Tecnologie interessate
Il proponente consiglia l'utilizzo di librerie JavaScript per la gestione e realizzazione dei grafici, come Three.js o d3js.
Consiglia inoltre come framework frontend l'utilizzo di Angular o React.

== Aspetti positivi
- Progetto particolare ed interessante.
- Tecnologie interessanti per il gruppo.
- Non si basa sull'utilizzo di Machine Learning o LLM.

== Criticità e fattori di rischio

- Le tecnologie proposte sono sconosciute alla maggior parte dei membri del gruppo.

== Conclusioni

Anche se il progetto aveva riscontrato interesse inizialmente, non è stato scelto in quanto altre proposte si sono dimostrare di maggiore interesse al gruppo ed inoltre è da subito stato un capitolato molto conteso da tanti gruppi.

#pagebreak()

= Capitolato C6: Sistema di Gestione di un Magazzino Distribuito

== Informazioni generali
- *Proponente*: M31 S.r.l.
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin

== Descrizione generale
Il sistema richiesto si propone di ottimizzare la gestione dell'inventario in una rete di magazzini distribuiti. In un contesto operativo, garantire la disponibilità continua delle risorse lungo tutta la catena logistica è essenziale per evitare interruzioni e mantenere un equilibrio tra le scorte nei vari magazzini. Il sistema dovrà essere in grado di rilevare la necessità di trasferimento delle scorte tra le sedi, ottimizzando tempi di risposta e garantendo un flusso continuo di materiali e prodotti.

== Finalità del progetto
Il progetto mira a sviluppare un sistema distribuito e scalabile, basato su un'architettura a microservizi, che consenta una gestione centralizzata delle operazioni logistiche tra i magazzini, incluse operazioni di riassortimento, trasferimento e monitoraggio in tempo reale. M31 fornirà supporto tecnico e accesso a dataset pubblici per favorire l'analisi e lo sviluppo di soluzioni predittive di gestione delle scorte.

== Tecnologie interessate
Il progetto richiede l'utilizzo delle seguenti tecnologie:
- Backend: Node.js e Nest.js per i microservizi distribuiti, con supporto per Go in caso di componenti ad alte prestazioni.
- Frontend: Angular per interfaccia utente.
- Orchestrazione: Google Cloud Platform con Kubernetes per la gestione centralizzata.
- Database: MongoDB per dati non strutturati, PostgreSQL per dati strutturati, Redis per caching.
- Comunicazione: NATS o Apache Kafka per messaggi asincroni tra microservizi.

== Aspetti positivi
- Opportunità di applicare tecnologie avanzate e molto in voga, come microservizi e machine learning.
- Obbiettivi stimolanti.

== Criticità e fattori di rischio
- Il progetto è parso fin da subito molto gettonato, nonostante l'unico slot di capienza a disposizione.

== Conclusioni
Nonostante il progetto abbia entusiasmato il gruppo, la bassissima capienza e l'interesse mostrato da altri gruppi per questo capitolato ha spostato l'interesse del gruppo verso altri capitolati con più alta capienza.

#pagebreak()

= Capitolato C7: LLM ASSISTENTE VIRTUALE
- *Proponente:* Ergon Informatica S.r.l.
- *Committente:* Prof. Tullio Vardanega e Prof. Riccardo Cardin

== Descrizione generale

Aziende che vendono prodotti dove il cliente in genere effettua ordini di acquisto multiprodotto necessitano di specialisti che per area di competenza soddisfino le richieste dei clienti. Dovendo gestire un catalogo molto ampio diventa difficile gestire le richieste degli utenti. A questo proposito il progetto richiede di sviluppare un assistente virtuale che aiuti i clienti a cercare informazioni riguardanti i prodotti selezionati.  

== Finalità del progetto

Il progetto richiede lo sviluppo delle seguenti funzionalità:  
- Database relazionale per la gestione dei dati.
- Modello LLM con API per l'interrogazione.  
- Interfaccia utente per la configurazione della piattaforma.
- Interfaccia utente per l'interazione tra IA e utente.

== Tecnologie interessate

Il proponente non impone nessun vincolo riguardo le tecnologie necessarie ai fini del progetto, tuttavia ne consiglia diverse nei seguenti ambiti:  
- Database relazionale: SQL Server Express, MySql o MariaDB  
- LLM: BLOOM, Falcon IA, Pythia, Italia by iGenius o Minerva  
- Comunicazione con database: connettori standard ODBC o implementando un middleware appoggiandosi a dei file JSON  
- Interfaccia utente: .NET MAUI 
Nel documento non è stato specificato alcun requisito per quanto riguarda il PoC e nemmeno per il MVP.

== Aspetti positivi

- Supporto durante il progetto.  
- Proposta di due corsi relativi ai sistemi LLM e alla piattaforma .NET MAUI.
- Un componente del gruppo ha già esperienza con la piattaforma .NET MAUI.

== Criticità e fattori di rischio

- Non sono definiti PoC e MVP.

== Conclusioni

Il progetto di un assistente virtuale non ha suscitato grande interesse nel gruppo.  

#pagebreak()

= Capitolato C8: Requirement Tracker - VS Code Plugin
- *Proponente:* Bluewind S.r.l.
- *Committente:* Prof. Tullio Vardanega e Prof. Riccardo Cardin

== Descrizione generale

Il progetto mira a creare un plug-in per Visual Studio Code che consenta di tracciare e verificare i requisiti di progetto nel codice sorgente, migliorandone la qualità per ridurre errori e malintesi.  

== Finalità del progetto

- Tracciamento e verifica dell'implementazione dei requisiti nel codice.  
- Suggerimenti per rendere i requisiti più chiari e tecnicamente corretti.  
- Architettura modulare e scalabile per facilitare l'aggiunta di nuove funzionalità.  

== Tecnologie interessate
Il progetto richiede l'utilizzo delle seguenti tecnologie:
- Visual Studio Code API
- API REST per integrazione AI
- Python o Node.js
- modelli AI pre-addestrati come GPT
- opzionalmente OLLama per deployment locale 
Per il PoC viene richiesta la valutazione della fattibilità dei requisiti, della compatibilità tecnologica, e dei casi d'uso tramite UML, mentre per il MVP viene richiesto un plug-in funzionante, documentazione, architettura descrittiva, e test coperti oltre l'80%.    

== Aspetti positivi

- Supporto costante di Bluewind, sia online che in presenza.

== Criticità e fattori di rischio

- La modularità e la copertura dei test rappresentano potenziali sfide.  

== Conclusioni

Il progetto di un estensione non ha suscitato grande interesse nel gruppo.  

#pagebreak()

= Capitolato C9: BuddyBot

== Informazioni generali
- *Proponente*: AzzurroDigitale S.r.l.
- *Committente*: Prof. Tullio Vardanega e Prof. Riccardo Cardin

== Descrizione generale
Il capitolato richiede di realizzare un assistente virtuale che centralizza e aggrega le informazioni da GitHub, Confluence, Jira, Slack e canali di progetto aziendali su Telegram, utilizzando tecnologie di IA per migliorare l'efficacia e la personalizzazione del supporto.

== Finalità del progetto
Il progetto richiede lo sviluppo delle seguenti funzionalità:
- Centralizzare e aggregare le informazioni rispetto alla documentazione dell'azienda, che è separata in più piattaforme quali GitHub, Confluence, Jira, Slack e Telegram.
- Tramite l'utilizzo di API di terze parti reperire informazioni, che verranno successivamente elaborate da API di terze parti dedicate all'intelligenza artificiale.
- Realizzare un'interfaccia web con una chat per interagire con l'IA e ottenere le risposte desiderate.

== Tecnologie interessate
Il proponente consiglia l'utilizzo delle seguenti tecnologie:
- OpenAI: motore per le funzionalità di comprensione e generazione del testo.
- Langchain: progetto che permette di integrare modelli di AI.
- Node/NestJS: framework per lo sviluppo di applicazioni server-side.
- Angular: framework front-end per lo sviluppo di applicazioni web.
- Spring Boot: framework Java per creare applicazioni standalone.

== Aspetti positivi
- Le tecnologie utilizzate possono essere utili anche ai membri del gruppo in futuro.

== Criticità e fattori di rischio
- Il progetto è troppo incentrato sull'utilizzo di API di terze parti per gestire le richieste utente.

== Conclusioni
Questo capitolato sin da subito non ha suscitato molto interesse da parte dei membri del gruppo.
