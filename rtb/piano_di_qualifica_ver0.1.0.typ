#import "/templates/template.typ": *

#show: content => verbale(
  data: "7 dicembre 2024",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Sync Lab S.r.l.", "Gruppo SWE@"),
  responsabile: "-",
  redattori: ("Davide Martinelli",),
  verificatori: ("Andrea Precoma", "Riccardo Milan"),
  titolo: "Piano di Qualifica",
  uso: "Esterno",
  versioni: (
    "0.1.0",
    "07/12/2024",
    "Davide Martinelli",
    "Andrea Precoma\nRiccardo Milan",
    [- Struttura e introduzione del documento],
  ),
  content: content,
)

#set heading(numbering: "1.1")

= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di definire le strategie di verifica e validazione implementate dal gruppo al fine di garantire la qualità dei processi e del prodotto finale, guidando il _team_ lungo tutta la durata del progetto secondo un'ottica di miglioramento continuo. Per tale motivo il documento ha natura mutevole ed evolutiva e verrà aggiornato periodicamente per riflettere le modifiche apportate ai processi al fine di migliorarne l'efficacia e l'efficienza.
L'ultima sezione del documento (#link(<cruscotto>)[sez. 4]) è dedicata all'analisi dell'andamento delle metriche presenti nel cruscotto di monitoraggio della qualità durante l'arco di svolgimento del progetto.

== Scopo del prodotto
L'obiettivo principale del prodotto è quello di fornire un sistema che monitori la posizione in tempo reale di ciascun utente e in base a questa crei, sfruttando la #rifGlossario("GenAI"), inserzioni pubblicitarie personalizzate sulla base dei suoi dati di profilazione. Il fine ultimo è quello di migliorare l'esperienza pubblicitaria degli utenti, massimizzando di conseguenza il #rifGlossario("ROI").

== Glossario
Per chiarire il significato di alcuni termini tecnici, abbreviazioni e acronimi utilizzati all'interno della documentazione viene fornito un glossario.
Nel documento i termini che, alla loro prima occorrenza, vengono contrassegnati da una sottolineatura e una "g" posta ad apice (e.g. #rifGlossario("termine")) avranno una corrispettiva descrizione dettagliata all'interno del Glossario.

== Riferimenti

=== Riferimenti normativi
- Norme di Progetto

=== Riferimenti informativi
- Capitolato d'appalto C4: _NearYou - Smart custom advertising platform_\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C4.pdf")

- Glossario

- Lezione T07 - Qualità di prodotto\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")

- Lezione T08 - Qualità di processo\ #formatLink(url: "https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")

- ISO/IEC 12207:1995\ #formatLink(url: "https://en.wikipedia.org/wiki/ISO/IEC_12207")

/* 
- ISO/IEC 9126:2001\ #formatLink(url: "https://en.wikipedia.org/wiki/ISO/IEC_9126")

- ISO/IEC 25010:2011\ #formatLink(url: "https://en.wikipedia.org/wiki/ISO/IEC_25010")
*/

= Obiettivi di qualità
In questa sezione vengono definiti gli obiettivi di qualità che il gruppo si prefigge di raggiungere nell'ambito del progetto, sia per i processi che per il prodotto, sulla base delle metriche definite nel documento Norme di Progetto.

== Qualità di processo
La qualità di processo è nota essere un fattore di fondamentale importanza per qualsiasi produzione di _software_ che punti all'eccellenza qualitativa. Essa, infatti, influenza con un evidente rapporto di causa-effetto la qualità del prodotto finale.

Di seguito elenchiamo gli obiettivi di qualità che il gruppo si prefigge di raggiungere nell'ambito della qualità di processo, suddivisi per le tre categorie di processi individuate dallo standard ISO/IEC 12207:1995 (primari, di supporto e organizzativi).

=== Processi primari

=== Processi di supporto
==== Documentazione

#figure(
  kind: table,
  caption: [Valori accettabili e desiderabili per ogni metrica riguardante il processo di documentazione], 
  table(
    align: center,
    columns: 4,
    fill: (_, y) => if calc.odd(y) { gray.lighten(65%) },
    table.header[*Metrica*][*Nome*][*Valore accettabile*][*Valore desiderabile*],
    [TBD],[Indice Gulpease],[$gt.eq 40$],[$gt.eq 80$],
    [TBD],[Errori ortografici],[0],[0],
  )
)

=== Processi organizzativi

== Qualità di prodotto

=== Funzionalità

=== Affidabilità

=== Usabilità

=== Efficienza

=== Manutenibilità

= Specifiche dei test

= Cruscotto di monitoraggio della qualità <cruscotto>