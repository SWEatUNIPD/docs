#import "/templates/template.typ": *
#import "@preview/treet:0.1.1": *

#show: content => verbale(
  data: "27 marzo 2025",
  destinatari: ("Gruppo SWE@",),
  responsabile: "Davide Picello",
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
  titolo: "Norme di Progetto",
  uso: "Interno",
  versioni: (
    "2.0.0",
    "27/03/2025",
    "Andrea Precoma",
    "Klaudio Merja",
    [
      - Aggiornate strutture delle _repository_
    ],
    "1.3.0",
    "27/03/2025",
    "Andrea Precoma",
    "Klaudio Merja",
    [
      - Rinominato MPD-ROPS in MPD-RFS
      - Rimosse metriche MPD-SC, #box[MPD-FD], MPD-COC, MPD-SFI, MPD-SFO e MPD-RM
    ],
    "1.2.0",
    "03/03/2025",
    "Andrea Precoma",
    "Davide Marin",
    [
      - Aggiornata sezione Piano di Progetto
      - Aggiornata norma sui riferimenti esterni accompagnati dall'ultimo accesso
      - Corretta fase di approvazione
      - Aggiunti Manuale Utente e Specifica Tecnica nella documentazione fornita
    ],
    "1.1.0",
    "11/02/2025",
    "Andrea Precoma",
    "Andrea Perozzo",
    [
      - Rimozione identificativo ORG per attività organizzative
      - Rimozione del registro delle modifiche e riassunto per i verbali
      - Cambiamento della nomenclatura dei verbali
    ],
    "1.0.1",
    "05/02/2025",
    "Klaudio Merja",
    "Andrea Precoma",
    [
      - Correzione dei riferimenti alla documentazione del gruppo
    ],
    "1.0.0",
    "26/01/2025",
    "Davide Marin",
    "Andrea Perozzo",
    [
      Approvazione versione finale del documento per rilascio in RTB
    ],
    "0.9.0",
    "24/01/2025",
    "Davide Marin",
    "Andrea Perozzo\nDavide Martinelli",
    [
      - Aggiunta descrizione della _repository_ NearYou
      - Ultimazione di alcuni paragrafi
    ],
    "0.8.0",
    "12/01/2025",
    "Davide Marin",
    "Davide Martinelli\nDavide Picello",
    [
      - Aggiunte metriche per la qualità di prodotto
    ],
    "0.7.0",
    "8/01/2025",
    "Davide Martinelli",
    "Davide Marin\nDavide Picello",
    [
      - Aggiunte metriche per la qualità di processo
      - Stesura sezione "Standard per la qualità"
      - Ampliamento sezioni "Verifica" e "Validazione"
    ],
    "0.6.0",
    "22/12/2024",
    "Davide Picello",
    "Davide Marin,\nKlaudio Merja",
    [
      - Scrittura della sezione "Casi d'uso" in "Processi primari"
    ],
    "0.5.0",
    "22/12/2024",
    "Riccardo Milan",
    "Davide Marin\nKlaudio Merja",
    [
      - Aggiunta del capitolo "Processi organizzativi"
      - Correzioni di stile
    ],
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

= Introduzione
== Scopo del documento
Lo scopo principale del documento Norme di Progetto è quello di documentare il _#rifGlossario("way of working")_ che deve essere adottato dai membri del gruppo per garantire la coerenza nel lavoro svolto.

Il documento adotta un approccio di tipo incrementale, ovvero è frutto di una serie di fasi di modifica che avvengono durante il suo ciclo di vita. È quindi soggetto durante lo svolgimento del progetto didattico a continui aggiornamenti, a seguito delle decisioni prese dal gruppo, volti a migliorare il _way of working_ stesso. I membri del gruppo sono quindi tenuti a prendere visione del documento ogni qual volta esso sia oggetto di modifiche.

== Scopo del progetto didattico
Lo scopo principale del progetto _NearYou - Smart custom advertising platform_ proposto dall'azienda Sync Lab S.r.l. è quello di sviluppare un prodotto che sfrutti la #rifGlossario("GenAI") per la creazione di pubblicità mirate sui singoli utenti, utilizzando all'interno di _#rifGlossario("prompt")_ dati come la posizione in tempo reale, le informazioni personali e i dati di profilazione degli utenti stessi.


L'obiettivo del prodotto è quello di rendere le campagne pubblicitarie delle aziende interessate il più personalizzate e ottimizzate possibili ed aumentare il coinvolgimento dell'utente finale, con lo scopo di ridurre la disconnessione tra messaggio e destinatario e portare un miglioramento sul #rifGlossario("ROI") della campagna stessa.

== Glossario <glossario>
Per evitare eventuali ambiguità e incomprensioni sulla terminologia adottata nella documentazione redatta dal gruppo, viene fornito un glossario.

La prima occorrenza di un termine definito all'interno del glossario presente all'interno di un documento viene sottolineato e seguito dalla lettera "g" posta ad apice (e.g. #rifGlossario("termine")).

== Riferimenti
=== Riferimenti normativi
- Regolamento del progetto didattico, _slide_ 7, 12, 13, 19 e 23 (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")
- ISO/IEC 12207:1995, da pagina 9 a 47 (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")
=== Riferimenti informativi
- Glossario (v2.0.0)\ #formatLink(url: "https://sweatunipd.github.io/docs/pb/glossario_ver2.0.0.pdf")
- Capitolato C4 - Sync Lab S.r.l. (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")
- Lezione T07 - Qualità del software, da _slide_ 7 a 17 (ultimo accesso in data 27/03/205) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")
- Lezione T08 - Qualità di processo, da _slide_ 2 a 7 (ultimo accesso in data 27/03/2025) \ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")

#pagebreak()
= Processi primari
Lo _standard_ ISO/IEC 12207:1995, riferimento internazionale per i processi del ciclo di vita del _software_, definisce come processi primari le attività di: acquisizione, fornitura, sviluppo, gestione operativa e manutenzione.

Tuttavia, data la natura didattica del progetto, saremo tenuti ad occuparci solo delle parti di fornitura e sviluppo.

== Fornitura
Il processo di fornitura contiene le attività e i compiti del fornitore, il quale dovrà accordarsi con il proponente per stabilire ufficialmente, tramite un contratto, i vari vincoli e requisiti del progetto. Successivamente si procede con la redazione del documento Piano di Progetto, il quale avrà il compito di pianificare e monitorare le attività da svolgere durante i periodi del progetto.

Le attività che compongono questo processo sono:
- Iniziazione
- Preparazione della risposta
- Contratto
- Pianificazione
- Esecuzione e controllo
- Revisione e valutazione
- Consegna e completamento

=== Comunicazioni con il proponente
L'azienda si è resa raggiungibile, per via testuale, tramite _e-mail_ per le comunicazioni ufficiali e tramite la piattaforma di messaggistica istantanea Discord, invece, per le comunicazioni più veloci. È stato deciso inoltre di utilizzare l'applicazione di teleconferenza Google Meet per le riunioni in cui è prevista la presenza di tutto il gruppo. L'azienda si è resa disponibile anche ad accogliere il gruppo nei loro uffici.

Per ogni incontro, verrà redatto un verbale riguardante le discussioni e decisioni avvenute nello stesso. Questi verbali, dopo essere stati approvati e firmati dall'azienda, saranno disponibili presso il sito _web_ del gruppo #formatLink(label: "https://sweatunipd.github.io", url: "https://sweatunipd.github.io") (ultimo accesso 03/03/2025).

==== SAL
È stato inoltre concordato un incontro settimanale di circa 20-30 minuti, tendenzialmente il mercoledì pomeriggio, riguardo allo Stato di Avanzamento dei Lavori (#rifGlossario("SAL")). In questi incontri il gruppo è tenuto a esporre i progressi e i dubbi dell'ultima settimana di lavoro, confrontandosi con il proponente e delineando le attività da svolgere nella settimana a venire.

==== Sessioni di deep dive tecnologico
Il proponente si è anche reso disponibile per organizzare delle sessioni di #rifGlossario("deep dive") tecnologico per approfondire l'utilizzo di alcune tecnologie che potrebbero rivelarsi particolarmente ostiche per il gruppo.
Queste verranno fissate quando necessarie.


=== Documentazione fornita
Di seguito viene riportato l'elenco dei documenti che il gruppo consegnerà all'azienda proponente Sync Lab S.r.l. e ai committenti, nonché i prof. Tullio Vardanega e prof. Riccardo Cardin.

==== Analisi dei Requisiti
L'Analisi dei Requisiti è un documento redatto dagli analisti che definisce le funzionalità necessarie per soddisfare le richieste del proponente.

===== Casi d'uso
In questo documento rientra la realizzazione dei casi d'uso (_use case_): descrizioni formali di come un sistema _software_ interagisce con utenti o con altre entità esterne al sistema, chiamati attori, per raggiungere un obiettivo specifico. Questi sono composti da una descrizione testuale e dal loro diagramma, essi sono usati per documentare le varie funzionalità attese dal sistema ad alto livello, quindi non specificando i dettagli implementativi.

Ogni caso d'uso deve comprendere le seguenti informazioni:

====== Identificazione
Ogni caso d'uso deve essere identificato da un codice univoco, secondo la nomenclatura *UC[numero_use_case]*, un trattino ed un breve titolo esplicativo.

====== Attori
Gli attori rappresentano entità esterne che interagiscono con il sistema. Ogni caso d'uso specifica una funzionalità creata per un determinato attore.

Esistono più tipi di attori:
- *Attore primario*: L'utente o _#rifGlossario("stakeholder")_ che avvia il caso d'uso ed ha un obiettivo da raggiungere utilizzando il sistema.
- *Attore di supporto*: Un utente o _stakeholder_ coinvolto nel caso d'uso, ma che non inizia l'interazione con il sistema. Può fornire ulteriori _input_ o risorse necessarie per completare lo _use case_. La sua presenza non è obbligatoria all'interno di un caso d'uso.

====== Precondizioni
Condizioni che devono essere vere o soddisfatte affinché il caso d'uso possa iniziare. Definiscono lo stato iniziale del sistema ed i requisiti che devono essere garantiti affinché il caso d'uso sia valido.


====== Postcondizioni
Stato finale del sistema dopo che il caso d'uso è stato completato. Utili per verificare che l'obiettivo sia stato raggiunto e per documentare le modifiche apportate al sistema.

====== Scenario principale
Lo scenario principale descrive la sequenza di azioni _standard_ che l'attore ed il sistema eseguono per raggiungere l'obiettivo del caso d'uso. Include tutti i passi principali in ordine sequenziale.

====== Relazioni
Nei casi d'uso possiamo avere i seguenti tipi di relazione tra attore e caso d'uso.

======= Associazione
Congiunge semplicemente gli attori con i casi d'uso a cui prendono parte. Un attore può essere associato a qualsiasi numero di casi d'uso e viceversa. L'associazione implica uno scambio di informazioni tra attore e caso d'uso associato. Viene indicata nel diagramma con una linea nera.

======= Generalizzazione
Riguarda sia gli attori che i casi d'uso e rappresenta una relazione tra una classe, un caso d'uso o un attore più generale (superclasse) ed uno più specifico (sottoclasse). Questo tipo di relazione segue il principio dell'ereditarietà, in cui la sottoclasse eredita le caratteristiche dalla superclasse e può aggiungere o modificare specifici dettagli. La generalizzazione si rappresenta con una linea che collega le due entità (classi, attori o casi d'uso) e termina con un triangolo vuoto sulla punta, che indica la direzione verso la classe o entità più generale.


======= Inclusione
Le inclusioni rappresentano funzionalità o comportamenti comuni che possono essere riutilizzati in più casi d'uso per evitare duplicazioni, inoltre indicano che l'esecuzione di una funzione implica l'esecuzione di tutte le sue inclusioni. Viene indicata nel diagramma come una freccia tratteggiata con indicato '"_include_"'. La funzione alla base della freccia include completamente la funzione alla punta della freccia.

======= Estensione
Le estensioni definiscono variazioni opzionali o eccezioni al comportamento principale del caso d'uso. Questi flussi si attivano solo se si verificano determinate condizioni. Viene indicata nel diagramma come una freccia tratteggiata con indicato '"_extend_"'. La funzione alla base della freccia può essere impiegata nel contesto della funzione alla punta della freccia.
Indichiamo esplicitamente anche la condizione per l'estensione e l'_extension point_, che identifica il punto nel caso d'uso di base in cui è possibile inserire il comportamento del caso d'uso esteso.


====== Diagrammi dei casi d'uso
I diagrammi dei casi d'uso rappresentano graficamente i casi d'uso, gli attori e le relazioni tra loro, rendendo più intuitivo comprendere le interazioni tra il sistema e i suoi attori.

Gli elementi grafici principali da utilizzare in questi diagrammi sono:
- *Sistema*: Il sistema è rappresentato da un rettangolo vuoto al cui interno vengono inseriti gli elementi grafici rappresentanti le sue caratteristiche. Gli elementi che invece rappresentano entità esterne sono posizionati all'esterno del rettangolo.
- *Attore*: Rappresentato graficamente da un'icona raffigurante un omino stilizzato con la relativa etichetta univoca.
- *Caso d'uso*: Rappresentato graficamente come un'ellisse contenente il nome del caso d'uso. Concretamente rappresenta una funzione o servizio offerto dal sistema ad uno o più attori.
- *Associazione*: Relazione tra attori e casi d'uso. Essa implica uno scambio di informazioni tra attore e caso d'uso associato.

==== Piano di Progetto
Il Piano di Progetto è un documento il cui scopo è quello di definire in modo dettagliato l'organizzazione, le attività, le risorse, i tempi e i criteri necessari per completare con successo il progetto.

Viene redatto e aggiornato dal responsabile, con il supporto degli amministratori, durante l'intera durata del progetto.


Il documento conterrà le seguenti informazioni:
- *Analisi dei rischi*: Utile a individuare le possibili difficoltà che il gruppo può incontrare.
- *Modello di sviluppo*: Descrive quale modello di sviluppo è stato scelto ed adottato dal gruppo per lo svolgimento del progetto.
- *Pianificazione*: Contiene ed espone in quale modo il gruppo ha deciso di pianificare le attività da svolgere e la loro suddivisione in periodi. Per ogni periodo inoltre saranno indicati:
  - *Introduzione del periodo*: Breve introduzione con informazioni chiave come data di inizio e fine periodo e i rischi attesi all'interno dello stesso.
  - *Attività*: Descrive le attività pianificate che dovranno essere svolte entro il termine del periodo. Devono essere accompagnate da una descrizione esaustiva in funzione di guida per chi dovrà svolgerle.
  - *Preventivo*: Contiene il ruolo e il preventivo orario per ciascun membro del gruppo.
  - *Consuntivo*: Viene redatto alla fine di ogni periodo, contiene il numero di ore effettivamente impiegato da ogni membro del gruppo, utile per avere un riscontro del lavoro svolto ed effettuare analisi sull'efficienza.
  - *Risorse rimanenti e preventivo a finire*: Indica quante ore (e i relativi costi) sono rimaste a disposizione per la conclusione del progetto. Sono accompagnate da una colonna che indica la percentuale di risorse consumate rispetto al totale pianificato per ogni ruolo, così da inquadrare meglio la distribuzione delle ore.
  - *Retrospettiva*: Sezione redatta a fine periodo, contiene una descrizione testuale delle difficoltà riscontrate e consigli utili da adottare per il lavoro futuro. Si struttura nei seguenti paragrafi:
    - *Cosa ha funzionato*: Aspetti positivi del periodo concluso.
    - *Cosa non ha funzionato*: Difficoltà che hanno rallentato il lavoro.
    - *Cosa fare per migliorare*: Considerazioni migliorative per gli _#rifGlossario("sprint")_ successivi.
    - *Rischi riscontrati*: Ricapitolazione dei rischi pianificati, analizzando se ve ne sono verificati di nuovi, e come sono stati affrontati.
    - *Attività future*: Lavori da cominciare nel periodo successivo che derivano da quello appena concluso, utile per guidare la pianificazione successiva.

==== Piano di Qualifica
Il Piano di Qualifica è un documento formale che definisce le strategie, le attività e gli approcci necessari per garantire la qualità del prodotto _software_ durante tutto il corso del progetto. Descrive le modalità di verifica e validazione, gli _standard_ adottati e le procedure di qualità da seguire.

Il suo scopo principale è assicurare che il prodotto finale sia conforme alle specifiche richieste e alle aspettative del committente, monitorando il progresso rispetto agli obiettivi prefissati. Ogni membro del _team_ coinvolto nello sviluppo farà riferimento a questo documento per mantenere e garantire i livelli di qualità stabiliti.

Al suo interno, sono presenti le seguenti informazioni:
- *Introduzione*: Descrizione dello scopo del documento e del prodotto da noi sviluppati, contiene inoltre i riferimenti normativi e informativi utili per la stesura e lettura del documento.
- *Obiettivi di qualità*: Sezione che definisce gli obiettivi di qualità posti dal gruppo, si suddivide in:
  - *Qualità di processo*: Descrizione di metriche e parametri da seguire per rispettare gli obiettivi di qualità per i processi.
  - *Qualità di prodotto*: Descrizione di metriche e parametri da seguire per rispettare gli obiettivi di qualità per il prodotto finale.
- *Specifiche dei test*: Descrive le attività di _testing_ che saranno effettuate per garantire il rispetto dei vincoli definiti nei requisiti del progetto.
- *Cruscotto di monitoraggio della qualità*: Contiene una descrizione più dettagliata di ogni metrica, il suo scopo e come ricavarla.

==== Manuale Utente
Il Manuale Utente descrive nel dettaglio come utilizzare il prodotto _software_. Vengono elencati i prerequisiti, le operazioni da svolgere per installare, avviare e terminare l'applicativo, le istruzioni per accedere e usufruire dei servizi forniti. Ogni passaggio è accompagnato da immagini, comandi o _link_ a documentazione esterna.

==== Specifica Tecnica
Il documento descrive accuratamente gli aspetti progettuali e le scelte tecnologiche. Deve quindi trattare le seguenti scelte:
- *Tecnologie adottate* motivate da ragionamenti e descrizioni nei casi d'uso del prodotto.
- *Architettura logica* per componenti, ruoli, connessioni e interazioni.
- *Architettura di _deployment_* per l'allocazione delle parti nel sistema in esecuzione.
- *_Design pattern_ architetturali* adottati per risolvere alcuni problemi e agevolare la struttura del codice.
Il documento deve essere accompagnato anche dai diagrammi delle classi e, se necessario, da porzioni di codice.

==== Glossario
Il Glossario è un documento di supporto che raccoglie i termini tecnici e specifici utilizzati all'interno del progetto, fornendone definizioni chiare e univoche. È destinato a tutti gli _stakeholder_, i membri del _team_, i committenti e l'azienda proponente, con l'obiettivo di prevenire ambiguità e incomprensioni. Questo strumento è fondamentale per migliorare la coerenza e la qualità della documentazione prodotta.

==== Lettera di presentazione
La Lettera di Presentazione è un documento formale attraverso il quale il gruppo esprime la propria volontà di partecipare alla fase di revisione del progetto di una determinata _milestone_. Include la documentazione prodotta dal gruppo e, se necessario, un aggiornamento sui costi e sulle tempistiche.

La lettera sottolinea l'impegno del _team_ nel rispettare le scadenze e le aspettative fissate.


=== Strumenti
Vengono riportati di seguito tutti gli strumenti adottati per il processo di fornitura.

==== Discord
Piattaforma di messaggistica in tempo reale che consente _chat_ testuali, vocali e video. Il gruppo utilizza tale strumento per comunicare e per interagire velocemente con l'azienda tramite il loro _server_ dedicato.

==== Telegram
Applicazione di messaggistica istantanea utilizzata per comunicazioni rapide e brevi all'interno del gruppo.

==== Fogli di Google
Applicazione web per la creazione e la gestione di fogli di calcolo. Il gruppo utilizza tale strumento per tenere traccia delle ore produttive impiegate in ogni _#rifGlossario("sprint")_, che saranno successivamente riportate nel documento ufficiale Piano di Progetto.

==== GitHub
Piattaforma per il versionamento del codice e la collaborazione su progetti _software_. Il gruppo utilizza questo strumento per gestire le _repository_ relative al prodotto software oggetto del capitolato e per la documentazione, monitorare le attività del progetto, assegnarle ai membri e seguirne lo stato di avanzamento.

==== Typst
#rifGlossario("Typst") è il sistema di impaginazione basato su _markup_ che viene adottato dal gruppo per la stesura della documentazione del progetto. Soluzione preferita rispetto a LaTeX per la sua semplicità.

=== Metriche
Le metriche adottate per il processo di fornitura sono le seguenti:

#figure(
  table(
    columns: 2,
    table.header[*ID Metrica*][*Nome*],
    [#link(<MPC-PV>)[MPC-PV]], [_Planned Value_],
    [#link(<MPC-EV>)[MPC-EV]], [_Earned Value_],
    [#link(<MPC-AC>)[MPC-AC]], [_Actual Cost_],
    [#link(<MPC-CPI>)[MPC-CPI]], [_Cost Performance Index_],
    [#link(<MPC-EAC>)[MPC-EAC]], [_Estimated at Completion_],
    [#link(<MPC-SV>)[MPC-SV]], [_Schedule Variance_],
    [#link(<MPC-BV>)[MPC-BV]], [_Budget Variance_],
    [#link(<MPC-ETC>)[MPC-ETC]], [_Estimate to Complete_],
  ),
  caption: [Metriche per la fornitura],
)

== Sviluppo
Sempre secondo lo _standard_ ISO/IEC 12207:1995 lo scopo del processo di sviluppo è di descrivere le attività e i compiti necessari per creare e mantenere un sistema _software_, garantendo che il prodotto finale soddisfi i requisiti specificati nel contratto.

Di seguito vengono riportate le attività che compongono il processo di sviluppo.

=== Implementazione del processo
Nella fase di implementazione, il fornitore deve stabilire o selezionare un modello di ciclo di vita appropriato per il progetto. Le attività di sviluppo e i compiti associati vengono mappati su tale modello, considerando che possono essere eseguiti in modo iterativo o ricorsivo. Il fornitore documenta i risultati secondo il processo di documentazione, ne gestisce le modifiche con un sistema di configurazione e risolve eventuali problemi di conformità. Devono essere selezionati strumenti, metodi e linguaggi di programmazione adeguati, e vengono pianificate le azioni necessarie per rispettare gli _standard_ di qualità, sicurezza e conformità. Tutto questo è accompagnato dalla creazione di piani documentati e implementabili.

=== Analisi dei requisiti di sistema
In questa fase, si analizzano le esigenze specifiche del sistema da sviluppare, documentando i requisiti funzionali, di sicurezza, di manutenzione, ergonomici e di interfaccia. Tali requisiti vengono valutati rispetto alla loro tracciabilità, consistenza con le esigenze iniziali, testabilità e fattibilità tecnica. Il risultato è una specifica dettagliata dei requisiti del sistema.

=== Progettazione architetturale del sistema
Il sistema viene suddiviso in elementi _hardware_, _software_ e operazioni manuali, con l'allocazione dei requisiti a ciascun elemento. L'architettura risultante rappresenta un progetto di alto livello che assicura la tracciabilità rispetto ai requisiti e la fattibilità operativa. La documentazione prodotta include la descrizione dell'architettura del sistema e l'assegnazione dei requisiti ai vari componenti.

=== Analisi dei requisiti software
Per ogni componente _software_ individuato, vengono stabiliti e documentati i requisiti dettagliati, tra cui specifiche funzionali, di sicurezza, di ergonomia e requisiti per il #rifGlossario("database"). Tali requisiti sono valutati per verificarne tracciabilità, coerenza interna ed esterna, testabilità e fattibilità progettuale. La fase si conclude con una revisione congiunta per stabilire una _baseline_ di requisiti approvati.

=== Progettazione architetturale del software
I requisiti _software_ vengono trasformati in un'architettura che descrive la struttura generale del _software_ e identifica i componenti principali. Si definiscono e documentano le interfacce e le prime versioni della documentazione utente, oltre ai requisiti di _test_ preliminari per l'integrazione. La valutazione di questa fase si concentra sulla tracciabilità rispetto ai requisiti, sulla coerenza interna e sull'adeguatezza dei metodi di progettazione utilizzati.

=== Progettazione dettagliata del software
Si sviluppano progetti dettagliati per ogni componente _software_, che vengono suddivisi in unità più piccole, codificabili e testabili. La documentazione comprende dettagli delle interfacce, del _database_ e requisiti specifici per il _testing_. Anche in questa fase, la progettazione è sottoposta a valutazioni che ne verificano tracciabilità, coerenza interna, testabilità e conformità agli _standard_ di progettazione.

=== Codifica e testing del software
I componenti _software_ vengono codificati e testati per garantire che soddisfino i requisiti definiti. I risultati dei _test_ vengono documentati e la documentazione utente viene aggiornata. Questa fase include anche la preparazione dei requisiti di _test_ per l'integrazione _software_ e una revisione dell'adeguatezza del codice e dei risultati dei _test_.

=== Integrazione del software
Le unità e i componenti _software_ sono integrate per formare un unico elemento _software_. Durante l'integrazione, vengono eseguiti _test_ per verificare che ciascun aggregato soddisfi i requisiti. Si sviluppano piani di _test_ e procedure per la qualifica del _software_ integrato. L'integrazione è valutata considerando la tracciabilità, la coerenza e la copertura dei requisiti.

=== Test di qualifica del software
Il _software_ integrato viene sottoposto a _test_ di qualifica per verificarne la conformità ai requisiti. I risultati di questi _test_ vengono documentati. A seguito del completamento con successo, il _software_ è pronto per le fasi successive, come l'integrazione di sistema o l'installazione.

=== Integrazione del sistema
Il _software_ viene integrato con componenti _hardware_, operazioni manuali e altri sistemi, se richiesto. Vengono condotti _test_ sugli aggregati del sistema per verificarne la conformità ai requisiti. La documentazione prodotta include i risultati dell'integrazione e i _test_ effettuati.

=== Test di qualifica del sistema
L'intero sistema viene testato per verificare la conformità alle specifiche contrattuali e la prontezza per la consegna. I risultati sono documentati e valutati per garantire la copertura dei requisiti e la fattibilità operativa.

=== Installazione del software
Si sviluppa e implementa un piano per l'installazione del _software_ nell'ambiente di destinazione. Si verifica che il _software_ funzioni come previsto e si supportano attività di transizione, se necessario. Gli eventi e i risultati dell'installazione sono documentati.

=== Supporto all'accettazione del software
Il fornitore supporta il cliente nella revisione e nei _test_ di accettazione del _software_, che comprendono la valutazione di tutti i risultati ottenuti nelle fasi precedenti. Viene completata la consegna del prodotto _software_ e fornite eventuali attività di formazione e supporto iniziale.

=== Metriche
Le metriche adottate per il processo di sviluppo sono le seguenti:

#figure(
  table(
    columns: 2,
    table.header[*ID Metrica*][*Nome*],
    [#link(<MPC-ISR>)[MPC-ISR]], [Indice di Stabilità dei Requisiti],
  ),
  caption: [Metriche per lo sviluppo],
)

#pagebreak()

= Processi di supporto

== Documentazione <Documentazione>
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
+ Caricare le modifiche effettuate in locale nella _repository_ remota. \
  *`git add .`* \
  *`git commit -m "[commento del commit]"`* \
  *`git push`* \
+ Dall'interfaccia _web_ bisogna spostarsi nella sezione _*pull request*_ e crearne una nuova assicurandosi di assegnare il verificatore e una _label_. Se si desidera sottoporre le modifiche a un rapido controllo si può creare un _*draft*_.
+ In caso il verificatore richieda delle correzioni è sufficiente ripetere i passaggi citati senza questa volta creare una nuova _pull request_ perché già esistente. Si ricorda che si può evitare di scaricare le modifiche su tutti i _branch_ e che se si è già posizionati sul ramo corretto si può evitare il comando *`git checkout [nome_branch]`*.

Si noti che la modifica di un documento già verificato e approvato deve essere tracciata da una _issue_, quindi i procedimenti per redigere o aggiornare un documento sono gli stessi. Una volta terminato il lavoro si deve aggiornare anche la corrispondenza ruolo-persona nella prima pagina segnando il nuovo redattore, il verificatore e sostituendo il responsabile col compagno che in quel momento sta ricoprendovi il ruolo. In questo modo il responsabile è colui che è al corrente dell'ultima versione, nel caso in cui bisognasse contattarlo per dei chiarimenti.

Se si individuano dei nuovi termini da aggiungere al Glossario si inseriscono secondo le norme decise dal documento corrente (#link(<glossario>)[sez. 1.3]). Il verificatore deve quindi controllare anche che siano stati inseriti nel modo corretto.

=== Ciclo di vita
Il ciclo di vita di un documento è composto da 6 fasi:
+ *Creazione e adattamento al _template_*: Dopo aver impostato l'ambiente nel modo corretto si può creare il file `.typ` seguendo le norme di nomenclatura. Si importa il _file_ `template.typ` della cartella `templates` e si compilano i campi delle funzioni in base al documento che si sta redigendo.
+ *Pianificazione dei paragrafi*: Oltre ai paragrafi dettati dal tipo di documento come specificato dalle norme, si devono aggiungere dei paragrafi che raggruppino gli argomenti trattati.
+ *Stesura del documento*: Il redattore deve stilare il documento seguendo le norme concordate dal gruppo. In caso fosse indeciso su alcuni punti è libero di contattare altri membri del gruppo in modo da scrivere un contenuto il più corretto possibile.
+ *Revisione*: Una volta caricato correttamente il documento viene notificato automaticamente il verificatore il quale deve assicurarsi che non vi siano errori.
+ *Approvazione*: Il documento è approvato dal verificatore e viene contattato il responsabile che deve confermare la pubblicazione nel _branch_ principale. Se l'approvazione comporta dei cambiamenti deve essere tracciato nel "Registro delle modifiche", altrimenti viene aumentato il numero della versione delle modifiche più recenti.
+ *Modifiche*: Conseguentemente all'approvazione è possibile dover apportare alcuni accorgimenti. In questo caso si ripetono le operazioni incrementando la versione in conformità con il versionamento adottato.

=== Struttura dei documenti
Ogni documento prodotto è costituito dalle seguenti sezioni.

==== Intestazione
- *Logo del gruppo*: Presente nella cartella `assets/img`.
- *Titolo del documento*
- *Data*: Data in cui è stato approvato il documento o, nel caso dei verbali, in cui è avvenuta la riunione.
- *Uso*: Interno o Esterno.
- *Destinatari*
- *Responsabile*
- *Redattore*
- *Verificatore*

==== Registro delle modifiche
La seconda pagina è dedicata al registro delle modifiche per i documenti che possiedono un ciclo di vita. Vengono quindi esclusi i verbali e le lettere. Le informazioni sono organizzate in una tabella in ordine cronologico decrescente, quindi con l'ultima modifica effettuata nella prima riga in alto. La tabella riporta i seguenti dati:
- *Versione*
- *Data*: La data nella quale è stata apportata l'ultima modifica nel formato DD/MM/YYYY.
- *Redattori*
- *Verificatori*
- *Descrizione*: Una breve descrizione delle modifiche apportate.

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
- *Tabella delle decisioni*: Per una descrizione dettagliata consultare la sezione omonima (#link(<tab-dec>)[sez. 3.1.3.5]).

===== Verbali Interni
I verbali interni aggiungono le seguenti sezioni:
- *Partecipanti*: L'elenco dei partecipanti, incluso nella sezione "Informazioni generali".
- *Ordine del giorno*

===== Verbali Esterni
I verbali esterni aggiungono le seguenti sezioni:
- *Partecipanti interni*: L'elenco dei partecipanti interni, incluso nella sezione Informazioni generali.
- *Partecipanti esterni*: L'elenco dei partecipanti esterni, incluso nella sezione Informazioni generali.
- *Sintesi dell'incontro*
- *Risposte alle domande*

==== Tabella delle decisioni <tab-dec>
Una tabella che racchiude le informazioni necessarie per rintracciare gli elementi nel _backlog_. Sono riportati i seguenti dati:
- *ID*: Identificativo della decisione:
  - *[X][ID _issue_]* nel caso fosse rintracciabile mediante _issue_ (deve essere fornito un collegamento alla stessa) dove l'ID è scritto con quattro cifre. la X indica una lettera che identifica univocamente la #rifGlossario("GitHub") _repository_ alla quale è legata la _issue_:
    - *D*: docs
    - *S*: sweatunipd.github.io
    - *N*: NearYou
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

Le cartelle sono divise per _milestone_ (candidatura, RTB e PB) ciascuna contenente i verbali interni ed esterni e i documenti del progetto prodotti nel rispettivo periodo. I documenti si dividono quindi nelle seguenti tipologie:
- *documenti soggetti a ciclo di vita*: [nome]\_ver[X.Y.Z].
- *documenti non soggetti a ciclo di vita*:
  - *verbali*: [VI/VE]\_[YYYY-MM-DD] dove VI e VE indicano rispettivamente verbali interni ed esterni.
  - *lettere*: [nome].

=== Stile dei titoli
I titoli dei documenti devono seguire le seguenti indicazioni:
- *Verbali Interni*: [NOR] riunione, dove NOR indica il numero ordinale della riunione (ad esempio Prima o Dodicesima).
- *Verbali Esterni*:
  - *SAL fine [NOS] sprint*, dove NOS indica il numero ordinale dello _sprint_ (ad esempio primo o dodicesimo) nel caso si trattasse del SAL di fine _sprint_.
  - *SAL intermedio [NOS] sprint*, dove NOS indica il numero ordinale dello _sprint_ (ad esempio primo o dodicesimo) nel caso si trattasse di un SAL informativo a metà dello _sprint_.
  - Nel caso non si trattasse di un SAL si deve cercare un titolo breve ma efficace.
- *Documenti*: Per documenti che non sono verbali il titolo deve semplicemente indicare lo scopo del documento (ad esempio Norme di Progetto).

Notare che nei titoli dei documenti e dei paragrafi lo stile rimane quello di _default_ di Typst, non vanno aggiunti quindi corsivi o altre personalizzazioni.

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
Per riferirsi ad una sezione del documento per una spiegazione più dettagliata si adotta la dicitura "sez. [I]" dove I indica l'indice della sezione (ad esempio "(sez. 3.2)"). Per un corretto collegamento si veda il paragrafo apposito (#link(<stile_testo>)[sez. 3.1.8]). \ Nel caso si tratti di un riferimento alla descrizione di una metrica (e quindi solo in questo documento) è sufficiente lasciare come dicitura il codice della metrica stessa (ad esempio "MPC-IG").

==== Ipertestuali
Per esporre un _link_ ad una pagina esterna al documento si utilizza la funzione `#formatLink` (#link(<stile_testo>)[sez. 3.1.8]) esplicitando l'interezza dell'_url_ anche nella _label_. Unica eccezione di stile per i riferimenti alle _issue_ nella tabella delle decisioni (#link(<stile_testo>)[sez. 3.1.8]). Ogni riferimento a documenti o pagine esterne va accompagnato dalla data di ultimo accesso o dalla versione.

=== Elenchi puntati
Una lista è preferibile a un elenco narrativo, da valutare se renderlo numerato o meno a seconda della circostanza. I punti della descrizione nel registro delle modifiche vengono sempre rappresentati in un elenco, eccezione fatta per l'approvazione dei documenti generali. Se le voci dell'elenco sono costituite da delle frasi vengono chiuse da ".", se invece possiedono solo poche parole, che ad esempio indicano il nome di una tecnologia, non viene messo nessun segno di punteggiatura al termine. Le voci dell'elenco della descrizione nel registro delle modifiche non vengono chiuse da punteggiatura.

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

=== Metriche
Le metriche adottate per la documentazione sono le seguenti:

#figure(
  table(
    columns: 2,
    table.header[*ID Metrica*][*Nome*],
    [#link(<MPC-IG>)[MPC-IG]], [Indice #rifGlossario("Gulpease")],
    [#link(<MPC-CO>)[MPC-CO]], [Correttezza Ortografica],
  ),
  caption: [Metriche per la documentazione],
)

== Gestione della configurazione
Per gestire la documentazione è stato creata una _repository_ contenente tutti i _file_ Typst aggiornati e verificati. Gli stessi documenti in formato `.pdf` sono consultabili al sito \ #formatLink(label: "https://sweatunipd.github.io", url: "https://sweatunipd.github.io") (ultimo accesso 03/03/2025).

L'operazione di _directory listing_ di GitHub offre una visione degli artefatti strutturata in cartelle, seguente quindi la composizione della _repository_, all'indirizzo #formatLink(label: "https://sweatunipd.github.io/docs", url: "https://sweatunipd.github.io/docs") (ultimo accesso 03/03/2025).

=== Repository
Il gruppo utilizza tre _repository_ all'interno della propria organizzazione GitHub:
- *docs* (#formatLink(label: "https://github.com/SWEatUNIPD/docs", url: "https://github.com/SWEatUNIPD/docs"), ultimo accesso 03/03/2025) contenente tutta la documentazione del progetto.
- *sweatunipd.github.io* (#formatLink(label: "https://github.com/SWEatUNIPD/sweatunipd.github.io", url: "https://github.com/SWEatUNIPD/sweatunipd.github.io"), ultimo accesso 03/03/2025) contenente i _file_ necessari alla struttura e presentazione del sito _web_.
- *NearYou* (#formatLink(label: "https://github.com/SWEatUNIPD/NearYou", url: "https://github.com/SWEatUNIPD/NearYou"), ultimo accesso 03/03/2025) contenente il codice sorgente dell'applicativo.

==== Struttura della repository docs
La _repository_ è strutturata da un unico _branch_ adibito al mantenimento di tutti i documenti Typst verificati. All'occorrenza di svolgere azioni dettate dal _backlog_ si crea un _branch_ temporaneo che, successivamente alla verifica, viene unito nel ramo principale. La _repository_ è presentata dal `README.md`, contiene il _file_ `.gitignore` usato da Git per escludere alcuni _file_ dai _commit_ in _repository_ e il _file_ `script.js` usato per pubblicare la documentazione nel sito _web_. `test.js` è utilizzato per controllare la presenza dei termini del Glossario all'interno dei documenti, mentre `glossario.json` è una struttura dati che contiene i termini e la loro definizione, usato per la stesura del documento dal _file_ `glossario_verX.Y.Z.typ`; è presente inoltre il file `gulpease.js` usato per misurare l'Indice di Gulpease richiesto dalla metrica #link(<MPC-IG>)[MPC-IG]. Le cartelle sono strutturate nel seguente modo: \
#tree-list()[
  - *`.github`*
    - *`workflows`*: contiene i _file_ `.yml` per le configurazioni delle GitHub Action.
  - *`.vscode`*: contiene le impostazioni di Visual Studio Code specifiche per il progetto.
  - *`assets`*
    - *`font`*: contiene i _file_ `.ttf` dei _font_ usati nei documenti.
    - *`img`*: contiene il logo e le immagini usate nei documenti.
    - *`use_cases`*: cartella dedicata ai diagrammi dei casi d'uso usati nell'Analisi dei Requisiti.
  - *`candidatura`*
    - *`verbali`*
      - *`esterni`*: contiene i `.typ` e i `.pdf` dei verbali esterni.
      - *`interni`*: contiene i `.typ` dei verbali interni.
      - `dichiarazione_impegni_preventivo_costi_ver1.1.0.typ`
      - `lettera_di_presentazione_candidatura.typ`
      - `valutazione_capitolati_ver1.2.0.typ`
  - *`pb`*
    - *`verbali`*
      - *`esterni`*: contiene i `.typ` e i `.pdf` dei verbali esterni.
      - *`interni`*: contiene i `.typ` dei verbali interni.
      - `analisi_dei_requisiti_ver2.0.0.typ`
      - `glossario_ver2.0.0.typ`
      - `manuale_utente_ver1.0.0.typ`
      - `norme_di_progetto_ver2.0.0.typ`
      - `piano_di_progetto_ver2.0.0.typ`
      - `piano_di_qualifica_ver2.0.0.typ`
      - `specifica_tecnica_ver1.0.0.typ`
  - *`rtb`*
    - *`verbali`*
      - *`esterni`*: contiene i `.typ` e i `.pdf` dei verbali esterni.
      - *`interni`*: contiene i `.typ` dei verbali interni.
      - `analisi_dei_requisiti_ver1.0.1.typ`
      - `glossario_ver1.0.0.typ`
      - `lettera_di_presentazione_rtb.typ`
      - `norme_di_progetto_ver1.0.1.typ`
      - `piano_di_progetto_ver1.0.1.typ`
      - `piano_di_qualifica_ver1.0.1.typ`
  - *`templates`*
    - `diario_di_bordo.pptx`
    - `template.typ`
  - `.gitignore`
  - `README.md`
  - _File_ `.js` utili per il glossario, per l'Indice di Gulpease e per aggiungere i _file_ al sito.
  - _File_ `.json` per le configurazioni dell'ambiente JavaScript e per il glossario.
]

==== Struttura della repository sweatunipd.github.io
La _repository_ è costituita da un unico _branch_ nel quale è caricato tutto il materiale necessario per strutturare il sito _web_ e popolarlo dinamicamente con la documentazione della _repository_ docs. La _repository_ è presentata dal `README.md`, contiene il _file_ `.gitignore` necessario per escludere alcuni _file_ dai _commit_ in _repository_. Le cartelle sono strutturate nel seguente modo: \
#tree-list()[
  - *`.github`*
    - *`workflows`*: contiene i _file_ `.yml` per le configurazioni delle GitHub Action.
  - *`app`*
    - *`fonts`*: contiene i _file_ `.woff` dei _font_ usati nel sito.
    - `global.css`
    - `layout.tsx`
    - `page.tsx`
  - *`components`*
    - *`ui`*: contiene i _file_ `.tsx` usati per i componenti grafici del sito.
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
#pagebreak()
==== Struttura della repository NearYou
La _repository_ è strutturata da due _branch_: "_main_" e "_dev_".
Il _branch_ "_main_" contiene la _release_ ufficiale più recente e viene aggiornato ad ogni _milestone_, ovvero nel nostro caso RTB e PB, mentre il _branch_ "_dev_" è adibito allo sviluppo del codice.
Ad ogni necessità di svolgere azioni dettate da una _issue_ del _backlog_ si crea un _branch_ temporaneo che, successivamente alla verifica, viene riunito al ramo "_dev_" secondo il meccanismo delle _pull request_.
La _repository_ è presentata dal `README.md` il quale fornisce anche le istruzioni su come avviare il sistema tramite #rifGlossario("Docker"). La _repository_ contiene anche il _file_ `.gitignore` usato per escludere alcuni _file_ dai _commit_ in _repository_.
Le cartelle sono strutturate nel seguente modo:

#tree-list()[
  - *`.github`*
    - *`workflows`*: contiene i _file_ `.yml` per le configurazioni delle GitHub Action.
  - *`assets`*
    - *`img`*: contiene le immagini usate all'interno dei _file_.
  - *`client`*
    - *`src`*: contiene il codice sorgente del simulatore.
    - *`test`*
      - *`unit`*: contiene i _test_ di unità.
    - `Dockerfile`
    - _File_ di configurazione dell'ambiente TypeScript.
  - *`data`*
    - *`grafana`*
      - *`plugins`*: contiene i _plugin_ installati per il corretto funzionamento di #rifGlossario("Grafana").
      - *`kui`*: TODO.
  - *`job`*
    - *`src`*
      - *`main`*: contiene il codice sorgente del _job_ di Flink.
      - *`test`*: contiene i _test_ di unità e di integrazione del _job_.
    - `checkstyle.xml`: file di configurazione per l'analisi statica del codice.
    - `pom.xml`: file di configurazione del progetto in #rifGlossario("Apache Maven").
  - *`mock`*: contiene i _file_ per popolare il _database_ con dati fittizi.
  - `.gitignore`
  - `README.md`
  - `compose.yml`
  - `create.sql`
]
#pagebreak()
=== Backlog
Il _product backlog_ è rappresentato da una GitHub _board_ con tre sezioni:
- *Todo*: l'attività non è ancora stata iniziata.
- *In Progress*: l'attività è in corso di svolgimento.
- *Done*: l'attività è stata completata.

=== Ticketing
Alla fine di ogni riunione interna si aggiorna il _backlog_ con le nuove _issue_ (corrispondenti alle decisioni prese durante la riunione). Esse devono specificare in modo esaustivo il compito da svolgere nel titolo, arricchite da una breve descrizione e dai riferimenti al verificatore e al verbale nel quale è scaturita quella decisione, in modo che in futuro sia sempre tracciabile il motivo dell'inserimento di quella _issue_. Per una corretta impostazione si chiede di seguire il seguente schema:

| Titolo completo ed esaustivo \
| ------------------------------------------------------\
| Breve descrizione. \
| \
| Verificatori: \@Nickname \
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
Vengono adoperate delle Action per facilitare il processo di verifica tramite la pubblicazione di un _file_ `.zip` nei messaggi delle _pull request_ contente i documenti modificati in formato `.pdf` ad ogni _commit_, per automatizzare la pubblicazione dei documenti approvati nel sito del gruppo, per verificare l'Indice di Gulpease dei documenti e per verificare la presenza di termini a glossario non contrassegnati nei documenti.

Per i verbali esterni si è scelto un approccio differente in quanto bisogna aspettare la firma del proponente per presa visione. Non potendo quindi essere pubblicati direttamente nel sito i verbali esterni vanno compilati localmente e mandati alla controparte. Una volta restituiti firmati vanno caricati manualmente nella stessa cartella dove risiede il codice sorgente e la Action si occuperà di pubblicarli nel sito. Per caricare i documenti firmati bisogna forzare l'operazione col seguente comando: \
*`git add [file_name] --force`*

== Verifica
La verifica è un processo di cruciale importanza che accompagna il _software_ lungo tutto il suo ciclo di vita, dalla progettazione fino alla manutenzione. Il suo obiettivo è garantire l'efficienza e la correttezza dei processi e dei loro eventuali prodotti.
Un processo di verifica efficace ha come naturale conseguenza un prodotto più stabile, che risulta in un processo di validazione più lineare e prevedibile, meno soggetto ad imprevisti.

=== Analisi statica
L'analisi statica è un processo di verifica che si svolge senza eseguire il codice ed è perciò applicabile a tutti i prodotti del progetto. Il suo obiettivo è individuare errori e anomalie nel codice sorgente o nel testo prodotto. Le due tecniche principali adottate sono il _walkthrough_ e l'_inspection_.

- Il _walkthrough_ prevede un'analisi sistematica di tutto il prodotto alla ricerca di irregolarità non meglio specificate.

- L'_inspection_, invece, prevede una ricerca mirata all'interno del codice sorgente o del documento soffermandosi solo su ciò che si sa essere più soggetto ad errori, trasformando quindi il processo di verifica nella risoluzione di una _checklist_.

L'_inspection_ è il metodo da preferire in quanto più efficiente, allo stesso tempo è difficilmente implementabile all'inizio per mancanza di esperienza (e quindi dati su quali sono gli errori più comuni).


=== Analisi dinamica
L'analisi dinamica è un processo di verifica che si svolge eseguendo il codice. Il suo obiettivo è individuare errori e anomalie nel codice sorgente. Lo strumento principale utilizzato è il _test_. I _test_ possono essere di vario tipo:
- *Test di unità*: verificano il corretto funzionamento di una singola unità di codice.
- *Test di integrazione*: verificano il corretto funzionamento dell'interazione tra due o più unità di codice.
- *Test di sistema*: verificano il corretto funzionamento del sistema nel suo complesso.
- *Test di regressione*: verificano che le modifiche apportate al codice non abbiano introdotto nuovi errori.
- *Test di accettazione*: verificano che il prodotto soddisfi i requisiti specificati.

=== Verifica dei documenti
Ogni documento creato o modificato necessita la revisione da uno o più verificatori. Questo processo viene automatizzato il più possibile con l'utilizzo delle _pull request_, il sistema di _ticketing_ tramite _issue_ e una Action dedicata. Quando possibile è preferibile richiedere la revisione a tutti i verificatori per i documenti di carattere generale perché fondamentali per il corretto svolgimento del progetto.

==== Pull request
Le _pull request_ velocizzano e automatizzano la verifica dei documenti. Una volta organizzate nel modo corretto (#link(<lavoro_doc>)[sez. 3.1.1.2]), il verificatore può aggiungere una _review_ da interfaccia _web_ commentando, chiedendo una modifica o approvando la _pull request_. Una volta soddisfatti i requisiti spetterà al responsabile confermare la nuova versione del documento e unire il _branch_ al principale tramite il pulsante "_squash and merge_".

==== Action
Al completamento di ogni _commit_ una Action compila i _file_ Typst modificati e genera un _file_ `.zip` contenente i documenti in formato `.pdf`. Così facendo si è sicuri che il codice è privo di errori sintattici e genera correttamente un prodotto finale e distribuibile.
Il verificatore può consultare sia il documento in formato `.pdf` per maggiore leggibilità sia il codice sorgente. Nel caso trovasse degli errori può segnalarli tramite la _pull request_, oppure pubblicare un commento per avviare una discussione riguardo una correzione più complessa.

==== Test
È stato messo a disposizione un _test_ il quale controlla che la prima occorrenza dei termini del Glossario venga identificata (#link(<glossario>)[sez. 1.3]). Viene effettuato automaticamente dalla Action ad ogni _push_, tuttavia è preferibile eseguirlo prima in locale così da efficientare il lavoro. È sufficiente quindi aver installato NodeJS sulla propria macchina ed eseguire il comando *`node test.js`* nella _root_ della _repository_ locale. Il _test_ esamina tutti i documenti e ritorna degli avvisi in caso fallisse.


== Validazione
Il processo di validazione è definibile, secondo lo _standard_ ISO/IEC 12207:1995, come il processo di conferma tramite dimostrazioni oggettive che il prodotto soddisfi i requisiti specificati per un sistema. In sostanza, la validazione certifica che il prodotto soddisfi le esigenze del cliente ovvero, più specificamente:
- soddisfi tutti i requisiti concordati;
- sia eseguibile senza problemi nell'ambiente di destinazione.

Si tratta di un processo che si svolge in parallelo alla verifica e che si conclude con l'accettazione del prodotto da parte del cliente. Una volta che il cliente, ovvero nel nostro caso l'azienda proponente, ha accettato il prodotto si può procedere con il rilascio.

Lo strumento principale utilizzato per la validazione è il _test_ di accettazione, ovvero l'ultimo _test_ che viene eseguito prima del rilascio del prodotto. Tale _test_ verrà eseguito in presenza della proponente.

== Risoluzione dei problemi

=== Documentazione
È possibile incappare in problemi riguardanti il ciclo di redazione e verifica dei documenti. In questi casi è preferibile cercare di risolverli al più presto per conto proprio in maniera da non ostacolare il lavoro dei compagni. Tuttavia se si è insicuri delle procedure da adottare o non si trova una soluzione si può contattare l'amministratore per tornare al più presto operativi. Come ultima alternativa è possibile contattare Klaudio Merja, creatore dell'organizzazione e della _repository_ GitHub, il quale è l'unico che può eseguire alcune operazioni forzate poiché gode dei privilegi da amministratore dell'ambiente GitHub.

== Gestione della qualità
=== Scopo
Il processo di gestione della qualità ha lo scopo di garantire che i prodotti soddisfino i requisiti specificati e che siano, assieme ai processi, conformi agli _standard_ di qualità stabiliti. La qualità è un requisito fondamentale per il successo del progetto e deve essere garantita in ogni fase del ciclo di vita del prodotto.

=== Definizione delle metriche
Lo strumento fondamentale per misurare la qualità di un prodotto o di un processo sono le metriche. Esse permettono di valutare in modo oggettivo il grado di conformità del prodotto o del processo rispetto agli _standard_ di qualità stabiliti. Le metriche vengono utilizzate per tracciare la qualità durante tutto il ciclo di vita del progetto. L'elenco esaustivo di tutte le metriche adottate in questo progetto, e la loro rispettiva descrizione, è consultabile nell'ultima sezione (#link(<metriche>)[sez. 6]) di questo documento.

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
All'interno del Piano di Qualifica sono definiti i criteri di accettazione per le metriche adottate. Questi criteri sono stabiliti in modo da garantire che i prodotti e i servizi soddisfino i requisiti specificati e che siano conformi agli _standard_ di qualità stabiliti.
Ad ogni metrica è associata una soglia di accettazione e una soglia di ottimalità.
- La soglia di accettazione rappresenta il valore minimo (o massimo) che la metrica deve rispettare per essere considerata accettabile.
- La soglia di ottimalità rappresenta il valore minimo (o massimo) che la metrica deve rispettare per essere considerata ottimale.

=== Metriche
Le metriche adottate per la gestione della qualità sono le seguenti:

#figure(
  table(
    columns: 2,
    table.header[*ID Metrica*][*Nome*],
    [#link(<MPC-PMS>)[MPC-PMS]], [Percentuale di Metriche Soddisfatte],
  ),
  caption: [Metriche per la gestione della qualità],
)

#pagebreak()

= Processi organizzativi
L'ingegneria del _software_ è un campo complesso e multidisciplinare che richiede un'attenta pianificazione, una gestione efficace delle risorse e un controllo accurato della qualità. Quindi definire e rispettare processi organizzativi ben organizzati diventa essenziale.

== Gestione dei processi
=== Scopo
Secondo lo _standard_ ISO/IEC 12207:1997 la gestione dei processi mira a stabilire, implementare e migliorare i processi che il gruppo deve assicurarsi vengano svolti per garantire la massima resa dei processi di sviluppo.

=== Descrizione
Le attività di gestione dei processi sono:
1. Definizione dei processi:
  - Identificare e documentare i processi.
  - Stabilire linee guida e procedure per l'esecuzione di ciascun processo.
2. Pianificazione e monitoraggio:
  - Elaborare piani dettagliati per l'esecuzione dei processi.
  - Monitorare costantemente l'avanzamento, l'efficacia e la conformità ai requisiti.
  - Stimare i tempi, le risorse ed i costi.
3. Esecuzione, revisione e valutazione:
  - Monitorare l'avanzamento dei processi per identificare aree problematiche o di miglioramento.
  - Con l'avanzamento implementare azioni correttive e preventive per ottimizzare i processi.
4. Formazione e competenze:
  - Assicurare che il personale coinvolto in un processo sia adeguatamente formato rispetto al dominio d'uso di esso.
5. Chiusura.

=== Pianificazione
==== Descrizione
Come stabilito dallo _standard_ ISO/IEC 12207:1997 il responsabile è responsabile della preparazione dei piani per l'esecuzione di tutte le attività relative alla pianificazione del periodo di carica.
Ogni attività dovrà avere associata una descrizione, il personale incaricato di gestire i processi di essa e una scadenza da rispettare.

Il responsabile di ciascuno _sprint_ ha il compito di redigere questa pianificazione all'interno del documento Piano di Progetto, che riporterà le attività da svolgere in quel periodo.

==== Scopo
Gli scopi della pianificazione sono avere un piano reale di quelli che sono gli obiettivi realistici dello _sprint_, per poi poter eseguire una retrospettiva, e suddividere tutte le attività necessarie per perseguire questi obiettivi nelle risorse del _team_, in modo da garantire ordine e chiarezza nella divisione dei compiti.

==== Ruoli
I ruoli descritti sotto verranno assegnati ad ogni _sprint_ in base alle esigenze della fase del progetto, con una pianificazione in accordo con il documento di Dichiarazione Impegni e Preventivo Costi presentato in fase di candidatura.

===== Responsabile
Il responsabile si occuperà dell'allocazione delle risorse e della pianificazione generale e si assicurerà che il progetto proceda in modo efficiente e soddisfi gli obiettivi nel rispetto delle scadenze. Sarà inoltre la figura incaricata a rappresentare i _team_ nelle varie interazioni con i proponenti e i committenti.
I suoi compiti sono:
- Approvare la documentazione.
- Gestire la pianificazione e la retrospettiva dello _sprint_ in cui è incaricato.
- Studiare e gestire l'analisi dei rischi.
- Rappresentare il gruppo nelle comunicazioni con l'esterno.

===== Amministratore
L'amministratore garantirà che l'ambiente e l'infrastruttura necessari per lo sviluppo e l'esecuzione del progetto siano robusti, sicuri ed affidabili e che ciascun membro del _team_ sappia come usarli senza incorrere in alcun tipo di problema.
I suoi compiti sono:
- Sostituire il responsabile in caso di emergenze.
- Migliorare l'ambiente di lavoro automatizzando il più possibile i processi.
- Redigere e mantenere la documentazione.
- Gestire le infrastrutture e i servizi.


===== Analista
L'analista definisce quali dovranno essere le funzionalità del _software_, in accordo con le necessità del cliente, producendo il documento di Analisi dei Requisiti.
Ha il compito di:
- Studiare il problema descritto dal proponente e il relativo dominio d'uso.
- Raccogliere e studiare i bisogni dei committenti.
- Redigere il documento Analisi dei Requisiti studiando tutti i casi d'uso.

===== Progettista
Il progettista si occuperà del _design_ del _software_: partendo dai problemi identificati dall'Analisi dei Requisiti elabora una possibile soluzione, che successivamente dovrà essere implementata dai programmatori, fungendo quindi da "elaborazione intermedia" tra le due parti.
Ha il compito di:
- Progettare un prodotto economico e manutenibile partendo dal lavoro degli analisti.
- Garantire che vengano rispettati i principi tecnici dell'ingegneria del _software_, come un livello di accoppiamento più basso possibile.

===== Verificatore
Il verificatore dovrà garantire che il _software_ mantenga adeguati _standard_ di qualità garantendone, attraverso _test_ e controlli, l'affidabilità e la robustezza.
Ha il compito di:
- Verificare la correttezza di contenuto e stilistica dei documenti con le regole definite nelle Norme di Progetto.
- Verificare che il codice prodotto sia privo di _bug_ e in linea con le linee guida dei progettisti.

===== Programmatore
Il programmatore si occuperà di tradurre le specifiche e i requisiti del progetto nel sistema funzionante richiesto dal proponente.
Ha il compito di:
- Implementare il prodotto rispetto alle linee guida dei progettisti.
- Scrivere codice mantenibile, che rispetti le Norme di Progetto.
- Produrre _test_ per la verifica e validazione del codice.
- Redigere il manuale utente.

==== Ticketing
Il gruppo adotta l'*Issue Tracking System* (ITS) interno di GitHub. Esso permette una gestione semplice e chiara dei compiti da svolgere grazie alla _project board_ e alle _issues_, che possono essere chiuse automaticamente a lavoro svolto.


Ad ogni riunione di inizio _sprint_ il responsabile crea le _issues_ e le assegna ai vari membri del gruppo.
Lo stato di avanzamento delle _issues_ è consultabile all'interno della _project board_.


Le _issues_ sono create dal responsabile e sono composte da:
- *ID*: identifica in modo univoco la _issue_ e viene riportato nel _backlog_ e nella tabella delle decisioni del verbale in cui viene presa la decisione.
- *Titolo*: identifica il compito da svolgere.
- *Descrizione*: descrizione breve dell'attività da svolgere, riferimento al verbale in cui è stata presa tale decisione per avere più informazioni riguardo ad essa e i membri del gruppo che dovranno verificare l'attività svolta.
- *Assegnatario*: i componenti del gruppo incaricati a svolgere l'attività.
- *Milestone*: la _release_ in cui deve essere pubblicato il risultato dell'attività.
- *Etichetta*: la categoria a cui appartiene quella attività.
- *Stato*: avanzamento del _task_.
- *Data di inizio attività*: momento di presa in carico dell'attività, fondamentale per aggiornare il #rifGlossario("diagramma di Gantt").
- *Data di fine attività*: il termine indicato per portare a termine l'attività, fondamentale per aggiornare il diagramma di Gantt.
Ogni qualvolta ci sia la necessità di portare a termine un compito è necessario seguire la seguente procedura:
+ Il responsabile, dopo aver concordato in una riunione il da farsi, crea una nuova _issue_ con stato "To Do" su GitHub e la assegna.
+ All'inizio del lavoro di produzione l'assegnatario cambia lo stato della _issue_, passando da "To Do" ad "In Progress", creando un nuovo _branch_ apposito staccato dal ramo principale per eseguire l'attività.
+ Contestualmente l'assegnatario apre una _pull request_ su GitHub e assegna i verificatori per quell'attività.
+ Il verificatore controlla il lavoro svolto:
  - Se la verifica ha esito positivo:
    + Il verificatore approva su GitHub la _pull request_ e chiede al responsabile di effettuare il _merge_ nel ramo principale .
    + La _issue_ viene marcata "Done" su GitHub automaticamente.
  - Se la verifica ha esito negativo:
    + Il verificatore rilascia una lista di cambiamenti suggeriti nella _pull request_.
    + L'incaricato apporta le modifiche suggerite e si torna al punto 4.

=== Coordinamento
Il coordinamento è l'attività che riguarda la gestione delle comunicazioni e degli incontri tra i membri del _team_, proponenti e committenti del progetto. L'efficienza del progetto e il coinvolgimento di tutte le parti interessate dipendono dal coordinamento.


La gestione della comunicazione interna ed esterna, la conduzione delle riunioni e la definizione di comportamenti comuni per i membri del _team_ sono esempi di attività di coordinamento.

==== Comunicazioni
===== Comunicazioni interne
Le comunicazioni interne vengono gestite con due strumenti separati: Telegram per le comunicazioni rapide da dispositivi _mobile_ e Discord per le riunioni e le chiamate tra i membri del _team_.


===== Comunicazioni esterne
Il responsabile del progetto sarà incaricato di gestire il dialogo con l'esterno attraverso l'indirizzo _e-mail_ #formatLink(url: "mailto:sweat.unipd@gmail.com").
Per quanto riguarda il mezzo di comunicazione per i SAL con i proponenti lo strumento utilizzato è _Google Meet_ che rende le videochiamate accessibili a tutti.

==== Riunioni
Al fine di garantire l'efficienza delle riunioni il responsabile corrente avrà il compito di interloquire con i proponenti per riepilogare i punti principali del periodo trascorso e esprimere dubbi e incertezze emerse dal gruppo.

===== Riunioni Interne
Le riunioni interne sono programmate di comune accordo tra i membri del gruppo. In caso di necessità è possibile richiedere riunioni straordinarie durante la settimana tramite il canale dedicato su Telegram con data e orario stabiliti attraverso un sondaggio. Tutte le riunioni _online_ si svolgeranno nel canale Discord appositamente designato. Nelle riunioni interne l'obiettivo finale è quello di risolvere le mancanze segnalate dall'ordine del giorno, per cui nella fase finale della riunione il responsabile, dopo aver discusso con il gruppo, pianifica le attività da svolgere e crea rispettivamente le _issue_ come da procedura sopra.

===== Riunioni Esterne
Le riunioni esterne coinvolgono i membri del gruppo e il proponente.


Per le riunioni con il proponente viene utilizzata la piattaforma Google Meet e il _link_ per accedere alla chiamata viene comunicato al _team_ di volta in volta. In accordo con l'azienda proponente gli incontri di fine _sprint_ avvengono ogni due settimane, in corrispondenza della cadenza degli _sprint_, mentre a metà di ogni _sprint_ si svolgerà un incontro di allineamento più breve per un confronto e degli aggiustamenti.

===== Compiti del responsabile
- Esporre i punti all'ordine del giorno.
- Fare il punto su quanto fatto e sul rispetto degli obiettivi posti.
- Pianificare le prossime attività da svolgere.
- Assegnare i _task_ ai membri del gruppo.

==== Verbali
===== Verbali Interni
Al fine di tracciare le discussioni svolte, le decisioni prese dal gruppo e soprattutto le motivazioni dietro ad esse, al termine di ogni incontro interno viene aperta una _issue_ su Github per la preparazione, la verifica e l'approvazione del verbale. Il compito di redigere il verbale, seguendo il formato indicato nella #link(<Documentazione>)[sez. 3.1] di questo documento, è affidato al responsabile il quale deve assicurarsi di includere tutte le informazioni rilevanti discusse.

===== Verbali Esterni
Per quanto riguarda le riunioni con i proponenti valgono le stesse regole di quelle interne con il passaggio aggiuntivo, di cui si occupa il responsabile, di richiedere l'approvazione del proponente tramite la sua firma sul verbale una volta redatto e verificato.

=== Metriche

#figure(
  table(
    columns: 2,
    table.header[*ID Metrica*][*Nome*],
    [#link(<MPC-ET>)[MPC-ET]], [Efficienza Temporale],
  ),
  caption: [Metriche per la gestione dei processi],
)


== Miglioramento
=== Descrizione
Secondo lo _standard_ ISO/IEC 12207:1995 il processo di miglioramento nel ciclo di vita del _software_ è finalizzato a stabilire, misurare, controllare e migliorare i processi che lo compongono. L'attività di miglioramento è composta da:

- Analisi: identificare le aree di miglioramento dei processi.
- Miglioramento: implementare le modifiche necessarie per migliorare i processi di sviluppo del _software_.

==== Analisi dei processi
Innanzitutto occorre stabilire una serie di processi organizzativi per l'intero ciclo di vita del _software_ applicabili alle varie attività di progetto. Quest'ultimi devono essere documentati e va implementato un meccanismo di controllo per sviluppare, monitorare e migliorare i processi stessi. Per garantire efficacia e continuo miglioramento dei processi alla fine di ogni _sprint_ il gruppo effettuerà una retrospettiva del lavoro svolto nel periodo trascorso che verrà verbalizzata dal responsabile nel documento Piano di Progetto.

==== Miglioramento dei processi
Una volta identificati i potenziali miglioramenti questi vanno effettivamente implementati secondo le corrette e adeguate metodologie. Nella retrospettiva seguente all'applicazione di queste migliorie verrà effettuato un altro _#rifGlossario("feedback")_ a riguardo per progredire ciclicamente.

=== Strumenti
Lo strumento principale per misurare l'efficacia delle modifiche apportate ad un processo e per identificare eventuali aree di miglioramento sono le metriche, ognuna delle quali analizzerà un aspetto chiave del processo stesso. Il loro andamento è consultabile nel Cruscotto della Qualità.

== Formazione
=== Descrizione
Per iniziare a formare i membri del gruppo, è necessario prima comprendere completamente il dominio del problema. È necessario quindi comprendere quali argomenti sono necessari per essere approfonditi e quali abilità sono necessarie per i vari processi.

Si deve quindi passare all'individuazione del materiale di formazione che aumenterà nel tempo poiché il nostro livello di conoscenza e comprensione del problema dovrà aumentare man mano che il progetto avanza.

Infine tutti i membri del gruppo devono imparare da dove e cosa studiare e devono anche aggiornarsi individualmente, se possibile, o con l'aiuto di altri membri più esperti.

=== Strumenti
Al fine di agevolare il processo di formazione ogni membro del gruppo incaricato in un determinato _sprint_ di approfondire un determinato argomento dovrà essere in grado di tramandare la propria conoscenza agli altri.
Per aiutarci nel processo di apprendimento l'azienda Sync Lab S.r.l. ci fornisce, durante lo svolgimento del progetto, materiali quali video e risorse utili alle tecnologie di dominio d'uso del nostro capitolato, nonché delle sedute di _deep dive_ tecnologico concordate a calendario.

= Standard per la qualità
Per la valutazione della qualità del _software_ prodotto il gruppo si prefigge di adottare le linee guida dello _standard_ ISO/IEC 9126.

== Standard ISO/IEC 9126
L'ISO/IEC 9126 è uno _standard_ internazionale creato per la valutazione della qualità del _software_. Definisce un modello di qualità del _software_ in termini di sei caratteristiche generali e venticinque sotto-caratteristiche. Questo _standard_ è stato sostituito dall'ISO/IEC 25010, ma rimane comunque un riferimento importante per la valutazione della qualità del _software_.

Di seguito forniamo una panoramica delle caratteristiche reputate rilevanti per il nostro progetto del modello di qualità descritto dallo _standard_ ISO/IEC 9126.

=== Funzionalità
La funzionalità è la capacità del prodotto _software_ di fornire funzioni che soddisfano le esigenze esplicite e implicite necessarie per operare. \ Questa caratteristica è composta dalle seguenti sotto-caratteristiche:
- *Appropriatezza*: capacità del prodotto di fornire un adeguato insieme di funzioni per consentire all'utente di perseguire i suoi specifici compiti e obiettivi.
- *Accuratezza*: capacità del prodotto di fornire i risultati o gli effetti attesi.
- *Interoperabilità*: capacità del prodotto di interagire con uno o più sistemi specificati.
- *Conformità*: capacità del prodotto di aderire a _standard_, convenzioni e regolamentazioni rilevanti per il settore operativo a cui vengono applicate.
- *Sicurezza*: capacità del prodotto di proteggere i dati e le funzioni da accessi non autorizzati.

=== Affidabilità
L'affidabilità è la capacità del prodotto di mantenere un certo livello di prestazioni in condizioni specificate per un periodo di tempo specificato. \ Le sue sotto-caratteristiche sono:
- *Maturità*: capacità del prodotto di evitare errori, malfunzionamenti o arresti inaspettati.
- *Tolleranza agli errori*: capacità del prodotto di mantenere un livello prestabilito di prestazioni in caso di errori.
- *Recuperabilità*: capacità del prodotto di ripristinare il livello di prestazioni e i dati in caso di malfunzionamenti.
- *Aderenza*: capacità del prodotto di aderire a _standard_, convenzioni e regolamentazioni riguardanti l'affidabilità.

=== Efficienza
L'efficienza è la capacità del prodotto di fornire prestazioni appropriate rispetto alla quantità di risorse utilizzate. \ Le sue sotto-caratteristiche sono:
- *Comportamento rispetto al tempo*: capacità del prodotto di fornire, sotto certe condizioni, adeguati tempi di risposta, elaborazione e velocità di attraversamento.
- *Utilizzo delle risorse*: capacità del prodotto di utilizzare adeguatamente risorse come memoria, CPU e spazio su disco.
- *Conformità*: capacità del prodotto di aderire a _standard_ e specifiche per l'efficienza.

=== Usabilità
L'usabilità è la capacità del prodotto di essere compreso, appreso, utilizzato e attraente per l'utente. \ Le sue sotto-caratteristiche sono:
- *Comprensibilità*: capacità del prodotto di rendere i suoi concetti facilmente comprensibili all'utente, permettendogli di valutare se il prodotto è adatto alle sue esigenze.
- *Apprendibilità*: capacità del prodotto essere facilmente apprendibile per gli utenti che non ne conoscono già il funzionamento.
- *Operabilità*: capacità del prodotto di essere utilizzato dagli utenti per i propri scopi e controllandone l'uso.
- *Attrattività*: capacità del prodotto di essere piacevole da utilizzare per l'utente.
- *Conformità*: capacità del prodotto di aderire a _standard_ o convenzioni per l'usabilità.

=== Manutenibilità
La manutenibilità è la capacità del prodotto di essere modificato, includendo correzioni, miglioramenti o adattamenti. \ Le sue sotto-caratteristiche sono:
- *Analizzabilità*: capacità del prodotto di essere facilmente analizzato per identificare difetti o cause di malfunzionamenti.
- *Modificabilità*: capacità del prodotto di essere facilmente modificato (sostituendo componenti).
- *Stabilità*: capacità del prodotto di evitare effetti indesiderati derivanti da modifiche.
- *Testabilità*: capacità del prodotto di essere facilmente testato così da validare le modifiche apportate.


= Metriche per la qualità <metriche>

== Metriche per la qualità di processo

=== Processi primari
==== Fornitura
- *MPC-PV*: <MPC-PV>
  - *Nome*: _Planned Value_
  - *Descrizione*: Indica il valore che si prevede di aver prodotto fino a quel momento.
  - *Formula*:
  $ "PV" = "%LSP" * "BAC" $
  - *Parametri*:
    - *%LSP*: Percentuale di Lavoro Svolto secondo la Pianificazione (ore pianificate rispetto alle ore totali disponibili).
    - *BAC*: _Budget at Completion_, ovvero il costo totale del progetto, stabilito in fase di candidatura.

- *MPC-EV*: <MPC-EV>
  - *Nome*: _Earned Value_
  - *Descrizione*: Indica il valore del lavoro effettivamente svolto fino a quel momento.
  - *Formula*:
  $ "EV" = "%LSE" * "BAC" $
  - *Parametri*:
    - *%LSE*: Percentuale di Lavoro Svolto Effettivamente (ore consumate rispetto al totale disponibile).
    - *BAC*: _Budget at Completion_.

- *MPC-AC*: <MPC-AC>
  - *Nome*: _Actual Cost_
  - *Descrizione*: Indica i costi effettivi sostenuti dall'inizio del progetto fino a quel momento. Ricavabile in qualsiasi momento consultando il Piano di Progetto.

- *MPC-CPI*: <MPC-CPI>
  - *Nome*: _Cost Performance Index_
  - *Descrizione*: Indica il rapporto tra il valore guadagnato e il costo effettivo. Più grande il suo valore, maggiore sarà l'efficienza.
  - *Formula*:
  $ "CPI" = "EV" / "AC" $
  - *Parametri*:
    - *EV*: _Earned Value_, ovvero il valore guadagnato.
    - *AC*: _Actual Cost_, ovvero il costo effettivo.

- *MPC-EAC*: <MPC-EAC>
  - *Nome*: _Estimated at Completion_
  - *Descrizione*: Indica il costo stimato per terminare il progetto se si mantenesse l'attuale efficienza nell'utilizzo delle risorse.
  - *Formula*:
  $ "EAC" = "BAC" / "CPI" $
  - *Parametri*:
    - *BAC*: _Budget at Completion_.
    - *CPI*: _Cost Performance Index_.

- *MPC-SV*: <MPC-SV>
  - *Nome*: _Schedule Variance_
  - *Descrizione*: Indica se il progetto è in anticipo (valore positivo), in pari (valore zero) o in ritardo (valore negativo) rispetto alla pianificazione.
  - *Formula*:
  $ "SV" = "EV" - "PV" $
  - *Parametri*:
    - *EV*: _Earned Value_.
    - *PV*: _Planned Value_.

- *MPC-BV*: <MPC-BV>
  - *Nome*: _Budget Variance_
  - *Descrizione*: Indica se i costi finora sostenuti per il progetto sono meno (valore positivo) o più (valore negativo) del previsto.
  - *Formula*:
  $ "BV" = "PV" - "AC" $
  - *Parametri*:
    - *PV*: _Planned Value_.
    - *AC*: _Actual Cost_.

- *MPC-ETC*: <MPC-ETC>
  - *Nome*: _Estimate to Complete_
  - *Descrizione*: Costo stimato per poter completare il progetto allo stato attuale.
  - *Formula*:
  $ "ETC" = "EAC" - "AC" $
  - *Parametri*:
    - *EAC*: _Estimated at Completion_.
    - *AC*: _Actual Cost_.

==== Sviluppo

- *MPC-ISR*: <MPC-ISR>
  - *Nome*: Indice di Stabilità dei Requisiti
  - *Descrizione*: Indice che misura la variazione dei requisiti nel corso del tempo. #h(1fr)
  - *Formula*:
  $ "ISR" = 100 - (("RM" + "RC" + "RA") / "RT") * 100 $
  - *Parametri*:
    - *RM*: Numero di Requisiti Modificati.
    - *RC*: Numero di Requisiti Cancellati.
    - *RA*: Numero di Requisiti Aggiunti.
    - *RT*: Numero Totale di Requisiti inizialmente previsti.


=== Processi di supporto
==== Documentazione
- *MPC-IG*: <MPC-IG>
  - *Nome*: Indice "Gulpease"
  - *Descrizione*: Indica il livello di leggibilità di un testo:
    - Inferiore a 80: difficile da leggere per chi ha la licenza elementare.
    - Inferiore a 60: difficile da leggere per chi ha la licenza media.
    - Inferiore a 40: difficile da leggere per chi ha la licenza superiore. #h(1fr)
  - *Formula*:
  $ "IG" = 89 + (300 * "NDF" - 10 * "NDL") / "NDP" $
  - *Parametri*:
    - *NDF*: Numero di Frasi presenti nel testo.
    - *NDL*: Numero di Lettere presenti nel testo.
    - *NDP*: Numero di Parole presenti nel testo.

- *MPC-CO*: <MPC-CO>
  - *Nome*: Correttezza Ortografica
  - *Descrizione*: Indica il numero di errori ortografici trovati nel testo.

==== Gestione della qualità

- *MPC-PMS*: <MPC-PMS>
  - *Nome*: Percentuale di Metriche Soddisfatte
  - *Descrizione*: Indica la percentuale di metriche che risultano soddisfare gli obiettivi minimi di qualità previsti dal Piano di Qualifica.
  - *Formula*:
  $ "PMS" = ("MS" / "MT") * 100 $
  - *Parametri*:
    - *MS*: Numero di Metriche Soddisfatte.
    - *MT*: Numero di Metriche Totali.

=== Processi organizzativi
==== Gestione dei processi

- *MPC-ET*: <MPC-ET>
  - *Nome*: Efficienza Temporale
  - *Descrizione*: Indica la percentuale di tempo disponibile che il _team_ è riuscito a impiegare svolgendo attività produttive, ossia quelle che contribuiscono direttamente al raggiungimento degli obiettivi del progetto.
  - *Formula*:
  $ "ET" = ("OO" / "OP") * 100 $
  - *Parametri*:
    - *OO*: Ore di Orologio (tempo totale trascorso).
    - *OP*: Ore Produttive (tempo effettivamente dedicato ad attività produttive).

== Metriche per la qualità di prodotto
=== Funzionalità
- *MPD-ROS*
  - *Nome*: Requisiti Obbligatori Soddisfatti
  - *Descrizione*: Misura la percentuale di requisiti obbligatori soddisfatti dal prodotto.
  - *Formula*:
  #align(center)[$ "%ROS" = "NROS" / "NTRO" * 100 $]
  - *Parametri*:
    - *NROS*: Numero di Requisiti Obbligatori Soddisfatti.
    - *NTRO*: Numero Totale di Requisiti Obbligatori.

- *MPD-RDS*
  - *Nome*: Requisiti Desiderabili Soddisfatti
  - *Descrizione*: Misura la percentuale di requisiti desiderabili soddisfatti dal prodotto.
  - *Formula*:
  #align(center)[$ "%RDS" = "NRDS" / "NTRD" * 100 $]
  - *Parametri*:
    - *NRDS*: Numero di Requisiti Desiderabili Soddisfatti.
    - *NTRD*: Numero Totale di Requisiti Desiderabili.

- *MPD-RFS*
  - *Nome*: Requisiti Facoltativi Soddisfatti
  - *Descrizione*: Misura la percentuale di requisiti facoltativi soddisfatti dal prodotto.
  - *Formula*:
  #align(center)[$ "%RFS" = "NRFS" / "NTRF" * 100 $]
  - *Parametri*:
    - *NRFS*: Numero di Requisiti Facoltativi Soddisfatti.
    - *NTRF*: Numero Totale di Requisiti Facoltativi.

=== Affidabilità
- *MPD-CC*
  - *Nome*: #rifGlossario("Code Coverage")
  - *Descrizione*: Misura la percentuale di codice eseguita durante i _test_. Per questo progetto è richiesta una copertura pari o superiore all'80%.

- *MPD-BC*
  - *Nome*: Branch Coverage
  - *Descrizione*: Calcola la percentuale di rami decisionali del codice eseguiti durante i _test_.

- *MPD-PTCP*
  - *Nome*: Passed Test Cases Percentage
  - *Descrizione*: Misura la percentuale di _test_ superati rispetto ai test eseguiti.

=== Efficienza
- *MPD-UR*
  - *Nome*: Utilizzo di Risorse
  - *Descrizione*: Misura l'efficienza del sistema in termini di utilizzo delle risorse _hardware_, come CPU, memoria e altre risorse di sistema.

=== Usabilità
- *MPD-FU*
  - *Nome*: Facilità di Utilizzo
  - *Descrizione*: Misura il numero di errori commessi dagli utenti durante l'interazione. Un valore minimo indica un'interfaccia intuitiva.
- *MPD-TA*
  - *Nome*: Tempo di Apprendimento
  - *Descrizione*: Valuta il tempo necessario a un utente per imparare a utilizzare il _software_.

=== Manutenibilità
- *MPD-CCM*
  - *Nome*: Complessità Ciclomatica per Metodo
  - *Descrizione*: Valuta la complessità per metodo del codice sorgente attraverso la misurazione del numero di cammini indipendenti attraverso il grafo di controllo del flusso.
  - *Formula*:
  #align(center)[$ "CC" = "e" - "n" + 2 $]

- *MPD-CS*
  - *Nome*: Code Smell
  - *Descrizione*: Rileva potenziali problemi di progettazione o codice che potrebbero richiedere manutenzione.
