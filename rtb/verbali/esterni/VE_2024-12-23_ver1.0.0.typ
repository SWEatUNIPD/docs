#import "/templates/template.typ": *

#show: content=>verbale(
  data: "23 dicembre 2024", 
  responsabile: "Riccardo Milan", 
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l."
  ),
  uso: "Esterno",
  redattori: ("Davide Marin",), 
  titolo: "SAL fine terzo sprint", 
  verificatori: (
    "Davide Picello",
  ),
  riassunto: [Incontro relativo alla fine del terzo _sprint_, durante l'incontro si è discusso di come implementare alcuni dei requisiti.],
  versioni: (
    "1.0.0", 
    [27/12/2024], 
    "Davide Marin", "Davide Picello",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(luogo: "Google Meet", data: "23/12/2024", ora: "10:00", durata: "30 minuti", partecipantiEsterni: ("Andrea Dorigo","Fabio Pallaro"), 
partecipanti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Klaudio Merja",
  ),
)

= Sintesi dell'incontro
L'incontro ha portato a termine il terzo _#rifGlossario("sprint")_, durante l'incontro sono state discusse le possibili implementazioni di alcuni dei requisiti.

Nello specifico si è prima prima parlato dell'incontro avvenuto con il prof. Cardin in data 19/12/2024, e in seguito discusso dell'interfaccia grafica lato amministratore e di alcuni possibili casi d'uso, principalmente riguardanti l'attore amministratore.

= Risposte alle domande
Durante l'incontro sono stati chiariti alcuni dubbi e sono stati dati alcuni spunti per proseguire nel lavoro.

== Interfaccia grafica amministratore
La proposta presentata di creare un'interfaccia suddivisa in due schermate principali è stata accettata. La prima schermata conterrà la mappa geografica con al suo interno punti evidenziati che rappresentano gli utenti e i punti di interesse, la seconda conterrà invece lo storico di tutti gli annunci generati.

== Notifica delle pubblicità
La nostra proposta per la realizzazione del sistema di notifica degli annunci generati è stata approvata.
Nello specifico, appariranno dei _popup_ a lato dello schermo ogni qualvolta verrà generata una pubblicità; inoltre, sarà possibile visualizzare le pubblicità generate per un determinato utente effettuando un "_hoover_" con il puntatore del _mouse_ sul rispettivo punto evidenziato all'interno della mappa geografica di #rifGlossario("Grafana").

== Filtri per lo storico annunci
Per il momento,è stato confermato che lo storico annunci deve essere filtrabile per utente e per punto di interesse, ma è possibile implementarne degli altri se ritenuti utili in corso di sviluppo. Inoltre, una possibile implementazione dello storico annunci, oltre alla schermata dedicata, potrebbe essere poter visualizzarlo effettuando un "_click_" con il _mouse_ su un punto di interesse all'interno della mappa geografica di Grafana. 

== Connessione di Grafana al database
Si è discusso di se e come implementare nei casi d'uso i controlli e gli errori di Grafana nella connessione con il _#rifGlossario("database")_.
In definitiva, andranno inseriti controlli ed errori nei casi d'uso, ma non è necessario che ne implementiamo di nostri in quanto Grafana gestisce autonomamente tutti gli aspetti della connessione al _database_

= Obiettivi per il prossimo SAL
Alla fine della riunione, ci siamo prefissati, assieme ai proponenti, di riuscire a mandare le richieste di annunci personalizzati al #rifGlossario("LLM") entro il termine del prossimo _sprint_.

= Conclusioni
In questo incontro si sono chiariti alcuni dubbi e fornite importanti indicazioni per il prossimo _sprint_.
Il prossimo incontro con l'azienda sarà il mercoledì 8 gennaio e come obiettivo ci siamo posti di riuscire a mandare le richieste di annunci personalizzati al LLM. 

= Tabella delle decisioni
#backlog(
  content: (
    "ORG", "Gruppo", "SAL fissato per mercoledì 08/01/2025"
  )
)