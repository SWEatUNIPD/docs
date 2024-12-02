#import "/templates/template.typ": *

#show: content=>verbale(
  data: "20 novembre 2024", 
  responsabile: "Andrea Perozzo", 
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l."
  ),
  uso: "Esterno",
  redattori: ("Andrea Perozzo",), 
  titolo: "SAL intermedio primo sprint", 
  verificatori: (
    "Davide Picello",
  ),
  riassunto: "Durante l'incontro sono state discusse le tecnologie che utilizzeremo e i dubbi riguardo al PoC inoltre sono state definite le priorità, tra cui simulazione dati, visualizzazione su Grafana e casi d'uso.",
  versioni: (
    "1.0.0", 
    [25/11/2024], 
    "Andrea Perozzo", 
    "Davide Picello",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(luogo: "Google Meet", data: "20/11/2024", ora: "16:00", durata: "40 minuti", partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"))

= Sintesi dell'incontro 
L'incontro aveva l'obiettivo di fare il punto della situazione a metà #rifGlossario("sprint"), valutare l'implementazione delle tecnologie individuate, definire i prossimi step e risolvere eventuali dubbi.  
Durante la call, sono state discusse le tecnologie scelte per il progetto, poste alcune domande chiave per chiarire punti critici, e condivisi appunti sulle esperienze utente, casi d'uso e priorità per il #rifGlossario("PoC").  

Le tecnologie che abbiamo scelto di utilizzare e che abbiamo discusso durante la riunione sono:  
- #rifGlossario("Data generator"): *#rifGlossario("Faker")* o *#rifGlossario("SimPy")*.  
- #rifGlossario("Database"): *#rifGlossario("PostGIS")* e/o *Time Scale*.  
- #rifGlossario("Data broker"): *#rifGlossario("Apache Kafka")* (ottima gestione di grandi volumi di dati).  
- #rifGlossario("Stream Processing"): *#rifGlossario("Apache Nifi")* (versatile e adatto a integrare logica).  
- #rifGlossario("Data visualization"): *#rifGlossario("Grafana")* (intuitivo e ben documentato).  
- #rifGlossario("LLM"): *#rifGlossario("LangChain")*.  

Focus particolare è stato dato all'utilizzo di Grafana per visualizzare dati #rifGlossario("GPS") e annunci pubblicitari e all'integrazione logica all'interno del sistema tramite Apache NiFi.  

= Risposte alle domande  
== Grafana
Nel PoC, sarà sufficiente ricevere la notifica riguardante l'annuncio pertinente. Tuttavia, per rappresentare visivamente i dati su Grafana, si ipotizza di mostrare punti in movimento su una mappa: quando un punto raggiunge una determinata posizione, verrà visualizzato un messaggio o un annuncio.  

== Logica del sistema 
La logica del sistema, che comprende incrocio dati, profilazione utenti, verifica della vicinanza a negozi e valutazione di interessi, potrebbe essere integrata direttamente in Apache NiFi. Questo approccio valorizzerebbe le capacità di Apache NiFi come tool per elaborazioni complesse.  

== Apache Kafka e Apache NiFi
Apache Kafka gestirà l'invio e la ricezione di grandi quantità di dati in tempo reale. Apache NiFi sarà utilizzato per elaborare questi dati, integrando logica personalizzata per analizzare i percorsi GPS, generare notifiche, e gestire gli annunci pubblicitari.  

== PostGIS e Time Scale  
È possibile utilizzarli in combinazione. PostGIS sarà utile per gestire dati spaziali e Time Scale per ottimizzare la gestione di dati temporali, mantenendo una visione relazionale classica con un database aggiuntivo.  

== PoC
Il PoC dovrebbe essere strutturato in modo da includere:
- Il codice necessario per la simulazione dei dati.
- Prevedere alcune rappresentazioni iniziali su Grafana, in modo da offrire una visualizzazione dei dati simulati. 
- Documentare i casi d'uso principali, così da chiarire come il sistema potrebbe essere applicato nella pratica.  

= Conclusioni  
*Priorità:*
- *Simulazione dati:* Iniziare a studiare l'avvio dello sviluppo di un simulatore di dati GPS, generando percorsi realistici e mantenendo lo storico degli spostamenti.  
- *Confidenza con strumenti:* Gestire parallelamente l'integrazione con Apache Kafka e Apache NiFi.  
- *Visualizzazione su Grafana:* Creare una rappresentazione iniziale con punti in movimento su una mappa.  
- *Casi d'uso:* Documentare almeno due casi d'uso pratici, pensando al percorso dell'utente tra due punti e all'interazione con i messaggi/annunci.  

*Nel prossimo #rifGlossario("SAL") programmato per il prossimo mercoledì, si presenterà:*  
- Codice iniziale del simulatore.  
- Mock-up dei dati su Grafana.  
- Primi casi d'uso definiti.  

= Tabella delle decisioni
#backlog(
  content: (
    "ORG", "Gruppo", "SAL fissato per mercoledì 27/11",
  )
)