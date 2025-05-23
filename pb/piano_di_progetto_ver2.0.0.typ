#import "/templates/template.typ": *

#show: content => verbale(
  data: "27 Marzo 2025",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.l.", "Gruppo SWE@"),
  responsabile: "Klaudio Merja",
  redattori: (
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
    "Riccardo Milan",
  ),
  verificatori: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
    "Riccardo Milan",
  ),
  titolo: "Piano di Progetto",
  uso: "Esterno",
  versioni: (
    "2.0.0",
    "27/03/2025",
    "Davide Picello",
    "Andrea Precoma",
    [
      - Stesura retrospettiva ottavo _sprint_
      - Introdotto RO-5
    ],
    "1.5.0",
    "12/03/2025",
    "Davide Marin",
    "Davide Martinelli",
    [
      - Stesura pianificazione ottavo _sprint_
    ],
    "1.4.0",
    "11/03/2025",
    "Riccardo Milan",
    "Andrea Precoma",
    [
      - Stesura retrospettiva settimo _sprint_
      - Introdotto RT-2
    ],
    "1.3.0",
    "24/02/2025",
    "Riccardo Milan",
    "Davide Martinelli",
    [
      - Stesura pianificazione settimo _sprint_
    ],
    "1.2.0",
    "24/02/2025",
    "Davide Marin",
    "Andrea Precoma\nKlaudio Merja",
    [
      - Stesura retrospettiva sesto _sprint_
    ],
    "1.1.0",
    "15/02/2025",
    "Davide Marin",
    "Riccardo Milan",
    [- Stesura pianificazione sesto _sprint_],
    "1.0.1",
    "05/02/2025",
    "Klaudio Merja",
    "Andrea Precoma",
    [
      - Correzione dei riferimenti alla documentazione del gruppo
    ],
    "1.0.0",
    "26/01/2025",
    "Andrea Precoma",
    "Riccardo Milan",
    [
      Approvazione per conclusione _milestone_ RTB
    ],
    "0.9.0",
    "26/01/2025",
    "Andrea Precoma",
    "Riccardo Milan",
    [
      - Stesura retrospettiva quinto _sprint_
    ],
    "0.8.0",
    "13/01/2025",
    "Andrea Precoma",
    "Andrea Perozzo\nDavide Martinelli",
    [
      - Stesura pianificazione quinto _sprint_,
      - Aggiunta immagini dei grafici di Gantt per tutti gli _sprint_
    ],
    "0.7.0",
    "09/01/2025",
    "Riccardo Milan",
    "Davide Martinelli\nDavide Picello",
    [- Stesura retrospettiva quarto _sprint_],
    "0.6.0",
    "24/12/2024",
    "Riccardo Milan",
    "Davide Martinelli\nDavide Picello",
    [- Stesura pianificazione quarto _sprint_],
    "0.5.0",
    "23/12/2024",
    "Davide Martinelli",
    "Klaudio Merja\nDavide Marin",
    [- Stesura retrospettiva terzo _sprint_],
    "0.4.0",
    "17/12/2024",
    "Davide Martinelli",
    "Klaudio Merja\nDavide Marin",
    [- Stesura pianificazione terzo _sprint_],
    "0.3.0",
    "14/12/2024",
    "Davide Picello",
    "Andrea Precoma\nRiccardo Milan",
    [- Stesura retrospettiva secondo _sprint_],
    "0.2.0",
    "1/12/2024",
    "Davide Picello",
    "Andrea Precoma\nRiccardo Milan",
    [- Stesura pianificazione secondo _sprint_],
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
      - Stesura della pianificazione e del primo _sprint_
    ],
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
sottolineato e seguito dalla lettera g posta ad apice (ad esempio #rifGlossario("termine")).

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto (v2.0.0)\ #formatLink(url: "https://sweatunipd.github.io/docs/pb/norme_di_progetto_ver2.0.0.pdf")
- Regolamento del progetto didattico (ultimo accesso 27/03/2025)\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")
=== Riferimenti informativi
- Glossario (v2.0.0)\ #formatLink(url: "https://sweatunipd.github.io/docs/pb/glossario_ver2.0.0.pdf")
- Lezione T03 - Il ciclo di vita del software (ultimo accesso 27/03/2025)\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T03.pdf")
- Lezione T04 - Gestione di progetto (ultimo accesso 27/03/2025)\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")
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
+ *Identificazione del rischio*
+ *Analisi e classificazione del rischio*
+ *Processi di mitigazione del rischio*
+ *Controllo del rischio*

== Rischi organizzativi
=== Riunione con l'azienda proponente <RO-1>
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

=== Impegni universitari e personali <RO-4>
#tabellaRischio(
  ID: [RO-4],
  descrizione: [Gli impegni universitari non procrastinabili (specialmente nel periodo della sessione di esami invernale) e gli impegni personali dei membri del gruppo (soprattutto in concomitanza con la pausa natalizia) limitano la disponibilità, il che può portare a ritardi nello svolgimento delle attività del progetto. ],
  probabilità: [Media],
  impatto: [Medio],
  piano: [Il rischio è risolvibile con un'attenta e lungimirante pianificazione e ripartizione dei compiti, confidando nella collaborazione di tutti i membri del gruppo nel comunicare apertamente le proprie indisponibilità. ],
  caption: [RO-4 - Impegni universitari e personali],
)

=== Indisponibilità dei professori per i colloqui <RO-5>
#tabellaRischio(
  ID: [RO-5],
  descrizione: [La modalità di prenotazione a sportello porta con sé alcuni svantaggi, uno dei quali è sicuramente la possibilità che i professori non siano disponibili per i colloqui in quanto impegnati in altri incontri o attività.],
  probabilità: [Bassa],
  impatto: [Medio],
  piano: [Il gruppo può prenotare i colloqui con largo anticipo, o eventualmente sondarne la disponibilità, in modo da evitare eventuali sovrapposizioni con altri impegni dei professori.],
  caption: [RO-5 - Indisponibilità dei professori per i colloqui],
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
=== Imprevisti tecnologici <RT-2>
#tabellaRischio(
  ID: [RT-2],
  descrizione: [A causa dell'importanza che certe tecnologie hanno all'interno del progetto, se si presenta un cambiamento importante è fondamentale risolverlo repentinamente. Data la priorità che assume questo adattamento, potrebbe essere necessario allocarvi risorse prima destinate ad altre attività.],
  probabilità: [Media],
  impatto: [Alto],
  piano: [Il rischio può essere mitigato analizzando e studiando molto accuratamente tutte le possibili tecnologie utilizzabili prima di scegliere quella che verrà effettivamente utilizzata per sviluppare.],
  caption: [RT-2 - Imprevisti tecnologici],
)

#pagebreak()
= Modello di sviluppo
Il modello di sviluppo che viene adottato dal gruppo è il modello Agile che, a differenza dei modelli di sviluppo più rigidi come il modello a cascata dove si predilige una stretta sequenzialità delle fasi e, soprattutto, non ammette modifiche nei requisiti in corso d'opera, permette maggiore flessibilità e un coinvolgimento maggiore degli _#rifGlossario("stakeholder")_ (nel nostro caso l'azienda proponente) all'interno del progetto grazie alla sua natura iterativa e incrementale.

Il modello Agile prevede la suddivisione del progetto in iterazioni chiamate _#rifGlossario("sprint")_ durante le quale il gruppo si impegna a completare un insieme di attività prefissate al fine di produrre un incremento del prodotto finale. La serie di _sprint_ permette quindi di ottenere un prodotto finale che più si avvicina alle aspettative del proponente.

I punti di forza che hanno portato il gruppo ad adottare il modello Agile come modello di sviluppo sono molteplici.

L'approccio a _sprint_ permette di avere dei _feedback_ a cadenza regolare da parte del proponente circa l'avanzamento dei lavori e il soddisfacimento dei requisiti richiesti, permettendo così di correggere eventuali errori, individuare particolari rischi da mitigare per gli _sprint_ a venire e soddisfare il più possibile le aspettative del proponente stesso.

Grazie alla flessibilità del modello Agile è possibile modificare i requisiti in corso d'opera, cosa fondamentale all'interno del nostro progetto dove il rischio di individuare dei requisiti sbagliati è molto alto e che il modello a cascata, data la sua rigidità, non permetterebbe di fare.

Inoltre il modello permette un incremento parallelo dell'attività di analisi e dello sviluppo del prodotto, non limitando quindi il progetto alla sola documentazione, ma permettendo di avere un prodotto già funzionante dai primi _sprint_ a prova di quanto documentato.

#pagebreak()

= Pianificazione
Come frutto della scelta del modello Agile la pianificazione delle attività da svolgere all'interno del progetto è suddivisa in degli _sprint_, ovvero delle iterazioni della durata di due settimane ciascuna in cui vengono pianificate le attività da svolgere per raggiungere gli obiettivi prefissati.

Alla fine di ogni _sprint_ viene svolta una riunione con l'azienda proponente in cui si analizza quanto prodotto durante l'iterazione, si effettua una retrospettiva su quanto avvenuto analizzando difficoltà e problemi riscontrati e si pianifica il lavoro da svolgere e gli obiettivi da raggiungere per la seguente iterazione.

A metà di ogni _sprint_ l'azienda si rende disponibile chiarire eventuali dubbi che possono emergere durante lo svolgimento delle attività da parte dei membri del gruppo.

Ogni iterazione è caratterizzata da:
- *Inizio*: data in cui ha inizio un determinato _sprint_.
- *Fine*: data in cui termina lo _sprint_.
- *Rischi attesi*: elenco degli identificativi dei rischi che il gruppo si aspetta di incontrare durante lo _sprint_.
- *Attività dello _sprint_*: attività che il gruppo si impone di raggiungere durante la durata dello _sprint_ al fine di raggiungere determinati obiettivi.
- *Preventivo orario*: stima delle ore che ciascun membro deve dedicare nelle vesti di un determinato ruolo al fine di concludere le attività. Svolto in fase di pianificazione a inizio _sprint_.
- *Consuntivo orario e di spesa*: ore produttive dedicate da parte di ogni membro nei vari ruoli ricoperti durante l'iterazione al fine di concludere le attività previste. Sono accompagnate da un breve schema su quanto speso durante l'iterazione. Svolto in fase di conclusione dello _sprint_.
- *Retrospettiva*: analisi svolta alla fine di ogni _sprint_ con lo scopo di evidenziare ciò che ha funzionato e ciò che non ha funzionato durante l'iterazione, sottolineando i vari problemi e difficoltà riscontrati che hanno causato rallentamenti, con il fine di migliorare le prossime iterazioni.

Il gruppo si pone come _milestone_ del progetto le due consegne previste dai committenti, nonché i professori Tullio Vardanega e Riccardo Cardin, ovvero:
- *RTB* con data di consegna 27/01/2025
- *PB* con data di consegna 21/03/2025

Gli _sprint_ vengono quindi divisi nelle due _milestone_ precedentemente elencate per garantire una separazione netta degli stessi e delle attività che ne comportano.

#pagebreak()

== RTB
=== Sprint 1
#grid(
  columns: 2,
  column-gutter: 1em,
  row-gutter: 0.5em,
  [- *Inizio:*], [13/11/2024],
  [- *Fine:*], [27/11/2024],
  [- *Rischi attesi:*], [#link(<RO-2>)[RO-2], #link(<RO-3>)[RO-3], #link(<RT-1>)[RT-1]],
)
==== Attività dello sprint
Le attività che il gruppo si prefissa di concludere durante queste due settimane sono:
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
  tabCaption: [Consuntivo delle ore nel primo _sprint_ per membro e per ruolo],
  costTabCaption: [Costi sostenuti nel primo _sprint_],
  chartCaption: [Grafico percentuale dell'allocazione delle ore per ruolo nel primo _sprint_],
)

#v(10pt)
==== Retrospettiva
Il primo _sprint_ si è concluso con un bilancio molto positivo, dato il completamento di tutte le attività pianificate.

Ciononostante il gruppo ha riscontrato alcune difficoltà. In particolare, in queste due settimane di lavoro, è apparso evidente l'impatto che le Norme di Progetto hanno avuto all'interno del gruppo, adottando una serie di convenzioni e regole che hanno permesso di uniformare il lavoro svolto dai vari redattori. Tuttavia, essendo la prima versione delle Norme di Progetto, a causa dei frequenti cambiamenti all'interno del documento, si è reso necessario più volte dover rivedere e correggere in corso d'opera alcuni documenti più volte. Nonostante ciò, il gruppo ritiene il lavoro svolto in linea con le aspettative.

È emersa la difficoltà nel lavorare su una stessa _#rifGlossario("branch")_ a più membri in quanto questa causa facilmente molti problemi di conflitti tra i file modificati.

Gli analisti evidenziano le difficoltà e i dubbi relativi alla comprensione dei casi d'uso. Molte questioni tuttavia sono state risolte nella riunione di fine primo _sprint_ da parte del proponente e verranno approfonditi in quello successivo. In particolare nei primi periodi è fondamentale a lavorare in maniera più collaborativa nella fase di analisi e non limitarsi semplicemente all'esecuzione delle attività in maniera parallela.

I verificatori suggeriscono infine di incaricare più di una persona alla verifica dei documenti ad alto contenuto, quali possono essere le Norme di Progetto e il Piano di Progetto, al fine di garantire una verifica ottimale.


#pagebreak()

=== Sprint 2
#grid(
  columns: 2,
  column-gutter: 1em,
  row-gutter: 0.5em,
  [- *Inizio:*], [28/11/2024],
  [- *Fine:*], [13/12/2024],
  [- *Rischi attesi:*], [#link(<RO-2>)[RO-2], #link(<RO-3>)[RO-3], #link(<RT-1>)[RT-1]],
)
==== Attività dello sprint
Le attività che il _team_ si è prefissato di portare a termine durante il secondo _sprint_ sono le seguenti:
- Redazione verbale esterno ed interno del 27/11/2024.
- Creare una prima versione del simulatore dati.
  - È stato deciso di dedicare la prima settimana dello _sprint_ allo studio e approfondimento delle tecnologie: #rifGlossario("Docker"), #rifGlossario("Apache Kafka"), #rifGlossario("Apache Nifi") e #rifGlossario("PostgreSQL").
  - La seconda settimana sarà invece riservata all'implementazione concreta del simulatore e del _#rifGlossario("database")_ dove verranno salvati i dati generati, grazie all'utilizzo delle tecnologie studiate.
- Avanzamento nel documento Analisi dei Requisiti, in particolare:
  - Migliorare i vecchi casi d'uso dopo aver risolto alcuni dubbi in seguito al confronto con l'azienda.
  - Scrivere nuovi casi d'uso.
- Continuazione stesura Piano di Progetto, in particolare:
  - Scrittura retrospettiva primo _sprint_.
  - Scrittura pianificazione secondo _sprint_.
- Inizio stesura del Piano di Qualifica.
- Modifica alle Norme di Progetto, per via del nuovo aggiornamento riguardo al sistema di _versioning_.
- Modifica delle versioni dei seguenti documenti, per coerenza con il nuovo sistema di versionamento:
  - Glossario
  - Analisi dei Requisiti
  - Piano di Progetto
  - Norme di Progetto
- Modifica al _template_ ed al _test_ del Glossario.
  - La modifica al _template_ vedrà l'implementazione di:
    - Una funzione per automatizzare la generazione dei grafici relativi al preventivo ed al consuntivo orario richiesti per ogni _sprint_, nel Piano di Progetto.
    - Aggiunta dell'indice delle immagini e delle tabelle, generato automaticamente, su tutti i _file_.
  - La modifica al _test_ del Glossario è necessaria in quanto, attualmente, segnala dei falsi positivi. Per esempio quando abbiamo parole appartenenti al Glossario contenute in altre parole, oppure la segnalazione di termini del Glossario che in realtà sono comandi #rifGlossario("Typst").
- Informarsi ed eventualmente dotarsi di un _software_ per la creazione e gestione di un #rifGlossario("diagramma di Gantt") per coordinare le attività del gruppo.

#v(10pt)
#figure(
  image("../assets/img/PdP/gantt_s2.png"),
  caption: [Diagramma di Gantt dello _sprint_ 2],
)

==== Preventivo orario
#rendicontazioneOre(
  (
    (0, 4, 0, 0, 0, 0),
    (0, 0, 0, 0, 4, 3),
    (0, 0, 5, 0, 0, 0),
    (0, 4, 0, 0, 0, 0),
    (5, 0, 0, 0, 0, 0),
    (0, 1, 6, 0, 1, 0),
    (0, 0, 0, 0, 4, 3),
  ),
  caption: [Preventivo delle ore nel secondo _sprint_ per membro e per ruolo],
)

==== Consuntivo orario e di spesa
#consuntivoOre(
  preventivo: (
    (0, 4, 0, 0, 0, 0),
    (0, 0, 0, 0, 4, 3),
    (0, 0, 5, 0, 0, 0),
    (0, 4, 0, 0, 0, 0),
    (5, 0, 0, 0, 0, 0),
    (0, 1, 6, 0, 1, 0),
    (0, 0, 0, 0, 4, 3),
  ),
  consuntivo: (
    (0, 4, 0, 0, 0, 0),
    (0.5, 0, 0, 0, 4, 3),
    (0, 0, 6, 0, 0, 0),
    (0, 3, 0, 0, 0, 0),
    (5, 0, 0, 0, 0, 0),
    (0, 1.5, 6, 0, 1, 0),
    (0, 0, 0, 0, 4, 3),
  ),
  tabCaption: [Consuntivo delle ore nel secondo _sprint_ per membro e per ruolo],
  costTabCaption: [Costi sostenuti nel secondo _sprint_],
  chartCaption: [Grafico percentuale dell'allocazione delle ore per ruolo nel secondo _sprint_],
)

#v(10pt)
==== Retrospettiva
Il secondo _sprint_ è stato un periodo proficuo, in cui il _team_ è riuscito a portare a completamento tutte le attività prefissate.

Tuttavia sono state notate alcune problematiche, soprattutto ad inizio periodo, ma che con il tempo il gruppo è riuscito progressivamente a migliorare.

Una difficoltà inevitabile è stata riscontrata durante lo studio e l'applicazione delle nuove tecnologie, per molti mai viste. Fortunatamente si è arrivati comunque al livello di implementazione desiderato, anche grazie al confronto con l'azienda. Questa ci aveva messo in contatto con un loro dipendente specializzato nell'utilizzo di Apache Nifi, una delle tecnologie con cui abbiamo riscontrato maggiormente difficoltà. Alla fine il gruppo è comunque riuscito a risolvere il problema autonomamente.

La prima versione del simulatore dati è stata implementata con successo, tanto che è stata mostrata ed apprezzata durante l'incontro di fine _sprint_ con l'azienda. Infatti, oltre a rispettare la pianificazione, siamo riusciti a presentare anche l'interfaccia del simulatore realizzata con #rifGlossario("Grafana").

I casi d'uso sono stati migliorati ed aumentati come pianificato. Tuttavia il gruppo ha riscontrato delle difficoltà durante la scrittura, evidenziando alcuni dubbi a cui non si è riusciti a dare una risposta certa. Per questo abbiamo chiesto al professor Cardin un incontro per confrontarci su queste problematiche.

L'unica attività che non si è svolta come preventivato è stata l'indagine relativa al _software_ per la gestione di un diagramma di Gantt. L'esigenza era nata in seguito all'utilizzo del sistema integrato di #rifGlossario("GitHub"), il quale però manca di alcune funzionalità, principalmente l'assenza della possibilità di segnalare le dipendenze tra le attività.
Molte delle soluzioni vagliate, alcune delle quali anche a pagamento, presentavano dei difetti che ci hanno fatto desistere, almeno momentaneamente, dal migrare verso un altro applicativo.

#pagebreak()

=== Sprint 3
#grid(
  columns: 2,
  column-gutter: 1em,
  row-gutter: 0.5em,
  [- *Inizio:*], [14/12/2024],
  [- *Fine:*], [23/12/2024],
  [- *Rischi attesi:*], [#link(<RO-1>)[RO-1], #link(<RO-3>)[RO-3], #link(<RT-1>)[RT-1]],
)

==== Attività dello sprint
Le attività che il _team_ si è prefissato di portare a termine durante il terzo _sprint_ sono le seguenti:
- Redazione del verbale esterno ed interno del 13/12/2024.
- Ampliamento del documento Norme di Progetto, in particolare occupandosi delle sezioni:
  - Piano di Qualifica
  - Verifica
  - Validazione
  - Processi organizzativi
- In concomitanza con l'attività precedente si procederà con lo studio di possibili metriche per la valutazione della qualità, che andranno poi al vaglio del gruppo.
- Aggiornamento della sezione "Processi primari" nel documento Norme di Progetto. Nello specifico si dovrà normare la descrizione dei casi d'uso.
- Continuazione del documento di Analisi dei Requisiti, che per questo _sprint_ si concentrerà sullo studio di nuovi casi d'uso con l'obiettivo raccogliere eventuali nuovi dubbi da poter chiarire durante il ricevimento con il professor Cardin (previsto per il 19/12/2024).
- Studio della fattibilità di creare uno _#rifGlossario("stream processor") custom_ sfruttando #rifGlossario("Spring"), possibilmente sviluppandone un prototipo.
- Affinamento della _#rifGlossario("dashboard")_ in Grafana effettuando migliorie di carattere estetico e funzionale.
- Continuazione della stesura del Piano di Progetto come da prassi, in particolare:
  - Scrittura retrospettiva secondo _sprint_.
  - Scrittura pianificazione terzo _sprint_.

#v(10pt)
#figure(
  image("../assets/img/PdP/gantt_s3.png"),
  caption: [Diagramma di Gantt dello _sprint_ 3],
)

==== Preventivo orario
#rendicontazioneOre(
  (
    (0, 0, 5, 0, 0, 0),
    (0, 0, 5, 0, 0, 0),
    (0, 0, 0, 0, 0, 3),
    (3, 2, 0, 0, 0, 0),
    (0, 3, 0, 0, 0, 0),
    (0, 0, 0, 0, 4, 3),
    (0, 3, 0, 0, 2, 0),
  ),
  caption: [Preventivo delle ore nel terzo _sprint_ per membro e per ruolo],
)

==== Consuntivo orario e di spesa
#consuntivoOre(
  preventivo: (
    (0, 0, 5, 0, 0, 0),
    (0, 0, 5, 0, 0, 0),
    (0, 0, 0, 0, 0, 3),
    (3, 2, 0, 0, 0, 0),
    (0, 3, 0, 0, 0, 0),
    (0, 0, 0, 0, 4, 3),
    (0, 3, 0, 0, 2, 0),
  ),
  consuntivo: (
    (0, 0, 5, 0, 0, 0),
    (0, 0, 6, 0, 0, 0),
    (0, 0, 0, 0, 0, 5),
    (3, 2.5, 0, 0, 0, 0),
    (0, 5, 0, 0, 0, 0),
    (0, 0, 0, 0, 1, 5),
    (0, 7, 0, 0, 0, 0),
  ),
  tabCaption: [Consuntivo delle ore nel terzo _sprint_ per membro e per ruolo],
  costTabCaption: [Costi sostenuti nel terzo _sprint_],
  chartCaption: [Grafico percentuale dell'allocazione delle ore per ruolo nel terzo _sprint_],
)

#v(10pt)
==== Retrospettiva
Il terzo _sprint_ si è concluso con un bilancio tutto sommato positivo, nonostante alcune difficoltà riscontrate.

In primo luogo si è dovuto accantonare per questo _sprint_ la prosecuzione dello sviluppo della _dashboard_ in Grafana in quanto, vista anche la durata ridotta dello _sprint_, si è preferito dare più priorità e tempo allo sviluppo dello _stream processor_ in Spring. Questo peraltro è già attualmente in grado di sostituire il _software_ precedentemente costruito con Apache NiFi. Da questa scelta ne beneficerà anche lo sviluppo della _dashboard_ stessa visto che si avrà a disposizione un _back-end_ funzionante e semidefinitivo rispetto alla prossima _milestone_.

La risorsa che avrebbe dovuto lavorare alla _dashboard_ è stata quindi riallocata, nel corso dello _sprint_, alla stesura delle Norme di Progetto, documento che in questo _sprint_ è stato ampliato in modo considerevole.

A causa sia di stime troppo ottimistiche da parte del responsabile che dallo stretto legame tra lo studio delle metriche e la stesura delle Norme di Progetto, si è riscontrato un ritardo nel completare queste attività entro i tempi preventivati. Queste quindi si protrarranno anche nella prima parte prossimo _sprint_.

Per quanto riguarda l'Analisi dei Requisiti l'attività di stesura è proseguita come previsto. Il gruppo ha riscontrato delle difficoltà nell'identificazione dei casi d'uso e, più nello specifico, nel delineare il confine tra analisi dei requisiti e progettazione. È risultato quindi utile il confronto avvenuto con il professor Cardin, che ha permesso di chiarire molti dubbi. Ciò si è ripercosso anche nella stesura della parte riguardante la descrizione dei casi d'uso all'interno delle Norme di Progetto, che ora riporta per iscritto le _best practice_ imparate dal gruppo fino a questo momento.

#pagebreak()

=== Sprint 4
#grid(
  columns: 2,
  column-gutter: 1em,
  row-gutter: 0.5em,
  [- *Inizio:*], [24/12/2024],
  [- *Fine:*], [08/01/2025],
  [- *Rischi attesi:*], [#link(<RO-1>)[RO-1], #link(<RO-3>)[RO-3], #link(<RO-4>)[RO-4], #link(<RT-1>)[RT-1]],
)

==== Attività dello sprint
Le attività che il _team_ si è prefissato di portare a termine durante il quarto _sprint_ sono le seguenti:
- Redazione del verbale esterno ed interno del 23/12/2024.
- Codifica dello _script_ per il calcolo automatico dell'indice #rifGlossario("Gulpease").
- Ampliamento del documento Norme di Progetto, in particolare occupandosi delle sezioni:
  - Metriche di qualità del prodotto.
  - Metriche di qualità del processo.
- Redazione completa del Piano di Qualifica con le metriche individuate nel punto precedente.
- Continuazione del documento di Analisi dei Requisiti, in particolare:
  - Rifinire e completare i casi d'uso.
  - Individuare e redigere in maniera completa i requisiti.
- Creazione del nuovo _stream processor custom_ sfruttando Spring, con il _database_ popolato e l'integrazione con #rifGlossario("LangChain").
- Aggiornamento della _dashboard_ in Grafana per adattarsi alla nuova infrastruttura con Spring.
- Continuazione della stesura del Piano di Progetto come da prassi, in particolare:
  - Scrittura pianificazione quarto _sprint_.
  - Scrittura retrospettiva quarto _sprint_ in concomitanza con la fine dello _sprint_.

#v(10pt)
#figure(
  image("../assets/img/PdP/gantt_s4.png"),
  caption: [Diagramma di Gantt dello _sprint_ 4],
)

==== Preventivo orario
#rendicontazioneOre(
  (
    (0, 0, 6, 0, 0, 0),
    (0, 0, 6, 0, 0, 0),
    (0, 4, 0, 0, 0, 1),
    (0, 1, 0, 0, 0, 3),
    (0, 0, 3, 0, 0, 3),
    (0, 2, 3, 0, 4, 0),
    (2, 2, 0, 0, 1, 0),
  ),
  caption: [Preventivo delle ore nel quarto _sprint_ per membro e per ruolo],
)

==== Consuntivo orario e di spesa
#consuntivoOre(
  preventivo: (
    (0, 0, 6, 0, 0, 0),
    (0, 0, 6, 0, 0, 0),
    (0, 4, 0, 0, 0, 1),
    (0, 1, 0, 0, 0, 3),
    (0, 0, 3, 0, 0, 3),
    (0, 2, 3, 0, 4, 0),
    (2, 2, 0, 0, 1, 0),
  ),
  consuntivo: (
    (0, 0, 6, 0, 0, 0),
    (0, 0, 6, 0, 0, 0),
    (0, 4, 0, 0, 0, 1),
    (0, 1.5, 0, 0, 0, 3.5),
    (0, 0, 3, 0, 0, 3),
    (0, 1, 3, 0, 3, 0),
    (2.5, 1, 0, 0, 0, 0),
  ),
  tabCaption: [Consuntivo delle ore nel quarto _sprint_ per membro e per ruolo],
  costTabCaption: [Costi sostenuti nel quarto _sprint_],
  chartCaption: [Grafico percentuale dell'allocazione delle ore per ruolo nel quarto _sprint_],
)

#v(10pt)
==== Retrospettiva
Il quarto _sprint_ si è concluso con risultati molto soddisfacenti in termini di qualità del materiale prodotto, ma a causa del rischio atteso #link(<RO-4>)[RO-4] dovuto alle festività occorse durante lo _sprint_, le ultime attività pianificate sono terminate con due giorni di ritardo.

Tutti i verbali sono stati redatti, verificati e approvati tempestivamente e lo script per il calcolo dell'indice Gulpease è stato completato e funziona correttamente.

Lo studio e la redazione delle metriche sono stati portati a termine correttamente, seppur con dei ritardi dovuti alla poca coordinazione tra i membri del gruppo nella prima parte dello sprint che avevano prodotto lavori conflittuali.

L'attività di raffinamento dei casi d'uso e stesura dei requisiti è proceduta linearmente proseguendo il lavoro fatto fino a questo periodo con le indicazioni ricevute dal professor Cardin nel precedente _sprint_.

I miglioramenti del #rifGlossario("PoC"), ristrutturando il _software_ usando Spring, sono stati sostanziali e anche il proponente si è mostrato soddisfatto nel consueto SAL di fine _sprint_.

In ultima i miglioramenti alla dashboard Grafana non sono stati fatti in quanto, dopo un confronto con il proponente, si sono rivelati superflui per il PoC.

#pagebreak()

=== Sprint 5
#grid(
  columns: 2,
  column-gutter: 1em,
  row-gutter: 0.5em,
  [- *Inizio:*], [09/01/2025],
  [- *Fine:*], [26/01/2025],
  [- *Rischi attesi:*], [#link(<RO-1>)[RO-1], #link(<RO-3>)[RO-3], #link(<RO-4>)[RO-4]],
)
==== Attività dello sprint
In vista della scadenza della _milestone_, e quindi della consegna prevista per lunedì 27 gennaio, le attività che il _team_ si è prefissato di portare a termine durante il quinto _sprint_ sono le seguenti:
- Redazione dei verbali per le rispettive riunioni interne ed esterne.
- Compilazione del Piano di Progetto con la sezione relativa al quinto _sprint_.
- Completamento delle Norme di Progetto, in particolare:
  - Stesura degli ultimi paragrafi seguendo lo _standard_ ISO/IEC 12207:1995.
- Completamento del Piano di Qualifica, in particolare:
  - Aggiornamento dei valori del "cruscotto".
  - Inserimento dei grafici con gli andamenti dei valori delle metriche per ogni documento.
- Completamento dell'Analisi dei Requisiti come indicato dall'incontro con il prof. Cardin, in particolare:
  - Rivalutare le precondizioni e postcondizioni.
  - Modificare i casi d'uso relativi alle notifiche.
  - Rendere più specifiche alcune funzionalità.
  - Concludere la copiatura dei requisiti. È stato scelto di mantenere questa operazione come ultima per ridurre il più possibile il lavoro di riscrittura dei riferimenti ai casi d'uso.
- Stesura della lettera di consegna RTB.
- Approvazione di tutti i documenti di carattere generale.
- Presentare la _repository_ NearYou tramite `README.md`.
- Ultimare la struttura del PoC, in particolare:
  - Completare l'infrastruttura con #rifGlossario("Docker Compose").
  - Integrare la parte di _back-end_ con quella di _front-end_.

#v(10pt)
#figure(
  image("../assets/img/PdP/gantt_s5.png"),
  caption: [Diagramma di Gantt dello _sprint_ 5],
)

==== Preventivo orario
#rendicontazioneOre(
  (
    (0, 0, 0, 0, 0, 5),
    (5, 0, 0, 0, 0, 0),
    (0, 1, 5, 0, 0, 0),
    (0, 0, 0, 0, 0, 5),
    (0, 0, 5, 0, 0, 0),
    (1, 0, 3, 0, 1, 0),
    (0, 0, 7, 0, 0, 0.5),
  ),
  caption: [Preventivo delle ore nel quinto _sprint_ per membro e per ruolo],
)

==== Consuntivo orario e di spesa
#consuntivoOre(
  preventivo: (
    (0, 0, 0, 0, 0, 5),
    (5, 0, 0, 0, 0, 0),
    (0, 1, 5, 0, 0, 0),
    (0, 0, 0, 0, 0, 5),
    (0, 0, 5, 0, 0, 0),
    (1, 0, 3, 0, 1, 0),
    (0, 0, 7, 0, 0, 0.5),
  ),
  consuntivo: (
    (0, 0, 0, 0, 0, 5),
    (5.5, 0, 0, 0, 0, 0),
    (0, 1, 5, 0, 0, 0),
    (0, 0, 0, 0, 0, 5.5),
    (0, 0, 6, 0, 0, 0),
    (1, 0, 3, 0, 1, 0),
    (0, 0, 7, 0, 0, 0.5),
  ),
  tabCaption: [Consuntivo delle ore nel quinto _sprint_ per membro e per ruolo],
  costTabCaption: [Costi sostenuti nel quinto _sprint_],
  chartCaption: [Grafico percentuale dell'allocazione delle ore per ruolo nel quinto _sprint_],
)

#v(10pt)
==== Retrospettiva
Il gruppo è riuscito a terminare tutte le attività pianificate nei tempi stabiliti. Sono state fondamentali riunioni sincrone sia interne che esterne per concludere gli ultimi punti dei documenti. Per garantire il risultato atteso entro la data di consegna RTB il gruppo si è tenuto costantemente aggiornato sulle piattaforme di comunicazione Telegram e Discord.

Ricevendo continuamente riscontri positivi da parte della proponente rispetto all'Analisi dei Requisiti e al PoC abbiamo valutato di concludere la _milestone_ entro il giorno 27 gennaio 2025. È stata concordato il colloquio con il prof. Cardin per il giorno 29 gennaio, quindi le uniche attività da svolgere prima dell'incontro sono produrre due brevi presentazioni, una per il prof. Cardin e l'altra per il prof. Vardanega.

#pagebreak()

== PB
=== Sprint 6
#grid(
  columns: 2,
  column-gutter: 1em,
  row-gutter: 0.5em,
  [- *Inizio:*], [10/02/2025],
  [- *Fine:*], [24/02/2025],
  [- *Rischi attesi:*], [ #link(<RO-1>)[RO-1], #link(<RO-2>)[RO-2], #link(<RO-4>)[RO-4]],
)

==== Attività dello sprint
In seguito alla valutazione del RTB, il _team_ si è prefissato di apportare le modifiche dovute alla documentazione, in base ai _feedback_ ricevuti, entro il termine del sesto _sprint_. In particolare, le attività da portare a termine sono le seguenti:
- Redazione dei verbali per le rispettive riunioni interne ed esterne.
- Compilazione del Piano di Progetto con la sezione relativa al sesto _sprint_.
- Correzioni alle Norme di Progetto, in particolare:
  - Modificare o eliminare le sezioni non più necessarie.
- Modifiche ai template dei verbali e del glossario.
- Correzioni all'Analisi dei Requisiti, in particolare:
  - Specificare quali dati sono inviati dal sensore (UC1).
  - Quali spostamenti è possibile fare sulla mappa (UC28).
  - Definire cosa è presente nel UC32 che lo contraddistingue dal UC33.
  - Definire quali statistiche sono disponibili esattamente (UC58).
  - Modificare i requisiti di vincolo perché al momento descrivono dei requisiti funzionali.
- Modificare il sito vetrina in base ai _feedback_ ricevuti.
#v(10pt)
#figure(
  image("../assets/img/PdP/gantt_s6.png"),
  caption: [Diagramma di Gantt dello _sprint_ 6],
)

==== Preventivo orario
#rendicontazioneOre(
  (
    (0, 0, 0, 0, 0, 1),
    (0, 1, 0, 0, 0, 2),
    (2, 0, 0, 0, 0, 0),
    (0, 0, 3, 0, 0, 1),
    (0, 0, 1, 0, 0, 1),
    (0, 1, 0, 0, 0, 0),
    (0, 1, 0, 0, 0, 2),
  ),
  caption: [Preventivo delle ore nel sesto _sprint_ per membro e per ruolo],
)

==== Consuntivo orario e di spesa dello sprint corrente
#consuntivoOre(
  preventivo: (
    (0, 0, 0, 0, 0, 1),
    (0, 1, 0, 0, 0, 2),
    (2, 0, 0, 0, 0, 0),
    (0, 0, 3, 0, 0, 1),
    (0, 0, 1, 0, 0, 1),
    (0, 1, 0, 0, 0, 0),
    (0, 1, 0, 0, 0, 2),
  ),
  consuntivo: (
    (0, 0, 0, 0, 0, 1),
    (0, 1, 0, 0, 0, 1),
    (2, 0, 0, 0, 0, 0),
    (0, 0, 3.5, 0, 0, 1),
    (0, 0, 1.5, 0, 0, 0),
    (0, 1, 0, 0, 1, 0),
    (0.5, 1, 0, 0, 0, 1),
  ),
  tabCaption: [Consuntivo delle ore nel sesto _sprint_ per membro e per ruolo],
  costTabCaption: [Costi sostenuti nel sesto _sprint_],
  chartCaption: [Grafico percentuale dell'allocazione delle ore per ruolo nel sesto _sprint_],
)

==== Risorse rimanenti e preventivo a finire
#align(
  center,
  [
    #table(
      columns: (auto, auto, auto, auto),
      align: center,
      table.header([*Ruolo*], [*Ore rimanenti*], [*_Budget_ rimanente*], [*Risorse consumate*]),
      [Responsabile], [30], [900 €], [46,43 %],
      [Amministratore], [15], [300 €], [73,21 %],
      [Analista], [4.5], [112.5 €], [94,64 %],
      [Progettista], [133], [3325 €], [0 %],
      [Programmatore], [143.5], [2152.5 €], [10,87 %],
      [Verificatore], [88.5], [1327.5 €], [36,79 %],
    )
  ],
)
Il preventivo a finire rimane positivo seppur leggermente più alto rispetto allo _sprint_ precedente. Si attesta infatti a 12,719.71€, a fronte di un preventivo iniziale di 12.740,00€.

==== Retrospettiva
Durante il sesto _sprint_ il gruppo ha lavorato per apportare le modifiche necessarie alla documentazione in seguito ai _feedback_ ricevuti durante il RTB. Le attività sono state quasi tutte completate nei tempi previsti, eccezzione fatta per le correzioni da apportare all'Analisi dei Requisiti, che proseguiranno durante il prossimo _sprint_.

===== Cosa ha funzionato
Il gruppo è riuscito, nonostante il periodo in concomitanza con gli ultimi esami, a completare la maggior parte delle attività previste nei tempi pianificati. Apprezzato anche il continuo aggiornamento reciproco tramite i canali informali di comunicazione.

===== Cosa non ha funzionato
L'attività di correzione dell'Analisi dei Requisiti è stata cominciata tardi e la sua durata è stata sottostimata. Inoltre il gruppo voleva prima discutere alcune modifiche con la proponente e non è stato possibile farlo entro la fine di questo periodo.

===== Cosa fare per migliorare
Il gruppo si impegnerà a pianificare meglio le scadenze per le attività future, cercando di stimare più precisamente i tempi necessari a completarle, tenendo conto del tempo necessario ad eventuali _feedback_ da parte dell'azienda proponente.

===== Rischi riscontrati
Nel corso del sesto _sprint_ si sono riscontrati i seguenti rishi:
- #link(<RO-4>)[RO-4]: pianificato, siccome nelle ultime settimane si sono svolti gli ultimi esami. Il problema è stato comunque mitigato concentrando maggior parte del lavoro nella parte finale dello _sprint_.
- #link(<RO-2>)[RO-2]: pianificato, sono stati stabiliti tempi più ampi del solito per i motivi sopra citati relativi agli esami. Il gruppo ha comunque mitigato il problema utilizzando del tempo per approfondire le architetture _software_ da utilizzare nelle prossime settimane.
- #link(<RO-3>)[RO-3]: non pianificato, l'attività di correzione dell'Analisi dei Requisiti si è rivelata più onerosa del previsto ed è stata iniziata troppo tardi, portando ad essere continuata nel prossimo _sprint_.

===== Attività future
Nel prossimo periodo, siccome sono state apportate le modifiche dovute ai documenti in seguito al colloquio RTB, il gruppo inizierà la stesura dei documenti Manuale Utente e Specifica Tecnica.
Inoltre si inizierà a lavorare sullo sviluppo del #rifGlossario("MVP") con relativa progettazione, applicando dapprima le decisioni sull'architettura discusse anche con la proponente.

#pagebreak()

=== Sprint 7
#grid(
  columns: 2,
  column-gutter: 1em,
  row-gutter: 0.5em,
  [- *Inizio:*], [25/02/2025],
  [- *Fine:*], [10/03/2025],
  [- *Rischi attesi:*], [#link(<RO-1>)[RO-1], #link(<RO-2>)[RO-2], #link(<RO-3>)[RO-3], #link(<RT-1>)[RT-1]],
)
==== Attività dello sprint
In seguito alla riunione di inizio settimo _sprint_, il _team_ si è prefissato di iniziare il ciclo di vita dei documenti relativi alla _milestone_ PB e iniziare la progettazione del _software_. In particolare, le attività da portare a termine sono le seguenti:
- Redazione dei verbali per le rispettive riunioni interne ed esterne.
- Compilazione del Piano di Progetto con la sezione relativa al settimo _sprint_.
- Inizio stesura Manuale Utente con riferimenti normativi, struttura di cartelle del progetto, come avviarlo e come usare le principali funzionalità.
- Modifiche al _test_ del Glossario riguardo le espressioni regolari che in alcune situazioni ritornano dei falsi positivi.
- Inizio stesura Specifica Tecnica con l'introduzione comprensiva di riferimenti normativi e principali tecnologie utilizzate per realizzare il _software_.
- Ultimazione correzioni e miglioramenti Analisi dei Requisiti, attività che era stata iniziata nello _sprint_ precedente, ma che non era stata completata a causa di ritardi.
#v(10pt)
#figure(
  image("../assets/img/PdP/gantt_s7.png"),
  caption: [Diagramma di Gantt dello _sprint_ 7],
)

==== Preventivo orario
#rendicontazioneOre(
  (
    (3, 0, 0, 8, 10, 0),
    (0, 0, 0, 12, 13, 1),
    (0, 0, 0, 6, 5, 2),
    (0, 2, 2, 3, 0, 1),
    (0, 0, 0, 6, 6, 4),
    (0, 1, 0, 11, 6, 2),
    (6, 0, 0, 3, 5, 4),
  ),
  caption: [Preventivo delle ore nel settimo _sprint_ per membro e per ruolo],
)

==== Consuntivo orario e di spesa dello sprint corrente
#consuntivoOre(
  preventivo: (
    (3, 0, 0, 8, 10, 0),
    (0, 0, 0, 12, 13, 1),
    (0, 0, 0, 6, 5, 2),
    (0, 2, 2, 3, 0, 1),
    (0, 0, 0, 6, 6, 4),
    (0, 1, 0, 11, 6, 2),
    (6, 0, 0, 3, 5, 4),
  ),
  consuntivo: (
    (3, 0, 0, 8, 10, 0),
    (0, 0, 0, 12, 14, 1),
    (0, 0, 0, 6, 5, 2),
    (0, 2, 2, 3, 0, 1),
    (0, 0, 0, 6, 6, 4),
    (0, 1, 0, 12, 6, 2),
    (5, 0, 0, 3, 5, 4),
  ),
  tabCaption: [Consuntivo delle ore nel settimo _sprint_ per membro e per ruolo],
  costTabCaption: [Costi sostenuti nel settimo _sprint_],
  chartCaption: [Grafico percentuale dell'allocazione delle ore per ruolo nel settimo _sprint_],
)

#pagebreak()

==== Risorse rimanenti e preventivo a finire
#align(
  center,
  [
    #table(
      columns: (auto, auto, auto, auto),
      align: center,
      table.header([*Ruolo*], [*Ore rimanenti*], [*_Budget_ rimanente*], [*Risorse consumate*]),
      [Responsabile], [22], [660 €], [60,71 %],
      [Amministratore], [12], [240 €], [78,57 %],
      [Analista], [2.5], [62.5 €], [97,02 %],
      [Progettista], [83], [2075 €], [37,59 %],
      [Programmatore], [97.5], [1462.5 €], [39,44 %],
      [Verificatore], [74.5], [1117.5 €], [46,79 %],
    )
  ],
)
Il preventivo a finire si è alzato a 12,751.12€, a fronte di quello iniziale di 12.740,00€. L'andamento era comunque atteso poiché, terminati gli impegni universitari dei membri del gruppo, si è verificato un notevole aumento del carico di lavoro.

==== Retrospettiva
Durante il settimo _sprint_ il gruppo ha lavorato per avanzare nella redazione della documentazione, nell'analisi delle architetture di _deployment_ e logica, nelle prime implementazioni. Le attività sono state completate tutte tranne la stesura della Specifica Tecnica, a causa di un cambio di tecnologia che ha costretto il _team_ a concentrare le risorse sul _software_.

===== Cosa ha funzionato
Il gruppo ha analizzato in modo piuttosto approfondito le architetture da adottare presentandole sia all'azienda proponente che al prof. Cardin. Il colloquio con il docente-committente ha fatto emergere alcune problematiche relative allo _stream processor_ poiché è stato considerato un numero potenziale di utenti molto inferiore rispetto a quello atteso dal professore. Il _team_ ha saputo tempestivamente colmare il deficit tecnologico e in pochi giorni è riuscito a modellare il simulatore e il nuovo _stream processor_ con #rifGlossario("Apache Flink"). È stata portata avanti anche l'interfaccia con Grafana.

===== Cosa non ha funzionato
La redazione della prima parte della Specifica Tecnica non è stata completata secondo i tempi previsti a causa del cambio di tecnologia imprevisto che ha richiesto molte risorse per risolvere il problema rapidamente. Poiché lo _stream processor_ è parte centrale del prodotto è stato ritenuto fondamentale definirlo interamente prima di cominciare la stesura della Specifica Tecnica.

===== Cosa fare per migliorare
In questo _sprint_ non ci sono particolari spunti di miglioramento. L'unico problema emerso è stato il cambio improvviso di tecnologia che però non era prevedibile, in quanto la tecnologia scelta era stata approvata per un _target_ più piccolo di dati. In seguito all'incontro con il professor Cardin, appurato che il nostro _software_ dovesse far fronte a una maggior quantità di dati, è stato deciso di cambiare tecnologia verso una soluzione più consona.

===== Rischi riscontrati
Nel corso del settimo _sprint_ si sono riscontrati i seguenti rishi:
- #link(<RT-2>)[RT-2]: come spiegato sopra, si è rivelato a un certo punto necessario un cambio di tecnologia, che ha reso necessario un rifacimento di gran parte del prodotto.
- #link(<RT-1>)[RT-1]: a causa di RT-2, il gruppo ha dovuto formarsi sulla nuova tecnologia utilizzata.

===== Attività future
Nel prossimo periodo sarà necessario redigere la Specifica Tecnica e finire il Manuale Utente. Inoltre con le tecnologie del tutto definite, ci saranno da compiere le ultime scelte architetturali e poi dedicarsi completamente alla scrittura del codice per il _software_ e i relativi _test_.

#pagebreak()

=== Sprint 8
#grid(
  columns: 2,
  column-gutter: 1em,
  row-gutter: 0.5em,
  [- *Inizio:*], [11/03/2025],
  [- *Fine:*], [27/03/2025],
  [- *Rischi attesi:*], [#link(<RO-1>)[RO-1], #link(<RO-2>)[RO-2], #link(<RO-3>)[RO-3], #link(<RT-1>)[RT-1]],
)

==== Attività dello sprint
In seguito alla riunione avvenuta per l'inizio dell'ottavo _sprint_ il _team_ prevede di completare tutte le attività necessarie per la presentazione del PB. In particolare, le attività da portare a termine sono le seguenti:
- Redazione dei verbali per le rispettive riunioni interne ed esterne.
- Compilazione del Piano di Progetto con la sezione relativa all'ottavo _sprint_.
- Ultimare il manuale utente, in particolare:
  - Aggiungere la sezione "Guida all'utilizzo della _dashboard_".
  - Rifinire i precedenti capitoli.
- Stesura delle sezioni mancanti nella Specifica Tecnica, in particolare:
  - Sezione del simulatore.
  - Sezione di architettura e _design pattern_.
  - Sezione relativa al _database_.
  - Sezione relativa a Grafana.
  - Sezione relativa a Flink.
- Stesura dei _test_ di unità nel PdQ, nello specifico:
  - _Test_ del simulatore GPS.
  - _Test_ del _job_ di Flink.
- Scrittura dei _test_ di sistema nel PdQ.
- Scrittura dei _test_ di integrazione nel PdQ.
- Scrittura dei _test_ di accettazione nel PdQ.
- Completare il cruscotto del PdQ.
- Completamento del codice dei _test_ statici e dinamici.
- Completamento del codice dei _test_ di unità, nello specifico:
  - _Test_ del simulatore GPS.
  - _Test_ del _job_ di Flink.
- Ultimazione della _dashboard_ di Grafana, nello specifico:
  - Completare la sezione dello storico.
  - Implementare la sezione relativa ai grafici.
- Implementare le ultime modifiche al sito di facciata del _team_, in particolare:
  - Riordinare i verbali in modo che appaiano dal più recente al meno recente.
  - Rinominare i documenti mettendo le prime lettere maiuscole.
- Ultimazione della struttura del _database_ e popolamento.
- _Refactoring_ del simulatore in modo da creare una struttura solida, se necessario usando alcuni _design pattern_.
- Creazione dello _stream processor_ in Flink.

#v(10pt)

#figure(
  image("../assets/img/PdP/gantt_s8.png"),
  caption: [Diagramma di Gantt dello _sprint_ 8],
)

==== Preventivo orario
#rendicontazioneOre(
  (
    (1, 4, 1, 11, 13, 14),
    (2, 3, 0, 7, 3.5, 15),
    (6, 3, 0, 13, 18, 7),
    (5, 0.5, 0, 16, 23, 9),
    (3, 0, 1.5, 13, 16, 10),
    (5, 1.5, 0, 7, 9, 8),
    (0, 0, 0, 16, 14, 11.5),
  ),
  caption: [Preventivo delle ore nell'ottavo _sprint_ per membro e per ruolo],
)


==== Consuntivo orario e di spesa dello sprint corrente
#consuntivoOre(
  preventivo: (
    (1, 4, 1, 11, 13, 14),
    (2, 3, 0, 7, 3.5, 15),
    (6, 3, 0, 13, 18, 7),
    (5, 0.5, 0, 16, 23, 9),
    (3, 0, 1.5, 13, 16, 10),
    (5, 1.5, 0, 7, 9, 8),
    (0, 0, 0, 16, 14, 11.5),
  ),
  consuntivo: (
    (1, 4, 1, 10, 13, 14),
    (2, 3, 0, 7, 3.5, 15),
    (5, 3, 0, 13, 19, 7),
    (4, 0, 0, 16, 23, 9),
    (3, 0, 1.5, 13, 16, 10),
    (5, 1.5, 0, 7, 9, 8),
    (0, 0, 0, 16, 14, 11.5),
  ),
  tabCaption: [Consuntivo delle ore nell'ottavo _sprint_ per membro e per ruolo],
  costTabCaption: [Costi sostenuti nell'ottavo _sprint_],
  chartCaption: [Grafico percentuale dell'allocazione delle ore per ruolo nell'ottavo _sprint_],
)

#pagebreak()

==== Risorse rimanenti e preventivo a finire
#align(
  center,
  [
    #table(
      columns: (auto, auto, auto, auto),
      align: center,
      table.header([*Ruolo*], [*Ore rimanenti*], [*_Budget_ rimanente*], [*Risorse consumate*]),
      [Responsabile], [2], [60 €], [96.43 %],
      [Amministratore], [0.5], [10 €], [99.11 %],
      [Analista], [0.5], [12.5 €], [99.40 %],
      [Progettista], [1], [25 €], [99.25 %],
      [Programmatore], [2], [30 €], [98.76 %],
      [Verificatore], [0], [0 €], [100 %],
    )
  ],
)
Il preventivo a finire si attesta a fine progetto a *12.602,50€*, a fronte del preventivo iniziale di 12.740,00€ rientrando quindi nel _budget_.

==== Tabella finale ore rimanenti per membro
Il gruppo è riuscito a rispettare l'impegno preso in fase di candidatura, visionabile nel documento #formatLink(label:"dichiarazione impegni e preventivo costi (v1.1.0)", url: "https://sweatunipd.github.io/docs/candidatura/dichiarazione_impegni_e_preventivo_costi_ver1.1.0.pdf"), di dedicare ognuno un massimo di 90 ore produttive al progetto. È stata rispettata anche la ripartizione dei ruoli in parti uguali tra tutti i membri del gruppo.

#rendicontazioneOre(
  (
    (0, 0, 0, 1, 0, 0),
    (0, 0, 0, 0, 0, 0),
    (1, 0, 0, 0, 1, 0),
    (1, 0.5, 0, 0, 0, 0),
    (0, 0, 0.5, 0, 1, 0),
    (0, 0, 0, 0, 0, 0),
    (0, 0, 0, 0, 0, 0),
  ),
  caption: [Tabella finale ore rimanenti di ogni membro per ogni ruolo],
)


==== Retrospettiva
L'ottavo ed ultimo _sprint_ ha visto il gruppo completare tutte le attività previste e sostenere il colloquio finale con l'azienda. Il _team_, libero da impegni universitari, è riuscito a lavorare con grande efficienza e coordinazione, riuscendo a completare tutte le attività pianificate, rendendo il _software_ e la relativa documentazione pronti per la revisione PB.

Un imprevisto che ha portato al ritardo della consegna è stata l'indisponibilità del professor Cardin nel fissare il colloquio nel periodo inizialmente previsto dal gruppo, ovvero nella settimana del 24 marzo. La revisione PB è stata quindi posticipata a lunedì 31. Con una settimana in più a disposizione il gruppo ha deciso di rivedere la logistica delle attività rimaste, allungando la durata dello _sprint_, rimanendo sempre nei limiti del _budget_. Avendo infatti pianificato il termine del progetto per venerdì 21 marzo erano avanzate alcune risorse che sono state sfruttate per completare con più calma e rigore i documenti e soddisfare la maggior parte dei requisiti facoltativi.

===== Cosa ha funzionato
Il gruppo è riuscito a seguire il proprio _#rifGlossario("way of working")_ fino alla fine del progetto, riuscendo a lavorare sempre in modo efficace ed efficiente. La quasi totalità delle attività è stata portata a termine in modo asincrono anche quando più persone lavoravano sugli stessi documenti.

L'incontro con l'azienda è stato utile al gruppo per capire gli ultimi aggiustamenti da apportare, specie riguardo la presentazione del prodotto. La proponente si è mostrata soddisfatta del risultato del _software_ elogiando in particolar modo la reattività che il gruppo ha avuto in seguito ad alcuni imprevisti, primo fra tutti il cambio di tecnologia del _backend_.

===== Cosa non ha funzionato
Per la mancata disponibilità del professor Cardin il gruppo ha dovuto posticipare di una settimana la consegna e di conseguenza rivedere la pianificazione dello _sprint_.
Nonostante l'imprevisto il gruppo è riuscito a sfruttare l'opportunità di avere una settimana in più per portare a termine alcune attività in maniera più tranquilla e organizzata.


===== Cosa fare per migliorare
Il gruppo avrebbe potuto accertarsi prima della disponibilità del professor Cardin per il colloquio finale, in modo da evitare di dover rivedere la pianificazione in seguito.
Questo però avrebbe voluto dire richiedere il colloquio al professore all'inizio dello _sprint_ e non quando il gruppo si sarebbe sentito pronto.

===== Rischi riscontrati
Nel corso dell'ottavo _sprint_ si sono riscontrati i seguenti rishi:
- #link(<RO-5>)[RO-5]: l'indisponibilità del professor Cardin ha fatto slittare la consegna di una settimana, costringendo il gruppo a rivedere la pianificazione.
- #link(<RT-1>)[RT-1]: tutti i membri del gruppo stanno iniziando a prendere confidenza con le tecnologie utilizzate ma con le quali non hanno ancora raggiunto una padronanza completa.

===== Attività future
Il gruppo auspica di sostenere positivamente i colloqui PB in modo da concludere il progetto ed iniziare le attività di _stage_ il prima possibile.
