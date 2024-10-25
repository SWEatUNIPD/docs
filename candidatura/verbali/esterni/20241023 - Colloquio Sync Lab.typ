#set text(lang: "it")
#set page(margin: (x: 2.5cm, y: 2.5cm))
#set heading(numbering: "1.")
#set par(justify: true)

#align(center + top, [
  #figure(
    image("../../../img/logo.svg", width: 50%),
  )
  #v(15pt);
  #text(size: 23pt,weight: "bold", [Colloquio Sync Lab S.r.l.]) \
  #text(size: 15pt, [23 ottobre 2024])
  #v(10em)
  #grid(
    columns: (1fr, 1fr),
    align: (right, left),
    grid.vline(x: 1),
    inset: (x:5pt,y:4pt),

    [Uso],[Esterno], 
    [Destinatari], [Prof. Tullio Vardanega], 
    [], [Prof. Riccardo Cardin],
    [], [Sync Lab S.r.l.],

    grid.cell(colspan: 2, []),

    [Responsabile], [Andrea Precoma],
    [Redattori], [Klaudio Merja],
    [Verificatori], [Andrea Perozzo],
    [], [Davide Marin], 
    [], [Davide Martinelli],
    [], [Davide Picello],
    [], [Riccardo Milan]
  )
])
#align(center+bottom, [
  #figure(
    image("../../../img/unipd.png", width: 15%),
  )
  Corso di Ingegneria del Software\
  A.A. 2024/25
])
#pagebreak(weak: true)

#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(it)
}
#outline(indent: auto)
#pagebreak()

= Informazioni generali
== Luogo e data dell'incontro
- *Luogo*: Chiamata Discord
- *Data*: 23-10-2024
- *Ora*: 15:30
- *Durata*: mezz'ora
== Partecipanti interni
- Andrea Perozzo
- Andrea Precoma
- Davide Marin
- Davide Martinelli
- Davide Picello
- Klaudio Merja
- Riccardo Milan
== Partecipanti esterni
- Fabio Pallaro
- Andrea Dorigo
- Daniele Zorzi

= Sintesi dell'incontro
I proponenti hanno chiarito tutti i punti che ci eravamo preparati e siamo stati molto soddisfatti dell'incontro. Abbiamo discusso circa le tecnologie da adottare, i metodi di comunicazione e le linee guida per il PoC e il MVP.

= Risposte alle domande
== Presentazione capitolato e funzionamento del software
Inizialmente i proponenti hanno esposto il capitolato con maggiori dettagli rispondendo involontariamente già ad alcune domande che ci eravamo posti di chiedere. Ci è stato delineato l'obiettivo del software e il suo funzinamento chiarendo i seguenti aspetti:
- *simulazione GPS*: generazione sensata di dati che possano simulare un percorso di un utente (ad esempio un nuovo dato della posizione ogni 5 secondi). È stato suggerito l'uso di file .gpx che facilitano il compito.
- *creazione database*: creazione di una struttura che memorizzi i dati di profilazione degli utenti (una ventina è sufficiente).
- *generazione annunci*: quando le informazioni restituite dai sensori soddisfano alcuni criteri (ad esempio quando l'utente entra in una area vicina ad un ristorante) il sistema interroga il database e utilizzando una LLM esterna genera l'annuncio personalizzato. È stato suggerito inoltre di storicizzare gli annunci per scopi futuri, ad esempio per sapere quali sono già stati proposti all'utente o per svolgere delle analisi.

== PoC
Successivamente abbiamo concordato alcuni punti da sviluppare riguardo al PoC, tuttavia ci è stato detto che potrà essere definito con maggiori dettagli in seguito all'aggiudicazione dell'appalto. Il PoC per come lo abbiamo descritto in colloquio dovrà contenere:
- dati GPS di un utente (generati o statici)
- datastream processor che analizza i dati dell'utente
- un punto di interesse
- dashboard per visualizzare gli annunci (utilizzando Grafana o Apache Superset)
Il sistema dovrà quindi capire che l'utente si è avvicinato al punto di interesse e mandare la richiesta di generazione dell'annuncio alla LLM.

== MVP
Riguardo al MVP ci è stato specificato che sarà richiesto di aumentare l'ambiente del PoC con più utenti, più punti di interesse e una simulazione più consistente dei dati GPS. Inoltre andrà aggiunta la generazione dell'annuncio e la visualizzazione dello stesso tramite interfaccia web-app.

== Organizzazione lavoro
Riguardo la parte logistica hanno espresso il desiderio di mantenere per tutto il corso del progetto un SAL a settimana in remoto e un ultimo conclusivo a fine progetto in presenza. Mettono a disposizione anche delle sessione di "deep dive" con le quali si intende aiutare il gruppo nei casi in cui riscontri difficoltà a superare certe attività o a trovare sufficiente documentazione riguardo le tecnologie adottate.