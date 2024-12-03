#import "/templates/template.typ": *

#show: content => verbale(
  data: "27 Novembre 2024",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.l.", "Gruppo SWE@"),
  responsabile: "Andrea Perozzo",
  redattori: ("Klaudio Merja",),
  verificatori: ("Davide Marin", "Davide Picello"),
  titolo: "Piano di Progetto",
  uso: "Esterno",
  versioni: (
    "0.1.1",
    "03/12/2024",
    "Klaudio Merja",
    "Andrea Precoma\nRiccardo Milan",
    [
      - Generazione dei grafici automatica
    ],
    "0.1.0",
    "27/11/2024",
    "Klaudio Merja",
    "Davide Marin\nDavide Picello",
    [
      - Struttura iniziale e introduzione del documento
      - Stesura dell'analisi dei rischi
      - Stesura del modello di sviluppo
      - Stesura della pianificazione e del primo _sprint_],
  ),
  content: content,
)

= Introduzione
== Scopo del documento
Lo scopo del documento Piano di Progetto è quello di definire e pianificare le attività necessarie allo svolgimento
del progetto e l'allocazione delle risorse all'interno del progetto stesso, come ruoli e ore per ciascun componente del
gruppo.

In particolare vengono approfonditi aspetti come:
- analisi dei rischi
- modello di sviluppo
- pianificazione delle attività

== Scopo del prodotto
L'obiettivo principale che si pone il prodotto commissionato al nostro gruppo è quello di fornire un sistema, installato
su prodotti/servizi come il _#rifGlossario("bike-sharing")_, che sfrutta le informazioni e gli interessi personali degli utenti come #rifGlossario("prompt") per
la generazione di inserzioni personalizzate, a seconda di dove l'utente si trovi nel determinato istante, con lo scopo
finale di massimizzare le interazioni tra utenti e inserzioni per massimizzare il #rifGlossario("ROI") e l'efficacia
delle campagne pubblicitarie.

== Glossario
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo,
viene fornito un Glossario.

La prima occorrenza di un termine definito all'interno del Glossario presente all'interno di un documento viene
sottolineato e seguito dalla lettera g posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto
- Regolamento del progetto didattico\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")
=== Riferimenti informativi
- Lezione T03 - Il ciclo di vita del software\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T03.pdf")
- Lezione T04 - Gestione di progetto\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")
#pagebreak()

= Analisi dei rischi
Lo scopo principale dell'analisi dei rischi è quello di individuare le possibili difficoltà o problemi che il gruppo, sia nella sua interezza che a livello individuale, può incontrare con una certa probabilità, causando rallentamenti che possono avere un impatto negativo più o meno rilevante all'interno del progetto.

Ogni rischio riportato successivamente è caratterizzato da:
- *ID rischio*: identificativo univoco del rischio.
- *Descrizione*: descrive brevemente le cause e gli effetti del rischio in questione all'interno del progetto.
- *Probabilità*: indica la probabilità che il rischio si verifichi all'interno di un progetto, sia essa bassa, media o alta;
- *Impatto negativo*: quantifica l'impatto negativo che il rischio può avere all'interno del progetto, sia esso basso, medio o alto.
- *Piano di contingenza*: descrive i processi che il gruppo può o deve attuare al fine di mitigare i danni causati dal rischio.

Ogni ID rischio segue la seguente convenzione per quanto riguarda la sua struttura
#text(weight: "bold", align(center)[`R[X]-[Y]`])
dove *`[X]`* indica la tipologia di rischio, che si può distinguere in *`O`*-Organizzativo oppure *`T`*-Tecnologico, e *`[Y]`* indica un numero progressivo, univoco per tipologia di rischio.

Per il processo di gestione dei rischi il gruppo adotta il modello fornito da Ian Sommerville nel libro _Software Engineering_, caratterizzato dai seguenti passi:
1. *Identificazione del rischio*
2. *Analisi e classificazione del rischio*
3. *Processi di mitigazione del rischio*
4. *Controllo del rischio*

== Rischi organizzativi
=== Riunione con l'azienda proponente
#tabellaRischio(
  ID: [RO-1],
  descrizione: [A causa di impegni personali dei membri del gruppo o per impossibilità dell'azienda proponente può risultare difficile fissare una riunione di #rifGlossario("SAL"), ritardando così il _#rifGlossario("feedback")_ su quanto svolto dal gruppo.],
  probabilità: [Bassa],
  impatto: [Medio],
  piano: [È possibile chiedere un giorno fisso all'azienda in cui svolgere le riunioni di SAL in modo da evitare eventuali indisponibilità nel lungo periodo.],
  caption: [RO-1 - Riunione con l'azienda proponente],
)
=== Sovrastima della durata delle attività <RO-2>
#tabellaRischio(
  ID: [RO-2],
  descrizione: [Data l'inesperienza del gruppo, specie ad inizio progetto, è possibile che alcune attività possano essere sovrastimate in termini di tempo. Ciò porta ad un termine anticipato dell'attività stessa rispetto a quanto preventivato.],
  probabilità: [Alta],
  impatto: [Basso],
  piano: [Nonostante il rischio abbia probabilità elevata si ritiene l'impatto negativo del rischio sia basso, se non nullo, in quanto il gruppo può allocare la risorsa in un'altra attività al fine di liberare il prima possibile il "TO-DO" del _#rifGlossario("backlog")_.],
  caption: [RO-2 - Sovrastima della durata delle attività],
)

=== Sottostima della durata delle attività <RO-3>
#tabellaRischio(
  ID: [RO-3],
  descrizione: [Come specificato nel rischio *RO-2*, a causa dell'inesperienza del gruppo è possibile che alcune attività vengano sottostimate in termini di tempo, portando così a rallentamenti l'iterazione in corso.],
  probabilità: [Alta],
  impatto: [Alto],
  piano: [Il rischio è inevitabile, ma può essere mitigato tramite l'allocazione di risorse disponibili a supporto di quelle già allocate per accelerare lo svolgimento dell'attività.],
  caption: [RO-3 - Sottostima della durata delle attività],
)
== Rischi tecnologici
=== Inesperienza <RT-1>
#tabellaRischio(
  ID: [RT-1],
  descrizione: [A causa dell'elevato numero di tecnologie richieste dal progetto alcuni membri del gruppo potrebbero non avere le competenze necessarie, dovendo quindi investire tempo per apprendere le stesse, portando così ad una riduzione del tempo produttivo nel corso del progetto.],
  probabilità: [Alta],
  impatto: [Alto],
  piano: [Il rischio non può essere evitato, ma può essere limitato tramite il confronto con i membri più esperti del gruppo oppure tramite delle sessioni di _#rifGlossario("deep dive")_ tecnologico che l'azienda proponente fornisce al gruppo.],
  caption: [RT-1 - Inesperienza],
)

#pagebreak()
= Modello di sviluppo
Il modello di sviluppo che viene adottato dal gruppo è il modello Agile che, a differenza dei modelli di sviluppo più rigidi come il modello a cascata dove si predilige una stretta sequenzialità delle fasi e, soprattutto, non ammette modifiche nei requisiti in corso d'opera, permette maggiore flessibilità e un coinvolgimento maggiore dello _#rifGlossario("stakeholder")_ (nel nostro caso l'azienda proponente) all'interno del progetto grazie alla sua natura iterativa e incrementale.

Il modello Agile prevede la suddivisione del progetto in iterazioni chiamate _#rifGlossario("sprint")_ durante il quale il gruppo si impegna a completare un insieme di attività prefissate al fine di produrre un incremento del prodotto finale. La serie di _sprint_ permette quindi di ottenere un prodotto finale che più si avvicina alle aspettative del proponente.

I punti di forza che hanno portato il gruppo ad adottare il modello Agile come modello di sviluppo sono molteplici.

L'approccio a _sprint_ permette di avere dei _feedback_ a cadenza regolare da parte del proponente circa l'avanzamento dei lavori e il soddisfacimento dei requisiti richiesti, permettendo così di correggere eventuali errori, individuare particolari rischi da mitigare per gli _sprint_ a venire e soddisfare il più possibile le aspettative del proponente stesso.

Grazie alla flessibilità del modello Agile è possibile modificare i requisiti in corso d'opera, cosa fondamentale all'interno del nostro progetto dove il rischio di individuare dei requisiti sbagliati è molto alto e che il modello a cascata, data la sua rigidità, non permetterebbe di fare.

Inoltre il modello permette un incremento parallelo dell'attività di analisi e dello sviluppo del prodotto, non limitando quindi il progetto alla sola documentazione, ma permettendo di avere un prodotto già funzionante dai primi _sprint_ a prova di quanto documentato.

#pagebreak()

= Pianificazione
Come frutto della scelta del modello Agile la pianificazione delle attività da svolgere all'interno del progetto sono suddivise in degli _sprint_, ovvero delle iterazioni della durata di due settimana ciascuna in cui vengono pianificate le attività da svolgere per raggiungere gli obiettivi prefissati.

Alla fine di ogni _sprint_ viene svolta una riunione con l'azienda proponente in cui si analizza quanto prodotto durante l'iterazione, si effettua una retrospettiva su quanto avvenuto analizzando difficoltà e problemi riscontrati e si pianifica il lavoro da svolgere e gli obiettivi da raggiungere per la seguente iterazione.

A metà di ogni _sprint_ l'azienda si rende disponibile al gruppo per eventuali chiarimenti o dubbi che possono venire a galla durante lo svolgimento dell'attività da parte dei membri del gruppo.

Ogni iterazione è caratterizzata da:
- *Inizio*: data in cui ha inizio un determinato _sprint_.
- *Fine*: data in cui termina lo _sprint_.
- *Rischi attesi*: elenco degli identificativi che il gruppo si aspetta di incontrare durante lo _sprint_.
- *Attività dello _sprint_*: attività che il gruppo si impone di raggiungere durante la durata dello _sprint_ al fine di raggiungere determinati obiettivi.
- *Preventivo orario*: stima delle ore che ciascun membro deve dedicare nelle vesti di un determinato ruolo al fine di concludere le attività.
- *Consuntivo orario e di spesa*: ore produttive dedicate da parte di ogni membro nei vari ruoli ricoperti durante l'iterazione al fine di concludere le attività previste e breve schema su quanto speso durante l'iterazione.
- *Retrospettiva*: analisi svolta alla fine di ogni _sprint_ con lo scopo di evidenziare ciò che ha funzionato e ciò che non ha funzionato durante l'iterazione, sottolineando i vari problemi e difficoltà riscontrati che hanno causato rallentamenti, con il fine di migliorare le prossime iterazioni.

Il gruppo si pone come _milestone_ del progetto le due consegne previste dai committenti, nonché i Prof.ssori Tullio Vardanega e Riccardo Cardin, ovvero:
- *RTB* con data di consegna xx/01/2025
- *PB* con data di consegna 21/03/2025

Gli _sprint_ vengono quindi divisi nelle due _milestone_ precedentemente elencate per garantire una seperazione netta degli stessi e delle attività che ne comportano.
== RTB
=== Sprint 1
- *Inizio*: 13/11/2024
- *Fine*: 27/11/2024
- *Rischi attesi*: #link(<RO-2>)[RO-2], #link(<RO-3>)[RO-3], #link(<RT-1>)[RT-1]
==== Attività dello sprint
Le attività che il gruppo si è preoccupato di concludere durante queste due settimane sono:
- Inizio stesura delle Norme di Progetto, in particolare:
  - introduzione
  - processi primari
  - processi di supporto
- Redazioni dei verbali interni ed esterni del 13/11/2024 e del 20/11/2024.
- Inizio della stesura del Piano di Progetto, in particolare:
  - analisi dei rischi
  - modello di sviluppo
  - pianificazione
  - primo _sprint_
- Test automatico per individuare i riferimenti mancanti al Glossario nei vari documenti.
- Inizio della stesura dell'Analisi dei Requisiti.
- Studio sulla generazione dei dati #rifGlossario("GPS").
- Creazione del _file_ Excel condiviso per la rendicontazione delle ore produttive.
==== Preventivo orario
#rendicontazioneOre(
  (
    (4, 0, 0, 0, 0, 0),
    (0, 4, 0, 0, 1, 0),
    (0, 0, 0, 0, 0, 5),
    (0, 0, 5, 0, 0, 0),
    (0, 3, 0, 0, 0, 3),
    (2, 2, 0, 0, 1, 0),
    (0, 0, 5, 0, 0, 0),
  ),
  caption: [Preventivo delle ore nel primo _sprint_ per membro e per ruolo],
)
==== Consuntivo orario e di spesa
#consuntivoOre(
  preventivo: (
    (4, 0, 0, 0, 0, 0),
    (0, 4, 0, 0, 1, 0),
    (0, 0, 0, 0, 0, 5),
    (0, 0, 5, 0, 0, 0),
    (0, 3, 0, 0, 0, 3),
    (2, 2, 0, 0, 1, 0),
    (0, 0, 5, 0, 0, 0),
  ),
  consuntivo: (
    (4, 0, 0, 0, 0, 0),
    (0, 4, 0, 0, 1.5, 0),
    (0, 0, 0, 0, 0, 5),
    (0, 0, 5, 0, 0, 0),
    (0, 3, 0, 0, 0, 3),
    (2, 2, 0, 0, 1, 0),
    (0, 0, 5, 0, 0, 0),
  ),
  tabCaption: [Consutivo delle ore nel primo _sprint_ per membro e per ruolo],
  costTabCaption: [Costi sostenuti nel primo _sprint_],
  chartCaption: [Grafico percentuale dell'allocazione delle ore per ruolo nel primo _sprint_],
)

==== Retrospettiva
In queste due settimane di lavoro è apparso evidente l'impatto che le Norme di Progetto hanno avuto all'interno del gruppo, adottando una serie di convenzioni e regole che hanno permesso di uniformare il lavoro svolto dai vari redattori. Tuttavia, essendo la prima versione delle Norme di Progetto, a causa dei frequenti cambiamenti all'interno del documento, si è reso necessario più volte dover rivedere e correggere in corso d'opera alcuni documenti più volte. Nonostante ciò, il gruppo ritiene il lavoro svolto in linea con le aspettative.

Si evidenzia come difetto la possibilità di lavorare su una stessa _#rifGlossario("branch")_ a più membri in quanto questa causerebbe problemi di conflitti tra i file modificati.

Gli analisti evidenziano le difficoltà e i dubbi relativa alla comprensione dei casi d'uso del prodotto richiesto dal proponente, che hanno però trovato risposta dalla riunione di fine primo _sprint_ da parte del proponente e che verranno approfonditi in quello successivo. Incentivano inoltre a lavorare in maniera più collaborativa alla fase di analisi e non limitarsi semplicemente all'esecuzione delle attività di analisi in maniera parallela.

I verificatori suggeriscono infine di incaricare più di una persona alla verifica dei documenti ad alto contenuto, quali possono essere le Norme di Progetto e il Piano di Progetto, al fine di garantire una verifica ottimale.


