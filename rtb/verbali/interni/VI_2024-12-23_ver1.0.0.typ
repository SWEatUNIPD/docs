#import "/templates/template.typ": *

#show: content => verbale(
  data: "23 dicembre 2024",
  responsabile: "Davide Picello",
  redattori: ("Riccardo Milan",),
  titolo: "Ottava riunione",
  verificatori: ("Davide Martinelli",),
  riassunto: [Riunione interna di fine terzo _sprint_, in cui si è discusso del lavoro svolto e delle attività da svolgere nel quarto _sprint_.],
  versioni: (
    "1.0.0",
    [24/12/2024],
    "Riccardo Milan",
    "Davide Martinelli",
    [- Stesura del verbale],
  ),
  content: content,
)

#infoRiunione(
  data: "23/12/2024",
  durata: "2 ore",
  luogo: "Chiamata Discord",
  ora: "13:30",
  partecipantiEsterni: (),
)

= Sintesi
Dopo il #rifGlossario("SAL") di fine terzo _#rifGlossario("sprint")_ il gruppo si è riunito per fare il punto della situazione e pianificare il lavoro da svolgere nel quarto _sprint_.

= Ordine del giorno
All'ordine del giorno i punti fondamentali da svolgere sono relativi sia alla documentazione, ovvero rifinire i casi d'uso e i requisiti e ricercare le metriche di qualità, sia alla realizzazione concreta di un prodotto da presentare come _#rifGlossario("PoC")_.

== Casi d'uso e Requisiti
Dopo il proficuo incontro svoltosi la settimana precedente con il professor Cardin, in questo _sprint_ si prevede di sistemare tutti i casi d'uso nel documento di Analisi dei Requisiti e, parallelamente, definire nello stesso documento i requisiti del progetto.

== Metriche
Continuando il lavoro iniziato nello scorso _sprint_, il gruppo vuole focalizzarsi sulle metriche con cui misurare i progressi del progetto. Per questo sarà importante studiare le metriche con cui misurare e monitorare la qualità dei processi e i prodotti coinvolti nella realizzazione del progetto. In seguito a un primo studio delle metriche svolto nel precedente _sprint_, si è reso necessario codificare uno _script_ che calcoli l'#rifGlossario("indice Gulpease").

== PoC
Lato pratico il punto della situazione è che bisogna ultimare la transizione da #rifGlossario("Apache Nifi") a un servizio _custom_ di _data #rifGlossario("stream processing")_ costruito utilzzando il _framework_ #rifGlossario("Spring"), popolare il #rifGlossario("database") con dei dati di _test_ e aggiornare l'interfaccia _#rifGlossario("Grafana")_ per ricevere correttamente i dati dal nuovo _stream processor_.

== Strumenti per il diagramma di Gantt
Dopo numerose ricerche nessuno strumento si è rivelato essere meglio di #rifGlossario("GitHub") per costruire il #rifGlossario("diagramma di Gantt") in termini di costo-beneficio. Il gruppo perciò ha deciso di continuare a organizzare i diagrammi come fatto fino ad ora.

= Conclusioni
Il gruppo si è diviso le attività da svolgere nel prossimo _sprint_ e si è accordato su come procedere.

Il progresso nella documentazione si concentra soprattutto nell'individuazione delle metriche, dei casi d'uso e dei requisiti.

Dal punto di vista pratico invece ci si concentrerà sull'implementazione di Spring, il popolamento del _database_ e l'aggiornamento dell'interfaccia.

= Tabella delle decisioni
#backlog(content: (
  link("https://github.com/SWEatUNIPD/NearYou/issues/2")[#text(underline("N0002"))],
  [Klaudio Merja],
  [Creazione del servizio _custom_ di _data processing_ con Spring],

  link("https://github.com/SWEatUNIPD/NearYou/issues/3")[#text(underline("N0003"))],
  [Riccardo Milan],
  [Aggiornamento della _dashboard_ in Grafana],

  link("https://github.com/SWEatUNIPD/docs/issues/84")[#text(underline("D0084"))],
  [Davide Marin],
  [Stesura del verbale esterno del 23/12/2024],

  link("https://github.com/SWEatUNIPD/docs/issues/85")[#text(underline("D0085"))],
  [Riccardo Milan],
  [Stesura del verbale interno del 23/12/2024],

  link("https://github.com/SWEatUNIPD/docs/issues/92")[#text(underline("D0092"))],
  [Davide Picello],
  [Avanzamento Piano di Qualifica],

  link("https://github.com/SWEatUNIPD/docs/issues/87")[#text(underline("D0087"))],
  [Andrea Precoma,\ Andrea Perozzo],
  [Rifinitura casi d'uso],

  link("https://github.com/SWEatUNIPD/docs/issues/86")[#text(underline("D0086"))],
  [Klaudio Merja],
  [Script per calcolo automatico indice Gulpease],

  link("https://github.com/SWEatUNIPD/docs/issues/88")[#text(underline("D0088"))],
  [Klaudio Merja,\ Riccardo Milan],
  [Studio e redazione dei Requisiti nella Analisi dei Requisiti],

  link("https://github.com/SWEatUNIPD/docs/issues/91")[#text(underline("D0091"))],
  [Davide Marin],
  [Metriche di qualità del prodotto],

  link("https://github.com/SWEatUNIPD/docs/issues/71")[#text(underline("D0071"))],
  [Davide Martinelli],
  [Metriche di qualità del processo],

  link("https://github.com/SWEatUNIPD/docs/issues/89")[#text(underline("D0089"))],
  [Riccardo Milan],
  [Stesura della pianificazione del quarto _sprint_],

  link("https://github.com/SWEatUNIPD/docs/issues/90")[#text(underline("D0090"))],
  [Riccardo Milan],
  [Stesura retrospettiva del quarto _sprint_],

))
