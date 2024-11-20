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
  titolo: "SAL: Sweat", 
  verificatori: (
    "Davide Picello",
  ),
  riassunto: "Durante l'incontro sono state discusse le tecnologie da utilizzare, chiariti i dubbi sul PoC e definite le priorità immediate, tra cui simulazione dati, visualizzazione su Grafana e casi d'uso.",
  versioni: (
    "1.0.0", 
    [20/11/2024], 
    "Andrea Perozzo", 
    "Davide Picello",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(luogo: "Google Meet", data: "20/11/2024", ora: "16:00", durata: "40 minuti", partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"))

= Sintesi dell'incontro 
L'incontro aveva l'obiettivo di fare il punto della situazione a metà sprint, valutare l'implementazione delle tecnologie individuate, definire i prossimi step e risolvere eventuali dubbi.  
Durante la call, sono state discusse le tecnologie scelte per il progetto, poste alcune domande chiave per chiarire punti critici, e condivisi appunti sulle esperienze utente, casi d'uso e priorità per il PoC (Proof of Concept).  

Le tecnologie discusse durante la riunione sono:  
- Data generator: *Faker* o *Simpy*.  
- Database: *PostGIS* e/o *Time Scale*.  
- Data broker: *Kafka* (ottima gestione di grandi volumi di dati).  
- Stream processor: *NiFi* (versatile e adatto a integrare logica).  
- Data visualisation: *Grafana* (intuitivo e ben documentato).  
- LLM: *LangChain*.  

Focus particolare è stato dato all'utilizzo di Grafana per visualizzare dati GPS e annunci pubblicitari e all'integrazione logica all'interno del sistema tramite NiFi.  

= Risposte alle domande  
== Grafana
Nel Proof of Concept (PoC), è sufficiente ricevere la notifica. Tuttavia, per rappresentare visivamente i dati su Grafana, si ipotizza di mostrare punti in movimento su una mappa: quando un punto raggiunge una determinata posizione, viene visualizzato un messaggio o un annuncio.  

== Logica del sistema 
La logica del sistema, che comprende incrocio dati, profilazione utenti, verifica della vicinanza a negozi e valutazione di interessi, potrebbe essere integrata direttamente in NiFi. Questo approccio valorizzerebbe le capacità di NiFi come tool per elaborazioni complesse.  

== Kafka e NiFi
Kafka gestirà l'invio e la ricezione di grandi quantità di dati in tempo reale. NiFi sarà utilizzato per elaborare questi dati, integrando logica personalizzata per analizzare i percorsi GPS, generare notifiche, e gestire gli annunci pubblicitari.  

== PostGIS e Time Scale  
È possibile utilizzarli in combinazione. PostGIS sarà utile per gestire dati spaziali e Time Scale per ottimizzare la gestione di dati temporali, mantenendo una visione relazionale classica con un database aggiuntivo.  

== PoC  
Il PoC dovrebbe essere completato e consegnato entro la prossima settimana, includendo codice per la simulazione dati, rappresentazioni iniziali su Grafana e casi d'uso documentati.  

== Strumento per diagrammi  
Non è stato specificato uno strumento preferito, ma si raccomanda l'utilizzo di tool consolidati come *Lucidchart*, *Draw.io* o altri strumenti simili per creare diagrammi di flusso e analisi di sistema.  

= Conclusioni  
*Priorità:*
- *Simulazione dati:* Avviare lo sviluppo di un simulatore di dati GPS, generando percorsi realistici e mantenendo lo storico degli spostamenti.  
- *Confidenza con strumenti:* Gestire parallelamente l'integrazione con Kafka e NiFi.  
- *Visualizzazione su Grafana:* Creare una rappresentazione iniziale con punti in movimento su una mappa.  
- *Casi d'uso:* Documentare almeno due casi d'uso pratici, pensando al percorso dell'utente tra due punti e all'interazione con i messaggi/annunci.  

*Nel prossimo SAL programmato per il prossimo mercoledì, si presenterà:*  
- Codice iniziale del simulatore.  
- Mock-up dei dati su Grafana.  
- Casi d'uso definiti.  

= Tabella delle decisioni
#backlog(
  content: (
    "ORG", "Gruppo", "SAL fissato per Mercoledì 27/11",
  )
)