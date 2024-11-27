#import "/templates/template.typ": *

#show: content => verbale(
  content: content,
  data: "30 ottobre 2024",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  redattori: ("Davide Martinelli", "Klaudio Merja"),
  titolo: [Dichiarazione impegni e preventivo costi],
  responsabile: "Riccardo Milan",
  uso: "Esterno",
  verificatori: ("Andrea Perozzo",),
  versioni: (
    "1.1.0",
    "5/11/2024",
    [Davide Martinelli],
    [Andrea Perozzo],
    [- Modifica struttura documento
      - Aggiustamenti nella suddivisione ore
      - Miglioramenti sintattici
      - Correzione registro delle modifiche],
    "1.0.0",
    "30/10/2024",
    [Davide Martinelli\ Klaudio Merja ],
    [Andrea Perozzo],
    [- Stesura del documento],
  ),
)

= Scopo del documento
Questo documento presenta il preventivo per il progetto, calcolato sulla base della suddivisione delle ore produttive tra i vari ruoli e dei relativi costi. Sono riportati inoltre il totale delle ore produttive assegnate a ciascun membro del team e la data di consegna finale prevista.

= Impegni orari
I membri si impegnano a dedicare un totale di 90 ore produttive ciascuno allo svolgimento del progetto. Le ore necessarie per ogni singolo ruolo vengono ripartite in parti uguali tra tutti i componenti del gruppo.

La seguente tabella riporta la suddivisione delle ore in accordo con quanto detto sopra:
#table(
  columns: (30%, 1fr, 1fr, 1fr),
  align: left,
  fill: (x,y) => if x==0 and y<=6 or y==0 or x>=1 and y==7  {rgb("04E82420")},
  table.header([*Ruoli*], [*Costo orario*], [*Ore per ruolo*], [*Ore per membro*]),
  [Responsabile], "30 €", "56", "8",
  [Amministratore], "20 €", "56", "8",
  [Analista], "25 €", "84", "12",
  [Progettista], "25 €", "133", "19",
  [Programmatore], "15 €", "161", "23",
  [Verificatore], "15 €", "140", "20",
  [], emph[*Costo totale*], emph[*Ore totali*], emph[*Ore totali*],
  [], [12.740 €], [630], [90]
)

Prevedendo di adottare la metodologia Agile il gruppo pianifica di ruotare i ruoli alla fine di ogni sprint, la cui durata verrà stabilita in accordo con l'azienda proponente.

= Analisi dei Ruoli

== Responsabile
Il responsabile si occuperà dell’allocazione delle risorse e della pianificazione generale e si assicurerà che il progetto proceda in modo efficiente e soddisfi gli obiettivi nel rispetto delle scadenze. Sarà inoltre la figura incaricata a rappresentare i team nelle varie interazioni con i proponenti e i committenti.

Richiede competenze nella gestione delle risorse e capacità di pianificazione, oltre ad abilità di comunicazione.

Il costo orario di questa figura è piuttosto elevato, di conseguenza la quantità di ore ad essa assegnata sarà quasi essenziale, tenendo comunque conto del fatto che seguirà il team durante tutto l'arco temporale del progetto.

== Amministratore
L'amministratore garantirà che l’ambiente e l’infrastruttura necessari per lo sviluppo e l’esecuzione del progetto siano robusti, sicuri ed affidabili e che ciascun membro del team sappia come usarli, senza incorrere in alcun tipo di problema.

Il suo lavoro prevede la conoscenza dettagliata del way of working ed eventualmente di occuparsi del suo sviluppo.

Tale ruolo occuperà il minor numero di ore dato che si prevede non richieda un elevato dispendio temporale.

== Analista
Gli analisti definiranno quali dovranno essere le funzionalità del software, in accordo con le necessità del cliente, producendo il documento di analisi dei requisiti.

La necessità di questa figura, tuttavia, risulta di fondamentale importanza solo durante le prime fasi del progetto e richiede quindi un numero più basso di ore assegnate rispetto alla media di tutti i ruoli.

== Progettista
Il progettista si occuperà del design del software: partendo dai problemi identificati dall'analisi dei requisiti elabora una possibile soluzione, che successivamente dovrà essere implementata dai programmatori, fungendo quindi da "elaborazione intermedia" tra le due parti.

Il numero di ore assegnate a questa figura corrisponderà all'incirca alla media tra le ore dedicate all'analisi e quelle dedicate alla programmazione.

== Programmatore
Il programmatore si occuperà di tradurre le specifiche e i requisiti del progetto nel sistema funzionante richiesto dal proponente.

Si stima quindi un numero superiore alla media di ore produttive, dovute anche alla necessità di integrare fra loro le numerose tecnologie che si andranno ad utilizzare.

== Verificatore
Il verificatore dovrà garantire che il software mantenga adeguati standard di qualità garantendone, attraverso test e controlli, l'affidabilità e la robustezza.

Vista l'importanza del ruolo in generale e considerando che nel progetto è prevista una percentuale minima di test coverage dell'80%, correlata da report, il numero di ore assegnate risulta piuttosto elevato per garantire un prodotto robusto.

= Preventivo costi e data di consegna
Il gruppo ha stimato un costo finale di *12.740,00 €* per la realizzazione del prodotto.
\ La data concordata dal gruppo per la consegna del prodotto è stata fissata per il giorno *21/03/2025*.