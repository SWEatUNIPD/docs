#import "/templates/template.typ": *

#show: content => verbale(
  data: "13 novembre 2024",
  responsabile: "Andrea Perozzo",
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l.",
  ),
  uso: "Esterno",
  redattori: ("Andrea Perozzo", "Klaudio Merja"),
  titolo: "Kick Off Sync Lab S.r.l.",
  verificatori: (
    "Andrea Precoma",
    "Davide Picello",
  ),
  riassunto: "Punti chiave e linee guida forniteci per l'organizzazione, le tecnologie e la gestione del progetto.",
  versioni: (
    "1.0.1",
    [18/11/2024],
    "Klaudio Merja",
    "Andrea Precoma",
    [- Correzione degli errori presenti all'intero del documento],
    "1.0.0",
    [13/11/2024],
    "Andrea Perozzo",
    "Andrea Precoma\nDavide Picello",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(
  luogo: "Google Meet",
  data: "13/11/2024",
  ora: "16:00",
  durata: "mezz'ora",
  partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"),
)

= Sintesi dell'incontro
Durante l'incontro, ci sono stati forniti suggerimenti su tecnologie, metodologie, gestione delle comunicazioni e organizzazione del progetto. Abbiamo discusso dell'autonomia nella scelta di strumenti e best practice. Sono stati fissati obiettivi legati alla gestione delle milestone e degli _#rifGlossario("sprint")_ bisettimanali, oltre a consigli specifici sulla documentazione, il _project management_ e la scelta delle tecnologie. Inoltre ci hanno fornito un _server_ Discord per le comunicazioni e supporto su repository #rifGlossario("GitHub"), con _#rifGlossario("feedback")_ periodici sugli avanzamenti del progetto.

= Risposte alle domande
== Analisi dei requisiti
- *Tecnologie consigliate*: Ci è stato raccomandato un'analisi dei concetti di _data streaming_, _data processing_, _broker_ e architettura _event-driven_, sottolineando l'importanza di selezionare uno strumento principale tra quelli indicati, come Kafka Streams, #rifGlossario("Apache NiFi"), #rifGlossario("Apache Flink"), o Spring (Java/Apache). Per l'integrazione con #rifGlossario("LangChain"), Apache NiFi è stato consigliato come strumento ottimale. Questi strumenti, una volta selezionati, dovranno essere applicati considerando i casi d'uso specifici e le potenziali esigenze di progetto.
- *Come e quando iniziare*: Ci è stato suggerito di partire subito con l'analisi dei requisiti, mantenendo un approccio flessibile e mirato ai requisiti fondamentali. Per supportare questa fase, è stata consigliata la piattaforma ClickUp o Trello per la gestione del progetto e della documentazione.
== Autonomia degli strumenti e materiale condiviso
Ci è stata data autonomia nella scelta di metodologie e strumenti, con l'opzione di chiedere assistenza o riferimenti all'azienda su best practice per versionamento, _commit_ (ad esempio Conventional Commits), #rifGlossario("Git") e GitLab. Per facilitare la collaborazione, si consiglia di mantenere e catalogare le _best practice_ all'interno della _repository_, in cui Andrea Dorigo sarà invitato come collaboratore per monitorare l'avanzamento. È stato suggerito di utilizzare Docker Compose per creare un ambiente containerizzato, evitando l'_overhead_ di Kubernetes, che risulta eccessivo per le necessità attuali.
== Suggerimento milestones
Ci è stato consigliato di definire _milestone_ per documentazione, Proof of Concept (#rifGlossario("PoC")), _Minimum Viable Product_ (#rifGlossario("MVP")) e per il prodotto finale, evitando una frammentazione eccessiva. Ogni milestone rappresenterà un traguardo significativo. A livello di _sprint_, si definiranno obiettivi chiari (non chiamati "_milestone_") per mantenere il progetto costantemente allineato agli obiettivi principali.
== Organizzazione incontri settimanali (SAL)
Gli _sprint_ saranno tendenzialmente bisettimanali con una _call_ intermedia di circa 10 minuti per dei brevi aggiornamenti, seguita a fine _sprint_ da un _meeting_ più strutturato per esporre il progresso e risolvere eventuali dubbi. Non è possibile stabilire un giorno fisso settimanale, quindi la data degli incontri sarà concordata di volta in volta. Inoltre dovremmo inviare ogni due settimane un aggiornamento documentale con un _changelog_ per facilitare il _feedback_ dell'azienda.
== Mezzi di comunicazione
Per le comunicazioni ufficiali, il canale preferito sarà Gmail; per la comunicazione informale e giornaliera, l'azienda fornirà un _server_ Discord. La documentazione sarà gestita su GitHub e, in caso di necessità, potranno essere organizzati _meeting_ su Google Meet.
= Conclusioni
Dovremo approfondire la nostra conoscenza sulle tecnologie consigliate in quanto sarà essenziale per selezionare gli strumenti più adatti ai nostri casi d'uso e alle esigenze del progetto, così possiamo iniziare l'Analisi dei Requisiti.
Ci è stata confermata l'autonomia del team, si sono offerti disponibili a fornire _feedback_ su richiesta e durante gli incontri periodici. L'approccio organizzativo suggerito con _sprint_ bisettimanali e _milestone_ ben definite permetterà di avanzare nel progetto in modo controllato e con momenti di verifica frequenti. È stato raccomandato un approccio "agile", mantenendo flessibilità nella gestione dei requisiti e definendo con sicurezza quelli essenziali. Per la gestione dei dati, dovremmo valutare se separare lo storage per dati statici e dinamici o integrarli in un unico _#rifGlossario("database")_, considerando la complessità.

= Tabella delle decisioni
#backlog(content: (
  "ORG",
  "Gruppo",
  "Riunione con Sync Lab S.r.l. fissata per Mercoledì 20/11",
))