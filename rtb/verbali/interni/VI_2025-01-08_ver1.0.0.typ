#import "/templates/template.typ": *

#show: content => verbale(
  data: "08 gennaio 2025",
  responsabile: "Davide Martinelli",
  redattori: ("Andrea Precoma",),
  titolo: "Nona riunione",
  verificatori: ("Andrea Perozzo",),
  riassunto: [Sono stati affrontati tutti i lavori da completare prima della consegna di fine _milestone_ e quelli in cui era necessario il coinvolgimento di tutto il gruppo.],
  versioni: (
    "1.0.0",
    [10/01/2025],
    "Andrea Precoma",
    "Andrea Perozzo",
    [- Stesura del verbale],
  ),
  content: content,
)

#infoRiunione(
  luogo: "Chiamata Discord",
  data: "08/01/2025",
  ora: "17:40",
  durata: "2 ore e 30 minuti",
  partecipantiEsterni: (),
)

= Sintesi
Sono state chiarite delle questioni importanti riguardo le metriche e i casi d'uso. Per ogni attività e documento sono stati analizzati i punti da concludere nel quinto _#rifGlossario("sprint")_.

= Ordine del giorno
La riunione interna ha avuto come obiettivi quelli di concordare definitivamente le metriche, chiarire gli ultimi dubbi riguardo i casi d'uso, concludere lo _sprint_ con una breve retrospettiva e pianificare il quinto _sprint_.

== Scelta delle metriche
Davide Marin, Davide Martinelli e Davide Picello hanno esposto il lavoro svolto circa la ricerca delle metriche. In seguito al diario di bordo della stessa giornata abbiamo concordato di mantenere quelle trovate per la fornitura, lo sviluppo, la documentazione, la gestione della qualità e la gestione dei processi. Continueremo ad analizzare altre metriche per il codice in modo da arrivare già preparati all'inizio della _Product Baseline_.

È stato messo a disposizione un documento Excel con le metriche da calcolare a fine _sprint_. Inserendo i dati genera in automatico i grafici che possono poi essere utilizzati nel Piano di Progetto.

== Analisi dei requisiti e dei casi d'uso
Andrea Precoma e Andrea Perozzo hanno presentato i casi d'uso sui quali nutrivano alcuni dubbi e sui quali, in seguito alla discussione con la proponente, bisogna lavorare nello _sprint_ a seguire. Andranno eliminati i casi d'uso relativi alle notifiche degli annunci generati e descritte in maggior dettagli le precondizioni e postcondizioni. Questa operzione implica la creazione di nuovi casi d'uso che prima rientravano in alcuni più generici. Specificare le precondizioni e postcondizioni infatti diversifica gli scenari e risulta quindi impossibile riutilizzare certi casi d'uso.

In seguito alla riunione con la proponente abbiamo concluso inoltre che verrà distribuita una istanza del _#rifGlossario("database")_ per ogni cliente, quindi per ogni amministratore. Questo comporta che i sensori, i clienti e i punti di interesse memorizzati nella base di dati saranno associati ad un unico amministratore.

= Conclusioni
Abbiamo consolidato una buona base di lavoro e pianifichiamo di ultimare i progetti rimanenti per la consegna della prima _milestone_. I lavori da concludere riguardano le seguenti attività:
- perfezionare i documenti di carattere generale.
- definire definitivamente e utilizzare le metriche scelte.
- perfezionare il #rifGlossario("PoC").

= Tabella delle decisioni
#backlog(content: (
  link("https://github.com/SWEatUNIPD/docs/issues/104")[D0104],
  [Andrea Precoma],
  [Stesura pianificazione _sprint_ 5],

  link("https://github.com/SWEatUNIPD/docs/issues/105")[D0105],
  [Davide Picello],
  [Inserimento valori metriche e grafici in PdQ],

  link("https://github.com/SWEatUNIPD/docs/issues/106")[D0106],
  [Davide Marin],
  [Ultimare paragrafi delle NdP per consegna RTB],

  link("https://github.com/SWEatUNIPD/docs/issues/107")[D0107],
  [Davide Marin, \ Riccardo Milan, \ Davide Picello],
  [Completare gli ultimi casi d'uso ],

  link("https://github.com/SWEatUNIPD/docs/issues/108")[D0108],
  [Klaudio Merja, \ Davide Picello],
  [Completare la trascrizione dei requisiti],

  link("https://github.com/SWEatUNIPD/docs/issues/109")[D0109],
  [Andrea Precoma],
  [Retrospettiva _sprint_ 5],

  link("https://github.com/SWEatUNIPD/NearYou/issues/5")[N0005],
  [Riccardo Milan],
  [Stesura README della _repository_ NearYou],

  link("https://github.com/SWEatUNIPD/NearYou/issues/6")[N0006],
  [Klaudio Merja],
  [Ultimare struttura del Docker per il PoC]
))
