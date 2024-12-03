#import "/templates/template.typ": *

#show: content => verbale(
  data: "20 novembre 2024",
  responsabile: "Andrea Perozzo",
  redattori: ("Andrea Perozzo",),
  titolo: "Quinta riunione",
  verificatori: ("Davide Marin",),
  riassunto: "Riunione interna per definire ruoli, priorità operative e obiettivi del prossimo SAL, con focus su simulazione dati GPS, analisi dei casi d'uso e redazione documenti di progetto.",
  versioni: (
    "1.0.0",
    [24/11/2024],
    "Andrea Perozzo",
    "Davide Marin",
    [- Stesura del verbale],
  ),
  content: content,
)

#infoRiunione(
  data: "20/11/2024",
  durata: "1 ora e 15 minuti",
  luogo: "Chiamata Discord",
  ora: "16:40",
  partecipantiEsterni: (),
)

= Sintesi
Dopo aver analizzato le informazioni raccolte nella _call_ con l'azienda, abbiamo discusso come strutturare il lavoro per raggiungere gli obiettivi del prossimo #rifGlossario("SAL"), previsto per mercoledì 27 novembre 2024. Si è deciso di affrontare simultaneamente lo studio per la generazione dei dati #rifGlossario("GPS"), l'analisi dei primi casi d'uso e la redazione delle Norme di Progetto e del Piano di Progetto, poiché rappresentano le fondamenta organizzative e tecniche del progetto. Abbiamo stabilito i ruoli e i compiti per garantire un avanzamento omogeneo.

= Ordine del giorno

== Motivo delle scelte sui ruoli e priorità
A seguito della _call_ con l'azienda, è emerso che per preparare un #rifGlossario("PoC") coerente con gli obiettivi del progetto, è necessario:
- *Iniziare pragmaticamente con la simulazione dei dati GPS:* Questo è un punto importante in quanto ci servirà in futuro per costruire i _test_ su #rifGlossario("Grafana") e analizzare i percorsi utenti.
- *Analizzare e decidere i primi casi d'uso:* Definire i possibili scenari principali aiuterà a capire meglio quale direzione intraprendere.
- *Lavorare alle Norme di Progetto:* Essendo le basi per strutturare il lavoro, vanno redatte con priorità e coinvolgendo tutto il gruppo, inizieremo con la redazione dei processi primari e di supporto.
- *Avviare il Piano di Progetto:* L'organizzazione in _#rifGlossario("sprint")_ è fondamentale per il monitoraggio delle attività. Inoltre, qualora un membro terminasse anticipatamente i propri compiti, potrà svolgerne altri ricoprendo un ruolo diverso da quello principale, questo per evitare rallentamenti. Ad esempio, chi è coinvolto nella programmazione potrà contribuire alle Norme di Progetto sotto il ruolo di amministratore nel caso terminasse anticipatamente i suoi compiti come programmatore.

== Generazione dei dati GPS
Si è deciso di partire con la simulazione di dati GPS utilizzando librerie Python come #rifGlossario("Faker") o #rifGlossario("SimPy"), per garantire in futuro la creazione di percorsi realistici e lo storico degli spostamenti. Questa attività è molto importante per poter costruire un PoC che dimostri i processi chiave.

== Norme di Progetto
Le Norme di Progetto rappresentano la base organizzativa del lavoro e saranno redatte e modificate progressivamente durante tutta la durata del progetto. Poiché queste norme richiedono un contributo continuo, è stato deciso che tutti i membri del gruppo contribuiranno alla loro stesura sotto il ruolo di amministratore. In questa settimana, il focus sarà sull'avvio dei seguenti processi:
- *Processi primari*
- *Processi di supporto*

== Analisi dei primi casi d'uso
Definire i casi d'uso iniziali è essenziale per modellare i requisiti del progetto. Questa attività sarà portata avanti parallelamente alla scrittura delle Norme di Progetto e alla simulazione dei dati.

== Rendicontazione ore
Per mantenere tracciabilità, creeremo un foglio Excel condiviso in cui ogni membro annoterà le ore dedicate a ciascun ruolo. Questo ci consentirà un monitoraggio preciso per distribuirci omogeneamente tutti i ruoli per ogni membro.

== Revisione del Glossario
È stato deciso di rivedere e aggiornare il Glossario in modo da supportare sia i test che la futura pubblicazione sul sito.

= Conclusioni
*Motivazioni delle scelte:*
Le decisioni prese sono state guidate dai suggerimenti ricevuti dall'azienda e dalle esigenze pratiche del progetto:
- La generazione dei dati GPS permetterà di iniziare a lavorare su aspetti concreti.
- La redazione delle Norme di Progetto è importante per strutturare il lavoro e deve procedere parallelamente alle altre attività.
- La flessibilità nei ruoli permette di ottimizzare le risorse disponibili e di avanzare senza troppe interruzioni.
*Obiettivi per il prossimo SAL (27 novembre 2024):*
- *Codice per simulazione dati GPS:* Studio di una prima versione funzionale per la generazione di dati verosimili.
- *Analisi dei Requisiti:* Documentazione iniziale di alcuni casi d'uso chiave.
- *Norme di Progetto:* Redazione di una prima bozza, includendo processi primari e di supporto.
- *Piano di Progetto:* Redazione della prima versione con lo _sprint_ attuale (13/11/2024 - 27/11/2024).
- *Rendicontazione ore:* Utilizzo del foglio Excel condiviso per il monitoraggio delle ore lavorative.

= Tabella delle decisioni
#backlog(content: (
  "ORG",
  "Gruppo",
  "Creazione Excel per la rendicontazione ore",
  "ORG",
  "Andrea Precoma",
  "Studio generazione dati GPS",
  link("https://github.com/SWEatUNIPD/docs/issues/34")[D0034],
  "Andrea Perozzo",
  "Redigere verbale esterno 2024-11-20",
  link("https://github.com/SWEatUNIPD/docs/issues/35")[D0035],
  "Andrea Perozzo",
  "Redigere verbale interno 2024-11-20",
  link("https://github.com/SWEatUNIPD/docs/issues/37")[D0037],
  "Klaudio Merja",
  "Redazione del Piano di Progetto",
  link("https://github.com/SWEatUNIPD/docs/issues/38")[D0038],
  "Davide Picello",
  "Inizio redazione processi primari in Norme di Progetto",
  link("https://github.com/SWEatUNIPD/docs/issues/44")[#text(underline("D0044"))],
  "Andrea Precoma",
  "Redazione dei processi di supporto in Norme di Progetto",
  link("https://github.com/SWEatUNIPD/docs/issues/39")[#text(underline("D0039"))],
  "Davide Martinelli \nRiccardo Milan",
  "Prima analisi dei requisiti e degli use-case",
  link("https://github.com/SWEatUNIPD/docs/issues/42")[#text(underline("D0042"))],
  "Klaudio Merja",
  "Test statico automatico per termini Glossario",
))