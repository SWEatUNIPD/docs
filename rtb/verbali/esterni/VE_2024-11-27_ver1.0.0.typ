#import "/templates/template.typ": *

#show: content=>verbale(
  data: "27 novembre 2024", 
  responsabile: "Andrea Precoma", 
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l."
  ),
  uso: "Esterno",
  redattori: ("Davide Picello",), 
  titolo: "SAL fine primo sprint", 
  verificatori: (
    "Riccardo Milan",
  ),
  riassunto: [Incontro di fine _sprint_ dove sono stati chiariti molti dubbi, e fissati alcuni obiettivi per lo _sprint_ a venire.],
  versioni: (
    "1.0.0", 
    [4/12/2024], 
    "Davide Picello", 
    "Riccardo Milan",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(luogo: "Google Meet", data: "27/11/2024", ora: "16:10", durata: "30 minuti", partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"))

= Sintesi dell'incontro 
L'incontro si è svolto tra la conclusione del primo _#rifGlossario("sprint")_ e l'inizio del secondo, ed è stato di carattere prevalentemente discorsivo. Durante il _meeting_ si è discusso principalmente dei vari punti:

- È stata aggiornata l'azienda sui progressi compiuti nello _sprint_ precedente, che ha avuto come focus la redazione della documentazione.
- Sono stati definiti congiuntamente gli obiettivi per il prossimo periodo.

Andrea Precoma aveva pronta una prima bozza del simulatore dati. L'azienda, tuttavia, ha preferito rimandare al prossimo incontro, consigliando di implementare una tecnica di "containerizzazione" con #rifGlossario("Docker"). Questo principalmente per permetterci di iniziare a sperimentare con questa tecnologia, nuova a molti membri del gruppo, ma anche per facilitare la collaborazione sul codice.

Successivamente l'azienda ha risposto alle domande del gruppo.


= Risposte alle domande  
Durante la stesura del documento Analisi dei Requisiti, sono sorti vari dubbi a cui il gruppo non era sicuro di saper dare una risposta corretta. Sono riportati, in dettaglio, qui di seguito.
== Sensori come attori
Il gruppo non comprendeva se i sensori dovessero essere interpretati come attori.

Il partecipante esterno di Sync Lab, Andrea Dorigo, ha chiarito che, poiché il prodotto comprende esclusivamente il _software_, i sensori devono essere considerati attori esterni. Se il prodotto avesse incluso sia il sensore che il _software_ integrato, la situazione sarebbe stata diversa, ma non è questo il caso.

== Registrazione utenti
Un altro dubbio sorto durante l'Analisi dei Requisiti era: è necessario creare una logica di _login_ per gli utenti e per l'amministratore ?

Dialogando insieme abbiamo capito che:
- Non è necessario prevedere un sistema di _login_ per gli utenti, dato che il prodotto attuale prevede esclusivamente l'accesso alla _dashboard_ da parte dell'amministratore.

- Per l'amministratore, l'autenticazione sarà opzionale e supportata tramite #rifGlossario("Grafana"), che integra già un sistema di autenticazione.


Ci è stato quindi riconfermato che il focus del prodotto sarà sull'utilizzo lato amministratore, e non lato utente, di cui ci interesseranno solamente i dati personali e di spostamento.

== Nifi
Sono stati richiesti, da parte del gruppo, alcuni consigli riguardo ad #rifGlossario("Apache Nifi"), in quanto nessun membro del gruppo ne è particolarmente esperto.

L'azienda si è dimostrata ancora una volta molto disponibile, condividendo subito del materiale _web_ e proponendo di fissare una sessione di _#rifGlossario("deep dive")_ a riguardo, più avanti.

Il materiale fornito è il seguente:
- #formatLink(label:"Video YouTube: Apache NiFi Anti-Patterns, Part 1", url:"https://www.youtube.com/watch?v=RjWstt7nRVY&list=PLu5bSZv1aox0fbEZ4uGIY4cMiZzBMkmY0&ab_channel=NiFiNotes")
- #formatLink(label:"Repository Github NiFi LangChain Processors", url:"https://github.com/lifan0127/nifi-langchain")

= Conclusioni  
L'incontro è stato utile: confrontarsi sui vari dubbi permette sempre di comprendere al meglio la direzione ottimale per il progetto.

Al prossimo incontro, previsto per mercoledì 4 dicembre, sarà presentata la prima versione del simulatore dati.


= Tabella delle decisioni
#backlog(
  content: (
    "ORG", "Gruppo", "SAL fissato per mercoledì 4/12",
    "ORG",
    "Andrea Precoma, \nRiccardo Milan",
    "Prima bozza del simulatore con Docker",
  )
)