#import "/templates/template.typ": *

#show: content => verbale(
  data: "3 Marzo 2025",
  responsabile: "Riccardo Milan",
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l.",
  ),
  uso: "Esterno",
  redattori: ("Klaudio Merja",),
  titolo: "SAL intermedio settimo sprint",
  verificatori: (
    "Davide Picello",
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(
  luogo: "Google Meet",
  data: "03/03/2025",
  ora: "11:30",
  durata: "mezz'ora",
  partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"),
  partecipanti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
  ),
)

= Sintesi dell'incontro
L'incontro svoltosi con l'azienda proponente ha avuto come argomenti di discussione le prime scelte architetturali adottate dal gruppo in merito alla progettazione dell'#rifGlossario("MVP") e una discussione sulle tecnologie adottate dal gruppo per la realizzazione di quest'ultimo, valutando nel concreto nuovamente i reali casi d'uso del prodotto finale e se le scelte fatte siano effettivamente le più adatte.

== Scelte architetturali
Il gruppo ha presentato all'azienda proponente le prime scelte architetturali adottate per la realizzazione del prodotto, ponendo particolare attenzione all'architettura logica del servizio in sviluppo, risolvendo alcune lacune e dubbi emersi da parte dei progettisti. Si è approfondito in particolare la scelta di adottare un'architettura esagonale per il servizio che, al momento della stesura di questo verbale, si occupa di tutta la _business logic_ del prodotto, comprensivo di consumo dei messaggi da #rifGlossario("Apache Kafka"), persistenza dei dati ricevuti all'interno di un _#rifGlossario("database")_ e l'utilizzo degli stessi dati per la generazione degli annunci pubblicitari da mostrare all'utente.

Si è discusso inoltre del grado di dettaglio che l'azienda si aspetta da questa progettazione, confermando quanto svolto per ora e ponendo come nuovo obiettivo la realizzazione dell'architettura di _deployment_ del prodotto.

== Tecnologie adottate
Per quanto riguarda le tecnologie adottate dal gruppo, si è discusso con l'azienda proponente se le scelte fatte in merito alla parte di _processing_ dello _stream_ dei dati fossero adattate ai casi d'uso che l'azienda si aspetta dal prodotto finale; si è deciso in particolare se l'uso di #rifGlossario("Spring") per il consumo dei messaggi provenienti dalla _message queue_ tramite _#rifGlossario("micro batching")_ soddisfacesse i requisiti di _real-time processing_. L'azienda ha sottolineato il fatto di come lo _stream processor_ fosse uno degli argomenti in primo piano del loro capitolato; ciò nonostante, le tecnologie proposte da quest'ultima non erano vincolanti ai fini del progetto, approvando quindi quando svolto nel caso tutto il sistema funzionasse come da requisiti. Seguirà in settimana una riunione con il Prof. Riccardo Cardin per discutere nuovamente di questo argomento per confermare in maniera definitiva le scelte adottate e procedere allo sviluppo, con conseguente rilascio, dell'MVP.

= Conclusioni
L'incontro ha portato alla conferma di quanto svolto al momento da parte del gruppo e posto nuovi obiettivi per la settimana successiva per quanto riguarda l'architettura di _deployment_ del prodotto. Tuttavia, il gruppo rimane in attesa della riunione pianificata per questo mercoledì (05/03/2025) con il Prof. Cardin per chiarire e confermare le scelte fatte in merito alle tecnologie adottate per lo _#rifGlossario("stream processing")_. In attesa di ciò, il gruppo procederà con la ricerca e lo sviluppo degli strumenti di _testing_ e analisi statica della _#rifGlossario("codebase")_ del prodotto.
