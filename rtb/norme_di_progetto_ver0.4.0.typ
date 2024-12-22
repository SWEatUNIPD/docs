#import "/templates/template.typ": *
#import "@preview/treet:0.1.1": *

#show: content => verbale(
  data: "14 Novembre 2024",
  destinatari: ("Gruppo SWE@",),
  responsabile: "-",
  redattori: ("Klaudio Merja", "Andrea Precoma", "Davide Picello"),
  verificatori: ("Andrea Precoma", "Davide Marin"),
  titolo: "Norme di Progetto",
  uso: "Interno",
  versioni: (
    "0.4.0",
    "30/11/2024",
    "Andrea Precoma",
    "Riccardo Milan",
    [
      - Modifica del _versioning_
      - Modifica delle regole di stile
      - Aggiunta struttura della _repository_ NearYou
      - Correzione ortografica e di stile
    ],
    "0.3.0",
    "27/11/2024",
    "Davide Picello",
    "Davide Marin",
    [
      - Scrittura del capitolo "Processi primari"
    ],

    "0.2.0",
    "26/11/2024",
    "Andrea Precoma",
    "Davide Marin\nDavide Picello",
    [
      - Struttura della sezione "Processi di supporto"
      - Stesura dei principali paragrafi
    ],
    
    "0.1.0",
    "14/11/2024",
    "Klaudio Merja",
    "Andrea Precoma",
    [- Struttura e introduzione del documento],
  ),
  content: content,
)

//TODO: I vari processi (primari, di supporto e organizzativi) sono presenti nell'ISO/IEC 12207:1995 (T02 slide n. 12) -> introdurre come prossimo aggiornamento del documento quando andranno descritte

= Introduzione
== Scopo del documento
Lo scopo principale del documento Norme di Progetto è quello di documentare il _#rifGlossario("way of working")_ che deve essere adottato dai membri del gruppo per garantire la coerenza nel lavoro svolto.

Il documento adotta un approccio di tipo incrementale, ovvero è frutto di una serie di fasi di modifica che avvengono durante il suo ciclo di vita. È quindi soggetto durante lo svolgimento del progetto didattico a continui aggiornamenti, a seguito delle decisioni prese dal gruppo, volti a migliorare il _way of working_ stesso. I membri del gruppo sono quindi tenuti a prendere visione del documento ogni qual volta esso sia oggetto di modifiche.

== Scopo del progetto didattico
Lo scopo principale del progetto _NearYou - Smart custom advertising platform_ proposto dall'azienda Sync Lab S.r.l. è quello di sviluppare un prodotto che sfrutti la #rifGlossario("GenAI") per la creazione di pubblicità mirate sui singoli utenti, sfruttando come _#rifGlossario("prompt")_ dati come la posizione in tempo reale, le informazioni personali e i dati di profilazione degli utenti stessi.


L'obiettivo del prodotto è quello di rendere le campagne pubblicitarie delle aziende interessate il più personalizzate e ottimizzate possibili ed aumentare il coinvolgimento dell'utente finale, con lo scopo di ridurre la disconnessione tra messaggio e destinatario e portare un miglioramento sul #rifGlossario("ROI") della campagna stessa.

== Glossario <glossario>
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo, viene fornito un glossario.

La prima occorrenza di un termine definito all'interno del glossario presente all'interno di un documento viene sottolineato e seguito dalla lettera "g" posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti
=== Riferimenti normativi
- Regolamento del progetto didattico\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")
=== Riferimenti informativi
- Capitolato C4 (Sync Lab)\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")

#pagebreak()
= Processi primari
Lo standard ISO/IEC 12207:1995, riferimento internazionale per i processi del ciclo di vita del _software_, definisce come processi primari le attività di: acquisizione, fornitura, sviluppo, gestione operativa e di manutenzione.

Tuttavia, data la natura didattica del progetto, saremo tenuti ad occuparci solo delle parti di fornitura e sviluppo.

== Fornitura
Il processo di fornitura contiene le attività e i compiti del fornitore, il quale dovrà accordarsi con il proponente per stabilire ufficialmente, tramite un contratto, i vari vincoli e requisiti del progetto. Successivamente si procede con la redazione del documento Piano di Progetto, il quale avrà il compito di pianificare e monitorare le attività da svolgere durante i periodi del progetto.

Le attività che compongono questo processo sono:
- Iniziazione
- Preparazione della risposta
- Contratto
- Pianificazione
- Esecuzione e Controllo
- Revisione e valutazione
- Consegna e completamento

=== Comunicazioni con il proponente
L'azienda si è resa raggiungibile, per via testuale, tramite e-mail per le comunicazioni ufficiali. Tramite la piattaforma di messaggistica istantanea Discord, invece, per le comunicazioni più veloci. È stato deciso, inoltre, di utilizzare l'applicazione di teleconferenza Google Meet per le riunioni in cui è prevista la presenza di tutto il gruppo. L'azienda, comunque, si è resa disponibile anche ad accogliere il gruppo nei loro uffici.

Per ogni incontro, verrà redatto un verbale riguardante le discussioni e decisioni avvenute nello stesso. Questi verbali, dopo essere stati approvati e firmati dall'azienda, saranno disponibili presso il sito _web_ del gruppo #formatLink(label: "https://sweatunipd.github.io", url: "https://sweatunipd.github.io").

==== SAL
È stato anche concordato un incontro settimanale di 45 minuti, tendenzialmente il mercoledì pomeriggio, riguardo allo Stato di Avanzamento dei Lavori #rifGlossario("SAL"). Il gruppo esporrà i progressi e i dubbi dell'ultima settimana di lavoro, confrontandosi con il proponente e delineando le attività da svolgere nella settimana a venire.

==== Sessioni deep dive
Il proponente si è anche reso disponibile per organizzare delle sessioni di #rifGlossario("deep dive") per approfondire l'utilizzo di alcune tecnologie che potrebbero rivelarsi particolarmente ostiche per il gruppo.
Queste verranno fissate quando necessarie.


=== Documentazione fornita
Di seguito l'elenco dei documenti che il gruppo consegnerà all'azienda proponente Sync Lab e ai committenti Prof. Tullio Vardanega e Prof. Riccardo Cardin.

==== Analisi dei Requisiti
L'Analisi dei Requisiti è un documento redatto dagli analisti che definisce le funzionalità necessarie per soddisfare le richieste del proponente.

//Ancora da scrivere

==== Piano di Progetto
Il Piano di Progetto è un documento il cui scopo è quello di definire in modo dettagliato l'organizzazione, le attività, le risorse, i tempi e i criteri necessari per completare con successo il progetto.

Viene redatto e aggiornato dal responsabile, con il supporto degli amministratori, durante l'intera durata del progetto.

/*
Dovrebbe contenere le seguenti informazioni/sessioni:
- Analisi dei rischi
- Modello di sviluppo
- Pianificazione
- Preventivo
- Consuntivo
*/

==== Piano di Qualifica
Il Piano di Qualifica è un documento formale che definisce le strategie, le attività e gli approcci necessari per garantire la qualità del prodotto _software_, durante tutto il corso del progetto. Descrive le modalità di verifica e validazione, gli standard adottati e le procedure di qualità da seguire.

Il suo scopo principale è assicurare che il prodotto finale sia conforme alle specifiche richieste e alle aspettative del committente, monitorando il progresso rispetto agli obiettivi prefissati. Ogni membro del _team_ coinvolto nello sviluppo farà riferimento a questo documento per mantenere e garantire i livelli di qualità stabiliti.

/*
Dovrebbe contenere le seguenti informazioni/sessioni:
- Qualità di processo
- Qualità di prodotto
- Test
- Cruscotto delle metriche/ Valutazioni per il miglioramento
*/

==== Glossario
Il Glossario è un documento di supporto che raccoglie i termini tecnici e specifici utilizzati all'interno del progetto, fornendone definizioni chiare e univoche. È destinato a tutti gli _#rifGlossario("stakeholder")_, i membri del _team_, i committenti e l'azienda proponente, con l'obiettivo di prevenire ambiguità e incomprensioni. Questo strumento è fondamentale per migliorare la coerenza e la qualità della documentazione prodotta.

==== Lettera di presentazione
La Lettera di Presentazione è un documento formale attraverso il quale il gruppo esprime la propria intenzione di partecipare alla fase di revisione del progetto. Include la documentazione prodotta dal gruppo e, se necessario, un aggiornamento sui costi e sulle tempistiche.

La lettera sottolinea l'impegno del _team_ nel rispettare le scadenze e le aspettative fissate.


=== Strumenti
Gli strumenti adottati per il processo di fornitura sono i seguenti:

==== Discord
Piattaforma di messaggistica in tempo reale che consente _chat_ testuali, vocali e video. Il gruppo la utilizza per comunicare internamente tramite delle chiamate e per interagire velocemente con l'azienda tramite il loro _server_ dedicato.

==== Telegram
Applicazione di messaggistica istantanea utilizzata per comunicazioni rapide e brevi all'interno del gruppo.

==== Fogli di Google (Google Sheets)
Applicazione web per la creazione e la gestione di fogli di calcolo. Il gruppo la utilizza per tenere traccia in modo informale delle ore lavorate settimanalmente, che saranno successivamente riportate nel documento ufficiale Piano di Progetto.

==== GitHub
Piattaforma per il controllo di versione e la collaborazione su progetti _software_. Il gruppo lo utilizza come strumento per gestire le _repository_ per codice e documentazione, monitorare le attività del progetto, assegnarle ai membri e seguirne lo stato di avanzamento.

==== Typst
#rifGlossario("Typst") è un nuovo sistema di impaginazione basato su _markup_, progettato per essere potente quanto LaTeX ma molto più facile da imparare e utilizzare.

== Sviluppo
Sempre secondo lo standard ISO/IEC 12207:1995 lo scopo del processo di sviluppo è di descrivere le attività e i compiti necessari per creare e mantenere un sistema _software_, garantendo che il prodotto finale soddisfi i requisiti specificati nel contratto.

Il processo di sviluppo è composto dalle seguenti attività:

=== Implementazione del processo
Nella fase di implementazione, il fornitore deve stabilire o selezionare un modello di ciclo di vita appropriato per il progetto. Le attività di sviluppo e i compiti associati vengono mappati su tale modello, considerando che possono essere eseguiti in modo iterativo o ricorsivo. Il fornitore documenta i risultati secondo il processo di documentazione, ne gestisce le modifiche con un sistema di configurazione e risolve eventuali problemi di conformità. Devono essere selezionati strumenti, metodi e linguaggi di programmazione adeguati, e vengono pianificate le azioni necessarie per rispettare gli standard di qualità, sicurezza e conformità. Tutto questo è accompagnato dalla creazione di piani documentati e implementabili.

=== Analisi dei requisiti di sistema
In questa fase, si analizzano le esigenze specifiche del sistema da sviluppare, documentando i requisiti funzionali, di sicurezza, di manutenzione, ergonomici e di interfaccia. Tali requisiti vengono valutati rispetto alla loro tracciabilità, consistenza con le esigenze iniziali, testabilità e fattibilità tecnica. Il risultato è una specifica dettagliata dei requisiti del sistema.

=== Progettazione architetturale del sistema
Il sistema viene suddiviso in elementi _hardware_, _software_ e operazioni manuali, con l’allocazione dei requisiti a ciascun elemento. L’architettura risultante rappresenta un progetto di alto livello che assicura la tracciabilità rispetto ai requisiti e la fattibilità operativa. La documentazione prodotta include la descrizione dell’architettura del sistema e l’assegnazione dei requisiti ai vari componenti.

=== Analisi dei requisiti software
Per ogni componente _software_ individuato, vengono stabiliti e documentati i requisiti dettagliati, tra cui specifiche funzionali, di sicurezza, di ergonomia e requisiti per il #rifGlossario("database"). Tali requisiti sono valutati per verificarne tracciabilità, coerenza interna ed esterna, testabilità e fattibilità progettuale. La fase si conclude con una revisione congiunta per stabilire una _baseline_ di requisiti approvati.

=== Progettazione architetturale del software
I requisiti _software_ vengono trasformati in un’architettura che descrive la struttura generale del _software_ e identifica i componenti principali. Si definiscono e documentano le interfacce e le prime versioni della documentazione utente, oltre ai requisiti di _test_ preliminari per l’integrazione. La valutazione di questa fase si concentra sulla tracciabilità rispetto ai requisiti, sulla coerenza interna e sull’adeguatezza dei metodi di progettazione utilizzati.

=== Progettazione dettagliata del software
Si sviluppano progetti dettagliati per ogni componente _software_, che vengono suddivisi in unità più piccole, codificabili e testabili. La documentazione comprende dettagli delle interfacce, del _database_ e requisiti specifici per il _testing_. Anche in questa fase, la progettazione è sottoposta a valutazioni che ne verificano tracciabilità, coerenza interna, testabilità e conformità agli standard di progettazione.

=== Codifica e testing del software
I componenti _software_ vengono codificati e testati per garantire che soddisfino i requisiti definiti. I risultati dei _test_ vengono documentati e la documentazione utente viene aggiornata. Questa fase include anche la preparazione dei requisiti di _test_ per l’integrazione _software_ e una revisione dell’adeguatezza del codice e dei risultati dei _test_.

=== Integrazione del software
Le unità e i componenti _software_ sono integrate per formare un unico elemento _software_. Durante l’integrazione, vengono eseguiti _test_ per verificare che ciascun aggregato soddisfi i requisiti. Si sviluppano piani di _test_ e procedure per la qualifica del _software_ integrato. L’integrazione è valutata considerando la tracciabilità, la coerenza e la copertura dei requisiti.

=== Test di qualifica del software
Il _software_ integrato viene sottoposto a _test_ di qualifica per verificarne la conformità ai requisiti. I risultati di questi _test_ vengono documentati. A seguito del completamento con successo, il _software_ è pronto per le fasi successive, come l’integrazione di sistema o l’installazione.

=== Integrazione del sistema
Il _software_ viene integrato con componenti _hardware_, operazioni manuali e altri sistemi, se richiesto. Vengono condotti _test_ sugli aggregati del sistema per verificarne la conformità ai requisiti. La documentazione prodotta include i risultati dell’integrazione e i _test_ effettuati.

=== Test di qualifica del sistema
L’intero sistema viene testato per verificare la conformità alle specifiche contrattuali e la prontezza per la consegna. I risultati sono documentati e valutati per garantire la copertura dei requisiti e la fattibilità operativa.

=== Installazione del software
Si sviluppa e implementa un piano per l’installazione del _software_ nell’ambiente di destinazione. Si verifica che il _software_ funzioni come previsto e si supportano attività di transizione, se necessario. Gli eventi e i risultati dell’installazione sono documentati.

=== Supporto all'accettazione del software
Il fornitore supporta il cliente nella revisione e nei _test_ di accettazione del _software_, che comprendono la valutazione di tutti i risultati ottenuti nelle fasi precedenti. Viene completata la consegna del prodotto _software_ e fornite eventuali attività di formazione e supporto iniziale.


#pagebreak()
= Processi di supporto

== Documentazione
Il processo di documentazione è necessario per il tracciamento di tutte le attività relative al progetto, sia dal lato _software_ che dal lato organizzativo. Tutti i membri del gruppo si impegnano a rispettare le norme delineate nel capitolo corrente per la stesura di ogni documento.

=== Preparazione dell'ambiente
==== Tracciamento
Alla fine di ogni riunione si aggiorna il _#rifGlossario("backlog")_ con le nuove _issue_ (corrispondenti alle decisioni prese durante la riunione). Esse devono specificare in modo esaustivo il compito da svolgere nel titolo, arricchite da una breve descrizione, i verificatori incaricati di visionare il lavoro e dal verbale nel quale è scaturita quella decisione in modo che in futuro sia sempre tracciabile il motivo dell'inserimento di quella _issue_. Devono inoltre essere collegate alla _board_ (corrispondente al _backlog_), ad una _milestone_ e ad un assegnatario. Una volta create si deve generare, sempre da interfaccia _web_, il _#rifGlossario("branch")_ temporaneo nel quale si andrà a lavorare.

==== Lavoro sul documento <lavoro_doc>
Per lavorare su un documento bisogna attenersi ai seguenti passaggi utilizzando il sistema #rifGlossario("Git"):
+ Posizionarsi sulla cartella della _repository_ nella macchina locale e scaricare le eventuali modifiche in tutti i _branch_ locali eliminando gli eventuali rami che in remoto sono stati eliminati. Se si vuole sincronizzare solo il ramo corrente si deve omettere il _flag_ *`--all`*. \
	*`git pull -p --all`*
+ Posizionarsi sul _branch_ collegato alla _issue_. \
	*`git checkout [nome_branch]`*
+ Caricare le modifiche effettuate nella _repository_ remota. \
	*`git add .`* \
	*`git commit -m "[commento del commit]"`* \
	*`git push`* \
+ Dall'interfaccia _web_ bisogna spostarsi nella sezione _*pull request*_ e crearne una nuova assicurandosi di assegnare il verificatore e una _label_. Se si desidera sottoporre le modifiche a un rapido controllo si può creare un _*draft*_.
+ In caso il verificatore richieda delle correzioni è sufficiente ripetere i passaggi citati senza questa volta creare una nuova _pull request_ perché già esistente. Si ricorda che si può evitare di scaricare le modifiche su tutti i _branch_ e che se si è già posizionati sul ramo corretto si può evitare il comando *`git checkout [nome_branch]`*.

Si noti che la modifica di un documento già verificato e approvato deve essere tracciata da una _issue_, quindi i procedimenti per redigere o aggiornare un documento sono gli stessi. Una volta terminato il lavoro si deve aggiornare anche la corrispondenza ruolo-persona nella prima pagina segnando il nuovo redattore, il verificatore e sostituendo il responsabile col compagno che in quel momento sta ricoprendovi il ruolo. In questo modo il responsabile è colui che è al corrente dell'ultima versione, nel caso in cui bisognasse contattarlo per dei chiarimenti.

Se si individuano dei nuovi termini da aggiungere al Glossario si inseriscono secondo le norme decise dal documento corrente (#link(<glossario>)[sez. 1.3]). Il verificatore deve quindi controllare anche che siano stati inseriti nel modo corretto.

=== Ciclo di vita
Il ciclo di vita di un documento è composto da 6 fasi:
+ *Creazione e adattamento al _template_*: Dopo aver impostato l'ambiente nel modo corretto si può creare il file `.typ` seguendo le norme di nomenclatura e assegnando la versione 1.0.0. Si importa il _file_ `template.typ` nella cartella `templates` e si compilano i campi delle funzioni in base al documento che si sta redigendo.
+ *Pianificazione dei paragrafi*: Oltre ai paragrafi dettati dal tipo di documento come specificato dalle norme, si devono aggiungere dei paragrafi che raggruppino gli argomenti trattati. 
+ *Stesura del documento*: Il redattore deve stilare il documento seguendo le norme concordate dal gruppo. In caso fosse indeciso su alcuni punti è libero di contattare altri membri del gruppo in modo da scrivere un contenuto il più corretto possibile.
+ *Revisione*: Una volta caricato correttamente il documento viene notificato automaticamente il verificatore il quale deve assicurarsi che non vi siano errori.
+ *Approvazione*: Il documento è approvato dal verificatore e viene contattato il responsabile che deve confermare la pubblicazione nel _branch_ principale.
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
- *Data*: La data nella quale è stata apportata l'ultima modifica nel formato DD/MM/YYYY.
- *Redattori*
- *Verificatori*
- *Decrizione*: Una breve descrizione delle modifiche apportate.

==== Indice
Nella pagina successiva all'ultima occupata dal registro delle modifiche è posto un indice per facilitare la navigazione. Questo viene aggiornato automaticamente con la modifica dei paragrafi nel documento.

==== Corpo dei verbali
Nei verbali è importante non limitarsi a descrivere cosa si è discusso bensì enfatizzare sulle decisioni prese e sulle motivazioni che hanno mosso le stesse. Così facendo si agevola la comprensione dei colleghi che in futuro dovranno consultare i documenti. I verbali condividono una struttura di base comune generata dal _template_:
- *Informazioni generali*
	- *Luogo e data della riunione*
		- *Luogo*
		- *Data*: Data in cui si è tenuta la riunione nel formato DD/MM/YYYY.
		- *Ora*: Ora di inizio della riunione.
		- *Durata*: Durata della riunione in formato per iscritto (ad esempio 2 ore e 20 minuti).
- *Conclusioni*: Le conclusioni della riunione con le motivazioni alle scelte prese e una previsione delle azioni future.
- *Tabella delle decisioni*: Per una descrizione dettagliata consultare la sezione omonima.

===== Verbali Interni
I verbali interni aggiungono le seguenti sezioni:
- *Partecipanti*: L'elenco dei partecipanti, incluso nella sezione Informazioni generali.
- *Ordine del giorno*

===== Verbali Esterni
I verbali esterni aggiungono le seguenti sezioni:
- *Partecipanti interni*: L'elenco dei partecipanti interni, incluso nella sezione Informazioni generali.
- *Partecipanti esterni*: L'elenco dei partecipanti esterni, incluso nella sezione Informazioni generali.
- *Sintesi dell'incontro*
- *Risposte alle domande*

==== Tabella delle decisioni
Una tabella che racchiude le informazioni necessarie per rintracciare gli elementi nel _backlog_. Sono riportati i seguenti dati:
- *ID*: Identificativo della decisione:
	- *[X][ID _issue_]* nel caso fosse rintracciabile mediante _issue_ (deve essere fornito un collegamento alla stessa) dove l'ID è scritto con quattro cifre; la X indica una lettera che identifica univocamente la #rifGlossario("GitHub") _repository_ alla quale è legata la _issue_:
		- *D*: docs
		- *S*: sweatunipd.github.io
	- *ORG* nel caso fosse una decisione di natura organizzativa, ad esempio contattare il proponente.
- *Assegnatari*: Il membro del gruppo incaricato di svolgere quel compito. Si assegna "Gruppo" nel caso in cui coinvolgesse tutti i membri.
- *Descrizione*: Il titolo della _issue_ se esistente, altrimenti una breve descrizione delle azioni da compiere.

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
Per i documenti soggetti ad un ciclo di vita abbiamo deciso di adottare il _semantic versioning_ adattando però lo schema al contesto della documentazione. Sono stati quindi ridefiniti gli indici X.Y.Z come segue:
- *X (_major_)*: Approvazione da parte del responsabile.
- *Y (_minor_)*: Aggiornamento o aggiunta di porzioni di testo consistente.
- *Z (_patch_)*: Aggiustamento dello stile del testo, ortografico e decorativo.

I documenti vengono approvati solo al termine del proprio ciclo di vita. In particolare Piano di Progetto, Norme di Progetto, Piano di Qualifica e Analisi dei Requisiti vengono approvati al termine di ciascuna _milestone_. Nelle fasi intermedie ogni modifica, sottoposta a verifica, incrementa la _minor_ o la _patch_.

=== Nomenclatura
Per la nomenclatura di tutti i file e cartelle si è scelto lo stile _snake case_ ad eccezione delle date, scritte in formato YYYY-MM-DD per mantenere l'ordine cronologico, separate dal trattino.

Le cartelle sono divise per _milestone_ (candidatura, RTB e PB) ciascuna contenente i verbali interni ed esterni, il Piano di Progetto, il Piano di Qualifica, le Norme di Progetto e il Glossario. I documenti si dividono quindi in tre categorie:
- *verbali*: [VI/VE]\_[YYYY-MM-DD]\_ver[X.Y.Z] dove VI e VE indicano rispettivamente verbali interni ed esterni.
- *documenti soggetti a ciclo di vita*: [nome]\_ver[X.Y.Z].
- *documenti non soggetti a ciclo di vita*: [nome].

=== Stile dei titoli
I titoli dei documenti devono seguire le seguenti indicazioni:
- *Verbali Interni*: [NOR] riunione, dove NOR indica il numero ordinale della riunione (ad esempio Prima o Dodicesima).
- *Verbali Esterni*:
  - *SAL fine [NOS] #rifGlossario("sprint")*, dove NOS indica il numero ordinale dello _sprint_ (ad esempio primo o dodicesimo) nel caso si trattasse del SAL di fine _sprint_.
  - *SAL intermedio [NOS] sprint*, dove NOS indica il numero ordinale dello _sprint_ (ad esempio primo o dodicesimo) nel caso si trattasse di un SAL informativo a metà dello _sprint_.
  - Nel caso non si trattasse di un SAL si deve cercare un titolo breve ma efficace.
- *Documenti*: Per documenti che non sono verbali il titolo deve semplicemente indicare lo scopo del documento (ad esempio Norme di Progetto).

Notare che nei titoli dei documenti e dei paragrafi lo stile rimane quello di _default_ di #rifGlossario("Typst"), non vanno aggiunti quindi corsivi o altre personalizzazioni.

=== Stile del testo <stile_testo>
Nei documenti vengono applicate le seguenti regole di stile testuali:
- *Grassetto* col comando `*termine*`:
	- Termini importanti.
- #underline([Sottolineato]) col comando `#link("url")[label]`:
  - ID _issue_ nella tabella delle decisioni.
  - Riferimenti contestuali segnando la destinazione con `<dest>` e modificando il comando `#link(<dest>)[label]`.
- #formatLink(label: "Sottolineato, in grassetto e di colore verde") col comando `#formatLink(label:"label", url:"url")`:
  - Link ipertestuali.
- #rifGlossario("Sottolineato con apice") col comando `#rifGlossario("termine")`:
  - Termini presenti nel Glossario.
- "Virgolette" col comando `"termine"`:
	- Enfatizzare singoli caratteri.
	- Espressioni tecnicamente imprecise (ad esempio "usa e getta")
- _Corsivo_ col comando `_termine_`:
  - Termini in lingua inglese (esclusi se si tratta di nomi di prodotti _software_ o simili)
  - Titolo del capitolato _NearYou - Smart custom advertising platform_
- `Monospace` col comando \``termine`\`:
  - Nomi di file (ad esempio "`norme_di_progetto_verX.Y.Z.typ`").
  - Nomi di cartelle.
  - Estensioni file.
- Maiuscole:
	- Iniziali di nomi propri.
	- Acronimi (ad esempio "Proof of Concept (#rifGlossario("PoC"))").
	- Prima lettera dei paragrafi se citati nel testo.
	- Nomi dei documenti (ad esempio "Norme di Progetto").

=== Riferimenti
==== Contestuali
Per riferirsi ad una sezione del documento per una spiegazione più dettagliata si adotta la dicitura "(sez. [I])" dove I indica l'indice della sezione (ad esempio "(sez. 3.2)").

==== Ipertestuali
Per esporre un _link_ ad una pagina esterna al docuento si utilizza la funzione `#formatLink` (#link(<stile_testo>)[sez. 3.1.9]) esplicitando l'interezza dell'_url_ anche nella _label_. Unica eccezione di stile per i riferimenti alle _issue_ nella tabella delle decisioni (#link(<stile_testo>)[sez. 3.1.9]).

=== Elenchi puntati
Una lista è preferibile a un elenco narrativo, da valutare se renderlo numerato o meno a seconda della circostanza. I punti della descrizione nel registro delle modifiche vengono sempre rappresentati in un elenco. Se le voci dell'elenco sono costituite da delle frasi vengono chiuse da ".", se invece possiedono solo poche parole, che ad esempio indicano il nome di una tecnologia, non viene messo nessun segno di punteggiatura al termine. Le voci dell'elenco della descrizione nel registro delle modifche non vengono chiuse da punteggiatura.

=== Formato delle date
Sotto il titolo nella prima pagina dei verbali viene indicata la data per iscritto, quindi nel formato "DD mese YYYY". Le date nei documenti vengono scritte nel formato DD/MM/YYYY, nei nomi dei documenti invece YYYY-MM-DD per mantenere l'ordine cronologico. In tutti i casi si segue la seguente convenzione:
- YYYY: anno con quattro cifre.
- MM: mese con due cifre.
- DD: giorno con due cifre.

=== Strumenti
Sono stati scelti i seguenti strumenti per redigere e mantenere la documentazione:
- *Typst*: linguaggio per la stesura dei documenti, consigliata l'estensione Tinymist Typst se si usa Visual Studio Code.
- *Draw.io*: sito _web_ che offre un'interfaccia grafica per creare i diagrammi utili all'analisi e alla progettazione.
- *GitHub*: servizio di _#rifGlossario("hosting")_ di _repository_.



== Gestione della configurazione
Per gestire la documentazione è stato creata una _repository_ contenente tutti i _file_ Typst aggiornati e verificati. Gli stessi documenti in formato `.pdf` sono consultabili al sito \ #formatLink(label: "https://sweatunipd.github.io", url: "https://sweatunipd.github.io").

L'operazione di _directory listing_ di GitHub offre una visione degli artefatti strutturata in cartelle, seguente quindi la composizione della _repository_, all'indirizzo #formatLink(label: "https://sweatunipd.github.io/docs", url: "https://sweatunipd.github.io/docs").

=== Repository
Il gruppo utilizza due _repository_ all'interno della propria organizzazione GitHub:
- *docs* (#formatLink(label: "https://github.com/SWEatUNIPD/docs", url: "https://github.com/SWEatUNIPD/docs")) contenente tutta la documentazione del progetto.
- *sweatunipd.github.io* (#formatLink(label: "https://github.com/SWEatUNIPD/sweatunipd.github.io", url: "https://github.com/SWEatUNIPD/sweatunipd.github.io")) contenente i _file_ necessari alla struttura e presentazione del sito _web_.
- *NearYou* (#formatLink(label: "https://github.com/SWEatUNIPD/NearYou", url: "https://github.com/SWEatUNIPD/NearYou")) contenente il codice sorgente dell'applicativo.

==== Struttura della repository docs
La _repository_ è strutturata da un unico _branch_ adibito al mantenimento di tutti i documenti Typst verificati. All'occorenza di svolgere azioni dettate dal _backlog_ si crea un _branch_ temporaneo che, successivamente alla verifica, viene unito nel ramo principale. La _repository_ è presentata dal `README.md`, contiene il _file_ `.gitignore` usato dalla Action per escludere alcuni _file_ dalla compilazione e il _file_ `script.js` usato per pubblicare la documentazione nel sito _web_. `test.js` è utilizzato per controllare la presenza dei termini del Glossario all'interno dei documenti, mentre `glossario.json` è una struttura dati che contiene i termini e la loro definizione, usato per la stesura del documento dal _file_ `glossario_verX.Y.Z.typ`. Le cartelle sono strutturate nel seguente modo: \
#tree-list()[
  - *`.github`*
    - *`workflows`*: contiene i _file_ `.yml` per la Action.
  - *`.vscode`*: contiene le impostazioni Visual Studio Code per i _font_ dei documenti.
  - *`assets`*
    - *`font`*: contiene i _file_ `.ttf` dei _font_ usati nei documenti.
    - *`img`*: contiene il logo e le immagini usate nei documenti.
  - *`candidatura`*
    - *`verbali`*
      - *`esterni`*: contiene i `.typ` e i `.pdf` dei verbali esterni.
      - *`interni`*: contiene i `.typ` dei verbali interni.
      - `dichiarazione_impegni_preventivo_costi_ver1.1.0.typ`
      - `lettera_di_presentazione_candidatura.typ`
      - `valutazione_capitolati_ver1.2.0.typ`
  - *`rtb`*
    - *`verbali`*
      - *`esterni`*: contiene i `.typ` e i `.pdf` dei verbali esterni.
      - *`interni`*: contiene i `.typ` dei verbali interni.
      - `analisi_dei_requisiti_ver1.0.0.typ`
      - `glossario_ver1.0.0.typ`
      - `norme_di_progetto_ver1.0.0.typ`
      - `piano_di_progetto_ver1.0.0.typ`
  - *`templates`*
    - `diario_di_bordo.pptx`
    - `template.typ`
  - `.gitignore`
  - `README.md`
  - _File_ `.js` utili per la struttura del glossario e i _test_ associati.
]

==== Struttura della repository sweatunipd.github.io
La _repository_ è costituita da un unico _branch_ nel quale è caricato tutto il materiale necessario per strutturare il sito _web_ e popolarlo dinamicamente con la documentazione della _repository_ docs. La _repository_ è presentata dal `README.md` e contiene il _file_ `.gitignore` necessario per escludere alcuni _file_ dal lavoro della Action. Le cartelle sono strutturate nel seguente modo: \
#tree-list()[
  - *`.github`*
    - *`workflows`*: contiene i _file_ `.yml` per la Action.
  - *`app`*
    - *`fonts`*: contiene i _file_ `.woff` dei _font_ usati nel sito.
    - `global.css`
    - `layout.tsx`
    - `page.tsx`
  - *`components`*
    - *`ui`*: contiene i _file_ `.tsx` usati per la parte grafica.
  - *`lib`*: contiene funzioni di _#rifGlossario("utility")_ di una libreria esterna.
  - *`logo`*
    - `logo.svg`
    - `logo_dark.svg`
  - *`public`*
    - `favicon.ico`
  - `.gitignore`
  - `README.md`
  - _File_ utili alla configurazione e al trasferimento dati.
]

==== Struttura della repository NearYou


// TODO: al massimo aggiungere un paragrafo branch per ogni repo (cambia da docs a codice)
// === Branch
// Nella _repository_ è presente solo il _branch_ principale "main" nel quale vengono pubblicati i _file_ sorgente della documentazione verificati all'ultima versione. Nel caso in cui si dovesse apportare delle modifiche a un documento, questo viene lavorato in un nuovo _branch_ temporaneo collegato ad una _issue_. Una volta verificati i cambiamenti il _branch_ temporaneo viene unito al principale e successivamente eliminato in modo automatico.

=== Backlog
Il _product backlog_ è rappresentato da una GitHub _board_ con tre sezioni:
- *Todo*
- *In Progress*
- *Done*

=== Ticketing
Alla fine di ogni riunione interna si aggiorna il _backlog_ con le nuove _issue_ (corrispondenti alle decisioni prese durante la riunione). Esse devono specificare in modo esaustivo il compito da svolgere nel titolo, arricchite da una breve descrizione e dai riferimenti al verificatore e al verbale nel quale è scaturita quella decisione, in modo che in futuro sia sempre tracciabile il motivo della inserimento di quella _issue_. Per una corretta impostazione si chiede di seguire il seguente schema:

| Titolo completo ed esaustivo \
| ------------------------------------------------------\
| Breve descrizione. \
| \
| Verificatore: \@Nickame \
| \
| Decisione presa nel [VI/VE]\_[YYYY-MM-DD]

Devono inoltre essere collegate alla _board_ (corrispondente al _backlog_) assicurandosi appaiano nella colonna "Todo", ad una _milestone_, ad una _label_ e ad un assegnatario. Una volta create si deve generare, sempre da interfaccia _web_, il _branch_ temporaneo nel quale si andrà a lavorare. In questa operazione è sufficiente rinominare il _branch_, collegarci l'assegnatario e assegnarci una _label_.

Si ricorda di aggiornare lo stato di avanzamento della _issue_ nel _backlog_ alla sezione "In progress" quando la si sta risolvendo. Una volta approvata la _pull request_ il sistema chiude in automatico la _issue_ posizionandola nella colonna "Done".

=== Label
Sono state create le seguenti _label_ per migliorare l'organizzazione delle _issue_ e facilitarne la ricerca tramite filtro:
- *AdR*: Analisi dei Requisiti
- *Automazione*
- *Glossario*:
- *Lettera*: Lettera di candidatura
- *NdP*: Norme di Progetto
- *PdP*: Piano di Progetto
- *PdQ*: Piano di Qualifica
- *Template*
- *Verbale*

=== GitHub Action
Viene adoperata una Action per facilitare il processo di verifica in quanto crea un _file_ `.zip` con i documenti in formato `.pdf` ad ogni _commit_, e automatizza la pubblicazione dei documenti approvati nel sito del gruppo. Per i verbali esterni si è scelto un approccio differente in quanto bisogna aspettare la firma del proponente per presa visione. Non potendo quindi essere pubblicati direttamente nel sito i verbali esterni vanno compilati localmente e mandati alla controparte. Una volta restituiti firmati vanno caricati manualmente nella stessa cartella dove risiede il codice sorgente e la Action si occuperà di pubblicarli nel sito. Per caricare i documenti firmati bisogna forzare l'operazione col seguente comando: \
*`git add [file_name] --force`*


== Verifica
La verifica è un processo di cruciale importanza che accompagna il _software_ lungo tutto il suo ciclo di vita, dalla progettazione fino alla manutenzione. Il suo obiettivo è garantire l'efficienza.
Un processo di verifica efficace risulta in un prodotto stabile e facilita di conseguenza il processo di validazione.



=== Verifica dei documenti
Ogni documento creato o modificato necessita la revisione da uno o più verificatori. Questo processo viene automatizzato il più possibile con l'utilizzo delle _pull request_, il sistema di _ticketing_ tramite _issue_ e una Action dedicata. Quando possibile è preferibile richiedere la revisione a tutti i verificatori per i documenti di carattere generale perché fondamentali per il corretto svolgimento del progetto.

==== Pull request
Le _pull request_ velocizzano e automatizzano la verifica dei documenti. Una volta organizzate nel modo corretto (#link(<lavoro_doc>)[sez. 3.1.1.2]), il verificatore può aggiungere una _review_ da interfaccia _web_ commentando, chiedendo una modifica o approvando la _pull request_. Una volta soddisfatti i requisiti spetterà al responsabile confermare la nuova versione del documento e unire il _branch_ al principale tramite il pulsante "_squash and merge_".

==== Analisi statica
Al completamento di ogni _commit_ una Action compila i _file_ Typst modificati e genera un _file_ `.zip` contenente i documenti in formato `.pdf`. Così facendo si è sicuri che il codice è privo di errore sintattici e genera correttamente un prodotto finale e distribuibile.

È stato messo a disposizione un _test_ il quale controlla che la prima occorrenza dei termini del Glossario venga identificata (#link(<glossario>)[sez. 1.3]). Viene effettuato automaticamente dalla Action ad ogni _push_, tuttavia è preferibile eseguirlo prima in locale così da efficientare il lavoro. È sufficiente quindi aver installato NodeJS sulla propria macchina ed eseguire il comando *`node test.js`* nella _root_ della _repository_ locale. Il _test_ esamina tutti i documenti e ritorna degli avvisi in caso fallisse.

==== Analisi dinamica // TODO: da rivedere, non credo sia corretto parlare di analisi dinamica per i documenti
Il verificatore può consultare sia il documento in formato `.pdf` per maggiore leggibilità sia il codice sorgente. Nel caso trovasse degli errori può segnalarli tramite la _pull request_, oppure pubblicare un commento per avviare una discussione riguardo una correzione più complessa.

=== Analisi statica
L'analisi statica è un processo di verifica che si svolge senza eseguire il codice ed è perciò applicabile a tutti i prodotti del progetto. Il suo obiettivo è individuare errori e anomalie nel codice sorgente o nel testo prodotto. Le due tecniche principali adottate sono il _walkthrough_ e l'_inspection_.

- Il _walkthrough_ prevede un'analisi sistematica di tutto il prodotto alla ricerca di irregolarità non meglio specificate.

- L'_inspection_, invece, prevede una ricerca mirata all'interno del codice sorgente o del documento soffermandosi solo su ciò che si sa essere più soggetto ad errori, trasformando quindi il processo di verifica nella risoluzione di una _checklist_.

L'_inspection_ è il metodo da preferire in quanto più efficiente, allo stesso tempo è difficilmente implementabile all'inizio per mancanza di esperienza (e quindi dati su quali sono gli errori più comuni).


=== Analisi dinamica
L'analisi dinamica è un processo di verifica che si svolge eseguendo il codice. Il suo obiettivo è individuare errori e anomalie nel codice sorgente. Lo strumento principale utilizzato è il _test_. I test possono essere di vario tipo:
- *Test di unità*: verificano il corretto funzionamento di una singola unità di codice.
- *Test di integrazione*: verificano il corretto funzionamento dell'interazione tra due o più unità di codice.
- *Test di sistema*: verificano il corretto funzionamento del sistema nel suo complesso.
- *Test di regressione*: verificano che le modifiche apportate al codice non abbiano introdotto nuovi errori.
- *Test di accettazione*: verificano che il prodotto soddisfi i requisiti specificati.


== Validazione
Il processo di validazione è definibile, secondo lo _standard_ ISO/IEC 12207:1995, come il processo di conferma tramite dimostrazioni oggettive che il prodotto soddisfi i requisiti specificati per un sistema. In sostanza, la validazione certifica che il prodotto soddisfi le esigenze del cliente ovvero, più specificamente:
- soddisfi tutti i requisiti concordati;
- sia eseguibile senza problemi nell'ambiente di destinazione.

Si tratta di un processo che si svolge in parallelo alla verifica e che si conclude con l'accettazione del prodotto da parte del cliente. Una volta che il cliente, ovvero nel nostro caso l'azienda proponente, ha accettato il prodotto si può procedere con il rilascio.

== Risoluzione dei problemi
È possibile incappare in problemi riguardanti il ciclo di redazione e verifica dei documenti. In questi casi è preferibile cercare di risolverli al più presto per conto proprio in maniera da non ostacolare il lavoro dei compagni. Tuttavia se si è insicuri delle procedure da adottare o non si trova una soluzione si può contattare l'amministratore per tornare al più presto operativi. Come ultima alternativa è possibile contattare Klaudio Merja, creatore dell'organizzazione e della _repository_ GitHub, il quale è l'unico che può eseguire alcune operazioni forzate poiché gode dei privilegi da amministratore dell'ambiente GitHub.


== Gestione della qualità
=== Scopo
Il processo di gestione della qualità ha lo scopo di garantire che i prodotti soddisfino i requisiti specificati e che siano, assieme ai processi, conformi agli standard di qualità stabiliti. La qualità è un requisito fondamentale per il successo del progetto e deve essere garantita in ogni fase del ciclo di vita del prodotto.

=== Definizione delle metriche
Lo strumento fondamentale per misurare la qualità di un prodotto o di un processo sono le metriche. Esse permettono di valutare in modo oggettivo il grado di conformità del prodotto o del processo rispetto agli standard di qualità stabiliti. Le metriche vengono utilizzate per tracciare la qualità durante tutto il ciclo di vita del progetto. L'elenco delle metriche adottate in questo progetto è consultabile nell'#link(<metriche>)[ultima sezione] di questo documento.

==== Identificazione
Le metriche adottate sono identificate da un codice alfabetico, strutturato nel seguente modo:

#align(center)[*M[tipo]-[abbreviazione]*]

dove:
- *tipo*: indica il tipo di metrica, può essere:
  - *PC*: per le metriche riguardanti la qualità di processo.
  - *PD*: per le metriche riguardanti la qualità di prodotto.
- *abbreviazione*: abbreviazione o acronimo del nome della metrica.

==== Struttura
Ciascuna metrica viene descritta tramite seguenti campi:
- *Codice*: codice identificativo della metrica.
- *Nome*: nome della metrica.
- *Descrizione*: breve descrizione della metrica.
e, nei casi in cui sia necessario:
- *Formula*: formula utilizzata per calcolare il valore della metrica.
- *Parametri*: parametri utilizzati nella formula.


=== Criteri di accettazione
All'interno del Piano di Qualifica sono definiti i criteri di accettazione per le metriche adottate. Questi criteri sono stabiliti in modo da garantire che i prodotti e i servizi soddisfino i requisiti specificati e che siano conformi agli standard di qualità stabiliti.
Ad ogni metrica è associata una soglia di accettazione e una soglia di ottimalità. 
- la soglia di accettazione rappresenta il valore minimo (o massimo) che la metrica deve rispettare per essere considerata accettabile
- la soglia di ottimalità rappresenta il valore minimo (o massimo) che la metrica deve rispettare per essere considerata ottimale.

#pagebreak()
= Processi organizzativi


= Standard per la qualità

/*TODO: scrivere la sezione
== Standard ISO/IEC 9126
*/

= Metriche per la qualità <metriche>

== Metriche per la qualità di processo

=== Processi primari
==== Fornitura
- *MPC-PV*:
  - *Nome*: Planned Value
  - *Descrizione*: Indica il valore pianificato per il lavoro da svolgere.
  - *Formula*: $ "PV" = "%LS" * "BAC" $
  - *Parametri*:
    - *%LS*: Percentuale del lavoro svolto.
    - *BAC*: Budget at Completion, ovvero il costo totale del progetto stabilito in fase di candidatura.

- *MPC-EV*:
  - *Nome*: Earned Value
  - *Descrizione*: Indica il valore del lavoro svolto fino a quel momento.
  - *Formula*: $ "EV" = "%LS" * "EAC" $
  - *Parametri*:
    - *%LS*: Percentuale del lavoro svolto.
    - *EAC*: Estimated at Completion.

- *MPC-AC*:
  - *Nome*: Actual Cost
  - *Descrizione*: Indica il costo effettivo sostenuto fino a quel momento. Consultabile in ogni momento attraverso il Piano di Progetto.

- *MPC-CPI*:
  - *Nome*: Cost Performance Index
  - *Descrizione*: Indica il rapporto tra il valore guadagnato e il costo effettivo.
  - *Formula*: $ "CPI" = "EV" / "AC" $
  - *Parametri*:
    - *EV*: Earned Value, ovvero il valore guadagnato.
    - *AC*: Actual Cost, ovvero il costo effettivo.

- *MPC-EAC*:
  - *Nome*: Estimated at Completion
  - *Descrizione*: Indica il costo stimato per terminare del progetto, rivisto in base allo stato attuale del progetto.
  - *Formula*: $ "EAC" = "BAC" / "CPI" $
  - *Parametri*:
    - *BAC*: Budget at Completion.
    - *CPI*: Cost Performance Index, ovvero il rapporto tra il valore guadagnato e il costo effettivo.

- *MPC-SV*:
  - *Nome*: Schedule Variance
  - *Descrizione*: Indica se il progetto è in anticipo, in pari o in ritardo rispetto alla pianificazione.
  - *Formula*: $ "SV" = "EV" - "PV" $
  - *Parametri*:
    - *EV*: Earned Value.
    - *PV*: Planned Value.

- *MPC-CV*:
  - *Nome*: Cost Variance
  - *Descrizione*: Indica se il progetto è sotto o sopra il budget.
  - *Formula*: $ "CV" = "EV" - "AC" $
  - *Parametri*:
    - *EV*: Earned Value.
    - *AC*: Actual Cost.

- *MPC-ETC*:
  - *Nome*: Estimate to Complete
  - *Descrizione*: Indica il costo stimato per completare il progetto.
  - *Formula*: $ "ETC" = "EAC" - "AC" $
  - *Parametri*:
    - *EAC*: Estimated at Completion.
    - *AC*: Actual Cost.


=== Processi di supporto
==== Documentazione
- *MPC-IG*: 
  - *Nome*: Indice di Gulpease
  - *Descrizione*: Indica il livello di leggibilità di un testo.
  - *Formula*: $ "IG" = 89 + (300 * "NDF" - 10 * "NDL") / "NDP" $
  - *Parametri*: 
    - *NDF*: numero di frasi presenti nel testo.
    - *NDL*: numero di lettere presenti nel testo.
    - *NDP*: numero di parole presenti nel testo.

- *MPC-CO*:
  - *Nome*: Correttezza ortografica
  - *Descrizione*: Indica il numero di errori ortografici presenti nel testo.


== Metriche per la qualità di prodotto
