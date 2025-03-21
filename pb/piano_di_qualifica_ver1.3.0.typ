#import "/templates/template.typ": *

#show: content => verbale(
  data: "27 gennaio 2025",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.l.", "Gruppo SWE@"),
  responsabile: "Riccardo Milan",
  redattori: ("Davide Marin", "Davide Martinelli", "Davide Picello", "Klaudio Merja"),
  verificatori: ("Andrea Precoma", "Davide Martinelli", "Davide Marin", "Riccardo Milan"),
  titolo: "Piano di Qualifica",
  uso: "Esterno",
  versioni: (
    "1.3.0",
    "21/03/2025",
    "Davide Picello",
    "Andrea Precoma",
    [
      - Aggiunta dei _test_ di unità del simulatore
    ],
    "1.2.0",
    "10/03/2025",
    "Davide Marin",
    "Riccardo Milan",
    [
      - Aggiunta dei _test_ di accettazione
    ],
    "1.1.0",
    "6/03/2025",
    "Davide Martinelli",
    "Davide Marin",
    [
      - Stesura sezione sui _test_ di sistema.
      - Piccoli fix in accordo con le Norme di Progetto.
    ],
    "1.0.1",
    "05/02/2025",
    "Klaudio Merja",
    "Andrea Precoma",
    [
      - Correzione dei riferimenti alla documentazione del gruppo
    ],
    "1.0.0",
    "27/01/2025",
    "Davide Picello",
    "Andrea Precoma",
    [Approvazione versione finale del documento per rilascio in RTB],
    "0.3.0",
    "26/01/2025",
    "Davide Picello",
    "Davide Martinelli\nDavide Marin",
    [- Creazione grafici nel cruscotto di monitoraggio della qualità.],
    "0.2.0",
    "10/01/2025",
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
- Norme di Progetto (v1.0.1)\ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/norme_di_progetto_ver1.0.1.pdf")
- ISO/IEC 12207:1995 (#sym.section#sym.section 6.3-6.7)\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")\ (ultimo accesso in data 6/03/2025)

=== Riferimenti informativi
- Glossario (v1.0.0)\ #formatLink(url: "https://sweatunipd.github.io/docs/rtb/glossario_ver1.0.0.pdf")
- Capitolato d'appalto C4: _NearYou - Smart custom advertising platform_\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")\ (ultimo accesso in data 27/01/2025)
- Lezione T07 - Qualità di prodotto\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")\ (ultimo accesso in data 27/01/2025)
- Lezione T08 - Qualità di processo\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")\ (ultimo accesso in data 27/01/2025)

/*
- ISO/IEC 9126:2001\ #formatLink(url: "https://en.wikipedia.org/wiki/ISO/IEC_9126")

- ISO/IEC 25010:2011\ #formatLink(url: "https://en.wikipedia.org/wiki/ISO/IEC_25010")
*/

#pagebreak()

= Obiettivi di qualità
In questa sezione vengono definiti gli obiettivi di qualità che il gruppo si prefigge di raggiungere nell'ambito del progetto, sia per i processi che per il prodotto, sulla base delle metriche definite nel documento Norme di Progetto.

== Qualità di processo
La qualità di processo è nota essere un fattore di fondamentale importanza per qualsiasi produzione di _software_ che punti all'eccellenza qualitativa. Essa, infatti, influenza con un evidente rapporto di causa-effetto la qualità del prodotto finale.

Di seguito elenchiamo gli obiettivi di qualità che il gruppo si prefigge di raggiungere nell'ambito della qualità di processo, suddivisi per le tre categorie di processi individuate dallo _standard_ ISO/IEC 12207:1995 (primari, di supporto e organizzativi).

=== Processi primari
Fanno parte dei processi primari le attività di acquisizione, fornitura, sviluppo, gestione operativa e di manutenzione. Data la natura didattica del progetto ci occupiamo solo di fornitura e sviluppo.

==== Fornitura
Attività e compiti del fornitore, il quale dovrà accordarsi con il proponente per stabilire ufficialmente i vari vincoli e requisiti del progetto.

===== Planned value (MPC-PV)
Rappresenta il valore pianificato del lavoro da completare entro una certa data.

===== Earned value (MPC-EV)
Misura il valore del lavoro completato fino a un determinato momento rispetto al _budget_ pianificato.

===== Actual cost (MPC-AC)
Indica il costo effettivamente sostenuto per il lavoro completato fino a un determinato momento.

===== Cost performance index (MPC-CPI)
Misura l'efficienza del costo per il lavoro svolto fino a un determinato momento, valutando quanto valore si ottiene per ogni unità monetaria spesa.

===== Estimated at completion (MPC-EAC)
Fornisce una stima del costo totale del progetto basata sulle condizioni attuali.

===== Schedule variance (MPC-SV)
Indica la differenza tra il valore guadagnato (EV) e il valore pianificato (PV). Valori negativi mostrano ritardi rispetto alla pianificazione.

===== Budget variance (MPC-BV)
Misura la differenza tra il valore pianificato (PV) e il costo effettivo (AC) alla data corrente. Valori negativi indicano un superamento del _budget_ pianificato.

===== Estimate to completion (MPC-ETC)
Stima i costi aggiuntivi necessari per completare il progetto.


===== Tabella metriche fornitura
Ricordiamo che il *BAC* rappresenta il _Budget at Completion_, ovvero il costo totale del progetto stabilito in fase di candidatura.
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di fornitura],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [MPC-PV], [_Planned value_], [$≥ 0$], [$≤$ BAC],
    [MPC-EV], [_Earned value_], [$≥ 0$], [$≤$ EAC],
    [MPC-AC], [_Actual cost_], [$≥ 0$], [$≤$ EAC],
    [MPC-CPI], [_Cost performance index_], [tra 0.95 e 1.05], [1],
    [MPC-EAC], [_Estimated at completion_], [$± 5%$ rispetto BAC], [BAC],
    [MPC-SV], [_Schedule variance_], [$± 5%$ rispetto BAC], [$0%$],
    [MPC-BV], [_Budget variance_], [$± 5%$ rispetto BAC], [$0%$],
    [MPC-ETC], [_Estimated to completion_], [$≥ 0$], [$≤$ EAC],
  ),
)

==== Sviluppo
Composta da attività il cui scopo è di descrivere le attività e i compiti necessari per creare e mantenere un sistema _software_, garantendo che il prodotto finale soddisfi i requisiti specificati nel contratto. Elenchiamo di seguito le metriche relative.

===== Indice di Stabilità dei Requisiti (MPC-ISR)
Valuta la stabilità dei requisiti nel corso del tempo.

===== Tabella metriche sviluppo
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di sviluppo],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [MPC-ISR], [Indice di Stabilità dei Requisiti], [$≥ 75%$], [$100$%],
  ),
)

=== Processi di supporto
Forniscono servizi e attività che assistono i processi primari. Includono: documentazione, gestione della configurazione, controllo qualità, verifica, validazione e risoluzione dei problemi.

==== Documentazione
Processo necessario per il tracciamento di tutte le attività relative al progetto.

===== Indice Gulpease (MPC-IG)
L' indice #rifGlossario("gulpease") è una metrica utilizzata per valutare la leggibilità di un testo in lingua italiana. Tiene conto della lunghezza delle parole e delle frasi, fornendo un punteggio da 0 a 100. Punteggi più alti indicano una maggiore leggibilità.

===== Correttezza Ortografica (MPC-CO)
La metrica della Correttezza Ortografica misura il numero di errori grammaticali e ortografici presenti in un documento.

===== Tabella metriche documentazione
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di documentazione],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [MPC-IG], [Indice Gulpease], [$gt.eq 40$], [$gt.eq 80$],
    [MPC-CO], [Correttezza Ortografica], [0], [0],
  ),
)

==== Gestione della qualità
===== Percentuale di Metriche Soddisfatte (MPC-PMS)
Indica la percentuale di metriche che risultano soddisfare gli obiettivi minimi di
qualità.

===== Tabella metriche gestione della qualità
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di gestione della qualità],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [MPC-PMS], [Percentuale di Metriche Soddisfatte], [$≥ 80%$], [$100%$],
  ),
)

=== Processi organizzativi
Riguardano la gestione e l'organizzazione del progetto. Includono: gestione dei processi, miglioramento, e formazione.

===== Efficienza temporale (MPC-ET)
Questa metrica valuta l'efficienza con cui il tempo disponibile viene impiegato in attività produttive, ossia quelle che contribuiscono direttamente al raggiungimento degli obiettivi del progetto.

===== Tabella metriche gestione dei processi
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di gestione dei processi],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [MPC-ET], [Efficienza temporale], [$≤ 3$], [$≤ 1$],
  ),
)

== Qualità di prodotto
La qualità del prodotto si concentra sulla valutazione del _software_ sviluppato, considerando aspetti come usabilità, funzionalità, affidabilità, manutenibilità e, più in generale, le prestazioni complessive del sistema. L'obiettivo principale è garantire che il _software_ non solo soddisfi le richieste del cliente e funzioni correttamente, ma che lo faccia rispettando specifici _standard_ di qualità. Di seguito vengono illustrate le metriche che il team si impegna a rispettare per assicurare un elevato livello di qualità del prodotto.

=== Funzionalità
La funzionalità misura la capacità del _software_ di soddisfare i requisiti obbligatori, desiderabili e opzionali.

==== Requisiti obbligatori soddisfatti (MDP-ROS)
Indica la percentuale di requisiti obbligatori implementati nel prodotto. Deve essere sempre pari al 100% per garantire la conformità alle specifiche.

==== Requisiti desiderabili soddisfatti (MDP-RDS)
Misura la percentuale di requisiti desiderabili implementati nel prodotto. Valori più elevati migliorano la soddisfazione del cliente.

==== Requisiti opzionali soddisfatti (MDP-ROPS)
Rappresenta la percentuale di requisiti opzionali implementati. Una copertura opzionale più alta può aggiungere valore al prodotto.

==== Tabella metriche funzionalità
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante la funzionalità del prodotto],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [MDP-ROS], [Requisiti obbligatori soddisfatti], [$100\%$], [$100\%$],
    [MDP-RDS], [Requisiti desiderabili soddisfatti], [$≥ 0\%$], [$100\%$],
    [MDP-ROPS], [Requisiti opzionali soddisfatti], [$≥ 0\%$], [$≥ 50\%$],
  ),
)

=== Affidabilità
L'affidabilità valuta la capacità del _software_ di funzionare correttamente sotto condizioni specifiche.

==== Code coverage (MDP-CC)
Misura la percentuale di codice eseguita durante i _test_. Valori più alti indicano una migliore copertura del codice. Per questo progetto è richiesta una copertura pari o superiore all'$80%$.

==== Branch coverage (MDP-BC)
Calcola la percentuale di rami decisionali (_#rifGlossario("branch")_) del codice eseguiti durante i _test_. Aiuta a identificare scenari non testati.

==== Statement coverage (MDP-SC)
Rappresenta la percentuale di istruzioni eseguite durante i _test_. Un valore alto garantisce un'analisi più approfondita del codice.

==== Passed test cases percentage (MDP-PTCP)
Misura la percentuale di casi di _test_ superati rispetto al totale dei _test_ eseguiti. Un alto valore indica che il _software_ soddisfa i requisiti funzionali e non funzionali previsti.

==== Failure density (MDP-FD)
Indica il numero di fallimenti correttamente riscontrati per unità di dimensione del _software_, spesso misurata in linee di codice (LOC) o punti funzione. Valori più bassi denotano un _software_ di qualità superiore, con meno difetti rispetto alla sua complessità o dimensione.



==== Tabella metriche affidabilità
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante l'affidabilità del prodotto],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [MDP-CC], [_#rifGlossario("Code coverage")_], [$≥ 80\%$], [$100\%$],
    [MDP-BC], [_Branch coverage_], [$≥ 60\%$], [$100\%$],
    [MDP-SC], [_Statement coverage_], [$≥ 60\%$], [$100\%$],
    [MDP-PTCP], [_Passed test cases percentage_], [$≥ 80\%$], [$100\%$],
    [MDP-FD], [_Failure density_], [$100%$], [$100%$],
  ),
)

=== Efficienza

==== Utilizzo risorse (MDP-UR)
Misura l'efficienza del sistema in termini di utilizzo delle risorse hardware, come CPU, memoria e altre risorse di sistema. Un uso efficiente delle risorse garantisce che il sistema funzioni in modo ottimale senza sovraccaricare le risorse disponibili.

==== Tabella metriche efficienza
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante l'efficienza del prodotto],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [MPD-UR], [Utilizzo risorse], [$≥ 75\%$], [$100\%$],
  ),
)

=== Usabilità
L'usabilità si riferisce alla facilità con cui un utente può interagire con il software.

==== Facilità di utilizzo (MDP-FU)
Misura il numero di errori commessi dagli utenti durante l'interazione. Un valore minimo indica un'interfaccia intuitiva.

==== Tempo di apprendimento (MDP-TA)
Valuta il tempo necessario a un utente per imparare a utilizzare il _software_. Tempi più brevi migliorano l'esperienza utente.

==== Tabella metriche usabilità
#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante l'usabilità del prodotto],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [MPD-FU], [Facilità di utilizzo], [$≤ 3$ errori], [$0$ errori],
    [MPD-TA], [Tempo di apprendimento], [$≤ 15$ minuti], [$≤ 5$ minuti],
  ),
)


=== Manutenibilità

==== Complessità ciclomatica per metodo (MDP-CCM)
La complessità ciclomatica valuta la complessità del codice sorgente attraverso la misurazione del numero di cammini indipendenti attraverso il grafo di controllo del flusso. Una complessità ciclomatica più alta indica che il codice è più difficile da comprendere e manutenere.


==== Code smell (MDP-CS)
Rileva potenziali problemi di progettazione o codice che potrebbero richiedere manutenzione. Segnala parti del codice che potrebbero non essere ottimali e che potrebbero causare difficoltà nel futuro, come un'architettura poco chiara o sezioni di codice ripetitive.

==== Coefficient of Coupling (MDP-COC)
Il Coefficient of Coupling misura il grado di dipendenza tra i moduli o le componenti di un sistema. Un alto COC implica che i moduli siano strettamente interconnessi, il che può rendere difficile apportare modifiche a un modulo senza influenzare altri.

==== Structure fan in (MDP-SFI)
Indica il numero di moduli o componenti che dipendono direttamente da un modulo o funzione specifica. Un alto valore di _fan-in_ suggerisce che molte parti del sistema dipendono da quel modulo, quindi modifiche a tale modulo potrebbero avere un ampio impatto.

==== Structure fan out (MDP-SFO)
Misura il numero di dipendenze o connessioni che un modulo o componente ha con altri. Un elevato _fan-out_ può indicare che il modulo è fortemente interconnesso con altri, il che può comportare una maggiore complessità nelle modifiche o nella manutenzione del sistema.

==== Ripercussione delle Modifiche (MDP-RM)
Misura la percentuale del sistema che è stato affetto dalle modifiche apportate.

==== Tabella metriche manutenibilità

#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante la manutenibilità del prodotto],
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [MPD-CCM], [Complessità ciclomatica per metodo], [$≤ 5$], [$≤ 3$],
    [MPD-CS], [_Code smell_], [$0$], [$0$],
    [MPD-COC], [_Coefficient of coupling_], [$≤ 30\%$], [$≤ 10\%$],
    [MPD-SFI], [Structure _fan in_], [da determinare], [da determinare],
    [MPD-SFO], [Structure _fan out_], [da determinare], [da determinare],
    [MPD-RM], [Ripercussione delle Modifiche], [da determinare], [da determinare],
  ),
)

= Specifiche dei test
Questa sezione descrive le attività di _testing_ effettuate per garantire che i vincoli definiti nei requisiti siano pienamente soddisfatti. In linea con quanto specificato nel documento Norme di Progetto, il piano di _test_ adotta un approccio strutturato e si articola nelle seguenti categorie: _test_ di unità, _test_ di integrazione, _test_ di sistema e _test_ di accettazione.

== Nomenclatura
Per identificare in modo univoco ciascun _test_ viene adottata una nomenclatura che segue il seguente schema:

#align(center)[
  *T[tipologia]-[numero]*
]
Dove tipologia può essere:
- *U*: _test_ di unità
- *I*: _test_ di integrazione
- *S*: _test_ di sistema
- *A*: _test_ di accettazione

E dove "numero" è un *numero progressivo* che identifica il _test_ all'interno della tipologia.

Inoltre ogni test ha uno stato che ne indica l'esito:
- *Verificato*: il _test_ è stato eseguito e ha dato esito positivo
- *Non verificato*: il _test_ non è stato eseguito
- *Non implementato*: il _test_ non è stato implementato // Se alla fine sono stati tutti implementati si può anche togliere ? TODO

== Test di unità
Mirano a verificare il funzionamento corretto dei componenti _software_ più piccoli e indipendenti, sviluppati principalmente nella fase di progettazione.

// TODO parlare un po' di mock ?

=== Test di unità del simulatore
I _test_ di unità del simulatore sono finalizzati a verificare il corretto funzionamento delle classi e dei metodi che compongono il simulatore, garantendo che ciascuna funzionalità sia implementata in modo corretto.

I _test_ sono stati sviluppati utilizzando il _framework_ `Vitest`, uno strumento moderno e performante per il _testing_ in ambiente TypeScript. Questo _framework_ offre funzionalità utili per la scrittura dei _test_ come l'utilizzo e la gestione dei _mock_, fondamentali per isolare le singole unità di codice.

// TODO capire cosa fare con i test per far fallire il sistema ma che non hanno eccezioni attive al momento

#table(
  columns: 3,
  align: (center, left, center),
  fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
  table.header[*Codice test*][*Descrizione*][*Stato*],
    // `GeoPoint`
    // Questi due a momento sono in un unico test. Da separare ?
    [TU-1], [Verifica che il costruttore della classe `GeoPoint` inizializzi correttamente un oggetto `GeoPoint` e i suoi attributi `latitude` e `longitude`.], [Verificato],
    [TU-2], [Verifica che i metodi `getLatitude` e `getLongitude` restituiscano correttamente i valori di latitudine e longitudine dell'oggetto `GeoPoint`.], [Verificato],
    [TU-3], [Verifica che il metodo `radiusKmToGeoPoint` converta correttamente un raggio in chilometri in un oggetto `GeoPoint`.], [Verificato],
    [TU-4], [Verifica che il metodo `radiusKmToGeoPoint` restituisca la relativa eccezione se il raggio usato è maggiore di 1000 chilometri.], [Verificato],
    [TU-5], [Verifica che il metodo `radiusKmToGeoPoint` restituisca la relativa eccezione se il raggio usato è maggiore di 300 chilometri.], [Verificato],
    [TU-6], [Verifica che il metodo `generateRandomPoint` generi correttamente un punto casuale all'interno di un raggio specificato da un oggetto `GeoPoint`.], [Verificato],

    // `Simulator`
    [TU-7], [Verifica che il metodo `startSimulation` avvii correttamente la simulazione con il numero iniziale di _rent_ specificato.], [Verificato],
    [TU-8], [Verifica che il metodo `startRent` avvii correttamente un _rent_ utilizzando un _tracker_ disponibile.], [Verificato],
    [TU-9], [Verifica che il metodo `startRent` lanci un'eccezione se non ci sono _tracker_ disponibili.], [Verificato],
    [TU-10], [Verifica che il metodo `startRentsInRuntime` avvii correttamente i _rent_ a _runtime_ con intervalli casuali.], [Verificato],

    [TU-11], [Verifica che il metodo `startSimulation` lanci un eccezione se si verifica un errore durante l'avvio di un nuovo noleggio.], [Non implementato],
    [TU-12], [Verifica che il metodo `startRentsInRuntime` lanci un eccezione se si verifica un errore durante l'avvio di un nuovo noleggio.], [Non implementato],


    // `tracker`
    [TU-13], [Verifica che il metodo `activate` chiami correttamente i metodi `fetchTrack` e `move`.], [Verificato],
    [TU-14], [Verifica che il metodo `activate` gestisca correttamente un errore quando `fetchTrack` genera un'eccezione.], [Verificato],
    [TU-15], [Verifica che il metodo `listenToAdv` inizializzi e connetta correttamente il consumer.], [Verificato],
    [TU-16], [Verifica che il metodo `listenToAdv` gestisca correttamente un errore quando `initAndConnectConsumer` genera un'eccezione.], [Verificato],
    [TU-17], [Verifica che il metodo `getIsAvailable` restituisca correttamente lo stato di disponibilità del tracker.], [Verificato],
    [TU-18], [Verifica che il messaggio venga correttamente formato e inviato tramite il `KafkaManager`.], [Verificato],

    [TU-19], [Verifica che quando il `tracker` raggiunge l'ultimo punto del percorso il metodo `move` disconnetta correttamente il `producer` ed il `consumer` Kafka.], [Non implementato],
    [TU-20], [Verifica che il metodo `move` lanci un eccezione se si verifica un generico errore all'interno del metodo.], [Non implementato],

    // TrackerFetcher
    [TU-21], [Verifica che il metodo `fetchTrack` gestisca correttamente gli errori di richiesta HTTP.], [Verificato],
    [TU-22], [Verifica che il metodo `fetchTrack` decodifichi correttamente una polilinea e la converta in un _array_ di `GeoPoint`.], [Verificare],
    [TU-23], [Verifica che il metodo `fetchTrack` campioni correttamente i punti della traccia quando il numero di punti supera il limite massimo.], [Verificato],
    [TU-24], [Verifica che il metodo privato `request` restituisca correttamente una risposta HTTP valida.], [Verificato],

    // Kafkamanager
    [TU-25], [Verifica che il metodo `initAndConnectProducer` sia in grado di inizializzare e connettere correttamente un produttore Kafka, controllando che il metodo `connect` del produttore sia stato chiamato.], [Verificato],
    [TU-26], [Verifica che il metodo `initAndConnectProducer` gestisca correttamente gli errori di connessione, lanciando un errore quando la connessione fallisce.], [Verificato],
    [TU-27], [Verifica che il metodo `disconnectProducer` disconnetta correttamente un produttore Kafka, controllando che il metodo `disconnect` del produttore sia stato chiamato.], [Verificato],
    [TU-28], [Verifica che il metodo `disconnectProducer` gestisca correttamente gli errori di disconnessione, lanciando un errore quando la disconnessione fallisce.], [Verificato],
    [TU-29], [Verifica che il metodo `sendMessage` invii correttamente un messaggio tramite un produttore Kafka, controllando che il metodo `send` del produttore sia stato chiamato con i parametri corretti.], [Verificato],
    [TU-30], [Verifica che il metodo `sendMessage` gestisca correttamente gli errori durante l'invio di un messaggio, lanciando un errore quando l'invio fallisce.], [Verificato],
    [TU-31], [Verifica che il metodo `initAndConnectConsumer` sia in grado di inizializzare e connettere correttamente un consumatore Kafka, controllando che i metodi `connect`, `subscribe` e `run` siano stati chiamati correttamente.], [Verificato],
    [TU-32], [Verifica che il metodo `initAndConnectConsumer` gestisca correttamente gli errori di connessione, lanciando un errore quando la connessione fallisce.], [Verificato],
    [TU-33], [Verifica che il metodo `disconnectConsumer` disconnetta correttamente un consumatore Kafka, controllando che il metodo `disconnect` del consumatore sia stato chiamato.], [Verificato],
    [TU-34], [Verifica che il metodo `disconnectConsumer` gestisca correttamente gli errori di disconnessione, lanciando un errore quando la disconnessione fallisce.], [Verificato],
    
    //[TU-], [], [Verificare],
)


== Test di integrazione
Successivi ai _test_ di unità, hanno lo scopo di verificare l'interazione tra diverse unità _software_ per garantire che lavorino in sinergia per compiti specifici.
// Da completare con tutti i test

== Test di sistema
Precedono i _test_ di accettazione e si concentrano sul sistema nel suo complesso, assicurando che vengano soddisfatti tutti i requisiti _software_ stabiliti e tracciati dal documento di Analisi dei Requisiti.

#table(
  columns: 4,
  align: (center, left, center, center),
  fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
  table.header[*Codice test*][*Descrizione*][*Requisito*][*Stato*],
    [TS-1], [Verificare che ciascun sensore invii in modo corretto i propri dati di identificazione e di localizzazione geospaziale, a intervalli di tempo regolari.], [ROF-1], [Non eseguito],
    [TS-2], [Verificare che la _dashboard_ sia accessibile solo previa autenticazione da parte dell'amministratore con le proprie credenziali.], [ROF-2], [Non eseguito],
    [TS-3], [Verificare che l'amministratore abbia fornito un indirizzo _e-mail_ per procedere con l'autenticazione.], [ROF-3], [Non eseguito],
    [TS-4], [Verificare che l'amministratore abbia fornito una password per procedere con l'autenticazione.], [ROF-4], [Non eseguito],
    [TS-5], [Verificare che, se l'amministratore inserisce almeno una credenziale errata, l'autenticazione fallisca e venga ritornato un messaggio di errore.], [ROF-5], [Non eseguito],
    [TS-6], [Verificare che l'amministratore possa visualizzare sulla _dashboard_ principale una mappa geografica.], [ROF-6], [Non eseguito],
    [TS-7], [Verificare che l'amministratore possa visualizzare, tramite dei _marker_ sulla mappa geografica, la posizione di tutti i punti di interesse.], [ROF-7], [Non eseguito],
    [TS-8], [Verificare che l'amministratore possa visualizzare sulla mappa il percorso eseguito da ciascun noleggio attivo in quel momento.], [ROF-8], [Non eseguito],
    [TS-9], [Verificare che l'amministratore possa visualizzare, lungo il percorso di ciascun noleggio attivo, un _marker_ specifico se quella posizione ricevuta dal sensore non ha provocato una richiesta di generazione annuncio.], [ROF-9], [Non eseguito],
    [TS-10], [Verificare che l'amministratore possa visualizzare, lungo il percorso di ciascun noleggio attivo, un _marker_ specifico se quella posizione ricevuta dal sensore ha provocato una richiesta di generazione annuncio e questa ha avuto successo, ovvero l'utente è stato ritenuto interessato e quindi ha ricevuto l'annuncio.], [ROF-10], [Non eseguito],
    [TS-11], [Verificare che l'amministratore possa visualizzare, lungo il percorso di ciascun noleggio attivo, un _marker_ specifico se quella posizione ricevuta dal sensore ha provocato una richiesta di generazione annuncio e questa non ha avuto successo, ovvero l'utente non è stato ritenuto interessato e quindi non ha ricevuto l'annuncio.], [ROF-11], [Non eseguito],
    [TS-12], [Verificare che l'amministratore possa visualizzare le informazioni relative ad un punto di interesse interagendo con il _marker_ che lo rappresenta all'interno della mappa.], [ROF-12], [Non eseguito],
    [TS-13], [Verificare che l'amministratore possa visualizzare, dalle informazioni esposte interagendo con il _marker_ di un punto di interesse, il nome dello stesso.], [ROF-13], [Non eseguito],
    [TS-14], [Verificare che l'amministratore possa visualizzare, dalle informazioni esposte interagendo con il _marker_ di un punto di interesse, la categoria di esercizio commerciale a cui appartiene.], [ROF-14], [Non eseguito],
    [TS-15], [Verificare che l'amministratore, interagendo con un _marker_ che segnala l'avvenuta generazione di un annuncio, possa visualizzare le informazioni relative all'annuncio generato.], [ROF-15], [Non eseguito],
    [TS-16], [Verificare che l'amministratore possa visualizzare, dalle informazioni esposte interagendo con il _marker_ di un annuncio generato, il nome del punto di interesse associato a quell'annuncio.], [ROF-16], [Non eseguito],
    [TS-17], [Verificare che l'amministratore possa visualizzare, dalle informazioni esposte interagendo con il _marker_ di un annuncio generato, l'_e-mail_ dell'utente destinatario dell'annuncio.], [ROF-17], [Non eseguito],
    [TS-18], [Verificare che l'amministratore possa visualizzare, dalle informazioni esposte interagendo con il _marker_ di un annuncio generato, la data e l'ora di generazione dell'annuncio.], [ROF-18], [Non eseguito],
    [TS-19], [Verificare che l'amministratore possa visualizzare, dalle informazioni esposte interagendo con il _marker_ di un annuncio generato, il testo dell'annuncio stesso.], [ROF-19], [Non eseguito],
    [TS-20], [Verificare che l'amministratore possa visualizzare, dalle informazioni esposte interagendo con il _marker_ di un annuncio generato, la categoria del punto di interesse associato a quell'annuncio.], [ROF-20], [Non eseguito],
    [TS-21], [Verificare che l'amministratore, interagendo con un _marker_ che segnala la mancata generazione di un annuncio per incompatibilità con gli interessi dell'utente, possa visualizzare le informazioni relative all'annuncio non generato.], [ROF-21], [Non eseguito],
    [TS-22], [Verificare che l'amministratore possa visualizzare, dalle informazioni esposte interagendo con il _marker_ di un annuncio non generato, il nome del punto di interesse associato], [ROF-22], [Non eseguito.],
    [TS-23], [Verificare che l'amministratore possa visualizzare, dalle informazioni esposte interagendo con il _marker_ di un annuncio non generato, l'_e-mail_ dell'utente a cui era destinato l'annuncio non generato.], [ROF-23], [Non eseguito],
    [TS-24], [Verificare che l'amministratore possa visualizzare, dalle informazioni esposte interagendo con il _marker_ di un annuncio non generato, la data e l'ora di tentata generazione dell'annuncio.], [ROF-24], [Non eseguito],
    [TS-25], [Verificare che l'amministratore, interagendo nuovamente con il _marker_ di un annuncio generato, possa chiudere la vista che espone le informazioni sull'annuncio.], [ROF-25], [Non eseguito],
    [TS-26], [Verificare che l'amministratore, interagendo nuovamente con il _marker_ di un annuncio non generato, possa chiudere il messaggio contenente le informazioni relative alla mancata generazione di quell'annuncio.], [ROF-26], [Non eseguito],
    [TS-27], [Verificare che l'amministratore possa spostare la visuale della mappa geografica visualizzata interagendo con la stessa.], [ROF-27], [Non eseguito],
    [TS-28], [Verificare che l'amministratore, interagendo con la mappa geografica visualizzata, possa fare _zoom in_ e _zoom out_ sulla visuale.], [ROF-28], [Non eseguito],
    [TS-29], [Verificare che l'amministratore riceva un messaggio di errore del tipo "il _server_ non risponde" se il sistema non risponde alle richieste.], [ROF-29], [Non eseguito],
    [TS-30], [Verificare che l'amministratore riceva un messaggio di errore del tipo "connessione persa" se la connessione al sistema viene persa o è scarsa.], [ROF-30], [Non eseguito],
    [TS-31], [Verificare che l'amministratore riceva un messaggio di errore del tipo "sensore malfunzionante" se il sensore non invia dati GPS in modo corretto o non invia dati per un certo periodo di tempo prolungato.], [ROF-31], [Non eseguito],
    [TS-32], [Verificare che l'amministratore riceva un messaggio di errore del tipo "generazione impossibile dell'annuncio" se il sistema non è in grado di connettersi o comunicare con il servizio di LLM.], [ROF-32], [Non eseguito],
    [TS-33], [Verificare che esista almeno un generatore di dati GPS che simuli il comportamento di un sensore che interagisce col sistema.], [ROF-33], [Non eseguito],
    [TS-34], [Verificare che il generatore di dati GPS generi dei percorsi realistici, ovvero che seguono vie o strade percorribili.], [ROF-34], [Non eseguito],
    [TS-35], [Verificare che l'amministratore possa accedere dalla _dashboard_ alla sezione dedicata allo storico degli annunci.], [RDF-1], [Non eseguito],
    [TS-36], [Verificare che l'amministratore possa visualizzare, nella sezione dedicata allo storico degli annunci, l'elenco degli annunci generati dal sistema, sotto forma di lista o di griglia a discrezione dell'utilizzatore.], [RDF-2], [Non eseguito],
    [TS-37], [Verificare che l'amministratore possa visualizzare, per ogni singolo elemento nello storico, le principali informazioni relative all'annuncio.], [RDF-3], [Non eseguito],
    [TS-38], [Verificare che l'amministratore possa visualizzare, per ogni singolo elemento nello storico, il nome del punto di interesse associato all'annuncio.], [RDF-4], [Non eseguito],
    [TS-39], [Verificare che l'amministratore possa visualizzare, per ogni singolo elemento nello storico, l'_e-mail_ dell'utente destinatario dell'annuncio.], [RDF-5], [Non eseguito],
    [TS-40], [Verificare che l'amministratore possa visualizzare, per ogni singolo elemento nello storico, la data e l'ora in cui il sistema ha tentato la generazione dell'annuncio.], [RDF-6], [Non eseguito],
    [TS-41], [Verificare che l'amministratore possa visualizzare, per ogni singolo elemento nello storico, una _flag_ che indichi se il noleggio durante il quale è stato generato l'annuncio è ancora attivo oppure no.], [RDF-7], [Non eseguito],
    [TS-42], [Verificare che, per ogni singolo elemento nello storico, l'amministratore possa visualizzarne i dettagli completi interagendo con l'elemento stesso.], [RDF-8], [Non eseguito],
    [TS-43], [Verificare che l'amministratore possa visualizzare, attraverso i dettagli completi di un annuncio, il nome del punto di interesse associato a quell'annuncio.], [RDF-9], [Non eseguito],
    [TS-44], [Verificare che l'amministratore possa visualizzare, attraverso i dettagli completi di un annuncio, l'_e-mail_ dell'utente destinatario di quell'annuncio.], [RDF-10], [Non eseguito],
    [TS-45], [Verificare che l'amministratore possa visualizzare, attraverso i dettagli completi di un annuncio, la data e l'ora in cui il sistema ha tentato la generazione dell'annuncio.], [RDF-11], [Non eseguito],
    [TS-46], [Verificare che l'amministratore possa visualizzare, attraverso i dettagli completi di un annuncio, una _flag_ che indichi se il noleggio durante il quale è stato generato l'annuncio è ancora attivo oppure no.], [RDF-12], [Non eseguito],
    [TS-47], [Verificare che l'amministratore possa visualizzare, attraverso i dettagli completi di un annuncio, il testo dell'annuncio stesso.], [RDF-13], [Non eseguito],
    [TS-48], [Verificare che l'amministratore possa visualizzare, attraverso i dettagli completi di un annuncio, la categoria del punto di interesse associato a quell'annuncio.], [RDF-14], [Non eseguito],
    [TS-49], [Verificare che l'amministratore possa chiudere la vista che espone i dettagli completi di un singolo annuncio.], [RDF-15], [Non eseguito],
    [TS-50], [Verificare che l'amministratore possa filtrare gli annunci visualizzati nello storico in base all'_e-mail_ dell'utente destinatario.], [RDF-16], [Non eseguito],
    [TS-51], [Verificare che l'amministratore possa filtrare gli annunci visualizzati nello storico in base al nome del punto di interesse associato all'annuncio.], [RDF-17], [Non eseguito],
    [TS-52], [Verificare che l'amministratore possa filtrare gli annunci visualizzati nello storico in base alla data in cui sono stati generati, selezionando un intervallo di date.], [RDF-18], [Non eseguito],
    [TS-53], [Verificare che l'amministratore possa filtrare gli annunci visualizzati nello storico in base all'orario in cui sono stati generati, selezionando una fascia oraria.], [RDF-19], [Non eseguito],
    [TS-54], [Verificare che l'amministratore possa accedere dalla _dashboard_ alla sezione dedicata ai grafici statistici.], [RFF-1], [Non eseguito],
    [TS-55], [Verificare che l'amministratore possa visualizzare, nella sezione dedicata ai grafici statistici, un grafico per ciascuna analisi dati.], [RFF-2], [Non eseguito],
    [TS-56], [Verificare che ciascun grafico visualizzato abbia un titolo che ne descriva efficacemente il contenuto.], [RFF-3], [Non eseguito],
    [TS-57], [Verificare che in ciascun grafico visualizzato l'asse delle ascisse e l'asse delle ordinate siano correttamente etichettati e completi di tutti i valori.], [RFF-4], [Non eseguito],
    [TS-58], [Verificare che ciascun grafico visualizzato stia rappresentando lo specifico _set_ di dati previsto per quel grafico.], [RFF-5], [Non eseguito],
    [TS-59], [Verificare che l'amministratore possa visualizzare, nella sezione dedicata ai grafici statistici, un grafico che mostri il numero di annunci generati dal sistema nelle ultime 24 ore, con granularità oraria.], [RFF-6], [Non eseguito],
    [TS-60], [Verificare che l'amministratore possa visualizzare, nella sezione dedicata ai grafici statistici, un grafico che riporti il numero medio di noleggi che vengono effettuati in ciascun mese dell'anno.], [RFF-7], [Non eseguito],
    [TS-61], [Verificare che l'amministratore, dalla sezione dedicata ai grafici statistici, possa selezionare un punto di interesse e contestualmente visualizzarne i relativi grafici], [RFF-8], [Non eseguito.],
    [TS-62], [Verificare che l'amministratore possa visualizzare il grafico che, per un certo punto di interesse, mette a confronto il numero di annunci generati con il numero di annunci non generati nell'ultima settimana.], [RFF-9], [Non eseguito],
    [TS-63], [Verificare che l'interfaccia creata per la visualizzazione degli annunci in tempo reale lato utente fruitore del servizio di noleggio sia funzionante.], [RFF-10], [Non implementato],
  )

#pagebreak()
== Test di accettazione
Condotti insieme all'azienda proponente, servono a garantire che il prodotto finale sia conforme alle aspettative e ai requisiti contrattuali, permettendone il rilascio definitivo.

#figure(
  kind: table,
  caption: [Descrizione e stato di ogni test di accettazione],
  table(
    align: (center, left, center, center),
    columns: 3,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Codice _test_*][*Descrizione*][*Stato*],
    [TA-01], [Verificare che all'apertura il prodotto mostri una mappa che visualizza in tempo reale i percorsi compiuti dai mezzi con noleggio attivo], [Non eseguito],
    [TA-02], [Verificare che il prodotto supporti la generazione tramite LLM di annunci personalizzati per ogni utente in base ai suoi dati di profilazione], [Non eseguito],
    [TA-03], [Verificare che il prodotto supporti la visualizzazione dei _#rifGlossario("marker")_ corrispondenti ai mezzi con noleggio attivi all'interno della mappa], [Non eseguito],
    [TA-04], [Verificare che il prodotto supporti la visualizzazione dei _marker_ corrispondenti ai punti di interesse all'interno della mappa], [Non eseguito],
    [TA-05], [Verificare che il prodotto supporti la visualizzazione dei _marker_ corrispondenti agli annunci generati all'interno della mappa], [Non eseguito],
    [TA-06], [Verificare che il prodotto supporti la visualizzazione dei _marker_ corrispondenti alle tentate generazioni di annunci all'interno della mappa], [Non eseguito],
    [TA-07], [Verificare che il prodotto supporti la visualizzazione dei dati dei punti di interesse tramite i rispettivi _marker_ sulla mappa], [Non eseguito],
    [TA-08], [Verificare che il prodotto supporti la visualizzazione dei dati degli annunci generati per ogni rispettivo _marker_ sulla mappa], [Non eseguito],
    [TA-09], [Verificare che il prodotto supporti la visualizzazione dei dati delle mancate generazioni di annunci per ogni rispettivo _marker_ sulla mappa], [Non eseguito],
    [TA-10], [Verificare che il prodotto supporti una generazione realistica dei percorsi dei noleggi], [Non eseguito],
    [TA-11], [Verificare che il prodotto persista in un _database_ i dati simulati e quelli generati dalla LLM], [Non eseguito],
    [TA-12], [Verificare che il prodotto sia fruibile con le ultime versioni dei _browser web_ principali, nello specifico: Google Chrome, Mozilla Firefox, Microsoft Edge e Safari], [Non eseguito],
  ),
)

#pagebreak()
= Cruscotto di monitoraggio della qualità <cruscotto>
//Rimane da fare resoconto a fine periodo RTB

== Estimated at Completion (MPC-EAC)
L'*EAC* rappresenta una stima aggiornata del costo totale previsto per completare un progetto, basata sui costi sostenuti e sulle previsioni future.

#plotGrafico4(
  "Tabella EAC",
  ((0, 13620.42), (1, 13402.94), (2, 13292.46), (3, 13374.76), (4, 12648.46)),
  "EAC",
  ((0, 12740), (1, 12740), (2, 12740), (3, 12740), (4, 12740)),
  "BAC (valore ideale)",
  ((0, 13377), (1, 13377), (2, 13377), (3, 13377), (4, 13377)),
  "Valore massimo accettabile",
  ((0, 12103), (1, 12103), (2, 12103), (3, 12103), (4, 12103)),
  "Valore minimo accettabile",
)

=== RTB
Dal grafico si può notare che il valore dell'*EAC* si è avvicinato, per 4 iterazioni su 5, al valore ideale del *BAC*, rimanendo sempre al di sopra del valore minimo accettabile e, per la maggior parte del tempo, al di sotto del valore massimo accettabile per arrivare, all'ultima iterazione, molto vicino al valore ideale.

Questi dati sottolineano il continuo automiglioramento che il team ha sempre cercato di perseguire.


#pagebreak()
== Earned Value (MPC-EV) e Planned Value (MPC-PV)
- *Earned Value* (*EV*): Indica il valore del lavoro effettivamente completato in termini di _budget_ approvato.
- *Planned Value* (*PV*): Rappresenta il valore pianificato del lavoro che avrebbe dovuto essere completato entro un determinato momento.

#plotGrafico4(
  "Tabella EV e PV",
  ((0, 707.78), (1, 1516.67), (2, 2184.00), (3, 3013.11), (4, 3791.67)),
  "EV",
  ((0, 717.89), (1, 1547.00), (2, 2345.78), (3, 3124.33), (4, 3943.33)),
  "PV",
  ((0, 13620.42), (1, 13402.94), (2, 13292.46), (3, 13374.76), (4, 12648.46)),
  "EAC",
  ((0, 12740), (1, 12740), (2, 12740), (3, 12740), (4, 12740)),
  "BAC",
)

=== RTB
Dal grafico si può notare che il valore dell'*EV* è cresciuto pari pari al valore del *PV*, indicando che il lavoro svolto è stato effettivamente eseguito secondo la pianificazione.

#pagebreak()
== Actual Cost (MPC-AC) e Estimate to Completion (MPC-ETC)
- *Actual Cost* (*AC*): Costo reale sostenuto per il lavoro eseguito fino a un determinato punto.
- *Estimate to Completion* (*ETC*): Stima dei costi rimanenti necessari per completare il progetto.

#plotGrafico3(
  "Tabella AC e ETC",
  ((0, 767.50), (1, 1627.50), (2, 2447.50), (3, 3280.00), (4, 3915.00)),
  "AC",
  ((0, 12852.92), (1, 11775.44), (2, 10844.96), (3, 10094.76), (4, 8733.46)),
  "ETC",
  ((0, 13620.42), (1, 13402.94), (2, 13292.46), (3, 13374.76), (4, 12648.46)),
  "EAC",
)

=== RTB
Dal grafico si nota che il valore dell'*AC* è cresciuto in modo proporzionale alla decrescita dell'*ETC*, ed entrambi sono rimasti per tutto il tempo al di sotto del valore desiderato, cioè quello dell'*EAC*.

#pagebreak()
== Budget Variance (MPC-BV) e Schedule Variance (MPC-SV)
- *Budget Variance* (*BV*): Differenza tra il valore guadagnato (EV) e il costo reale (AC), indica se il progetto è sotto o sopra il _budget_.
- *Schedule Variance* (*SV*): Differenza tra il valore guadagnato (EV) e il valore pianificato (PV), mostra se il progetto è in anticipo o in ritardo rispetto alla pianificazione.

#plotGrafico5(
  "Tabella BV e SV",
  ((0, -59.72), (1, -110.83), (2, -263.50), (3, -266.89), (4, -123.33)),
  "BV",
  ((0, 10.11), (1, 30.33), (2, 161.78), (3, 111.22), (4, 151.67)),
  "SV",
  ((0, 637), (1, 637), (2, 637), (3, 637), (4, 637)),
  "Limite massimo accettabile",
  ((0, -637), (1, -637), (2, -637), (3, -637), (4, -637)),
  "Limite minimo accettabile",
  ((0, 0), (1, 0), (2, 0), (3, 0), (4, 0)),
  "Valore ottimo",
)

=== RTB
Dal grafico si può notare che le variazioni sono sempre state contenute: rientrano sempre ampiamente nei limiti accettabili e non si discostano molto dal valore ottimo. Il *BV* indica che abbiamo sempre speso leggermente oltre il _budget_ pianificato, tuttavia abbiamo una prospettiva positiva come indica il *SV*.


#pagebreak()
== Indice di Stabilità dei Requisiti (MPC-ISR)
L'*ISR* misura la stabilità dei requisiti del progetto nel tempo, valutando quanto siano stati modificati o aggiornati durante il ciclo di vita.

#plotGrafico3(
  "Tabella RSI",
  ((0, 0), (1, 0), (2, 70), (3, 39), (4, 85)),
  "RSI",
  ((0, 75), (1, 75), (2, 75), (3, 75), (4, 75)),
  "Valore accettabile",
  ((0, 100), (1, 100), (2, 100), (3, 100), (4, 100)),
  "Valore ottimo",
)

=== RTB
Il grafico è per la maggior parte ascendente tranne nella quarta iterazione, dove i requisiti hanno subito una forte modifica dovuta al colloquio con il professor Cardin, al quale sono seguite numerose correzioni.

Nell'ultimo periodo, quindi quello relativo alla consegna RTB, si è finalmente raggiunto il valore accettabile dell'ISR.

#pagebreak()
== Indice Gulpease (MPC-IG)
Indice che valuta la leggibilità dei documenti scritti in italiano.

#plotGrafico7(
  "Tabella indice Gulpease",
  ((0, 40), (1, 40), (2, 40), (3, 40), (4, 40)),
  "Valore accettabile",
  ((0, 80), (1, 80), (2, 80), (3, 80), (4, 80)),
  "Valore ottimo",
  ((0, 0), (1, 56), (2, 54), (3, 54), (4, 53)),
  "Analisi dei Requisiti",
  ((0, 53), (1, 54), (2, 53), (3, 53), (4, 52)),
  "Norme di Progetto",
  ((0, 42), (1, 45), (2, 44), (3, 44), (4, 45)),
  "Piano di Progetto",
  ((0, 0), (1, 50), (2, 50), (3, 50), (4, 56)),
  "Piano di Qualifica",
  ((0, 45), (1, 45), (2, 45), (3, 45), (4, 45)),
  "Glossario",
)

=== RTB
Si nota che i valori sono sempre sopra al valore accettabile, anche se ancora ben distanti dal valore ottimo. Tuttavia si nota per la maggior parte dei documenti una stabilizzazione del valore, con solo qualche piccola variazione.

Il valore nullo di alcuni documenti alla prima iterazione è dovuto alla stesura tardiva degli stessi. Lo sviluppo della documentazione si è infatti svolta parallelamente alle lezioni di teoria del corso.


#pagebreak()
== Correttezza Ortografica (MPC-CO)
Metriche che misurano la presenza di errori ortografici nei documenti, valutando la qualità formale del contenuto.

#plotGrafico7(
  "Tabella correttezza ortografica",
  ((0, 0), (1, 0), (2, 0), (3, 0), (4, 0)),
  "Valore accettabile",
  ((0, 0), (1, 0), (2, 0), (3, 0), (4, 0)),
  "Valore ottimo",
  ((0, 1), (1, 3), (2, 3), (3, 0), (4, 0)),
  "Analisi dei Requisiti",
  ((0, 2), (1, 2), (2, 4), (3, 0), (4, 0)),
  "Norme di Progetto",
  ((0, 1), (1, 2), (2, 2), (3, 0), (4, 0)),
  "Piano di Progetto",
  ((0, 2), (1, 1), (2, 1), (3, 0), (4, 0)),
  "Piano di Qualifica",
  ((0, 1), (1, 1), (2, 1), (3, 0), (4, 0)),
  "Glossario",
)

=== RTB
Da questo grafico si nota che tutti i documenti hanno avuto alcuni difetti ortografici, quasi sempre di battitura. Tuttavia nel quarto _#rifGlossario("sprint")_, con l'introduzione di uno strumento di _spell checking_, siamo riusciti a raggiungere il valore ottimo di zero errori per tutti i documenti.


#pagebreak()
== Percentuale di Metriche Soddisfatte (MPC-PMS)
Percentuale di metriche di qualità definite per il progetto che sono state soddisfatte rispetto agli obiettivi prefissati.

#plotGrafico3(
  "Tabella PMS",
  ((0, 70), (1, 70), (2, 80), (3, 90), (4, 100)),
  "PMS",
  ((0, 80), (1, 80), (2, 80), (3, 80), (4, 80)),
  "Valore accettabile",
  ((0, 100), (1, 100), (2, 100), (3, 100), (4, 100)),
  "Valore ottimo",
)

=== RTB
Possiamo notare come la percentuale di metriche soddisfatte sia quasi sempre cresciuta, ma comunque mai diminuita, raggiungendo addirittura il valore ottimo nell'ultimo _sprint_. Questo simboleggia una grande attenzione da parte del team nel perseguire la qualità del progetto, tramite autovalutaizone ed automiglioramento.


#pagebreak()
== Efficienza Temporale (MPC-ET)
Misura l'efficacia nell'utilizzo del tempo per completare le attività, confrontando il tempo effettivamente impiegato con quello previsto.

=== RTB
La metriche in esame è stata confermata solo al termine del quarto _sprint_. Risulta quindi impossibile recuperare i valori passati e crearne un grafico, anche se siamo confidenti nel dire che il valore è progressivamente diminuito. Il _team_ ha imparato sempre più a lavorare asincronamente massimizzando il tempo produttivo. Il gruppo confida sarà una metrica utile in fase di PB.

L'unico valore che possiamo dare di questa metrica è quindi quello dell'ultima iterazione, pari ad un rapporto di 1.8, che è ampiamente al di sotto del valore accettabile di 3 ma ancora al di sopra del valore desiderabile di 1.
