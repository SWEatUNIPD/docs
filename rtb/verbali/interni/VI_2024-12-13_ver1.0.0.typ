#import "/templates/template.typ": *

#show: content => verbale(
  data: "13 dicembre 2024",
  responsabile: "Davide Martinelli",
  redattori: ("Davide Martinelli",),
  titolo: "Settima riunione",
  verificatori: ("Davide Marin",),
  riassunto: [Riunione interna di fine secondo _sprint_, in cui si è discusso del lavoro svolto e delle attività da svolgere nel prossimo _sprint_.],
  versioni: (
    "1.0.0",
    [15/12/2024],
    "Davide Martinelli",
    "Davide Marin",
    [- Stesura del verbale],
  ),
  content: content,
)

#infoRiunione(
  data: "13/12/2024",
  durata: "2 ore",
  luogo: "Chiamata Discord",
  ora: "11:00",
  partecipantiEsterni: (),
)

= Sintesi
Dopo il #rifGlossario("SAL") di fine secondo _#rifGlossario("sprint")_ il gruppo si è riunito per fare il punto della situazione e pianificare il lavoro da svolgere nel prossimo _sprint_.

= Ordine del giorno
Durante la discussione interna sono emerse varie attività da completare nel prossimo _sprint_, principalmente legate alla documentazione.

== Strumenti per il diagramma di Gantt
Sono state riscontrate delle difficoltà nel trovare uno strumento per il #rifGlossario("diagramma di Gantt") che sia adatto alle nostre esigenze. Per questo motivo è stato deciso di proseguire la ricerca continuando nel frattempo ad utilizzare lo strumento fornito da #rifGlossario("GitHub").

== Possibile sostituzione di Apache Nifi
Durante il colloquio di SAL con l'azienda si è aperta la possibilità di sostituire #rifGlossario("Apache Nifi") con delle alternative, per sopperire ai suoi limiti riguardo l'interazione con i #rifGlossario("LLM"). Per questo _sprint_ si è deciso di studiare la fattibilità di costruire un servizio _custom_ di _data #rifGlossario("stream processing")_ utilzzando il _framework_ #rifGlossario("Spring").

== Ampliamento delle Norme di Progetto
Completata la prima stesura del Piano di Qualifica nell'ultimo _sprint_, ora si è reso necessario ampliare le Norme di Progetto compilando le sezioni relative alle procedure di verifica e validazione che verranno implementate nel progetto.

== Aggiornamenti alle Norme di Progetto
In aggiunta all'attività di ampliamento il gruppo ha fatto emergere la necessità di apportare alcune modifiche a delle sezioni già scritte, ovvero:
- Aggiornare la sezione riguardante i processi organizzativi.
- Aggiungere, nella sezione Processi Primari, le norme su come descrivere i casi d'uso.

== Colloquio con il prof. Cardin
Il gruppo ha deciso di organizzare un incontro con il prof. Cardin per discutere dei dubbi emersi durante la stesura dei casi d'uso. L'incontro è previsto per il 19 dicembre 2024.

== Stesura di nuovi casi d'uso
Continua la necessità di procedere con l'analisi dei requisiti. Nel prossimo _sprint_, in particolare, si prevede di soffermarsi principalmente sui casi d'uso aventi come attore principale l'amministratore del servizio di noleggio. Questa attività avrà una priorità più alta in termini di tempistiche, con l'obiettivo di arrivare al colloquio con il prof. Cardin sopracitato collezionando più dubbi possibili.

== Affinamento dashboard di Grafana
Per la fine del prossimo _sprint_ si prevede di avere una versione più affinata della dashboard, frutto anche di uno studio più approfondito di #rifGlossario("Grafana").

= Conclusioni
Il gruppo si è diviso le attività da svolgere nel prossimo _sprint_ e si è accordato su come procedere. In particolare, si è deciso di dare priorità alla stesura dei casi d'uso e di organizzare un incontro con il prof. Cardin per chiarire i dubbi emersi durante la loro stesura.

Lo studio delle tecnologie invece prosegue con l'analisi di una possibile soluzione _custom_ per il _data stream processing_ che sfrutti Spring, nell'ottica di valutare possibili alternative ad Apache Nifi.

La ricerca di uno strumento per il diagramma di Gantt è lasciata in sospeso, mentre lo sviluppo della dashboard in Grafana proseguirà incrementalmente in vista del #rifGlossario("PoC").

= Tabella delle decisioni
#backlog(content: (
  [ORG],
  [Klaudio Merja],
  [Testare la fattibilità di costruire un servizio _custom_ di _data stream processing_ utilizzando Spring],

  [ORG],
  [Riccardo Milan],
  [Affinamento della dashboard in Grafana],

  link("https://github.com/SWEatUNIPD/docs/issues/68")[#text(underline("D0068"))],
  [Davide Picello],
  [Stesura del verbale esterno del 13/12/2024],

  link("https://github.com/SWEatUNIPD/docs/issues/69")[#text(underline("D0069"))],
  [Davide Martinelli],
  [Stesura del verbale interno del 13/12/2024],

  link("https://github.com/SWEatUNIPD/docs/issues/70")[#text(underline("D0070"))],
  [Andrea Perozzo,\ Andrea Precoma],
  [Stesura nuovi casi d'uso],

  link("https://github.com/SWEatUNIPD/docs/issues/71")[#text(underline("D0071"))],
  [Davide Martinelli],
  [Stesura sezioni Piano di Qualifica, Verifica e Validazione nel documento Norme di Progetto],

  link("https://github.com/SWEatUNIPD/docs/issues/72")[#text(underline("D0072"))],
  [Riccardo Milan],
  [Aggiornamento sezione Processi Organizzativi nel documento Norme di Progetto],

  link("https://github.com/SWEatUNIPD/docs/issues/73")[#text(underline("D0073"))],
  [Davide Picello],
  [Aggiungere dettagli su come descrivere i casi d'uso nel documento Norme di Progetto, sezione Processi Primari],

  link("https://github.com/SWEatUNIPD/docs/issues/74")[#text(underline("D0074"))],
  [Davide Martinelli],
  [Stesura della pianificazione del terzo _sprint_],

  link("https://github.com/SWEatUNIPD/docs/issues/75")[#text(underline("D0075"))],
  [Davide Martinelli],
  [Stesura retrospettiva del terzo _sprint_],

))