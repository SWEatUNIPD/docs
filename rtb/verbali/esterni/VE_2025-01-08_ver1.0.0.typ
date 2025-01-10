#import "/templates/template.typ": *

#show: content=>verbale(
  data: "08 gennaio 2025", 
  responsabile: "Davide Marin", 
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l."
  ),
  uso: "Esterno",
  redattori: ("Andrea Precoma",), 
  titolo: "SAL fine quarto sprint", 
  verificatori: (
    "Davide Martinelli",
  ),
  riassunto: [Sono stati esposti i lavori svolti riguardanti il PoC e l'analisi dei requisiti ai quali la proponente ha chiarito alcune questioni.],
  versioni: (
    "1.0.0", 
    [10/01/2025], 
    "Andrea Precoma", "Davide Martinelli",
    [- Stesura del verbale],
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(luogo: "Google Meet", data: "08/01/2025", ora: "16:00", durata: "40 minuti", partecipantiEsterni: ("Andrea Dorigo","Fabio Pallaro"), 
partecipanti: (
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Klaudio Merja",
    "Riccardo Milan"
  ),
)

= Sintesi dell'incontro
La proponente si è mostrata soddisfatta del lavoro fatto nel #rifGlossario("PoC") facendo comunque notare piccole mancanze che tuttavia riguardano più il #rifGlossario("MVP"). Ci è stato confermato inoltre l'approccio adottato nella ricerca dei casi d'suo.

= Risposte alle domande

== PoC
È stato esposta la parte di _back-end_ del PoC. Abbiamo ricevuto un riscontro positivo specie per quanto riguarda l'utilizzo di #rifGlossario("Spring"), con alcuni accorgimenti da apportare in futuro nel MVP ma che per la consegna RTB sono tollerabili: arricchire i dati di profilazione e renderli più specifici utilizzando delle categorie, e controllare di non mandare due volte l'anuncio allo stesso utente se rimane nella zona di un punto di interesse.

È stato chiarito un dubbio riguardante le notifiche #rifGlossario("Grafana"). Ragionando su un campione di utenti limitato avevamo pensato di notificare l'amministratore ogni volta che un annuncio viene generato. La proponente ci ha fatto notare che in uno scenario reale l'amministratore sarebbe innondato di notifiche. Abbiamo quindi provveduto a mantenere la funzionalità di notifica solo per messaggi importanti.

== Analisi dei requisiti
Abbiamo ricevuto un riscontro positivo anche per quanto riguarda l'approccio adottato per la ricerca dei casi d'suo, ovvero concentrarci sul _fron-end_ poiché è la parte con la quale l'amministratore interagisce. È stata confermata anche la scelta di trattare il sensore come attore esterno al sistema.

= Conclusioni
Sono stati apprezzati i lavori svolti sia per la parte produttiva del PoC sia per la parte di analisi. Sono stati indicati degli accorgimenti da applicare per portare a termine la consegna del RTB e per lo svolgimento più avanti del MVP. Abbiamo quindi in programma di ultimare i prodotti _software_ e di documentazione nel prossimo _#rifGlossario("sprint")_ in modo da consegnare il PoC entro fine gennaio.

= Tabella delle decisioni
#backlog(
  content: (
    "ORG", "Gruppo", "SAL intermedio fissato per mercoledì 15/01/2025"
  )
)