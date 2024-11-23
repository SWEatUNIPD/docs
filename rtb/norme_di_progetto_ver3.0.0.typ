#import "/templates/template.typ": *
#import "@preview/treet:0.1.1": *

#show: content => verbale(
  data: "14 Novembre 2024",
  destinatari: ("Gruppo SWE@",),
  responsabile: "Riccardo Milan",
  redattori: ("Klaudio Merja",),
  verificatori: ("Andrea Precoma",),
  titolo: "Norme di progetto",
  uso: "Interno",
  versioni: (

  "3.0.0", 
  "23/11/2024", 
  "Picello Davide", 
  "Marin Davide",
  [- Prima scrittura del capitolo "Processi primari"],

  "2.0.0", "20/11/2024", "Andrea Precoma", "Davide Marin",
  [
    - Struttura della sezione "Processi di supporto"
    - Stesura dei principali paragrafi
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
Lo standard _ISO/IEC 12207:1995_, riferimento internazionale per i processi del ciclo di vita del software, definisce come processi primari le attività di: acquisizione, fornitura, sviluppo, gestione operativa e di manutenzione.

Tuttavia, data la natura didattica del progetto, saremo tenuti ad occuparci solo delle parti di fornitura e sviluppo.

== Fornitura
Il processo di fornitura contiene le attività e i compiti del fornitore, il quale dovrà accordarsi con il proponente per stabilire ufficialmente, tramite un contratto, i vari vincoli e requisiti del progetto. Successivamente si procede con la relazione del documento _Piano di progetto_, il quale avrà il compito di pianificare e monitorare le attività da svolgere, nel tempo.

Le attività che compongono questo processo sono:
- Iniziazione
- Preparazione della risposta
- Contratto
- Pianificazione
- Esecuzione e Controllo
- Revisione e valutazione
- Consegna e completamento

=== Comunicazioni con il proponente
L'azienda si è resa raggiungibile, per via testuale, tramite e-mail, per le comunicazioni ufficiali, e tramite la piattaforma di messaggistica istantanea _Discord_ per le comunicazioni più veloci. È stato deciso, inoltre, di utilizzare l'applicazione di teleconferenza _Google meet_ per le riunioni in cui è prevista la presenza di tutto il gruppo. L'azienda, comunque, si è resa disponibile anche ad accoglierci nei loro uffici.

Per ogni incontro, verrà redatto un verbale riguardante le discussioni e decisioni avvenute nello stesso. Questi verbali, dopo essere stati approvati e firmati dall'azienda, saranno disponibili presso la _repository_ _GitHub_ del gruppo, nella sezione "Verbali esterni".

==== SAL
È stato anche concordato un incontro settimanale di 45 minuti, tendenzialmente il mercoledì pomeriggio, riguardo allo Stato di Avanzamento dei Lavori (_SAL_) in cui il gruppo esporrà i progressi, ed i dubbi, dell'ultima settimana di lavoro, confrontandosi con il proponente e delineando le attività da svolgere nella settimana a venire.

==== Sessioni deep dive
Il proponente si è anche reso disponibile per organizzare delle sessioni di #underline[_deep dive_]#rifGlossario per approfondire l'utilizzo di alcune tecnologie che potrebbero rivelarsi particolarmente ostiche, in quanto, nuove per il gruppo e, per loro natura, non semplici da imparare.

Queste verranno fissate a bisogno e non, quindi, a cadenza regolare.


=== Documentazione fornita
Di seguito l'elenco dei documenti che il gruppo consegnerà all'azienda proponente, _Sync Lab_, ed ai committenti _Prof. Tullio Vardanega_ e _Prof. Riccardo Cardin_

==== Analisi dei requisiti
L'_analisi dei requisiti_ è un documento redatto dagli Analisti che definisce le funzionalità necessarie per soddisfare le richieste del proponente.

//Ancora da scrivere

==== Piano di progetto
Il _Piano di progetto_ è un documento il cui scopo è quello di definire in modo dettagliato l'organizzazione, le attività, le risorse, i tempi e i criteri necessari per completare con successo il progetto. 

Viene redatto e aggiornato dal Responsabile, con il supporto degli Amministratori, durante l'intera durata del progetto.

/*
  Dovrebbe contenere le seguenti informazioni/sessioni:
  - Analisi dei risci
  - Modello di sviluppo
  - Pianificazione
  - Preventivo
  - Consuntivo
*/

==== Piano di Qualifica
Il _Piano di Qualifica_ è un documento formale che definisce le strategie, le attività e gli approcci necessari per garantire la qualità del prodotto software, durante tutto il ciclo di vita del progetto. 

Redatto tipicamente dal Verificatore o dall'Amministratore, descrive le modalità di verifica e validazione, gli standard adottati e le procedure di qualità da seguire. 

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
Applicazione online per la creazione e la gestione di fogli di calcolo. Il gruppo la utilizza per tenere traccia in modo informale delle ore lavorate settimanalmente, che saranno successivamente riportate nel documento ufficiale "Piano di Progetto".

==== GitHub
Piattaforma per il controllo di versione e la collaborazione su progetti software. Il gruppo la utilizza come _repository_ per codice e documenti, ma anche per monitorare le attività del progetto, assegnarle ai membri e seguirne lo stato di avanzamento.

==== Typst
Un nuovo sistema di impaginazione basato su markup, progettato per essere potente quanto LaTeX ma molto più facile da imparare e utilizzare.

#pagebreak()
== Sviluppo
Sempre secondo lo standard _ISO/IEC 12207:1995_: lo scopo del processo di sviluppo è di descrivere le attività e i compiti necessari per creare e mantenere un sistema software, garantendo che il prodotto finale soddisfi i requisiti specificati nel contratto.

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

== Documentazione
Il processo di documentazione è necessario per il tracciamento di tutte le attività relative al progetto, sia dal lato software che dal lato organizzativo. Tutti i membri del gruppo si impegnano a rispettare le norme delineate nel capitolo corrente per la stesura di ogni documento.

=== Preparazione dell'ambiente
==== Tracciamento
Alla fine di ogni riunione si aggiorna il backlog con le nuove issue (corrispondenti alle decisioni prese durante la riunione). Esse devono specificare in modo esaustivo il compito da svolgere nel titolo, arricchite da una breve descrizione, i verificatori incaricati di visionare il lavoro e dal verbale nel quale è scaturita quella decisione in modo che in futuro sia sempre tracciabile il motivo dell'inserimento di quella issue. Devono inoltre essere collegate alla board (corrispondente al backlog), ad una milestone e ad un assegnatario. Una volta create si deve generare, sempre da interfaccia web, il branch temporaneo nel quale si andrà a lavorare.

==== Lavoro sul documento
Per lavorare su un documento bisogna attenersi ai seguenti passaggi:
+ Posizionarsi sulla cartella della repository nella macchina locale e scaricare le eventuali modifiche in tutti i branch locali eliminando gli eventuali rami che in remoto sono stati eliminati. Se si vuole sincronizzare solo il ramo corrente si deve omettere il flag *`--all`*. \
	*`git pull -p --all`*
+ Posizionarsi sulla branch collegata alla issue. \
	*`git checkout [nome_branch]`*
+ Caricare le modifiche effettuate nella repository remota. \
	*`git add .`* \
	*`git commit -m \"[commento del commit]\"`* \
	*`git push`* \
+ Dall'interfaccia web bisogna spostarsi nella sezione *pull request* e crearne una nuova assicurandosi di assegnare il verificatore.
+ In caso il verificatore richieda delle correzioni è sufficiente ripetere i passaggi citati senza questa volta creare una nuova pull request perché è già esistente. Si ricorda che si può evitare di scaricare le modifiche su tutti i branch e che se si è già posizionati sul ramo corretto si può evitare il comando *`git checkout [nome_branch]`*.

=== Ciclo di vita
Il ciclo di vita di un documento è composto da 6 fasi:
+ *Creazione e adattamento al template*: Dopo aver impostato l'ambiente nel modo corretto si può creare il file .typ seguendo le norme di nomenclatura e assegnando la versione 1.0.0. Si importa il file template.typ nella cartella templates e si compilano i campi delle funzioni in base al documento che si sta redigendo.
+ *Pianificazione dei paragrafi*: Oltre ai paragrafi dettati dal tipo di documento come specificato dalle norme, si devono aggiungere dei paragrafi che raggruppino gli argomenti trattati. 
+ *Stesura del documento*: Il redattore deve stilare il documento seguendo le norme concordate dal gruppo. In caso fosse indeciso su alcuni punti è libero di contattare altri membri del gruppo in modo da scrivere un contenuto il più corretto possibile.
+ *Revisione*: Una volta caricato correttamente il documento viene notificato automaticamente il verificatore il quale deve assicurarsi che non vi siano errori.
+ *Approvazione*: Il documento è approvato dal verificatore e viene contattato il responsabile che deve confermare la pubblicazione nel branch principale.
+ *Modifiche*: Conseguentemente all'approvazione è possibile dover apportare alcuni accorgimenti. In questo caso si ripetono le operazioni incrementando la versione in conformità con il versionamento adottato.

=== Struttura dei documenti
Ogni documento prodotto è costituito dalle seguenti sezioni.

==== Intestazione
- *Logo del gruppo*: Presente nella cartella `assets/img`.
- *Titolo del documento*
- *Data*: Data in cui è stato creato o, nel caso dei verbali, in cui è avvenuta la riunione.
- *Uso*: Interno o Esterno.
- *Destinatari*
- *Responsabile*
- *Redattore*
- *Verificatore*
- *Riassunto del verbale*: Solo per i verbali, un breve sommario di cosa si è trattato durante la riunione.

==== Registro delle modifiche
La seconda pagina è dedicata al registro delle modifiche. Le informazioni sono organizzate in una tabella in ordine cronologico decrescente, quindi con l'ultima modifica effettuata nella prima riga in alto. La tabella riporta i seguenti dati:
- *Versione*
- *Data*: La data di avvenuta modifica nel formato DD/MM/YYYY
- *Redattori*
- *Verificatori*
- *Descrizione*: Una breve descrizione delle modifiche apportate

==== Indice
Nella pagina successiva all'ultima occupata dal registro delle modifiche è posto un indice per facilitare la navigazione. Questo viene aggiornato automaticamente con l'aggiornamento dei paragrafi nel documento.

==== Corpo dei verbali
Nei verbali è importante non limitarsi a descrivere cosa si è discusso bensì enfatizzare sulle decisioni prese e sulle motivazioni che hanno mosso le stesse. Così facendo si agevola la comprensione dei compagni che in futuro dovranno consultare i documenti. I verbali condividono una struttura di base comune generata dal template:
- *Informazioni generali*
	- *Luogo e data della riunione*
		- *Luogo*
		- *Data*: Data in cui si è tenuta la riunione nel formato DD/MM/YYYY.
		- *Ora*: Ora di inizio della riunione.
		- *Durata*: Durata della riunione in formato per iscritto (ad esempio 2 ore e 20 minuti).
- *Conclusioni*: Le conclusioni della riunione con le motivazioni alle scelte prese e una previsione delle azioni future.
- *Tabella delle decisioni*: Per una descrizione dettagliata consultare la sezione omonima.

===== Verbali interni
I verbali interni aggiungono le seguenti sezioni:
- *Partecipanti*: L'elenco dei partecipanti, incluso nella sezione Informazioni generali.
- *Ordine del giorno*

===== Verbali esterni
I verbali esterni aggiungono le seguenti sezioni:
- *Partecipanti interni*: L'elenco dei partecipanti interni, incluso nella sezione Informazioni generali.
- *Partecipanti esterni*: L'elenco dei partecipanti esterni, incluso nella sezione Informazioni generali.
- *Sintesi dell'incontro*
- *Risposte alle domande*

==== Tabella delle decisioni
Una tabella che racchiude le informazioni necessarie per rintracciare gli elementi nel backlog. Sono riportati i seguenti dati:
- *ID*: Identificativo della decisione:
	- *[X][ID issue]* nel caso fosse rintracciabile mediante issue (deve essere fornito un collegamento alla stessa) dove l'ID è scritto con quattro cifre; la X indica una lettera che identifica univocamente la repository alla quale è legata la issue:
		- *D*: docs
		- *S*: sweatunipd.github.io
	- *ORG* nel caso fosse una decisione di natura organizzativa, ad esempio contattare il proponente.
- *Assegnatari*: Il membro del gruppo incaricato di svolgere quel compito. Si assegna "Gruppo" nel caso in cui coinvolgesse tutti i membri.
- *Descrizione*: Il titolo della issue se esistente, altrimenti una breve descrizione delle azioni da compiere.

=== Documenti del progetto
Alla conclusione del progetto dovranno essere stati prodotti i seguenti documenti:
- Norme di Progetto
- Piano di Progetto
- Piano di Qualifica
- Analisi dei Requisiti
- Glossario
- Verbali Interni
- Verbali Esterni

=== Versionamento
Il versionamento dei documenti soggetti a un ciclo di vita è indicato dalla dicitura a tre indici X.Y.Z descritta nel seguente modo:
- *X (Major)*: Aggiunta di nuovi contenuti, paragrafi o cambiamenti consistenti al testo;
- *Y (Minor)*: Aggiornamento di porzioni di testo consistente ma che era già presente;
- *Z (Patch)*: Aggiustamento dello stile del testo, ortografico e decorativo.

=== Nomenclatura
Per la nomenclatura di tutti i file e cartelle si è scelto lo stile snake case ad eccezione delle date, scritte in formato YYYY-MM-DD per mantenere l'ordine cronologico, separate dal trattino.
Le cartelle sono divise per milestone (candidatura, RTB e PB) ciascuna contenente i verbali interni ed esterni, il Piano di Progetto, il Piano di Qualifica, le Norme di Progetto e il Glossario. I documenti si dividono quindi in tre categorie:
- *verbali*: [VI/VE]\_[YYYY-MM-DD]\_ver[X.Y.Z] dove VI e VE indicano rispettivamente verbali interni ed esterni
- *documenti soggetti a ciclo di vita*: [nome]\_ver[X.Y.Z]
- *documenti non soggetti a ciclo di vita*: [nome]

=== Stile del testo
Nei documenti vengono applicate le seguenti regole di stile testuali:
- Grassetto col comando `*termine*`:
	- Parole importanti
	- Link
- Sottolineatura col comando `#underline([termine])`:
	- Link
	- Con apice "g" col comando `#rifGlossario`:
		- Termini presenti nel Glossario
- Colore verde col comando (aspettando il Merja):
	- Link
- Virgolette col comando `"termine"`:
	- Enfatizzare singoli caratteri
	- Espressioni tecnicamente imprecise (ad esempio "usa e getta")
- Monospace col comando \``termine`\`:
  - Nomi di file
  - Nomi di cartelle
  - Estensioni file
- Maiuscole:
	- Iniziali di nomi propri
	- Acronimi
	- Prima lettera dei paragrafi se citati nel testo
	- Nomi dei documenti

=== Elenchi puntati
Una lista è preferibile a un elenco narrativo, da valutare se renderlo numerato o meno a seconda della circostanza. I punti della descrizione nel registro delle modifiche vengono sempre rappresentati in un elenco.
Se le voci dell'elenco sono costituite da delle frasi vengono chiuse da ".", se invece possiedono solo poche parole, che ad esempio indicano il nome di una tecnologia, non viene messo nessun segno di punteggiatura al termine. Le voci dell'elenco della descrizione nel registro delle modifche non vengono chiuse da punteggiatura.

=== Formato delle date
Sotto il titolo nella prima pagine dei verbali viene indicata la data per iscritto, quindi nel formato "DD mese YYYY". Le date nei documenti vengono scritte nel formato DD/MM/YYYY, nei nomi dei documenti invece YYYY-MM-DD per mantenere l'ordine cronologico. In tutti i casi si segue la seguente convenzione:
- YYYY: anno con quattro cifre.
- MM: mese con due cifre.
- DD: giorno con due cifre.

=== Strumenti
Sono stati scelti i seguenti strumenti per redigere e mantenere la documentazione:
- *Typst*: linguaggio per la stesura dei documenti, consigliata l'estensione Tinymist Typst per Visual Studio Code
- *GitHub*: servizio di #underline([hosting])#rifGlossario di repository



== Gestione della configurazione
Per gestire la documentazione è stato creata una repository contenente tutti i file Typst aggiornati e verificati. Gli stessi documenti in formato .pdf sono consultabili al sito \ #text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://sweatunipd.github.io/docs")[https://sweatunipd.github.io/docs]]].

=== Repository
Il gruppo utilizza 2 repository all'interno della propria organizzazione GitHub:
- *docs* (#text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://github.com/SWEatUNIPD/docs")[https://github.com/SWEatUNIPD/docs]]]) contenente tutta la documentazione del progetto.
- *sweatunipd.github.io* (#text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://github.com/SWEatUNIPD/sweatunipd.github.io")[https://github.com/SWEatUNIPD/sweatunipd.github.io]]]) contenente i file necessari alla struttura e presentazione del sito web.

==== Struttura della repository docs
La repository è strutturata da un unico branch adibito al mantenimento di tutti i documenti Typst verificati. All'occorenza di svolgere azioni dettate dal backlog si crea un branch temporaneo che, successivamente alla verifica e all'approvazione, viene unito nel ramo principale. La repository è presentata dal file README.md e contiene anche il file .gitignore usato dalla Action per la compilazione dei documenti. Le cartelle sono strutturate nel seguente modo: \
#tree-list()[
  - *`.github`*
    - *`workflows`*: contiene i file `.yml` per le Action
  - *`.vscode`*: contiene le impostazioni Visual Studio Code per i font dei documenti
  - *`assets`*
    - *`font`*: contiene i file `.ttf` dei font usati nei documenti
    - *`img`*: contiene il logo e le immagini usate nei documenti
  - *`candidatura`*
    - *`verbali`*
      - *`esterni`*: contiene i `.typ` e i `.pdf` dei verbali esterni
      - *`interni`*: contiene i `.typ` dei verbali interni
      - `dichiarazione_impegni_preventivo_costi_ver1.1.0.typ`
      - `lettera_di_presentazione_candidatura.typ`
      - `valutazione_capitolati_ver1.2.0.typ`
  - *`rtb`*
    - *`verbali`*
      - *`esterni`*: contiene i `.typ` e i `.pdf` dei verbali esterni
      - *`interni`*: contiene i `.typ` dei verbali interni
      - `glossario_ver1.1.0.typ`
      - `norme_di_progetto_ver1.0.0.typ`
  - *`templates`*
    - `diario_di_bordo.pptx`
    - `template.typ`
  - `.gitignore`
  - `README.md`
]

==== Struttura della repository sweatunipd.github.io
TODO

=== Branch
Nella repository è presente solo il branch principale "main" nel quale vengono pubblicati i file sorgente della documentazione verificati all'ultima versione. Nel caso in cui si dovesse apportare delle modifiche a un documento, questo viene lavorato in un nuovo branch temporaneo collegato ad una issue. Una volta verificati i cambiamenti il branch temporaneo viene unito al principale e successivamente eliminato in modo automatico.

=== Backlog
Il product backlog è rappresentato da una GitHub board con tre sezioni:
- *Todo*
- *In Progress*
- *Done*

=== Ticketing
Alla fine di ogni riunione interna si aggiorna il backlog con le nuove issue (corrispondenti alle decisioni prese durante la riunione). Esse devono specificare in modo esaustivo il compito da svolgere nel titolo, arricchite da una breve descrizione e dal verbale nel quale è scaturita quella decisione in modo che in futuro sia sempre tracciabile il motivo della inserimento di quella issue. Devono inoltre essere collegate alla board (corrispondente al backlog), ad una milestone e ad un assegnatario. Una volta create si deve creare, sempre da interfaccia web, il branch temporaneo nel quale si andrà a lavorare.

=== GitHub Action
Viene adoperata una Action per facilitare il processo di verifica in quanto crea un file .zip con i documenti in formato .pdf ad ogni commit, e automatizza la pubblicazione dei documenti approvati nel sito del gruppo. Per i verbali esterni si è scelto un'approccio differente in quanto bisogna aspettare la firma del proponente per presa visione. Non potendo quindi essere pubblicati direttamente nel sito i verbali esterni vanno compilati localmente e mandati alla controparte. Una volta restituiti firmati vanno caricati manualmente nella stessa cartella dove risiede il codice sorgente e la Action si occuperà di pubblicarli nel sito. Per caricare i documenti firmati bisogna forzare l'operazione col seguente comando: \
*`git add . --force`*



== Controllo qualità
TODO: Cosa controllare per mantenere la qualità attesa (durante la verifica e validazione), consultare il PdQ.



== Verifica
Ogni documento creato o modificato necessita l'approvazione da uno o più verificatori. Questo processo viene automatizzato il più possibile con l'utilizzo delle pull request, il sistema di ticketing tramite issue e una Action dedicata.

=== Pull request
Le pull request velocizzano e automatizzano la verifica dei documenti. Una volta organizzate nel modo corretto come spiegato nel paragrafo "Lavoro sul documento", il verificatore può aggiungere una review da interfaccia web commentando, chiedendo una modifica o approvando la pull request. Una volta soddisfatti i requisiti spetterà al responsabile confermare la nuova versione del documento e unire il branch al principale tramite il pulsante "squash and merge".

=== Analisi statica
Al completamento di ogni commit una Action compila i file Typst modificati e genera un file .zip contenente i documenti in formato .pdf. Così facendo si è sicuri che il codice è privo di errore sintattici e genera correttamente un prodotto finale e distribuibile. 

=== Analisi dinamica
Il verificatore può consultare sia il documento in formato .pdf per maggiore leggibilità sia il codice sorgente. Nel caso trovasse degli errori può segnalarli tramite la pull request, oppure pubblicare un commento per avviare una discussione riguardo una correzione più complessa.



== Validazione



== Risoluzione dei problemi
È possibile incappare in problemi riguardanti il ciclo di redazione e verifica dei documenti. In questi casi è preferibile cercare di risolverli al più presto per conto proprio in maniera da non ostacolare il lavoro dei compagni. Tuttavia se si è insicuri delle procedure da adottare o non si trova una soluzione si può contattare l'amministratore per tornare al più presto operativi. Come ultima alternativa è possibile contattare Klaudio Merja, creatore dell'organizzazione e della repository GitHub, il quale è l'unico che può eseguire alcune operazioni forzate poiché gode dei privilegi da amministratore dell'ambiente GitHub.



#pagebreak()
= Processi organizzativi

//FIXME: Mancano ovviamente gli standard di qualità del prodotto che devono essere ancora spiegati, quindi al momento non sono inseriti