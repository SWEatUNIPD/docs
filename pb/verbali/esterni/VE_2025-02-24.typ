#import "/templates/template.typ": *

#show: content => verbale(
  data: "24 Febbraio 2025",
  responsabile: "Riccardo Milan",
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l.",
  ),
  uso: "Esterno",
  redattori: ("Andrea Perozzo",),
  titolo: "SAL fine sesto sprint",
  verificatori: (
    "Davide Marin",
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(
  luogo: "Google Meet",
  data: "24/02/2025",
  ora: "11:30",
  durata: "mezz'ora",
  partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"),
  partecipanti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Klaudio Merja",
  ),
)

= Sintesi dell'incontro
L'incontro ha avuto lo scopo di discutere l'approccio adottato per la classificazione degli utenti in base alla loro permanenza in un'area ristretta, l'integrazione di algoritmi per il calcolo della permanenza e l'architettura da adottare per il sistema.

= Risposte alle domande

== Classificazione degli utenti tramite permanenza
Si è discusso della possibilità di identificare un utente come 'attivo' in un'area se si ferma per un periodo superiore a una determinata soglia di tempo. È stato suggerito di utilizzare algoritmi già esistenti per calcolare la permanenza basata sulle coordinate #rifGlossario("GPS").
Aggiungere un indicatore quando il soggetto si trova in prossimità di un _POI_ per un tempo prolungato consente di classificare automaticamente l'ingresso in un'attività.

== Generazione e gestione dei percorsi
Si è proposto di garantire che il sistema consenta la rilevazione della permanenza più lunga in alcuni punti rispetto ad altri. Inoltre, è stato suggerito di valutare soluzioni alternative per rendere il processo più efficiente e semplice da implementare.

== Scelta dell'architettura
Si è discusso sulla scelta tra un'architettura #rifGlossario("event-driven") e #rifGlossario("message-driven"), con particolare attenzione alla modalità sincrona o _real-time_ dei messaggi.

Riguardo alla logica di _deployment_, il gruppo ha esaminato le differenze tra microservizi e monolite. L'azienda ha suggerito che, sebbene l'architettura a microservizi sia spesso raccomandata, per un progetto di dimensioni ridotte potrebbe essere più conveniente adottare un'architettura modulare basata su #rifGlossario("Docker").

L'idea di un'architettura "intermedia" tra monolitica e microservizi è stata accolta positivamente, con il suggerimento di discutere la nomenclatura e validità con il Prof. Cardin.


= Conclusioni
L'incontro ha fornito una chiara direzione per il proseguimento del progetto, con un _focus_ specifico sulla classificazione degli utenti e la scelta dell'architettura. Sono stati individuati passi concreti per affrontare le questioni emerse, e le tempistiche per la presentazione finale sono state confermate. L'azienda ha espresso un parere positivo sullo stato di avanzamento, e il team ha ottenuto indicazioni utili per ottimizzare le soluzioni implementative. Si procederà con le azioni concordate e il confronto con il Prof. Cardin per affinare ulteriormente l'approccio architetturale.
