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
Il gruppo ha presentato quanto svolto nel #rifGlossario("SAL") precedente in merito alla redazione dei _test_ di accettazione e alla progettazione dell'architettura logica del prodotto. In particolare è stato chiarito quanto concluso a seguito dell'incontro con il prof. Cardin, svoltosi mercoledì 5 marzo 2025, sulle tecnologie adottate dal gruppo.

== Test di accettazione
Il gruppo ha presentato all'azienda proponente i _test_ di accettazione redatti in questo _#rifGlossario("sprint")_, presentando quanto rilevato e ponendo domande per chiarire gli eventuali dubbi presentati dai membri del gruppo. L'azienda proponente ha fornito tutti i chiarimenti necessari e le indicazioni per modificare e/o aggiungere _test_ di accettazione. L'azienda ha comunque espresso la sua approvazione per quanto svolto dal gruppo e si attendono le modifiche proposte per il prossimo SAL.

== Stream processor
Come citato in precedenza, nella settimana precedente si è svolto l'incontro per discutere con il prof. Cardin per quanto riguarda le scelte delle tecnologie avvenuta nella _Technology Baseline_ (TB) ed eventuali consigli sull'architettura logica. Il prof. Cardin ha espresso un parere negativo per quanto riguarda la parte di gestione dello _stream_ che, al momento della riunione, era realizzata in Java con il _framework_ #rifGlossario("Spring"), ritenendo la scelta non adeguata per l'elevato flusso di dati che il prodotto dovrà gestire e per la tecnologia che è scelta scelta per la gestione dei messaggi, ovvero #rifGlossario("Apache Kafka"). Inoltre, è stata valutata negativamente la scelta di utilizzare il _#rifGlossario("micro batching")_ per la gestione dello _stream_, ritenendo l'approccio "non reattivo" in quanto il sistema attende un certo periodo e un certo numero di messaggi invece di reagire ai messaggi. La scelta finale, nonostante la scadenza sempre più vicina, presa alla fine della discussione è stata quella di adottare #rifGlossario("Apache Flink") per lo _#rifGlossario("stream processing")_.

Durante la riunione con la proponente si è discusso quindi quanto svolto nei giorni successivi al colloquio per rimediare al problema. In particolare si è discusso dei vari dubbi che i membri del gruppo hanno riscontrato durante la fase di sviluppo del _job_ di Apache Flink, trovando comunque una soluzione a tutti i problemi riscontrati e approvazione da parte della proponente.

== Conclusioni
Il gruppo ha concordato la logistica delle ultime due riunioni prima della consegna finale del prodotto, in corrispondenza del termine della _Product Baseline_ (PB), prevista per il 21/03/2025.

Si è deciso inoltre di svolgere un incontro con il prof. Cardin per discutere le scelte definitive in merito all'architettura del prodotto e per chiarire eventuali dubbi prima della consegna finale.
