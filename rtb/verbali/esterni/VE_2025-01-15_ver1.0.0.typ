#import "/templates/template.typ": *

#show: content=>verbale(
  data: "15 gennaio 2025", 
  responsabile: "Klaudio Merja", 
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l."
  ),
  uso: "Esterno",
  redattori: ("Andrea Precoma",), 
  titolo: "SAL intermedio quinto sprint", 
  verificatori: (
    "Davide Martinelli",
  ),
  riassunto: [L'incontro era mirato a chiarire gli ultimi dubbi riguardo ad alcuni casi d'uso, al diagramma delle attività e ad alcuni requisiti.],
  versioni: (
    "1.0.0", 
    [15/01/2025], 
    "Andrea Precoma", "Davide Martinelli",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(luogo: "Google Meet", data: "15/01/2025", ora: "12:00", durata: "15 minuti", partecipantiEsterni: ("Andrea Dorigo","Fabio Pallaro"), 
partecipanti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Klaudio Merja",
    "Riccardo Milan"
  ),
)

= Sintesi dell'incontro
Prossimi alla consegna dell'RTB abbiamo esposto le ultime questioni relative all'Analisi dei Requisiti. Sono stati chiariti i dubbi riguardo alcuni casi d'uso, il diagramma delle attività delle azioni del sistema e alcuni requisiti.

= Risposte alle domande

L'incontro era mirato a chiarire gli ultimi punti in modo da sistemare l'Analisi dei Requisiti in vista della consegna dell'RTB.

== Casi d'uso relativi al sensore
Poiché il sensore invia diversi dati al sistema avevamo pensato di creare delle inclusioni in modo da specificare quali dati sono condivisi col sistema. Questa soluzione tuttavia sembra eccessivamente precisa in quanto nello scenario e nel titolo del caso d'uso principale è già descritto quali dati sono inviati.

== Diagramma delle attività
Come suggerito dal prof. Cardin durante un ricevimento ci è stata confermata la scelta di descrivere le azioni del sistema tramite un diagramma delle attività. Le seguenti azioni infatti non possono essere descritte dai casi d'uso ma sono importanti per analizzare il prodotto _software_:
- Elaborazione dei dati inviati dal sensore.
- Invio della richiesta alla LLM di generare un annuncio nel caso un utente sia sufficientemente vicino ad un punto di interesse e non ne abbia già ricevuto uno.
- Ricezione della risposta della LLM.
- Storicizzazione della risposta della LLM.

== Requisiti
Sono stati anche approvati i requisiti trovati e confermati quelli circa la qualità del prodotto.

= Conclusioni
In seguito alle indicazioni della proponente e del prof. Cardin in un ricevimento passato abbiamo programmato le prossime giornate in modo da concludere questi accorgimenti. Pianifichiamo di portare a termine i lavori entro lunedì 20 in modo da dedicare gli ultimi giorni dello _sprint_ alla revisione e approvazione dei documenti per la consegna del progetto.

= Tabella delle decisioni
#backlog(
  content: (
    "ORG", "Gruppo", [SAL di fine _sprint_ fissato per mercoledì 22/01/2025]
  )
)