#import "/templates/template.typ": *

#show: content => verbale(
  data: "10 Marzo 2025",
  responsabile: "Davide Martinelli",
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l.",
  ),
  uso: "Esterno",
  redattori: ("Klaudio Merja",),
  titolo: "SAL fine settimo sprint",
  verificatori: (
    "Andrea Precoma",
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(
  luogo: "Google Meet",
  data: "10/03/2025",
  ora: "11:30",
  durata: "mezz'ora",
  partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo"),
  partecipanti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
  ),
)

= Sintesi dell'incontro
Il gruppo, in questa riunione di fine _sprint_, ha presentato quanto svolto nel SAL precedente in merito alla redazione dei _test_ di accettazione e alla progettazione dell'architettura logica del prodotto, in particolare chiarendo quanto concluso a seguito dell'incontro con il prof. Cardin, svoltosi mercoledì 5 marzo 2025, sulle tecnologie adottate dal gruppo.

== Test di accettazione
Il gruppo ha presentato all'azienda proponente i test di accettazione redatti in questo _sprint_, presentando quanto rilevato e ponendo domande per chiarire gli eventuali dubbi presentati dai membri del gruppo. L'azienda proponente, in merito, ha fornito tutti i chiarimenti necessari e le indicazioni per modificare e/o aggiungere _test_ di accettazione. Nonostante ciò, l'azienda ha espresso la sua approvazione per quanto svolto dal gruppo e si attendono le modifiche proposte per il prossimo SAL.

== Stream processor
Come annunciato in precedenza, nella settimana precedente si è svolto l'incontro per discutere con il prof. Cardin per quanto riguarda le scelte delle tecnologie avvenuta nella _Technology Baseline_ (PB) ed eventuali consigli sull'architettura logica. Il prof. Cardin ha espresso un parere negativo per quanto riguarda la parte di gestione dello _stream_ che, al momento della riunione, era realizzata in Java con il _framework_ Spring, ritenendo la scelta non adeguata per l'elevato flusso di dati che il prodotto dovrà gestire e per la tecnologia che è scelta scelta per la gestione dei messaggi, ovvero Apache Kafka. Inoltre, è stata valutata negativamente la scelta di utilizzare il _micro batching_ per la gestione dello _stream_, ritenendo l'approccio "non reattivo" in quanto il sistema attende un certo periodo e un certo numero di messaggi invece di reagire ai messaggi. La scelta finale, nonostante la scadenza sempre più vicina, presa alla fine della discussione è stata quella di adottare Apache Flink come _stream processor_.

Durante la riunione con la proponente si è discusso quindi quanto svolto in quella settimana per rimediare al problema. In particolare si è discusso dei vari dubbi che i membri del gruppo hanno riscontrato durante la fase di sviluppo del _job_ di Apache Flink, trovando comunque una soluzione a tutti i problemi riscontrati e approvazione da parte della proponente.

== Conclusioni
Il gruppo ha concordato la logistica delle ultime due riunioni prima della consegna finale del prodotto, meglio denominata _Product Baseline_ (PB), prevista per il 21/03/2025.

Si è deciso inoltre di svolgere un incontro con il prof. Cardin per discutere le scelte definitive in merito all'architettura del prodotto e per chiarire eventuali dubbi prima della consegna finale.
