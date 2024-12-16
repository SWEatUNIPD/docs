#import "/templates/template.typ": *
#import "@preview/treet:0.1.1": *

#show: content => verbale(
  data: "14 Novembre 2024",
  destinatari: ("Gruppo SWE@",),
  responsabile: "-",
  redattori: ("Klaudio Merja", "Andrea Precoma", "Davide Picello", "Riccardo Milan"),
  verificatori: ("Andrea Precoma", "Davide Marin", "Klaudio Merja"),
  titolo: "Norme di Progetto",
  uso: "Interno",
  versioni: (
    "0.5.0",
    "13/12/2024",
    "Riccardo Milan",
    "Klaudio Merja\nDavide Marin",
    [
      - Aggiunta del capitolo "Processi organizzativi"
    ],

    "0.4.0",
    "30/11/2024",
    "Andrea Precoma",
    "Riccardo Milan",
    [
      - Modifica del _versioning_
      - Modifica delle regole di stile
      - Aggiunta struttura della _repository_ Near NearYou
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



== Controllo qualità
TODO: Cosa controllare per mantenere la qualità attesa (durante la verifica e validazione), consultare il PdQ.



== Verifica
Ogni documento creato o modificato necessita la revisione da uno o più verificatori. Questo processo viene automatizzato il più possibile con l'utilizzo delle _pull request_, il sistema di _ticketing_ tramite _issue_ e una Action dedicata. Quando possibile è preferibile richiedere la revisione a tutti i verificatori per i documenti di carattere generale perché fondamentali per il corretto svolgimento del progetto.

=== Pull request
Le _pull request_ velocizzano e automatizzano la verifica dei documenti. Una volta organizzate nel modo corretto (#link(<lavoro_doc>)[sez. 3.1.1.2]), il verificatore può aggiungere una _review_ da interfaccia _web_ commentando, chiedendo una modifica o approvando la _pull request_. Una volta soddisfatti i requisiti spetterà al responsabile confermare la nuova versione del documento e unire il _branch_ al principale tramite il pulsante "_squash and merge_".

=== Analisi statica
Al completamento di ogni _commit_ una Action compila i _file_ Typst modificati e genera un _file_ `.zip` contenente i documenti in formato `.pdf`. Così facendo si è sicuri che il codice è privo di errore sintattici e genera correttamente un prodotto finale e distribuibile.

È stato messo a disposizione un _test_ il quale controlla che la prima occorrenza dei termini del Glossario venga identificata (#link(<glossario>)[sez. 1.3]). Viene effetuato automanticamente dalla Action ad ogni _push_, tuttavia è preferibile eseguirlo prima in locale così da efficientare il lavoro. È sufficiente quindi aver installato NodeJS sulla propria macchina ed eseguire il comando *`node test.js`* nella _root_ della _repository_ locale. Il _test_ esamina tutti i documenti e ritorna degli avvisi in caso fallisse.

=== Analisi dinamica
Il verificatore può consultare sia il documento in formato `.pdf` per maggiore leggibilità sia il codice sorgente. Nel caso trovasse degli errori può segnalarli tramite la _pull request_, oppure pubblicare un commento per avviare una discussione riguardo una correzione più complessa.



== Validazione



== Risoluzione dei problemi
È possibile incappare in problemi riguardanti il ciclo di redazione e verifica dei documenti. In questi casi è preferibile cercare di risolverli al più presto per conto proprio in maniera da non ostacolare il lavoro dei compagni. Tuttavia se si è insicuri delle procedure da adottare o non si trova una soluzione si può contattare l'amministratore per tornare al più presto operativi. Come ultima alternativa è possibile contattare Klaudio Merja, creatore dell'organizzazione e della _repository_ GitHub, il quale è l'unico che può eseguire alcune operazioni forzate poiché gode dei privilegi da amministratore dell'ambiente GitHub.

//FIXME: Mancano ovviamente gli standard di qualità del prodotto che devono essere ancora spiegati, quindi al momento non sono inseriti



#pagebreak()
= Processi organizzativi
L'ingegneria del software è una disciplina complessa e multidisciplinare che richiede una pianificazione accurata, una gestione efficiente delle risorse e un controllo rigoroso della qualità. La definizione e il rispetto di processi organizzativi ben strutturati diventa quindi cruciale.

== Gestione dei processi
=== Scopo
La gestione dei processi, come stabilito dallo standard ISO/IEC 12207:1997, ha lo scopo di stabilire, implementare e migliorare i processi che il gruppo deve assicurarsi vengano svolte per garantire la massima resa dei processi di sviluppo.

=== Descrizione
Le attività di gestione dei processi sono:
1. Definizione dei processi: 
    - Identificare e documentare i processi;
    - Stabilire linee guida e procedure per l’esecuzione di ciascun processo;
2. Pianificazione e monitoraggio:
    - Elaborare piani dettagliati per l’esecuzione dei processi;
    - Monitorare costantemente l’avanzamento, l’efficacia e la conformità ai requisiti;
    - Stimare i tempi, le risorse ed i costi;
3. Esecuzione, revisione e valutazione:
    - Monitorare l'avanzamento dei processi per identificare aree problematiche o di miglioramento;
    - Con l'avanzamento implementare azioni correttive e preventive per ottimizzare i processi;
4. Formazione e competenze:
    - Assicurare che il personale coinvolto in un processo sia adeguatamente formato rispetto al dominio d'uso di esso;
5. Chiusura.

=== Pianificazione
==== Descrizione
Come stabilito dallo standard ISO/IEC 12207:1997, il responsabile ha il compito di predisporre i piani per l'esecuzione di tutte le attività relative alla pianificazione del periodo di carica. Ogni attività dovrà avere associata una descrizione, il personale incaricato di gestire i processi di essa e una scadenza da rispettare.\
Il responsabile di un determinato sprint redigerà questa pianificazione all'interno del documento Piano di Progetto, che riporterà le attività da svolgere in quel periodo.

==== Scopo
Gli scopi della pianificazione sono avere un piano reale di quelli che sono gli obiettivi realistici dello sprint, per poi poter eseguire una retrospettiva, e suddividere tutte le attività necessarie per perseguire questi obiettivi nelle risorse del team, in modo da garantire ordine e chiarezza nella divisione dei compiti.

==== Ruoli
I ruoli svolti dai membri del gruppo per il progetto sono decisi dal Responsabile di Progetto. Al termine del progetto ogni componente dovrà aver ricoperto tutti i ruoli, che sono di seguito descritti.

*Responsabile di Progetto*\
Il Responsabile ha il compito fondamentale di coordinare i membri del gruppo e rappresentarlo nelle comunicazine con il proponente e i committenti.\
I suoi principali compiti sono:
- Approvare la documentazione;
- Gestire la pianificazione del progetto come descritta sopra;
- Coordinare i membri controllando lo stato del backlog e assegnando le attività da portare a termine;
- Studiare e gestire l'analisi dei rischi;
- Gestire le comunicazioni con l'esterno.

*Amministratore di Progetto*\
L'amministratore definisce, controlla e gestisce il sistema in cui lavora il gruppo, con piena responsabilità sull'efficacia ed efficienza del Way of Working.\
I suoi principali compiti sono:
- Essendo il vice del Responsabile, sostituirlo nel caso di impedimenti;
- Migliorare l'ambiente di lavoro automatizzando il più possibile i processi;
- Gestione e ottimizzazione dei processi;
- Redigere e mantenere la documentazione;
- Gestire le infrastrutture e i servizi.


*Analista*\
L'analista è la figura più importante nelle fasi iniziali del progetto, egli infatti è responsabile dell'analisi dei requisiti, grazie alla quale si potrà passare alla vera e propria progettazione del software.\
Ha il compito di:
- Studiare il problema descritto dal proponente e il relativo dominio d'uso;
- Raccogliere e studiare i bisogni dei committenti;
- Redigere il documento Analisi dei Requisiti;
- Studiare i requisiti definendo la loro complessità.

*Progettista*\
Il progettista determina le scelte realizzative del progetto, scegliendo i design patterns più adeguati per soddisfare i requisiti individuati dagli analisti in un'architettura che modelli il problema. Il progettista seguirà lo sviluppo particolarmente, ma non la manutenzione.\
Ha il compito di:
- Sviluppare un prodotto economico, facilmente manutenibile a partire dal lavoro dell'analista;
- Favorire efficienza ed efficacia grazie alle scelte tecniche effettuate;
- Garantire un basso grado di accoppiamento grazie ad un sistema ben strutturato.

*Verificatore*\
Il verificatore controlla il lavoro svolto dagli altri componenti del gruppo, assicurandosi che le norme vengano attuate correttamente. \
Ha il compito di:
- Verificare la correttezza delle attività tramite gli strumenti e tecniche definiti nelle Norme di Progetto;
- Verificare la conformità dei prodotti ai requisiti funzionali e di qualità;

*Programmatore*\
Il programmatore è incaricato di produrre il codice necessario a sviluppare il software che risponda ai bisogni dei proponenti indivuati dagli analisti secondo l'architettura e i design patterns proposti dai progettisti.\
Ha il compito di:
- Implementare la Specifica Tecnica scritta dal Progettista;
- Scrivere codice mantenibile, che rispetti le `Norme di Progetto`;
- Creare test per la verifica e validazione del codice;
- Redigere il manuale utente.

==== Ticketing
Il gruppo adotta l'*Issue Tracking System* (ITS) interno di GitHub. GitHub permette una gestione semplice e chiara dei compiti da svolgere tramite la project board e le issue: le issues vengono create molto velocemente e possono essere chiuse automaticamente a lavoro svolto.\
È compito del responsabile creare le issues ed assegnarle ai vari membri del gruppo, il cui stato di avanzamento è consultabile all'interno della board.\
Le Issue sono create dal Responsabile e sono composte da:
- *Titolo*: identifica in modo univoco il compito da svolgere;
- *Descrizione*: descrizione chiara dell'attività da svolgere e riferimento al verbale in cui è stata presa tale decisione per avere più informazioni riguardo ad essa;
- *Assegnatario*: il componente del gruppo incaricato a svolgere l'attività;
- *Verificatore*: il componente incaricato a garantire che l'attività venga svolta senza errori e rispettando gli standard;
- *Milestone*: la release in cui deve essere pubblicato il risultato dell'attività;
- *Etichetta*: la categoria a cui appartiene quella attività;
- *Stato*: avanzamento del task.
Ogni qualvolta ci sia la necessità di portare a termine un compito è necessario seguire la seguente procedura:
+ Il responsabile, dopo aver concordato in una riunione il da farsi, crea una nuova Issue con stato "to do" su GitHub e la assegna;
+ All'inizio del lavoro di produzione, l'assegnatario cambia la issue  stato, passando da "to do" ad "in progress", inoltre crea un nuovo branch apposito staccato dal ramo principale per eseguire l'attività;
+ Contestualmente l'assegnatario apre una pull request su GitHub in stato draft, per rendere pubblico il suo lavoro ancora prima che sia pronto. Nella descrizione della pull request è importante che scriva la parola chiave `closes #X` (dove X è l'id della issue) per chiudere la issue una volta che la pull request sarà approvata e mergiata nel ramo principale;
+ Finito il lavoro di produzione, viene modificata la pull request dallo stato draft allo stato ready for review e viene assegnato il Verificatore;
+ Il Verificatore si controlla il lavoro svolto e:
  - Se la verifica ha esito *positivo*:
    + Il Verificatore approva su GitHub la pull request e chiede al responsabile di mergiarla nel ramo principale ;
    + La Issue viene marcata "Done" su GitHub automaticamente.
  - Se la verifica ha esito *negativo*:
    + Il Verificatore rilascia una lista di cambiamenti suggeriti nella pull request;
    + L'incaricato apporta le modifiche suggerite e si torna al punto 4.

=== Coordinamento
Il Coordinamento è l'attività che concerne la gestione delle comunicazioni e degli incontri tra le diverse parti coinvolte nel progetto, ovvero membri del team, proponente e committenti. Il coordinamento è fondamentale nell'assicurare l'efficienza del progetto e il coinvolgimento di tutte le parti interessate.\
Le attività di coordinamento comprendono la gestione della comunicazione interna ed esterna, la conduzione delle riunioni e la definizione di comportamenti comuni per i membri del team.

==== Comunicazioni
===== Comunicazioni interne
Le comunicazioni saranno gestite attraverso due canali principali: *Telegram* e *Discord*. Telegram, un servizio di messaggistica istantanea, sarà impiegato per facilitare conversazioni rapide, informali e accessibili tramite dispositivi mobili. Le riunioni a distanza e le discussioni più strutturate saranno invece condotte su Discord.\
Al fine di coordinare in modo efficace le attività di gruppo, le discussioni di routine avverranno su Telegram, mentre eventuali questioni critiche saranno affrontate durante incontri straordinari attraverso videochiamate su Discord.\

===== Comunicazioni esterne
Il Responsabile del progetto sarà incaricato di gestire il dialogo esterno attraverso l'indirizzo email: `sweat.unipd@gmail.com`. Si assicurerà che ogni membro del gruppo sia informato sulle corrispondenze con committenti e proponente, seguendo le norme precedentemente stabilite per le comunicazioni interne.
Per quanto riguarda il mezzo di comunicazione per i SAL con i proponenti lo strumento utilizzato è Google Meet, che rende le video chiamate accessibili a tutti.

==== Riunioni
Al fine di garantire l'efficienza delle riunioni il responsabile corrente avrà il compito di interloquire con i proponenti per riepilogare i punti principali del periodo trascorso e esprimere dubbi e incertezze emerse dal gruppo.

*Riunioni Interne:*\
Le riunioni interne sono programmate di comune accordo tra i membri del gruppo. In caso di necessità, è possibile richiedere riunioni straordinarie durante la settimana tramite il canale dedicato su Telegram, con data e orario stabiliti attraverso un sondaggio. Tutte le riunioni online si svolgeranno nel canale Discord appositamente designato. Nelle riunini interne l'obiettivo finale è quello di risolvere le mancanze segnalate dall'ordine del giorno, per cui nella fase finale della riunione, il responsabile, dopo aver discusso con il gruppo, pianifica le attiità da svolgere e crea rispettivamente le issue come da procedura sopra.

*Compiti del responsabile*
- Esporre i punti all'ordine del giorno relativamente alla loro priorità;
- Aggiornare il resto del gruppo in caso di variazioni orarie;
- Pianificare le attività da svolgere;
- Assegnare i task ai membri del gruppo.

*Riunioni Esterne:*\
Le riunioni esterne coinvolgono i membri del gruppo e il proponente.\
Per le riunioni con il proponente, viene utilizzata la piattaforma Google Meet, e l'indirizzo viene comunicato al team di volta in volta. In accordo con l'azienda proponente gli incontri di fine sprint avvengono ogni due settimane, in quanto lo sprint dura due settimane, mentre a metà di ogni sprint si svolgerà un incontro di allineamento più breve per un confronto e degli aggiustamenti.

==== Verbali
*Verbali Interni*\
Al fine di tracciare le discussioni svolte, le decisioni prese dal gruppo e soprattutto le motivazioni dietro ad esse, al termine di ogni incontro interno al gruppo, viene aperta una issue su Github per la preparazione, la verifica e l'approvazione del verbale. Il compito di redigere il verbale, seguendo il formato indicato nella sezione 3.1 di questo documento, è affidato al Responsabile, il quale deve assicurarsi di includere tutte le informazioni rilevanti discusse.

*Verbali Esterni*\
Come per il caso delle riunioni interne verrà redatto un Verbale con le stesse modalità descritte in precedenza.

== Miglioramento
=== Descrizione
Secondo lo standardG ISO/IEC 12207:1995, il processo di miglioramento nel ciclo di vita del software è finalizzato a stabilire, misurare, controllare e migliorare i processi che lo compongono. L’attività di miglioramento è composta da:
- Analisi: Identificare le aree di miglioramento dei processiG;
- Miglioramento: Implementare le modifiche necessarie per migliorare i processi di sviluppo del software;

==== Analisi dei processi
Innanzitutto occorre stabilire una serie di processi organizzativi per l'intero ciclo di vita del software applicabili alle varie attività di progetto. Quest'ultimi devono essere documentati, come viene fatto proprio qui, e va implementato un meccanismo di controllo per sviluppare, monitorare e migliorare i processi stessi. Per garantire efficacia e continuo miglioramento dei processi il responsabile guiderà una retrospettiva di gruppo da effettuare alla fine di ogni sprint e da mettere nero su bianco per ogni sprint nel documento Piano di Progetto.

==== Miglioramento dei processi
Una volta identificati i potenziali miglioramenti questi vanno effettivamente implementati secondo le corrette a adeguate metodologie. Nella retrospettiva seguente all'applicazione di queste migliorie verrà effettuato un altro _#rifGlossario("feedback")_ a riguardo per progredire ciclicamente.

=== Metriche
La misurazione del miglioramento nello sviluppo del software può coinvolgere diverse metriche che riflettono aspetti chiave del processo stesso. Generalmente andiamo a valutare le seguenti:
- Velocità di sviluppo;
- Tasso di errori;
- Conformità agli standard.

== Formazione
=== Descrizione
Dato che alla base di un progetto di successo troviamo un personale esperto e qualificato, per fare in modo che tutti i componenti del gruppo siano preparati ed aggiornati nel ricoprire i ruoli di progetto è fondamentale il processo di formazione.\
Con esso vengono definiti gli standard e le metodologie con i quali ognuno sarà sempre pronto nell'argomento adeguato nel momento opportuno.

=== Descrizione
Per poter formare i membri del gruppo è necessario innanzitutto comprendere a pieno il dominio del problema. Occorre quindi capire quali sono i temi da approfondire ed identificare nei vari processi da svolgere quali nozioni è necessario apprendere. \
Fatto ciò si deve passare all'individuazione del materiale di formazione, il quale crescerà nel tempo, dato che man mano che il progetto avanza anche il nostro grado di conoscenza e comprensione del problema dovrà aumentare il più possibile.\
Infine, una volta capito cosa e da dove studiare, è necessario che ognuno dei componenti del gruppo vada ad aggiornarsi individualmente oppure, quando possibile, tramite supporto di altri membri più esperti.

=== Strumenti
Al fine di agevolare il processo di formazione, ogni membro del gruppo incaricato in un determinato sprint di approfondire un determinato argomento dovrà essere in grado di tramandare la propria conoscenza agli altri. 
Per aiutarci nel processo di apprendimento l'azienda Sync Lab ci fornisce, duranete lo svolgimento del progetto, meteriali quali video e risorse utili alle tecnologie di dominio d'uso del nostro capitolato, nonché delle sedute di _#rifGlossario("Deep dive")_ concordate a calendario.

