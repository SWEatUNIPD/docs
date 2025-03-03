#import "/templates/template.typ": *

#show: content => verbale(
  data: "04 dicembre 2024",
  responsabile: "Davide Picello",
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l.",
  ),
  uso: "Esterno",
  redattori: ("Andrea Perozzo",),
  titolo: "SAL intermedio secondo sprint",
  verificatori: ("Riccardo Milan",),
  riassunto: [Durante l'incontro sono state pianificate attività chiave, tra cui la creazione del _database_, l'integrazione con Grafana e l'avanzamento del progetto.],
  versioni: (
    "1.0.0",
    [08/12/2024],
    "Andrea Perozzo",
    "Riccardo Milan",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(
  luogo: "Google Meet",
  data: "04/12/2024",
  ora: "16:00",
  durata: "40 minuti",
  partecipanti: (
    "Andrea Perozzo",
    "Davide Marin",
    "Davide Picello",
    "Riccardo Milan",
    "Klaudio Merja",
  ),
  partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"),
)

= Sintesi dell'incontro
Durante l'incontro si è discusso di diversi aspetti per l'avanzamento del progetto. È stata pianificata la creazione del _#rifGlossario("database")_, che verrà popolato con dati fittizi e strutturato in tabelle che saranno molto probabilmente dedicate agli utenti (per la profilazione), ai punti di interesse e alle posizioni. Le posizioni pensiamo di organizzarle come serie temporali, collegate all'utente e, potenzialmente, agli annunci nella posizione specifica. Si è poi deciso che andremo a migliorare la struttura creata con #rifGlossario("Docker Compose") per semplificare la gestione del progetto.

Abbiamo anche discusso delle difficoltà riscontrate nell'uso delle chiavi _#rifGlossario("API")_ per #rifGlossario("LangChain"), sulle quali ci sarà un supporto dedicato per sbloccare la situazione.

Per quanto riguarda i casi d'uso, continueremo a migliorarli e ne verranno scritti di nuovi. Parallelamente verranno proseguite le seguenti attività di redazione:
- _#rifGlossario("Sprint")_ 2 nel Piano di Progetto
- Piano di Qualifica
- Norme di Progetto

= Risposte alle domande
Durante l'incontro sono stati affrontati alcuni dubbi, parte dei quali rimangono aperti. Per quanto riguarda la gestione del _database_, è emerso il quesito se sia più opportuno suddividere i dati tra due _database_ distinti (uno per la profilazione e uno per le posizioni _#rifGlossario("GPS")_) oppure se convenga concentrare tutto in un unico _database_. La questione richiede ancora ulteriori approfondimenti.

Sul fronte delle _API_ di LangChain, abbiamo riscontrato problemi di funzionamento, probabilmente legati al fatto che il _#rifGlossario("processor")_ utilizzato è molto recente e con documentazione limitata, quindi abbiamo chiesto supporto. Infine, ci è stato condiviso un _#rifGlossario("feedback")_ positivo sull'approccio adottato per lavorare con #rifGlossario("Apache Kafka") e #rifGlossario("Apache NiFi"), apprezzando la metodologia e i progressi fatti finora.

= Conclusioni
L'incontro ha permesso di definire una chiara _roadmap_ per il proseguimento del progetto.

Le attività da svolgere saranno:
- Creazione del _database_ e popolamento con dati fittizi.
- Migliorare la struttura creata con Docker Compose.
- Integrazione iniziale del _database_ con #rifGlossario("Grafana").
- Revisione e completamento dei casi d'uso.
- Prosecuzione della redazione dello _sprint_ 2, del Piano di Qualifica e delle Norme di Progetto.
Il supporto per le _API_ di LangChain e la questione del _database_ saranno affrontati nei prossimi giorni. Il prossimo incontro si terrà venerdì prossimo e sarà dedicato alla valutazione dei progressi e alla pianificazione dei passi successivi.

= Tabella delle decisioni
#backlog(content: (
  "ORG",
  "Gruppo",
  "SAL fissato per venerdì 13/12",
  link("https://github.com/SWEatUNIPD/NearYou/issues/1")[N0001],
  "Andrea Precoma",
  "Prototipo del database",
  link("https://github.com/SWEatUNIPD/docs/issues/63")[D0063],
  "Andrea Perozzo",
  "Stesura verbale esterno del 04/12",
))