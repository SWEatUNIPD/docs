#import "/templates/template.typ": *

#show: content => verbale(
  data: "25 Novembre 2024",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.l.", "Gruppo SWE@"),
  responsabile: "Andrea Perozzo",
  redattori: ("Klaudio Merja",),
  verificatori: ("Davide Marin",),
  titolo: "Norme di progetto",
  uso: "Esterno",
  versioni: ("1.0", "27/11/2024", "Klaudio Merja", "Davide Marin", "Struttura e introduzione del documento"),
  content: content,
)

= Introduzione
== Scopo del documento
Lo scopo del documento Piano di progetto /*FIXME: evidenziare (?)*/ è quello di definire e pianificare le attività necessarie allo svolgimento
del progetto e l'allocazione delle risorse all'interno del progetto stesso, come ruoli e ore per ciascun componente del
gruppo.

In particolare vengono approfonditi aspetti come:
- Analisi dei rischi
- Modello di sviluppo
- Pianificazione delle attività

== Scopo del prodotto
L'obiettivo principale che si pone il prodotto commissionato al nostro gruppo è quello di fornire un sistema, installato
su prodotti/servizi come il bike-sharing, che sfrutta le informazioni e gli interessi personali degli utenti come #rifGlossario("prompt") per
la generazioni di inserzioni personalizzate, a seconda di dove l'utente si trovi nel determinato istante, con lo scopo
finale di massimizzare le interazioni tra utenti e inserzioni per massimizzare il #rifGlossario("ROI") e l'efficacia
delle campagne pubblicitarie.

== Glossario
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo,
viene fornito un glossario.

La prima occorrenza di un termine definito all'interno del glossario presente all'interno di un documento viene
sottolineato e seguito dalla lettera g posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti
=== Riferimenti normativi
- `Norme di progetto` //FIXME: vogliamo inserire il link? (Bisogna ricordarsi aggiornarlo ogni volta. Di fatto molti non sembrano inserirlo)
- Regolamento del progetto didattico\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")
=== Riferimenti informativi
- Lezione T03 - Il ciclo di vita del softare\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T03.pdf")
- Lezione T04 - Gestione di progetto\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")
#pagebreak()

= Analisi dei rischi
Lo scopo principale dell'Analisi dei rischi è quello di individuare le possibili difficoltà o problemi che il gruppo, sia nella sua interezza che a livello individuale, può incontrare con una certa probabilità, causando rallentamenti che possono avere un impatto negativo più o meno rilevante all'interno del progetto

Ogni rischio riportato successivamente è caratterizzato da:
- *ID rischio*: identificativo univoco del rischio;
- *Descrizione*: descrive brevemente le cause e gli effetti del rischio in questione all'interno della probabilità;
- *Probabilità*: indica la probabilità che il rischio si verifichi all'interno di un progetto, sia essa bassa, media o alta;
- *Impatto negativo*: quantifica l'impatto negativo che il rischio può avere all'interno del progetto, sia esso basso, medio o alto;
- *Piano di contingenza*: descrive i processi che il gruppo può o deve attuare al fine di mitigare i danni causati dal rischio.

Ogni ID rischio segue la seguente convenzione per quanto riguarda la loro struttura
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
  descrizione: [A causa di impegni personali dei membri del gruppo o per impossibilità dell'azienda proponente, può risultare difficile
    fissare una riunione circa lo stato di avanzamento dei lavori (o #rifGlossario("SAL")), ritardando così il #rifGlossario("feedback") su quanto svolto dal
    gruppo.], //TODO: aggiungere feedback al glossario
  probabilità: [Bassa],
  impatto: [Medio],
  piano: [È possibile chiedere un giorno fisso all'azienda in cui svolgere le riunioni di SAL, in modo da evitare eventuali
    indisponibilità nel lungo periodo.],
)
=== Sovrastima della durata delle attività
#tabellaRischio(
  ID: [RO-2],
  descrizione: [Data l'inesperienza del gruppo, specie ad inizio progetto, è possibile che alcune attività possano essere sottostimate in termini di tempo. Ciò porta ad un termine anticipato dell'attività stessa rispetto a quanto preventivato in precedenza],
  probabilità: [Alta],
  impatto: [Basso],
  piano: [Nonostante il rischio abbia probabilità elevata, si ritiene l'impatto negativo del rischio sia basso, se non nullo, in quanto il gruppo può allocare la risorsa in un'altra attività al fine di liberare il prima possibile gli item del backlog che si trovano in "TO-DO".],
)

=== Sottostima della durata delle attività
#tabellaRischio(
  ID: [RO-3],
  descrizione: [Come specificato nel rischio *RO-2*, a causa dell'inesperienza del gruppo è possibile che alcune attività vengano sottostimate in termini di tempo, portando così a rallentamenti l'iterazione in corso.],
  probabilità: [Alta],
  impatto: [Alto],
  piano: [Il rischio è inevitabile, ma può essere mitigato tramite l'allocazione di risorse disponibili a supporto di quelle già allocate per accelerare lo svolgimento dell'attività],
)
== Rischi tecnologici
=== Inesperienza
#tabellaRischio(
  ID: [RT-1],
  descrizione: "A causa dell'elevato numero di tecnologie richieste dal progetto, alcuni membri del gruppo potrebbero non avere le competenze necessarie, dovendo quindi investire tempo per apprendere le stesse, portando quindi ad una riduzione del tempo produttivo nel corso del progetto, che si traduce a sua volta in ritardi.",
  probabilità: [Alta],
  impatto: [Alto],
  piano: "Il rischio non può essere evitato, ma può essere mitigato/limitato/marginato tramite il confronto con i membri più esperti del gruppo oppure tramite delle sessioni di deep dive tecnologico che l'azienda proponente fornisce al gruppo.",
)

#pagebreak()
//TODO: sprint, backlog in glossario
= Modello di sviluppo
Il modello di sviluppo adottato dal gruppo è il modello SCRUM che, a differenza dei modelli di sviluppo più rigidi come il modello a cascata, caratterizzato da stretta sequenzialità delle fasi del ciclo di vita del software senza possibilità di parallelismo, impossibilità di modifica dei requisiti in corso d'opera, permette flessibilità maggiore grazie alla sua natura iterativa e incrementale.

Esso permette di suddividire il progetto in iterazioni, anche chiamati _#rifGlossario("sprint")_, in cui vengono svolte determinate attività prefissate a partire da un _#rifGlossario("backlog")_. Alla fine di ogni sprint viene prodotto quello che viene definito incremento del software, che viene reso disponbile al cliente, garantendo così un feedback circa l'avanzamento dei lavori. Questo permette di adattare il prodotto finale secondo le esigenze del proponente grazie alla possibilità di modifica dell'Analisi dei requisiti in corso d'opera.

Il gruppo
#pagebreak()

= Pianificazione
//FIXME: AGILE è una metodologia (insieme di regole che delineano successivamente lo SCRUM: ecco perché esiste anche l'Agile manifesto) -> SCRUM è il modello (da cui poi viene preso il concetto di SPRINT) -> Però lo SCRUM prevede dai daily meeting che non avvengono mai
Come frutto della scelta del modello SCRUM, la pianificazione delle attività da svolgere all'interno del progetto sono suddivise in degli *sprint*, ovvero delle iterazioni della durata di due settimana ciascuna, in cui vengono pianificate le attività da svolgere per raggiungere gli obiettivi prefissati.

Alla fine di ogni sprint, viene svolto una riunione con l'azienda proponente, in cui si analizza quanto prodotto durante l'iterazione, si effettua una retrospettiva su quanto avvenuto, analizzando difficoltà e problemi riscontrati, e si pianifica il lavoro da svolgere e gli obiettivi da raggiungere per la seguente iterazione.

A metà di ogni iterazione, l'azienda si rende disponibile al gruppo per eventuali chiarimenti o dubbi che possono venire a galla durante lo svolgimento dell'attività da parte dei membri del gruppo.

Ogni iterazione è caratterizzata da:
- *Inizio*: data in cui ha inizio un determinato sprint;
- *Fine*: data in cui termina lo sprint;
- *Obiettivi dello sprint*: attività che il gruppo si impone di raggiungere durante la durata dello sprint al fine di raggiungere determinati obiettivi;
- *Preventivo orario*: stima delle ore che ciascun membro deve dedicare nelle vesti di un determinato ruolo al fine di concludere le attività;
- *Consuntivo orario e di spesa*: ore produttive dedicate da parte di ogni membro nei vari ruoli ricoperti durante l'iterazione al fine di concludere le attività previste e breve schema /*TODO: Aggiungere recap a glossario*/ su quanto speso durante l'iterazione;
- *Retrospettiva*: analisi svolta alla fine di ogni sprint, con lo scopo di evidenziare ciò che ha funzionato e ciò che non ha funzionato durante l'iterazione, sottolineando i vari problemi e difficoltà riscontrati che hanno causato rallentamenti, con il fine di migliorare le prossime iterazioni a venire.

Il gruppo si pone come milestone del progetto le due consegne previste dai committenti, nonché i Prof.ssori Tullio Vardanega e Riccardo Cardin, ovvero:
- *RTB* con data di consegna xx/01/2025
- *PB* con data di consegna 21/03/2025

I sprint vengono quindi divisi nelle due milestone precedentemente elencate, per garantire una seperazione netta degli stessi e delle attività che ne comportano. //TODO:
== RTB
=== Sprint 1
- Inizio: 13/11/2024
- Fine: 27/11/2024

==== Obiettivi dello sprint

==== Preventivo orario
#rendicontazioneOre((
  (0, 0, 0, 0, 0, 0),
  (0, 4, 0, 0, 0, 0),
  (0, 0, 0, 0, 0, 0),
  (0, 0, 0, 0, 0, 0),
  (0, 0, 0, 0, 0, 0),
  (0, 3, 0, 0, 1, 0),
  (0, 0, 5, 0, 0, 0),
))
==== Consuntivo orario e di spesa
#consuntivoOre((
  (0, 0, 0, 0, 0, 0),
  (0, 4, 0, 0, 0, 0),
  (0, 0, 0, 0, 0, 0),
  (0, 0, 0, 0, 0, 0),
  (0, 0, 0, 0, 0, 0),
  (0, 3, 0, 0, 1, 0),
  (0, 0, 5, 0, 0, 0),
))

==== Retrospettiva
//TODO: Aggiungere retrospettiva (Merja)