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
    "Andrea Precouma",
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
Durante l'incontro, ci sono stati forniti suggerimenti su tecnologie, metodologie, gestione delle comunicazioni e organizzazione del progetto. Abbiamo discusso dell'autonomia nella scelta di strumenti e best practice. Sono stati fissati obiettivi legati alla gestione delle milestone e degli #rifGlossario("sprint") bisettimanali, oltre a consigli specifici sulla documentazione, il project management e la scelta delle tecnologie. Inoltre ci hanno fornito un server Discord per le comunicazioni e supporto su repository #rifGlossario("GitHub"), con #rifGlossario("feedback") periodici sugli avanzamenti del progetto.

= Risposte alle domande
== Analisi dei requisiti
- *Tecnologie consigliate*: Ci è stato raccomandato un'analisi dei concetti di data streaming, data processing, broker e architettura event-driven, sottolineando l'importanza di selezionare uno strumento principale tra quelli indicati, come Kafka Streams, #rifGlossario("Apache NiFi"), #rifGlossario("Apache Flink"), o Spring (Java/Apache). Per l'integrazione con #rifGlossario("LangChain"), Apache NiFi è stato consigliato come strumento ottimale. Questi strumenti, una volta selezionati, dovranno essere applicati considerando i casi d'uso specifici e le potenziali esigenze di progetto.
- *Come e quando iniziare*: Ci è stato suggerito di partire subito con l'analisi dei requisiti, mantenendo un approccio flessibile e mirato ai requisiti fondamentali. Per supportare questa fase, è stata consigliata la piattaforma ClickUp o Trello per la gestione del progetto e della documentazione.
== Autonomia degli strumenti e materiale condiviso
Ci è stata data autonomia nella scelta di metodologie e strumenti, con l'opzione di chiedere assistenza o riferimenti all'azienda su best practice per versionamento, commit (ad esempio Conventional Commits), #rifGlossario("Git") e GitLab. Per facilitare la collaborazione, si consiglia di mantenere e catalogare le best practice all'interno della repository, in cui Andrea Dorigo sarà invitato come collaboratore per monitorare l'avanzamento. È stato suggerito di utilizzare Docker Compose per creare un ambiente containerizzato, evitando l'overhead di Kubernetes, che risulta eccessivo per le necessità attuali.
== Suggerimento milestones
Ci è stato consigliato di definire milestone per documentazione, Proof of Concept (#rifGlossario("PoC")), Minimum Viable Product (#rifGlossario("MVP")) e per il prodotto finale, evitando una frammentazione eccessiva. Ogni milestone rappresenterà un traguardo significativo. A livello di sprint, si definiranno obiettivi chiari (non chiamati “milestone”) per mantenere il progetto costantemente allineato agli obiettivi principali.
== Organizzazione incontri settimanali (SAL)
Gli sprint saranno tendenzialmente bisettimanali con una call intermedia di circa 10 minuti per dei brevi aggiornamenti, seguita a fine sprint da un meeting più strutturato per esporre il progresso e risolvere eventuali dubbi. Non è possibile stabilire un giorno fisso settimanale, quindi la data degli incontri sarà concordata di volta in volta. Inoltre dovremmo inviare ogni due settimane un aggiornamento documentale con un changelog per facilitare il feedback dell'azienda.
== Mezzi di comunicazione
Per le comunicazioni ufficiali, il canale preferito sarà Gmail; per la comunicazione informale e giornaliera, l'azienda fornirà un server Discord. La documentazione sarà gestita su GitHub e, in caso di necessità, potranno essere organizzati meeting su Google Meet.
= Conclusioni
Dovremmo approfondire la nostra conoscenza sulle tecnologie consigliate in quanto sarà essenziale per selezionare gli strumenti più adatti ai nostri casi d'uso e alle esigenze del progetto, così possiamo iniziare l'analisi dei requisiti.
Ci è stata confermata l'autonomia del team, si sono offerti disponibili a fornire feedback su richiesta e durante gli incontri periodici. L'approccio organizzativo suggerito con sprint bisettimanali e milestone ben definite permetterà di avanzare nel progetto in modo controllato e con momenti di verifica frequenti. È stato raccomandato un approccio "agile", mantenendo flessibilità nella gestione dei requisiti e definendo con sicurezza quelli essenziali. Per la gestione dei dati, dovremmo valutare se separare lo storage per dati statici e dinamici o integrarli in un unico #rifGlossario("database"), considerando la complessità.

= Tabella delle decisioni
#backlog(content: (
  "ORG",
  "Gruppo",
  "Riunione con Sync Lab S.r.l. fissata per Mercoledì 20/11",
))