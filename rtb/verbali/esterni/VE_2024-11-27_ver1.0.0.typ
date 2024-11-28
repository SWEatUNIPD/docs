#import "/templates/template.typ": *

#show: content=>verbale(
  data: "27 novembre 2024", 
  responsabile: "Davide Picello", 
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l."
  ),
  uso: "Esterno",
  redattori: ("Davide Picello",), 
  titolo: "SAL fine primo sprint", 
  verificatori: (
    "Davide Picello",
  ),
  riassunto: "Incontro di fine sprint dove sono stati chiariti molti dubbi, e fissati alcuni obiettivi per lo spint a venire",
  versioni: (
    "1.0.0", 
    [28/11/2024], 
    "Davide Picello", 
    "Riccardo Milano",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(luogo: "Google Meet", data: "27/11/2024", ora: "16:10", durata: "40 minuti", partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"))

= Sintesi dell'incontro 
L'incontro ha avuto luogo in corrispondenza tra la fine del primo #rifGlossario("sprint"), e l'inizio del secondo ed ha avuto carattere prettamente discorsivo. L'obbiettivo di questo incontro, infatti, è stato quello di aggiornare l'azienda sui progressi conseguiti durante lo sprint precedente, dove principalmente è stata redatta documentazione, e decidere cosa fare in quello seguente.

Nonostante il componente Andrea Precoma avesse preparato una prima bozza funzionante per il simulatore dati, questo non è stato mostrato, ma ne è solo stato discusso a voce fissando, per il prossimo incontro, la presentazione di una proposta del simulatore migliorata, implementando una tecnica di "containerizzazzione" con #rifGlossario("Docker").

Successivamente l'azienda ha risposto alle domande del gruppo.


= Risposte alle domande  
Durante la stesura del documento Analisi dei requisiti, sono sorti vari dubbi a cui il gruppo non era sicuro di saper dare una risposta corretta. Vediamoli, in dettaglio, qui di seguito.
== Sensori come attori
Il gruppo non comprendeva se i sensori dovessero essere interpretati come attori.

Il partecipante esterno di Sync Lab, Andrea Dorigo, ci ha allora spiegato che, in quanto il nostro prodotto comprende esclusivamente il software, il sensore ne risulta esterno, e quindi un attore a tutti gli effetti. 

Diverso se il prodotto avesse compreso sensore e software integrato, ma non è questo il caso.

== Registrazione utenti
Un altro dubbio sorto durante l'Analisi dei requisiti era il seguente: è necessario creare una logica di login per gli utenti e l'amministratore ?

Dialogando insieme abbiamo capito che per gli utenti non è necessario, in quanto, al momento, il prodotto prevede solo la vista della dashboard da parte dell'_admin_, per cui invece l'autenticazione sarà richiesta come opzionale, tramite #rifGlossario("Grafana"), la quale prevede già un metodo di autenticazione.

Ci è stato quindi riconfermato che il focus del prodotto sarà sull'utilizzo lato amministratore, e non lato utente, infatti degli utenti ci interesseranno solamente i dati personali e di spostamento.

== Nifi
È stata richiesta, da parte del gruppo, dell'assistenza riguardo a #rifGlossario("Apache Nifi") in quanto nessun membro del gruppo ne è particolarmente esperto.

L'azienda si è dimostrata, ancora una volta, molto disponibile, condividendo subito del materiale web, e proponendo di fissare una sessione di #rifGlossario("Deep Dive") a riguardo.

= Conclusioni  
L'incontro è stato importante perchè, confrontarsi sui vari dubbi permette sempre di comprendere al meglio la direzione ottimale per il progetto.

Al prossimo incontro sarà presentata la prima versione del simulatore dati.


= Tabella delle decisioni
#backlog(
  content: (
    "ORG", "Gruppo", "SAL fissato per mercoledì 4/12",
  )
)