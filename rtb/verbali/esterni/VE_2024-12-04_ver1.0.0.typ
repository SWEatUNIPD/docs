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
  riassunto: [Durante l'incontro sono state pianificate attività chiave, tra cui la creazione del _database_, l'integrazione con _Grafana_ e l'avanzamento del progetto.],
  versioni: (
    "1.0.0",
    [04/12/2024],
    "Andrea Perozzo",
    "Riccardo Milan",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(
  luogo: "Google Meet",
  data: "20/11/2024",
  ora: "16:00",
  durata: "40 minuti",
  partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"),
)

= Sintesi dell'incontro
Durante l'incontro si è discusso di diversi aspetti per l'avanzamento del progetto. È stata pianificata la creazione del _#rifGlossario("database")_, che verrà popolato con dati falsi e strutturato in tabelle che saranno molto probabilmente dedicate agli utenti (per la profilazione), ai punti di interesse e alle posizioni. Le posizioni pensiamo di organizzarle come serie temporali, collegate all'utente e, potenzialmente, agli annunci nella posizione specifica. Si è poi deciso che andremo a configurare un'immagine _#rifGlossario("Docker Compose")_ per semplificare la gestione del progetto. Un altro punto importante sarà andare ad integrare il _database_ con _#rifGlossario("Grafana")_, che servirà a creare una _dashboard_ per visualizzare in tempo reale le posizioni degli utenti.

Per quanto riguarda i casi d'uso, continueremo a migliorarli e, se necessario, ne verranno scritti di nuovi. Parallelamente, verranno proseguite le seguenti attività di redazione:
- _#rifGlossario("Sprint")_ 2 nel piano di progetto
- Piano di qualifica
- Norme di progetto.

= Risposte alle domande
Alcuni dubbi sono stati chiariti durante l'incontro. Per quanto riguarda la struttura del _database_, si è concordato di suddividerlo in tabelle separate per rendere più semplice l'analisi e l'integrazione con _Grafana_. La _dashboard_, infatti, si dovrà connettere direttamente al _database_ per mostrare in tempo reale i dati relativi alle posizioni degli utenti.

= Conclusioni
L'incontro ha permesso di definire una chiara _roadmap_ per il proseguimento del progetto.

Le attività da svolgere saranno:
- Creazione del _database_ e popolamento con dati _fake_.
- Configurazione dell'immagine con _Docker Compose_.
- Integrazione iniziale del _database_ con _Grafana_.
- Revisione e completamento dei casi d'uso.
- Prosecuzione della redazione dello _sprint_ 2, del piano di qualifica e delle norme di progetto.
La prossima riunione è prevista per il prossimo venerdì, dove analizzeremo insieme i progressi effettuati.

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