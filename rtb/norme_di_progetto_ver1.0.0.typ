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
  versioni: ("1.0", "14-11-2024", "Klaudio Merja", "Andrea Precoma", "Struttura e introduzione del documento"),
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

#pagebreak()
= Processi di supporto

== Documentazione
Il processo di documentazione è necessario per il tracciamento di tutte le attività relative al progetto, sia dal lato software che dal lato organizzativo. Tutti i membri del gruppo si impegnano a rispettare le norme delineate nel capitolo corrente per la stesura di ogni documento.

=== Preparazione dell'ambiente
==== Tracciamento
Alla fine di ogni riunione si aggiorna il backlog con le nuove issue (corrispondenti alle decisioni prese durante la riunione). Esse devono specificare in modo esaustivo il compito da svolgere nel titolo, arricchite da una breve descrizione, i verificatori incaricati di visionare il lavoro e dal verbale nel quale è scaturita quella decisione in modo che in futuro sia sempre tracciabile il motivo dell'inserimento di quella issue. Devono inoltre essere collegate alla board (corrispondente al backlog), ad una milestone e ad un assegnatario. Una volta create si deve generare, sempre da interfaccia web, il branch temporaneo nel quale si andrà a lavorare.

==== Lavoro sul documento
Per lavorare su un documento bisogna attenersi ai seguenti passaggi:
+ Posizionarsi sulla cartella della repository nella macchina locale ed eseguire il comando per controllare l'allineamento con la repository remota \
	*git fetch*
+ Scaricare le eventuali modifiche in tutti i branch locali eliminando gli eventuali rami che in remoto sono stati eliminati \
	*git pull -p \--all*
+ Posizionarsi sulla branch collegata alla issue \
	*git checkout [nome_branch]*
+ Caricare le modifiche effettuate nella repository remota \
	*git add .* \
	*git commit -m \"[commento del commit]\"* \
	*git push* \
+ Dall'interfaccia web ora bisogna spostarsi nella sezione "pull request" e crearne una nuova assicurandosi di assegnare il verificatore
+ In caso il verificatore richieda delle correzioni è sufficiente ripetere i passaggi citati senza questa volta creare una nuova pull request perché è già esistente

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
- *Logo del gruppo*: Presente nella cartella img.
- *Titolo del documento*
- *Data*: Data in cui è stato creato o, nel caso dei verbali, in cui è avvenuta la riunione.
- *Uso*: Interno o esterno.
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
Le cartelle sono divise per milestone (candidatura, RTB e PB) ciascuna contenente i verbali interni ed esterni, il Piano di Progetto e il Piano di Qualifica. Nella cartella radice sono presenti anche il Glossario e le Norme di Progetto essendo di carattere generale per il progetto. I documenti si dividono quindi in tre categorie:
- *verbali*: [VI/VE]\_[YYYY-MM-DD]\_ver[X.Y.Z] dove VI e VE indicano rispettivamente verbali interni ed esterni
- *documenti soggetti a ciclo di vita*: [nome]\_ver[X.Y.Z]
- *documenti non soggetti a ciclo di vita*: [nome]

=== Stile del testo
Nei documenti vengono applicate le seguenti regole di stile testuali:
- Grassetto:
	- Parole importanti
	- Link
- Sottolineatura:
	- Link
	- Con apice "g":
		- Termini presenti nel Glossario
- Colore verde:
	- Link
- Virgolette:
	- Enfatizzare singoli caratteri
	- Espressioni tecnicamente imprecise (ad esempio "usa e getta")
- Maiuscole:
	- Iniziali di nomi propri
	- Acronimi
	- Prima lettera dei paragrafi se citati nel testo
	- Nomi dei documenti

=== Elenchi puntati
Se le voci dell'elenco sono costituite da delle frasi vengono chiuse da ".", se invece possiedono solo poche parole, che ad esempio indicano il nome di una tecnologia, non viene messo nessun segno di punteggiatura al termine.

=== Formato delle date
Sotto il titolo nella prima pagine dei verbali viene indicata la data per iscritto, quindi nel formato "DD mese YYYY". Le date nei documenti vengono scritte nel formato DD/MM/YYYY, nei nomi dei documenti invece YYYY-MM-DD per mantenere l'ordine cronologico. In tutti i casi si segue la seguente convenzione:
- YYYY: anno con quattro cifre.
- MM: mese con due cifre.
- DD: giorno con due cifre.

=== Strumenti
Sono stati scelti i seguenti strumenti per redigere e mantenere la documentazione:
- *Typst*: linguaggio per la stesura dei documenti, consigliata l'estensione Tinymist Typst per Visual Studio Code
- *GitHub*: servizio di [hosting]g di repository



== Gestione della configurazione
Per gestire la documentazione è stato creata una repository contenente tutti i file Typst aggiornati e verificati. Gli stessi documenti in formato .pdf sono consultabili al sito #text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://sweatunipd.github.io/docs")[https://sweatunipd.github.io/docs]]].

=== Repository
Il gruppo utilizza 2 repository all'interno della propria organizzazione GitHub:
- *docs* (#text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://github.com/SWEatUNIPD/docs")[https://github.com/SWEatUNIPD/docs]]]) contenente tutta la documentazione del progetto.
- *sweatunipd.github.io* (#text(weight: "bold", fill: rgb("#04E824"))[#underline[#link("https://github.com/SWEatUNIPD/sweatunipd.github.io")[https://github.com/SWEatUNIPD/sweatunipd.github.io]]]) contenente i file necessari alla struttura e presentazione del sito web.

==== Struttura della repository docs
La repository è strutturata da un unico branch adibito al mantenimento di tutti i documenti Typst verificati. All'occorenza di svolgere azioni dettate dal backlog si crea un branch temporaneo che, successivamente alla verifica e all'approvazione, viene unito nel ramo principale. La repository è presentata dal file README.md e contiene anche il file .gitignore usato dalla Action per la compilazione dei documenti. Le cartelle sono strutturate nel seguente modo: \
#tree-list()[
  - *.github*
    - *workflows*: contiene i file .yml per le Action
  - *.vscode*: contiene le impostazioni Visual Studio Code per i font dei documenti
  - *assets*
    - *font*: contiene i file .ttf dei font usati nei documenti
    - *img*: contiene le immagini usate nei documenti
  - *candidatura*
    - *verbali*
      - *esterni*: contiene i .typ e i .pdf dei verbali esterni
      - *interni*: contiene i .typ dei verbali interni
      - dichiarazione_impegni_preventivo_costi_ver1.1.0.typ
      - lettera_di_presentazione_candidatura.typ
      - valutazione_capitolati_ver1.2.0.typ
  - *rtb*
    - *verbali*
      - *esterni*: contiene i .typ e i .pdf dei verbali esterni
      - *interni*: contiene i .typ dei verbali interni
      - glossario_ver1.1.0.typ
      - norme_di_progetto_ver1.0.0.typ
  - *templates*
    - diario_di_bordo.pptx
    - template.typ
  - .gitignore
  - README.md
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
Viene adoperata una Action per facilitare il processo di verifica in quanto crea un file .zip con i documenti in formato .pdf ad ogni commit, e automatizza la pubblicazione dei documenti approvati nel sito del gruppo. Per i verbali esterni si è scelto un'approccio differente in quanto bisogna aspettare la firma del proponente per persa visione. Non potendo quindi essere pubblicati direttamente nel sito i verbali esterni vanno compilati localmente e mandati alla controparte. Una volta restituiti firmati vanno caricati manualmente nella stessa cartella dove risiede il codice sorgente e la Action si occuperà di pubblicarli nel sito. Per caricare i documenti firmati bisogna forzare l'operazione col seguente comando: \
*git add . \--forced* (Klaudio aiutami tu)



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