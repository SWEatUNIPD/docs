#import "/templates/template.typ": *

#show: content=>verbale(
  data: "13 dicembre 2024", 
  responsabile: "Davide Martinelli", 
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l."
  ),
  uso: "Esterno",
  redattori: ("Davide Picello",), 
  titolo: "SAL fine secondo sprint", 
  verificatori: (
    "Klaudio Merja",
  ),
  riassunto: [Incontro relativo alla fine del secondo _sprint_ che ha visto il gruppo presentare una prima implementazione concreta del simulatore dati con interfaccia],
  versioni: (
    "1.0.0", 
    [16/12/2024], 
    "Davide Picello", 
    "Klaudio Merja",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(luogo: "Google Meet", data: "13/12/2024", ora: "10:30", durata: "30 minuti", partecipantiEsterni: ("Andrea Dorigo",))



= Sintesi dell'incontro 
L'incontro ha ufficialmente segnato la fine del secondo _#rifGlossario("sprint")_ ed ha visto il gruppo presentare per la prima volta una proposta concreta del simulatore dati con interfaccia, utilizzando le tecnologie concordate.

In particolare è stata mostrata la progettazione del _#rifGlossario("database")_, presentando il modello entità-relazione, a cui è seguito un breve confronto tra il gruppo ed il partecipante esterno con esito positivo. 

//Mostrato Nifi + Grafana
Infine è stato esposto il generatore dati ed il suo funzionamento mostrando i flussi di dati in #rifGlossario("Apache NiFi") e successivamente l'interfaccia realizzata con #rifGlossario("Grafana"). Quest'ultima presentava una mappa in cui venivano indicati i punti geospaziali creati dal generatore. Queste coordinate simulavano un percorso di un utente in bicicletta in modo corretto e coerente, come possiamo notare nelle seguenti immagini.

#figure(image("../../../assets/img/verbali/simGrafana1.png", height: 30%), caption: [Esempio di visualizzazione su Grafana dei dati generati dal simulatore])

#figure(image("../../../assets/img/verbali/simGrafana2.png", height: 30%), caption: [Esempio di visualizzazione su Grafana, in modalità _route_, dei dati generati dal simulatore])


= Risposte alle domande  
Durante l'incontro sono state poste alcune domande, che vengono riportate qui di seguito.

== Migrazione da Apache NiFi
Durante l'implementazione del simulatore dati sono state riscontrate alcune problematiche durante l'utilizzo di Apache NiFi. Queste derivano dalla curva d'apprendimento di questo applicativo rispetto all'utilizzo effettivamente richiesto per questo progetto. Il gruppo si è confrontato con l'azienda a riguardo, ed è emersa la possibilità di migrare verso altri servizi come #rifGlossario("Apache Flink") o #rifGlossario("Spring"). Il gruppo, entro il prossimo incontro, prenderà in considerazione se continuare ad utilizzare il _software_ utilizzato attualmente o se, invece, sarà più vantaggioso sostituirlo.


//2. Come fare a implementare logiche più complesse con nifi? -> come implementare pattern per Cardin
== Implementazione di logiche complesse con Apache NiFi
Un'altra domanda posta dal gruppo è stata se Apache NiFi si presti all'implementazione di logiche complesse e di _design pattern_ adeguati ai fini della valutazione didattica. L'azienda ci ha rassicurato dicendoci che in genere è sufficiente riconoscere queste logiche nei _software_ che utilizziamo. Per chiarire ogni dubbio il gruppo porrà questa domanda direttamente al professor Cardin durante l'incontro fissato per giovedì 19 dicembre.

== Containerizzare il producer
Un altro piccolo dubbio era se fosse necessario, o perlomeno consigliato, containerizzare anche il _producer_ dei dati del simulatore. La risposta è stata affermativa, in quanto, questo faciliterà la collaborazione sul codice.

== Confronto sul database
Dal confronto sul _database_ è emerso che è correttamente impostato e necessita solo di essere ampliato. Ci è stato confermato che i dati della profilazione dovranno essere interamente generati dal gruppo. Infine è stata discussa la possibilità di salvare lo storico dei noleggi e la capacità del sistema di proporre soluzioni coerentemente con il loro effettivo orario di apertura. Questi due requisiti, apprezzati, possono essere intesi come opzionali.


= Conclusioni  
Quest'incontro è stato molto importante in quanto ha visto il gruppo presentare per la prima volta qualcosa di concreto, con esito positivo. Ci si è accordati con l'azienda per il prossimo incontro, fissato per lunedì 23 dicembre, per via delle festività natalizie. Il gruppo si pone come obbiettivo quello di avanzare con l'utilizzo di Grafana e soprattutto di scegliere se rimanere su Apache NiFi o cambiare applicativo.



= Tabella delle decisioni
#backlog(
  content: (
    "ORG", "Gruppo", "SAL fissato per lunedì 23/12"
  )
)