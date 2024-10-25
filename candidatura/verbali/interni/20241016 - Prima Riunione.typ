#set text(lang: "it")
#set page(margin: (x: 2.5cm, y: 2.5cm))
#set heading(numbering: "1.")

#align(center + top, [
  #figure(
    image("../../../img/logo.svg", width: 50%),
  )
  #v(15pt);
  #text(size: 23pt,weight: "bold", [Verbale: Prima riunione]) \
  #text(size: 15pt, [16 ottobre 2024])
  #v(10em)
  #grid(
    columns: (1fr, 1fr),
    align: (right, left),
    grid.vline(x: 1),
    inset: (x:5pt,y:4pt),

    [Uso],[Interno], 
    [Destinatari], [Prof. Tullio Vardanega], 
    [], [Prof. Riccardo Cardin],

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
- *Data*: 16-10-2024
- *Ora*: 16:30
- *Durata*: 1 ora e mezza
== Partecipanti
- Andrea Perozzo
- Andrea Precoma
- Davide Marin
- Davide Martinelli
- Davide Picello
- Klaudio Merja
- Riccardo Milan

= Ordine del giorno

== Nome del team
Il gruppo, a seguito di una serie di nomi proposti dai vari membri, ha convenuto nell'utilizzo del nome #strong[SWE@].
== Logo rappresentativo del team
A seguito di vari loghi proposti, il gruppo ha deciso l'utilizzo del seguente logo:
#align(center, [
  #figure(image("../../../img/logo.svg", width: 40%))
])
== Strumenti da utilizzare
Il gruppo ha raggiunto la decisione finale di utilizzare i seguenti strumenti:
- #strong[Discord] e #strong[Telegram] per le comunicazioni interne
- #strong[Gmail] come provider di posta elettronica per le comunicazioni esterne, con la seguente email: #link("mailto:sweat.unipd@unipd.it", text(size: 10pt, [sweat.unipd\@gmail.com]))
- #strong[Git] per il versionamento del codice, in particolar modo sfruttando la piattaforma GitHub. È stata creata inoltre un'organizzazione per la raccolta di tutti i repository inerenti al progetto: #link("https://github.com/SWEat-UNIPD")
- #strong[Typst] per la stesura delle varie documentazioni inerenti al progetto

== Scelta dei capitolati e invio e-mail proponenti
Dopo aver analizzato i capitolati d'appalto presentati dalle varie aziende, per quanto ne riguarda la fattibilità e le abilità dei singoli componenti del gruppo, le preferenze sono ricadute sui capitolati C3 (VarGroup S.p.A.) e C4 (SyncLab S.r.L.).\
Sono state inviate inoltre le relative e-mail alle singole per organizzare un'incontro conoscitivo e risolvere alcuni dubbi e/o perplessità relative alle specifiche dei progetti proposti.
