#import "/templates/template.typ": *

#show: content=>verbale(
  data: "22 gennaio 2025", 
  responsabile: "Klaudio Merja", 
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l."
  ),
  uso: "Esterno",
  redattori: ("Andrea Precoma",), 
  titolo: "SAL quinto sprint", 
  verificatori: (
    "Davide Martinelli",
  ),
  riassunto: [Sono stati chiariti alcuni dubbi riguardo il diagramma delle attività ed è stato confermato il lavoro sul PoC.],
  versioni: (
    "1.0.0", 
    [22/01/2025], 
    "Andrea Precoma", "Davide Martinelli",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(luogo: "Google Meet", data: "22/01/2025", ora: "12:00", durata: "30 minuti", partecipantiEsterni: ("Andrea Dorigo","Fabio Pallaro"), 
partecipanti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
    "Riccardo Milan"
  ),
)

= Sintesi dell'incontro
Abbiamo presentato il diagramma delle attività sul quale nutrivamo alcuni dubbi. Sono stati chiariti facendo anche emergere alcune osservazioni importanti. È seguita poi l'esibizione del #rifGlossario("PoC") rispetto al quale abbiamo ricevuto dei complimenti.

= Risposte alle domande

== Diagramma delle attività
Abbiamo presentato il diagramma delle attività discutendo poi sulla correttezza del flusso. Dialogando principalmente con Fabio Pallaro ci siamo accorti che deve essere aggiunta la fase di controllo riguardo alla possibilità dell'utente di aver già ricevuto l'annuncio per il punto di interesse.

Si è sollevata anche una questione circa alla responsabilità di controllare se l'utente può essere interessato al punto di interesse. Sono state evidenziate tre possibilità:
+ Eseguire una sola richiesta alla #rifGlossario("LLM"), questa deve valutare la profilazione dell'utente ed eventualmente generare l'annuncio.
+ Eseguire due richieste alla LLM, la prima per valutare la profilazione dell'utente ed eventualmente la seconda per far generare l'annuncio.
+ Valutare internamente al sistema la profilazione dell'utente ed eventualmente richiedere la generazione dell'annuncio.
Fabio Pallaro ci ha fatto notare che affidare l'intero compito alla LLM potrebbe portare ad una saturazione delle richieste disponibili. Tuttavia ci sembra più efficace la valutazione di una LLM specie considerando che l'informazione principale della profilazione è un campo di testo libero. Al momento quindi abbiamo quindi optato per la prima soluzione.

== PoC
Abbiamo presentato l'ultima istanza del PoC che sarà quella presentata alla consegna della _milestone_. Ci è stato confermato il lavoro con un solo accorgimento da apportare, cioè scostare il punto di interesse dal tracciato del mezzo in modo che sia più realistico e visibile.

= Conclusioni
Chiarendo le ultime questioni riguardo il diagramma delle attività abbiamo concluso il lavoro di analisi dei requisiti e dei casi d'uso. Avendo ricevuto riscontri positivi sia per la documentazione sia per il PoC programmiamo di concludere e approvare gli ultimi lavori entro il fine settimana. La consegna è quindi stata sposta a lunedì 27 gennaio.

= Tabella delle decisioni
#backlog(
  content: (
    "ORG", "Gruppo", [Richiesta colloquio con il prof. Cardin per la consegna RTB]
  )
)