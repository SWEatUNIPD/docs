#import "/templates/template.typ": *

#show: content => verbale(
  data: "7 dicembre 2024",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.l.", "Gruppo SWE@"),
  responsabile: "-",
  redattori: ("Davide Martinelli", "Davide Picello"),
  verificatori: ("Andrea Precoma", "Davide Martinelli", "Davide Marin", "Riccardo Milan"),
  titolo: "Piano di Qualifica",
  uso: "Esterno",
  versioni: (
    "0.2.0",
    "02/01/2025",
    "Davide Picello",
    "Davide Martinelli,\nDavide Marin",
    [- Definite le metriche di qualità di processo e di prodotto. Definita la struttura delle specifiche dei _test_ e del cruscotto di monitoraggio della qualità.],

    "0.1.0",
    "07/12/2024",
    "Davide Martinelli",
    "Andrea Precoma,\nRiccardo Milan",
    [- Struttura e introduzione del documento],
  ),
  content: content,
)

#set heading(numbering: "1.1")

= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di definire le strategie di verifica e validazione implementate dal gruppo al fine di garantire la qualità dei processi e del prodotto finale, guidando il _team_ lungo tutta la durata del progetto secondo un'ottica di miglioramento continuo. Per tale motivo il documento ha natura mutevole ed evolutiva e verrà aggiornato periodicamente per riflettere le modifiche apportate ai processi al fine di migliorarne l'efficacia e l'efficienza.
L'ultima sezione del documento (#link(<cruscotto>)[sez. 4]) è dedicata all'analisi dell'andamento delle metriche presenti nel cruscotto di monitoraggio della qualità durante l'arco di svolgimento del progetto.

== Scopo del prodotto
L'obiettivo principale del prodotto è quello di fornire un sistema che monitori la posizione in tempo reale di ciascun utente e in base a questa crei, sfruttando la #rifGlossario("GenAI"), inserzioni pubblicitarie personalizzate sulla base dei suoi dati di profilazione. Il fine ultimo è quello di migliorare l'esperienza pubblicitaria degli utenti, massimizzando di conseguenza il #rifGlossario("ROI").

== Glossario
Per chiarire il significato di alcuni termini tecnici, abbreviazioni e acronimi utilizzati all'interno della documentazione viene fornito un glossario.
Nel documento i termini che, alla loro prima occorrenza, vengono contrassegnati da una sottolineatura e una "g" posta ad apice (e.g. #rifGlossario("termine")) avranno una corrispettiva descrizione dettagliata all'interno del Glossario.

== Riferimenti

=== Riferimenti normativi
- Norme di Progetto

=== Riferimenti informativi
- Capitolato d'appalto C4: _NearYou - Smart custom advertising platform_\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")

- Glossario

- Lezione T07 - Qualità di prodotto\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")

- Lezione T08 - Qualità di processo\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")

- ISO/IEC 12207:1995\ #formatLink(url: "https://en.wikipedia.org/wiki/ISO/IEC_12207")

/* 
- ISO/IEC 9126:2001\ #formatLink(url: "https://en.wikipedia.org/wiki/ISO/IEC_9126")

- ISO/IEC 25010:2011\ #formatLink(url: "https://en.wikipedia.org/wiki/ISO/IEC_25010")
*/

= Obiettivi di qualità
In questa sezione vengono definiti gli obiettivi di qualità che il gruppo si prefigge di raggiungere nell'ambito del progetto, sia per i processi che per il prodotto, sulla base delle metriche definite nel documento Norme di Progetto.

== Qualità di processo
La qualità di processo è nota essere un fattore di fondamentale importanza per qualsiasi produzione di _software_ che punti all'eccellenza qualitativa. Essa, infatti, influenza con un evidente rapporto di causa-effetto la qualità del prodotto finale.

Di seguito elenchiamo gli obiettivi di qualità che il gruppo si prefigge di raggiungere nell'ambito della qualità di processo, suddivisi per le tre categorie di processi individuate dallo _standard_ ISO/IEC 12207:1995 (primari, di supporto e organizzativi).

=== Processi primari
Fanno parte dei processi primari le attività di acquisizione, fornitura, sviluppo, gestione operativa e di manutenzione. Data la natura didattica del progetto ci occupiamo solo di fornitura e sviluppo.

==== Fornitura
Attività e compiti del fornitore, il quale dovrà accordarsi con il proponente per stabilire ufficialmente i vari vincoli e requisiti del progetto.

===== Earned value (EV)
Misura il valore del lavoro completato fino a un determinato momento rispetto al _budget_ pianificato. Si calcola moltiplicando la percentuale di completamento del lavoro per il _budget_ totale previsto (BAC).

Formula: ``` EV = % completamento del lavoro * BAC ```

===== Planned value (PV)
Rappresenta il valore pianificato del lavoro da completare entro una certa data. Si calcola come il prodotto della percentuale di pianificazione del lavoro per il _budget_ totale previsto (BAC).

Formula: ``` PV = % pianificazione del lavoro * BAC ```

===== Actual cost (AC)
Indica il costo effettivamente sostenuto per il lavoro completato fino a un determinato momento.

===== Cost performance index
Misura l’efficienza del costo per il lavoro svolto fino a un determinato momento, valutando quanto valore si ottiene per ogni unità monetaria spesa.

Formula:  ``` CPI = EV / AC ``` 

===== Estimated at completion (EAC)
Fornisce una stima del costo totale del progetto basata sulle condizioni attuali. Può essere calcolata come il rapporto tra il _budget_ totale (BAC) e l’indice di efficienza dei costi (CPI).

Formula: ``` EAC = BAC / CPI ``` 

===== Estimate to complete (ETC)
Stima i costi aggiuntivi necessari per completare il progetto. Può essere calcolato come la differenza tra il costo totale stimato (EAC) e il costo effettivo sostenuto fino a quel momento (AC).

Formula:  ``` ETC = EAC − AC ``` 

===== Variance at completion
Indica la differenza tra il _budget_ pianificato (BAC) e il _budget_ attuale stimato per il completamento del progetto (EAC). Valori positivi indicano un risparmio rispetto al _budget_ pianificato.

Formula:  ``` VAC = BAC − EAC ``` 

===== Schedule variance (SV)
Indica la differenza tra il valore guadagnato (EV) e il valore pianificato (PV). Valori negativi mostrano ritardi rispetto alla pianificazione.

Formula: ``` SV = EV − PV ```

===== Budget variance
Misura la differenza tra il valore pianificato (PV) e il costo effettivo (AC) alla data corrente. Valori negativi indicano un superamento del _budget_ pianificato.

Formula:  ``` BV = PV − AC ``` 

===== Cost variance (CV)
Misura la differenza tra il valore guadagnato (EV) e il costo effettivo (AC). Valori negativi indicano che i costi superano il _budget_ pianificato.

Formula: ``` CV = EV - AC ``` 

===== Tabella metriche fornitura
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di fornitura], 
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    
    [], [Earned value], [$≥ 0$], [$≤$ EAC],
    [], [Planned value], [$≥ 0$], [$≤$ BAC],
    [], [Actual cost], [$≥ 0$], [$≤$ EAC],
    [], [Cost performance index], [tra 0.95 e 1.05], [1],
    [], [Estimated at completion], [$± 5%$ rispetto BAC], [BAC],
    [], [Estimated to completion], [$≥ 0$], [$≤$ EAC],
    [], [Variance at completion], [$± 10%$ rispetto BAC], [$0%$],
    [], [Schedule variance], [$± 10%$ rispetto BAC], [$0%$],
    [], [Budget variance], [$± 10%$ rispetto BAC], [$0%$],
    [], [Cost variance], [$± 10%$ rispetto BAC], [$0%$],

  )
)

==== Sviluppo
Composta da attività il cui scopo è di descrivere le attività e i compiti necessari per creare e mantenere un sistema _software_, garantendo che il prodotto finale soddisfi i requisiti specificati nel contratto. Elenchiamo di seguito le metriche relative.

===== Attributi per Classe
Numero di attributi appartenenti a una classe.

===== Parametri per Metodo
Numero di parametri appartenenti a un metodo.

===== Linee di Codice per Metodo  
Numero di linee di codice che costituiscono un metodo.

===== Requirements Stability Index (RSI)
Valuta la stabilità dei requisiti nel corso del tempo.  

Formula: ``` RSI = 100 − ((RA + RC + RR) / TR) ∗ 100 ```

- *RA*: Numero di requisiti aggiunti nel periodo considerato.  
- *RC*: Numero di requisiti cambiati nel periodo considerato.  
- *RR*: Numero di requisiti rimossi nel periodo considerato.  
- *TR*: Numero totale di requisiti al momento dell’analisi.

===== Structural Fan-In (SFIN)
Indice di utilità che misura la quantità di componenti che utilizzano un modulo specifico.

=====  Structural Fan-Out (SFOUT)
Indice di dipendenza che rappresenta il numero di componenti utilizzate dal modulo considerato.

===== Tabella metriche sviluppo
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di sviluppo], 
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    
    [], [Attributi per Classe], [$≤ 6$], [$≤ 4$],
    [], [Parametri per Metodo], [$≤ 5$], [$≤ 4$],
    [], [Linee di Codice per Metodo], [$≤ 25$], [$≤ 20$],
    [], [], [], [],
    [], [Requirements stability index], [$≥ 75%$], [$100$%],
    [], [Structural Fan-In], [-], [Max],
    [], [Structural Fan-Out], [-], [Min],

  )
)

=== Processi di supporto
Forniscono servizi e attività che assistono i processi primari. Includono: documentazione, gestione della configurazione, controllo qualità, verifica, validazione e risoluzione dei problemi.

==== Documentazione
Processo necessario per il tracciamento di tutte le attività relative al progetto.

===== Indice Gulpease
L'Indice gulpease è una metrica utilizzata per valutare la leggibilità di un testo in lingua italiana. Tiene conto della lunghezza delle parole e delle frasi, fornendo un punteggio da 0 a 100. Punteggi più alti indicano una maggiore leggibilità. Questo strumento è utile per garantire che i documenti siano comprensibili per il pubblico di riferimento.

Formula: ``` IG = 89 + (300 * Nf - 10 * Nl) / Np  ```

===== Correttezza Ortografica
La metrica della Correttezza Ortografica misura il numero di errori grammaticali e ortografici presenti in un documento. Serve a garantire la qualità formale del testo e a migliorare la sua professionalità e leggibilità.

===== Tabella metriche documentazione
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di documentazione], 
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [TBD],[Indice Gulpease],[$gt.eq 40$],[$gt.eq 80$],
    [TBD],[Correttezza Ortografica],[0],[0],
  )
)

==== Verifica
Processo necessario per garantire che il prodotto soddisfi i requisiti.

===== Code coverage
La _code coverage_ indica la percentuale di codice sorgente che è stato effettivamente testato rispetto al totale. Una copertura alta assicura che le funzionalità implementate siano ben verificate, riducendo il rischio di errori in fase di esecuzione.

===== Passed test cases percentage
Questa metrica valuta la percentuale di casi di _test_ superati con successo rispetto al totale eseguito. È utile per monitorare l'affidabilità del software e identificare eventuali aree problematiche.

===== Tabella metriche documentazione
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di documentazione], 
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [],[Code coverage],[$≥ 80%$],[$100%$],
    [],[Passed test cases percentage],[$≥ 80%$],[$100%$],
  )
)

==== Gestione della qualità
===== Quality Metrics Satisfied
Monitora il grado di soddisfacimento delle metriche di qualità stabilite. È una misura dell'aderenza del progetto agli standard definiti, utile per garantire che gli obiettivi qualitativi siano raggiunti e mantenuti.

===== Tabella metriche gestione della qualità
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di gestione della qualità], 
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [],[Quality Metrics Satisfied],[$≥ 80%$],[$100%$]
  )
)

=== Processi organizzativi
Riguardano la gestione e l'organizzazione del progetto. Includono: gestione dei processi, miglioramento, e formazione.

==== Gestione dei processi
Stabilire, implementare e migliorare un insieme di processi che assicurino il raggiungimento degli obiettivi del progetto.

===== Non-calculated risk
Tiene traccia dei rischi che non sono stati previsti o stimati durante la pianificazione del progetto.

===== Efficienza temporale
Questa metrica valuta l'efficienza con cui il tempo disponibile viene impiegato in attività produttive, ossia quelle che contribuiscono direttamente al raggiungimento degli obiettivi del progetto. Si calcola come il rapporto tra le ore di orologio "Oₒ" (tempo totale trascorso) e le ore produttive "Oₚ" (tempo effettivamente dedicato ad attività utili).

Formula: ``` ET = Oₒ / Oₚ ```

===== Tabella metriche gestione dei processi
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di gestione dei processi], 
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [],[Non-calculated risk],[$≤ 3$],[$0$],
    [],[Efficienza temporale],[$≤ 3$],[$≤ 1$]
  )
)

== Qualità di prodotto
La qualità del prodotto si concentra sulla valutazione del _software_ sviluppato, considerando aspetti come usabilità, funzionalità, affidabilità, manutenibilità e, più in generale, le prestazioni complessive del sistema. L’obiettivo principale è garantire che il _software_ non solo soddisfi le richieste del cliente e funzioni correttamente, ma che lo faccia rispettando specifici _standard_ di qualità. Di seguito vengono illustrate le metriche che il team si impegna a rispettare per assicurare un elevato livello di qualità del prodotto.

=== Funzionalità
La funzionalità misura la capacità del _software_ di soddisfare i requisiti obbligatori, desiderabili e opzionali.

==== Requisiti obbligatori soddisfatti
Indica la percentuale di requisiti obbligatori implementati nel prodotto. Deve essere sempre pari al 100% per garantire la conformità alle specifiche. Si calcola come rapporto tra i requisiti obbligatori completati "ROC" e il totale dei requisiti obbligatori "TRO".

Formula: ``` CRO = ROC/TRO * 100 ```

==== Requisiti desiderabili soddisfatti
Misura la percentuale di requisiti desiderabili implementati nel prodotto. Valori più elevati migliorano la soddisfazione del cliente.Si calcola come rapporto tra i requisiti desiderabili completati "RDC" e il totale dei requisiti desiderabili "TRD".

Formula: ``` CRD = RDC/TRO * 100 ```

==== Requisiti opzionali soddisfatti
Rappresenta la percentuale di requisiti opzionali implementati. Una copertura opzionale più alta può aggiungere valore al prodotto. Si calcola come rapporto tra i requisiti opzionali completati "RDC" e il totale dei requisiti opzionali "TRD".

Formula: ``` CRP = RPC/TRP * 100 ```

==== Tabella metriche funzionalità
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante la funzionalità del prodotto],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    
    [], [Requisiti obbligatori soddisfatti], [$100\%$], [$100\%$],
    [], [Requisiti desiderabili soddisfatti], [$≥ 0\%$], [$100\%$],
    [], [Requisiti opzionali soddisfatti], [$≥ 0\%$], [$≥ 50\%$],
  )
)

=== Affidabilità
L’affidabilità valuta la capacità del _software_ di funzionare correttamente sotto condizioni specifiche.

==== Code coverage
Misura la percentuale di codice eseguita durante i _test_. Valori più alti indicano una migliore copertura del codice. Per questo progetto è richiesta una copertura pari o superiore all'$80%$.

==== Branch coverage
Calcola la percentuale di rami decisionali del codice eseguiti durante i _test_. Aiuta a identificare scenari non testati.

==== Statement coverage
Rappresenta la percentuale di istruzioni eseguite durante i _test_. Un valore alto garantisce un'analisi più approfondita del codice.

==== Passed test cases percentage
Misura la percentuale di casi di _test_ superati rispetto al totale dei _test_ eseguiti. Un alto valore indica che il _software_ soddisfa i requisiti funzionali e non funzionali previsti.

==== Failure density
Indica il numero di fallimenti correttamente riscontrati per unità di dimensione del _software_, spesso misurata in linee di codice (LOC) o punti funzione. Valori più bassi denotano un _software_ di qualità superiore, con meno difetti rispetto alla sua complessità o dimensione.



==== Tabella metriche affidabilità
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante l’affidabilità del prodotto],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    
    [], [Code coverage], [$≥ 80\%$], [$100\%$],
    [], [#rifGlossario("Branch") coverage], [$≥ 60\%$], [$100\%$],
    [], [Statement coverage], [$≥ 60\%$], [$100\%$],
    [], [Passed test cases percentage], [$≥ 80\%$], [$100\%$],
    [], [Failure density], [$100%$], [$100%$],
  )
)

=== Usabilità
L’usabilità si riferisce alla facilità con cui un utente può interagire con il software.

==== Facilità di utilizzo
Misura il numero di errori commessi dagli utenti durante l’interazione. Un valore minimo indica un’interfaccia intuitiva.

==== Tempo di apprendimento
Valuta il tempo necessario a un utente per imparare a utilizzare il _software_. Tempi più brevi migliorano l’esperienza utente.

==== Tabella metriche usabilità
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante l’usabilità del prodotto],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    
    [], [Facilità di utilizzo], [$≤ 3$ errori], [$0$ errori],
    [], [Tempo di apprendimento], [$≤ 15$ minuti], [$≤ 5$ minuti],
  )
)

=== Efficienza

==== Utilizzo risorse
Misura l’efficienza del sistema in termini di utilizzo delle risorse hardware, come CPU, memoria e altre risorse di sistema. Un uso efficiente delle risorse garantisce che il sistema funzioni in modo ottimale senza sovraccaricare le risorse disponibili.


#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante l'efficienza del prodotto],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    
    [], [Utilizzo risorse], [$≥ 75\%$], [$100\%$],
    [], [Maximum CPU usage], [da determinare], [da determinare],
    [], [Maximum RAM usage], [da determinare], [da determinare],
    [], [Tempo Di Elaborazione], [da determinare], [da determinare],
  )
)


=== Manutenibilità

==== Complessità ciclomatica
La complessità ciclomatica valuta la complessità del codice sorgente attraverso la misurazione del numero di cammini indipendenti attraverso il grafo di controllo del flusso. Una complessità ciclomatica più alta indica che il codice è più difficile da comprendere e manutenere.

Formula: ``` e - n + 2 ```

==== Code smell
Rileva potenziali problemi di progettazione o codice che potrebbero richiedere manutenzione. Segnala parti del codice che potrebbero non essere ottimali e che potrebbero causare difficoltà nel futuro, come un'architettura poco chiara o sezioni di codice ripetitive.



==== Coefficient of Coupling (COC)
Il Coefficient of Coupling misura il grado di dipendenza tra i moduli o le componenti di un sistema. Un alto COC implica che i moduli siano strettamente interconnessi, il che può rendere difficile apportare modifiche a un modulo senza influenzare altri. Si calcola come rapporto tra il numero di dipendenze interne (NDIP) e il numero totale di moduli (NMOD), moltiplicato per $100$.

Formula: ``` COC = (NDIP / NMOD) * 100 ```

==== Structure fan in (SFIN)
Indica il numero di moduli o componenti che dipendono direttamente da un modulo o funzione specifica. Un alto valore di fan-in suggerisce che molte parti del sistema dipendono da quel modulo, quindi modifiche a tale modulo potrebbero avere un ampio impatto.

==== Structure fan out (SFOUT)
Misura il numero di dipendenze o connessioni che un modulo o componente ha con altri. Un elevato fan-out può indicare che il modulo è fortemente interconnesso con altri, il che può comportare una maggiore complessità nelle modifiche o nella manutenzione del sistema.

==== Tabella metriche manutenibilità

#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante la manutenibilità del prodotto],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    
    [], [Complessità ciclomatica], [$1 - 10$], [$11 - 20$],
    [], [Code smell], [$0$], [$0$],
    [], [Coefficient of coupling], [$≤ 30\%$], [$≤ 10\%$],
    [], [Structure fan in], [da determinare], [da determinare],
    [], [Structure fan out], [da determinare], [da determinare],
    [], [Complessità ciclomatica per metodo], [$≤ 5$], [$≤ 3$],
  )
)

= Specifiche dei test
Questa sezione descrive le attività di _testing_ effettuate per garantire che i vincoli definiti nei requisiti siano pienamente soddisfatti. In linea con quanto specificato nel documento Norme di Progetto, il piano di _test_ adotta un approccio strutturato e si articola nelle seguenti categorie.

//== Nomenclatura
// Aggiungere parte relativa alla nomenclatura 

== _Test_ di unità
Mirano a verificare il funzionamento corretto dei componenti _software_ più piccoli e indipendenti, sviluppati principalmente nella fase di progettazione.
// Da completare con tutti i test 

== _Test_ di integrazione
Successivi ai _test_ di unità, hanno lo scopo di verificare l’interazione tra diverse unità _software_ per garantire che lavorino in sinergia per compiti specifici.
// Da completare con tutti i test 

== _Test_ di sistema
Si concentrano sul sistema completo, assicurando che tutte le specifiche funzionali, prestazionali e di qualità concordate siano rispettate.
// Da completare con tutti i test 

== _Test_ di accettazione
Condotti insieme al committente, servono a garantire che il prodotto finale sia conforme alle aspettative e ai requisiti contrattuali, permettendone il rilascio definitivo.
// Da completare con tutti i test 


= Cruscotto di monitoraggio della qualità <cruscotto>
//Rimane da fare resoconto a fine periodo RTB

== Estimated at Completion (EAC)
L'*EAC* rappresenta una stima aggiornata del costo totale previsto per completare un progetto, basata sui costi sostenuti e sulle previsioni future.

=== RTB
// Tabella RTB

== Earned Value (EV) e Planned Value (PV)
- *Earned Value* (*EV*): Indica il valore del lavoro effettivamente completato in termini di _budget_ approvato.
- *Planned Value* (*PV*): Rappresenta il valore pianificato del lavoro che avrebbe dovuto essere completato entro un determinato momento.

=== RTB
// Tabella RTB

== Actual Cost (AC) e Estimate to Complete (ETC)
- *Actual Cost* (*AC*): Costo reale sostenuto per il lavoro eseguito fino a un determinato punto.
- *Estimate to Complete* (*ETC*): Stima dei costi rimanenti necessari per completare il progetto.

=== RTB
// Tabella RTB

== Cost Variance (CV) e Schedule Variance (SV)
- *Cost Variance* (*CV*): Differenza tra il valore guadagnato (EV) e il costo reale (AC), indica se il progetto è sotto o sopra il _budget_.
- *Schedule Variance* (*SV*): Differenza tra il valore guadagnato (EV) e il valore pianificato (PV), mostra se il progetto è in anticipo o in ritardo rispetto alla pianificazione.

=== RTB
// Tabella RTB

== Requirements stability index (RSI)
L'*RSI* misura la stabilità dei requisiti del progetto nel tempo, valutando quanto siano stati modificati o aggiornati durante il ciclo di vita.

=== RTB
// Tabella RTB

== Indice Gulpease
Indice che valuta la leggibilità dei documenti scritti in italiano.

=== RTB
// Tabella RTB

== Correttezza Ortografica
Metriche che misurano la presenza di errori ortografici nei documenti, valutando la qualità formale del contenuto.

=== RTB
// Tabella RTB

== Quality Metrics Satisfied
Percentuale di metriche di qualità definite per il progetto che sono state soddisfatte rispetto agli obiettivi prefissati.

=== RTB
// Tabella RTB

== Non-Calculated Risk
Indica i rischi non previsti che si sono verificati durante il progetto, evidenziando eventuali lacune nella pianificazione.

=== RTB
// Tabella RTB

== Efficienza Temporale 
Misura l'efficacia nell'utilizzo del tempo per completare le attività, confrontando il tempo effettivamente impiegato con quello previsto.

=== RTB
// Tabella RTB