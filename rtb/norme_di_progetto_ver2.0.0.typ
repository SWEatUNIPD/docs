#import "/templates/template.typ": *
#import "@preview/treet:0.1.1": *

#show: content => verbale(
  data: "14 Novembre 2024",
  destinatari: ("Gruppo SWE@",),
  responsabile: "Riccardo Milan",
  redattori: ("Klaudio Merja", "Andrea Precoma", "Davide Picello"),
  verificatori: ("Andrea Precoma", "Davide Marin"),
  titolo: "Norme di progetto",
  uso: "Interno",
  versioni: (

  "2.0.0", "23/11/2024", 
  [ 
    Andrea Precoma\ Davide Picello
  ], "Davide Marin",
  [
    *Precoma:*
    - Struttura della sezione "Processi di supporto"
    - Stesura dei principali paragrafi
    
    *Picello:*
    - Scrittura del capitolo "Processi primari"
  ],

  "1.0.0", 
  "14/11/2024", 
  "Klaudio Merja", 
  "Andrea Precoma",
  [- Struttura e introduzione del documento]
  ),
  content: content,
)

//TODO: I vari processi (primari, di supporto e organizzativi) sono presenti nell'ISO/IEC 12207:1995 (T02 slide n. 12) -> introdurre come prossimo aggiornamento del documento quando andranno descritte

= Introduzione
== Scopo del documento
Lo scopo principale del documento `Norme di Progetto` è quello di documentare il #underline[Way of Working#rifGlossario] che deve essere adottato dai membri del gruppo per garantire la coerenza nel lavoro svolto.

Il documento adotta un approccio di tipo incrementale, ovvero è frutto di una serie di fasi di modifica che avvengono durante il suo ciclo di vita. È quindi soggetto durante lo svolgimento del progetto didattico a continui aggiornamenti, a seguito delle decisioni prese dal gruppo, volti a migliorare il Way of Working stesso. I membri del gruppo sono quindi tenuti a prendere visione del documento ogni qual volta esso sia oggetto di modifiche.

== Scopo del progetto didattico
Lo scopo principale del progetto _NearYou - Smart custom advertising platform_ proposto dall'azienda Sync Lab S.r.l. è quello di sviluppare un prodotto che sfrutti la #underline[GenAI#rifGlossario] per la creazione di pubblicità mirate sui singoli utenti, sfruttando come #underline[prompt#rifGlossario] dati come la posizione in tempo reale, le informazioni personali e i dati di profilazione degli utenti stessi.


L'obiettivo del prodotto è quello di rendere le campagne pubblicitarie delle aziende interessate il più personalizzate e ottimizzate possibili ed aumentare il coinvolgimento dell'utente finale, con lo scopo di ridurre la disconnessione tra messaggio e destinatario e portare un miglioramento sul #underline[ROI#rifGlossario] della campagna stessa.

== Glossario
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo, viene fornito un glossario.

La prima occorrenza di un termine definito all'interno del glossario presente all'interno di un documento viene sottolineato e seguito dalla lettera g posta ad apice (e.g. #underline[termine#rifGlossario]).

== Riferimenti
=== Riferimenti normativi
- Regolamento del progetto didattico\ #text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]]]
=== Riferimenti informativi
- Capitolato C4 (Sync Lab)\ #text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf]]]

#pagebreak()
= Processi primari
Lo standard ISO/IEC 12207:1995, riferimento internazionale per i processi del ciclo di vita del software, definisce come processi primari le attività di: acquisizione, fornitura, sviluppo, gestione operativa e di manutenzione.

Tuttavia, data la natura didattica del progetto, saremo tenuti ad occuparci solo delle parti di fornitura e sviluppo.

== Fornitura
Il processo di fornitura contiene le attività e i compiti del fornitore, il quale dovrà accordarsi con il proponente per stabilire ufficialmente, tramite un contratto, i vari vincoli e requisiti del progetto. Successivamente si procede con la relazione del documento Piano di progetto, il quale avrà il compito di pianificare e monitorare le attività da svolgere, nel tempo.

Le attività che compongono questo processo sono:
- Iniziazione
- Preparazione della risposta
- Contratto
- Pianificazione
- Esecuzione e Controllo
- Revisione e valutazione
- Consegna e completamento

=== Comunicazioni con il proponente
L'azienda si è resa raggiungibile, per via testuale, tramite e-mail, per le comunicazioni ufficiali, e tramite la piattaforma di messaggistica istantanea Discord per le comunicazioni più veloci. È stato deciso, inoltre, di utilizzare l'applicazione di teleconferenza Google meet per le riunioni in cui è prevista la presenza di tutto il gruppo. L'azienda, comunque, si è resa disponibile anche ad accoglierci nei loro uffici.

Per ogni incontro, verrà redatto un verbale riguardante le discussioni e decisioni avvenute nello stesso. Questi verbali, dopo essere stati approvati e firmati dall'azienda, saranno disponibili presso la repository GitHub del gruppo, nella sezione Verbali esterni.

==== SAL
È stato anche concordato un incontro settimanale di 45 minuti, tendenzialmente il mercoledì pomeriggio, riguardo allo Stato di Avanzamento dei Lavori (SAL) in cui il gruppo esporrà i progressi, ed i dubbi, dell'ultima settimana di lavoro, confrontandosi con il proponente e delineando le attività da svolgere nella settimana a venire.

==== Sessioni deep dive
Il proponente si è anche reso disponibile per organizzare delle sessioni di #underline[deep dive]#rifGlossario per approfondire l'utilizzo di alcune tecnologie che potrebbero rivelarsi particolarmente ostiche, in quanto, nuove per il gruppo e, per loro natura, non semplici da imparare.

Queste verranno fissate a bisogno e non, quindi, a cadenza regolare.


=== Documentazione fornita
Di seguito l'elenco dei documenti che il gruppo consegnerà all'azienda proponente, Sync Lab, ed ai committenti Prof. Tullio Vardanega e Prof. Riccardo Cardin

==== Analisi dei requisiti
L'analisi dei requisiti è un documento redatto dagli Analisti che definisce le funzionalità necessarie per soddisfare le richieste del proponente.

//Ancora da scrivere

==== Piano di progetto
Il Piano di progetto è un documento il cui scopo è quello di definire in modo dettagliato l'organizzazione, le attività, le risorse, i tempi e i criteri necessari per completare con successo il progetto. 

Viene redatto e aggiornato dal responsabile, con il supporto degli amministratori, durante l'intera durata del progetto.

/*
  Dovrebbe contenere le seguenti informazioni/sessioni:
  - Analisi dei risci
  - Modello di sviluppo
  - Pianificazione
  - Preventivo
  - Consuntivo
*/

==== Piano di Qualifica
Il Piano di Qualifica è un documento formale che definisce le strategie, le attività e gli approcci necessari per garantire la qualità del prodotto software, durante tutto il ciclo di vita del progetto. 

Redatto tipicamente dal verificatore o dall'amministratore, descrive le modalità di verifica e validazione, gli standard adottati e le procedure di qualità da seguire. 

Il suo scopo principale è assicurare che il prodotto finale sia conforme alle specifiche richieste e alle aspettative del committente, monitorando il progresso rispetto agli obiettivi prefissati. Ogni membro del team coinvolto nello sviluppo farà riferimento a questo documento per mantenere e garantire i livelli di qualità stabiliti.

/*
  Dovrebbe contenere le seguenti informazioni/sessioni:
  - Qualità di processo
  - Qualità di prodotto
  - Test
  - Cruscotto delle metriche/ Valutazioni per il miglioramento
*/

==== Glossario
Il Glossario è un documento di supporto che raccoglie i termini tecnici e specifici utilizzati all’interno del progetto, fornendone definizioni chiare e univoche. È destinato a tutti gli stakeholder, compresi i membri del team, i committenti e l’azienda proponente, con l’obiettivo di prevenire ambiguità e incomprensioni, garantendo una comprensione condivisa della terminologia. Questo strumento è fondamentale per migliorare la coerenza e la qualità della documentazione prodotta.  

==== Lettera di presentazione
La Lettera di Presentazione è un documento formale attraverso il quale il gruppo esprime la propria intenzione di partecipare alla fase di revisione del progetto. Include la documentazione prodotta dal gruppo e, se necessario, un aggiornamento sui costi e sulle tempistiche. 

La lettera sottolinea l’impegno del team nel rispettare le scadenze e le aspettative fissate.


=== Strumenti
Gli strumenti adottati per il processo di fornitura sono i seguenti:

==== Discord
Piattaforma di messaggistica in tempo reale che consente chat testuali, vocali e video. 

Il gruppo la utilizza per comunicare internamente, tramite delle chiamate, e per interagire velocemente con l'azienda tramite il loro server dedicato.

==== Telegram
App di messaggistica istantanea utilizzata per comunicazioni rapide e brevi all'interno del gruppo.

==== Fogli di Google (Google Sheets)
Applicazione online per la creazione e la gestione di fogli di calcolo. Il gruppo la utilizza per tenere traccia in modo informale delle ore lavorate settimanalmente, che saranno successivamente riportate nel documento ufficiale Piano di Progetto.

==== GitHub
Piattaforma per il controllo di versione e la collaborazione su progetti software. Il gruppo la utilizza come repository per codice e documenti, ma anche per monitorare le attività del progetto, assegnarle ai membri e seguirne lo stato di avanzamento.

==== Typst
Un nuovo sistema di impaginazione basato su markup, progettato per essere potente quanto LaTeX ma molto più facile da imparare e utilizzare.

#pagebreak()
== Sviluppo
Sempre secondo lo standard ISO/IEC 12207:1995: lo scopo del processo di sviluppo è di descrivere le attività e i compiti necessari per creare e mantenere un sistema software, garantendo che il prodotto finale soddisfi i requisiti specificati nel contratto.

Il processo di sviluppo è composto dalle seguenti attività:

=== Implementazione del processo
Nella fase di implementazione, il fornitore deve stabilire o selezionare un modello di ciclo di vita appropriato per il progetto. Le attività di sviluppo e i compiti associati vengono mappati su tale modello, considerando che possono essere eseguiti in modo iterativo o ricorsivo. Il fornitore documenta i risultati secondo il processo di documentazione, ne gestisce le modifiche con un sistema di configurazione e risolve eventuali problemi di conformità. Devono essere selezionati strumenti, metodi e linguaggi di programmazione adeguati, e vengono pianificate le azioni necessarie per rispettare gli standard di qualità, sicurezza e conformità. Tutto questo è accompagnato dalla creazione di piani documentati e implementabili.

=== Analisi dei requisiti di sistema
In questa fase, si analizzano le esigenze specifiche del sistema da sviluppare, documentando i requisiti funzionali, di sicurezza, di manutenzione, ergonomici e di interfaccia. Tali requisiti vengono valutati rispetto alla loro tracciabilità, consistenza con le esigenze iniziali, testabilità e fattibilità tecnica. Il risultato è una specifica dettagliata dei requisiti del sistema.

=== Progettazione architetturale del sistema
Il sistema viene suddiviso in elementi hardware, software e operazioni manuali, con l’allocazione dei requisiti a ciascun elemento. L’architettura risultante rappresenta un progetto di alto livello che assicura la tracciabilità rispetto ai requisiti e la fattibilità operativa. La documentazione prodotta include la descrizione dell’architettura del sistema e l’assegnazione dei requisiti ai vari componenti.

=== Analisi dei requisiti software
Per ogni componente software individuato, vengono stabiliti e documentati i requisiti dettagliati, tra cui specifiche funzionali, di sicurezza, di ergonomia e requisiti per il database. Tali requisiti sono valutati per verificarne tracciabilità, coerenza interna ed esterna, testabilità e fattibilità progettuale. La fase si conclude con una revisione congiunta per stabilire una baseline di requisiti approvati.

=== Progettazione architetturale del software
I requisiti software vengono trasformati in un’architettura che descrive la struttura generale del software e identifica i componenti principali. Si definiscono e documentano le interfacce e le prime versioni della documentazione utente, oltre ai requisiti di test preliminari per l’integrazione. La valutazione di questa fase si concentra sulla tracciabilità rispetto ai requisiti, sulla coerenza interna e sull’adeguatezza dei metodi di progettazione utilizzati.

=== Progettazione dettagliata del software
Si sviluppano progetti dettagliati per ogni componente software, che vengono suddivisi in unità più piccole, codificabili e testabili. La documentazione comprende dettagli delle interfacce, del database e requisiti specifici per il testing. Anche in questa fase, la progettazione è sottoposta a valutazioni che ne verificano tracciabilità, coerenza interna, testabilità e conformità agli standard di progettazione.

=== Codifica e testing del software
I componenti software vengono codificati e testati per garantire che soddisfino i requisiti definiti. I risultati dei test vengono documentati e la documentazione utente viene aggiornata. Questa fase include anche la preparazione dei requisiti di test per l’integrazione software e una revisione dell’adeguatezza del codice e dei risultati dei test.

=== Integrazione del software
Le unità e i componenti software sono integrate per formare un unico elemento software. Durante l’integrazione, vengono eseguiti test per verificare che ciascun aggregato soddisfi i requisiti. Si sviluppano piani di test e procedure per la qualifica del software integrato. L’integrazione è valutata considerando la tracciabilità, la coerenza e la copertura dei requisiti.

=== Test di qualifica del software
Il software integrato viene sottoposto a test di qualifica per verificarne la conformità ai requisiti. I risultati di questi test vengono documentati. A seguito del completamento con successo, il software è pronto per le fasi successive, come l’integrazione di sistema o l’installazione.

=== Integrazione del sistema
Il software viene integrato con componenti hardware, operazioni manuali e altri sistemi, se richiesto. Vengono condotti test sugli aggregati del sistema per verificarne la conformità ai requisiti. La documentazione prodotta include i risultati dell’integrazione e i test effettuati.

=== Test di qualifica del sistema
L’intero sistema viene testato per verificare la conformità alle specifiche contrattuali e la prontezza per la consegna. I risultati sono documentati e valutati per garantire la copertura dei requisiti e la fattibilità operativa.

=== Installazione del software
Si sviluppa e implementa un piano per l’installazione del software nell’ambiente di destinazione. Si verifica che il software funzioni come previsto e si supportano attività di transizione, se necessario. Gli eventi e i risultati dell’installazione sono documentati.

=== Supporto all'accettazione del software
Il fornitore supporta il cliente nella revisione e nei test di accettazione del software, che comprendono la valutazione di tutti i risultati ottenuti nelle fasi precedenti. Viene completata la consegna del prodotto software e fornite eventuali attività di formazione e supporto iniziale.


#pagebreak()
= Processi di supporto



#pagebreak()
= Processi organizzativi

//FIXME: Mancano ovviamente gli standard di qualità del prodotto che devono essere ancora spiegati, quindi al momento non sono inseriti