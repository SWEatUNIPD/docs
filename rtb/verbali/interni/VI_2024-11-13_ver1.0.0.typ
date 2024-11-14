#import "/templates/template.typ": *

#show: content=>verbale(
  data: "13 novembre 2024", 
  responsabile: "Andrea Perozzo", 
  redattori: ("Andrea Perozzo",), 
  titolo: "Quarta riunione", 
  verificatori: (
    "Davide Marin",
  ),
  riassunto: "Riunione interna per definire compiti, organizzazione delle call, tracciabilità delle decisioni e preparazione alla prossima call con Sync Lab.",
  versioni: (
    "1.0.0", 
    [10/11/2024], 
    "Andrea Perozzo", 
    "Davide Marin",
    [- Stesura del verbale],
  ),
  content: content
)

#infoRiunione(
  data: "13/11/2024", durata: "1 ora e 30 minuti", luogo: "Chiamata Discord", ora: "16:30", partecipantiEsterni: (),
)

= Sintesi
Riunione interna per organizzare i compiti, stabilire le note operative e pianificare il percorso per l'analisi e implementazione del progetto. Discussione sull'approccio alle tecnologie e modalità di confronto con i referenti aziendali.
= Obiettivi della riunione
La riunione interna aveva l'obiettivo di:

- Definire le note operative per una gestione organizzata delle call e delle decisioni.
- Assegnare compiti di documentazione e studio per approfondire le tecnologie e i concetti chiave.
- Stabilire azioni specifiche di redazione e verifica per la documentazione iniziale del progetto.
- Chiarire i dubbi e organizzare la collaborazione con i referenti aziendali, considerando la complessità dei requisiti e delle tecnologie suggerite.
= Ordine del giorno
== Discussione dei Suggerimenti Tecnici e di Project Management
Abbiamo analizzato i suggerimenti forniti dall'azienda sui concetti di data streaming, data processing, e event-driven architecture. Visti i numerosi strumenti consigliati (Kafka Streams, Nifi, Flink, Spring), abbiamo concordato di dedicare il tempo iniziale a documentarci per poi selezionare le tecnologie che meglio si integrano con il nostro obiettivo, soprattutto considerando la possibile integrazione con LangChain.
== Richiesta di Supporto e Confronto per l'Analisi dei Requisiti
Abbiamo discusso l'importanza dell'analisi dei requisiti, specialmente per chi era meno esperto. Poiché l'analisi dei requisiti è una fase fondamentale ma nuova per alcuni, abbiamo concordato di chiedere un confronto con i referenti, per chiarire meglio il nostro approccio e definire le esigenze principali. Inoltre, abbiamo deciso di organizzare incontri ricorrenti con i referenti per verificare i requisiti, con il primo meeting fissato per la settimana successiva.
== Organizzazione degli Incontri di Aggiornamento e Tracciabilità delle Decisioni
Per mantenere coerenza e tracciabilità, abbiamo stabilito di fissare una call di aggiornamento ogni mercoledì. Durante queste call, saranno discusse le questioni aperte e si annoteranno le decisioni prese, che verranno riportate all'interno delle descrizioni delle relative issue su GitHub, con riferimento alla data della riunione per rintracciare i verbali e documentare l'avanzamento.
= Decisioni operative
== Note operative
- Frequenza delle Call: Ogni mercoledì, con eventuali aggiustamenti settimanali.
- Tracciabilità delle Decisioni: In ogni issue su GitHub, nella descrizione sarà indicata la decisione presa con riferimento al verbale del giorno di discussione, facilitando la ricerca delle decisioni passate.
== Compiti di documentazione e studio
=== Klaudio Merja, Andrea Precoma e Davide Marin:
- Studio su data visualization.
- Studio su stream processing.
- Analisi sull'utilizzo di un broker per disaccoppiare lo stream di informazioni provenienti dai simulatori.
=== Riccardo Milan, Davide Picello, Davide Martinelli e Andrea Perozzo:
- Ricerca su framework per la simulazione dei dati.
- Approfondimento sull'utilizzo di database o storage adatti per i dati del progetto.
- Studio delle modalità di processamento dei messaggi in input e formulazione di risposte tramite LLM.
*Obiettivo di completamento per tutti i compiti di studio e documentazione:* martedì, giorno precedente alla prossima call di aggiornamento con Sync Lab.
== Azioni specifiche di redazione e verifica
Redazione della prima versione del documento “Norme di Progetto", questa attività verrà registrata in una tabella dedicata e collegata alla relativa issue per tracciabilità, e sarà completata per il prossimo incontro.
= Conclusioni
Abbiamo definito le linee operative e i compiti di ricerca per comprendere meglio le tecnologie e i framework suggeriti. L'approccio scelto include uno studio iniziale dettagliato, seguito da un confronto diretto con i referenti per l'analisi dei requisiti, per procedere con sicurezza. Tutto questo per assicurare chiarezza operativa e facilitare l'allineamento nelle fasi successive del progetto.

= Tabella delle decisioni
#backlog(
  content: (
    "ORG", "Andrea Precoma", "Aggiungere una descrizione delle issue, includendo i verbali in cui sono state sollevate e i ruoli coinvolti",

    "ORG", "Gruppo", "Riunione con Sync Lab S.r.L. fissata per Mercoledì 20/11",

    link("https://github.com/SWEatUNIPD/docs/issues/24")[#text(underline("D0017"))],
    "Andrea Perozzo", "Verbale Esterno del 2024-11-13",

    link("https://github.com/SWEatUNIPD/docs/issues/26")[#text(underline("D0018"))],
    "Andrea Perozzo", "Verbale Interno del 2024-11-13",

    link("https://github.com/SWEatUNIPD/docs/issues/25")[#text(underline("D0019"))],
    "Klaudio Merja", "Struttura Norme di Progetto",
  )
)