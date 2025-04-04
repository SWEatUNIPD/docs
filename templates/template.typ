#import "@preview/cetz:0.3.1"
#import "@preview/cetz-plot:0.1.0": chart

#let verbale(
  data: "",
  titolo: "",
  uso: "Interno",
  firmaRichiesta: false,
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  verificatori: (),
  responsabile: "",
  riassunto: "",
  redattori: (),
  versioni: (),
  content: [],
) = {
  set text(lang: "it")
  set page(margin: (x: 2.5cm, y: 2.5cm))
  set heading(numbering: "1.")
  set par(justify: true)
  set list(marker: [•])
  show link: underline

  align(
    center + top,
    [
      #figure(
        image("/assets/img/logo.svg", width: 50%),
        outlined: false,
        numbering: none,
      )
      #v(10pt);
      #text(size: 23pt, weight: "bold", titolo) \
      #text(size: 15pt, [#data])
      #v(10em)
      #grid(
        columns: (1fr, 1fr),
        align: (right, left),
        grid.vline(x: 1),
        inset: (x: 5pt, y: 4pt),

        "Uso", uso,
        "Destinatari", destinatari.join([\ ]),

        grid.cell(colspan: 2, []),

        "Responsabile", responsabile,
        "Redattori", redattori.join([\ ]),
        "Verificatori", verificatori.join([\ ]),
      )
    ],
  )
  align(
    center + bottom,
    [
      #if repr(riassunto) != "\"\"" and repr(riassunto) != "[]" {
        heading([Riassunto del verbale], numbering: none, outlined: false)
        riassunto
      }
    ],
  )
  pagebreak(weak: true)

  set page(
    numbering: "1",
    header: [
      #grid(
        columns: (1fr, 1fr),
        align: (left, horizon + right),
        image("/assets/img/watermark.png", width: 70pt), titolo, grid.cell(
          colspan: 2,
          line(length: 100%, stroke: 1pt + rgb("#04E824")),
        )
      )
    ],
  )
  if versioni.len() > 0 {
    heading([Registro delle modifiche], numbering: none, outlined: false)
    text(
      size: 10pt,
      table(
        columns: (0.7fr, 1.5fr, 2fr, 2fr, 4fr),
        align: horizon + left,
        table.header([*Ver.*], [*Data*], [*Redattori*], [*Verificatori*], [*Descrizione*]),
        ..versioni
      ),
    )
  }

  pagebreak(weak: true)

  {
    show outline.entry.where(level: 1): it => {
      v(12pt, weak: true)
      strong(it)
    }
    outline(indent: auto)
  }
  pagebreak()

  context {
    let numTables = query(figure.where(kind: table, outlined: true)).len()
    if numTables > 0 {
      {
        show outline.entry.where(level: 1): it => {
          v(12pt, weak: true)
          it
        }
        outline(
          title: "Elenco delle tabelle",
          target: figure.where(kind: table, outlined: true),
        )
      }
      pagebreak()
    }

    let numFigures = query(figure.where(kind: image, outlined: true)).len()
    if numFigures > 0 {
      {
        show outline.entry.where(level: 1): it => {
          v(12pt, weak: true)
          it
        }
        outline(
          title: "Elenco delle immagini",
          target: figure.where(kind: image, outlined: true),
        )
      }
      pagebreak()
    }
  }
  content
  if uso == "Esterno" and firmaRichiesta == true {
    v(25pt)
    align(right, "Firma dell'azienda proponente")
  }
}

#let Lettera(
  data: "",
  titolo: "",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  mittenti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
    "Riccardo Milan",
  ),
  content: [],
) = {
  set text(lang: "it", font: "Inter 18pt")
  set page(margin: (x: 2.5cm, y: 2.5cm))
  set heading(numbering: "1.")
  set par(justify: true)
  show link: underline

  align(
    center + top,
    [
      #figure(image("/assets/img/logo.svg", width: 50%))
      #v(10pt);
      #text(size: 23pt, weight: "bold", titolo) \
      #text(size: 15pt, [#data])
      #v(10em)
      #grid(
        columns: (1fr, 1fr),
        align: (right, left),
        grid.vline(x: 1),
        inset: (x: 5pt, y: 4pt),

        "Destinatari", destinatari.join([\ ]),

        grid.cell(colspan: 2, []),

        "Mittenti", mittenti.join([\ ])
      )
    ],
  )

  align(
    center + bottom,
    [
      #figure(image("/assets/img/unipd.png", width: 16%))
      Corso di Ingegneria del Software\ A.A. 2024/25\
    ],
  )

  pagebreak(weak: true)

  set page(
    numbering: "1",
    header: [
      #grid(
        columns: (1fr, 1fr),
        align: (left, horizon + right),
        image("/assets/img/watermark.png", width: 70pt),
        titolo,
        grid.cell(colspan: 2, line(length: 100%, stroke: 1pt + rgb("#04E824")))
      )
    ],
  )

  pagebreak(weak: true)

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }

  content
}

#let backlog(
  content: ("",),
) = {
  table(
    columns: (12%, 25%, 63%),
    table.header([*ID*], [*Assegnatari*], [*Descrizione*]),
    ..content
  )
}

#let infoRiunione(
  luogo: "",
  data: "",
  ora: "",
  durata: "",
  partecipanti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Riccardo Milan",
    "Klaudio Merja",
  ),
  partecipantiEsterni: (),
) = {
  [
    = Informazioni generali
    == Luogo e data della riunione
    - *Luogo*: #luogo
    - *Data*: #data
    - *Ora*: #ora
    - *Durata*: #durata
    == Partecipanti #if partecipantiEsterni.len() != 0 {[interni]}
    #for partecipante in partecipanti {
      [- #partecipante]
    }
    #if (partecipantiEsterni.len() != 0) {
      [== Partecipanti esterni]
      for partecipanteEsterno in partecipantiEsterni {
        [- #partecipanteEsterno]
      }
    }
  ]
}

#let rifGlossario(content) = underline[#content#super[#text(size: 9pt)[g]]]

#let formatLink(label: "", url: "") = {
  if label.len() == 0 {
    underline[#text(
        weight: "bold",
        fill: rgb("#04E824"),
        link(url),
      )]
  } else {
    text(weight: "bold", fill: rgb("#04E824"), link(url)[#underline[#label]])
  }
}

#let generaGlossario(glossario) = {
  for key in glossario.keys() {
    [
      = #key
      #v(10pt)
    ]
    for word in glossario.at(key).keys() {
      [
        #text(weight: "bold", size: 12pt, word)
        #let value = glossario.at(key).at(word)

        #eval(
          value,
          mode: "markup",
        )//This function should only be used as a last resort.https://typst.app/docs/reference/foundations/eval/
        #v(10pt)
      ]
    }
    pagebreak(weak: true)
  }
}

#let tabellaRischio(ID: "", descrizione: "", probabilità: "", impatto: "", piano: "", caption: "") = {
  figure(
    kind: table,
    caption: caption,
    table(
      columns: (27%, 73%),
      align: left,
      [*ID Rischio*], [#ID],
      [*Descrizione*], [#descrizione],
      [*Probabilità*], [#probabilità],
      [*Impatto negativo*], [#impatto],
      [*Piano di contingenza*], [#piano],
    ),
  )
}

#let rendicontazioneOre(content, caption: "") = {
  let membri = (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
    "Riccardo Milan",
  )

  let data = {
    (
      ..membri
        .enumerate()
        .map(((index, value)) => {
          (
            membri.at(index),
            ..content.at(index).map(elem => str(elem)),
            str(content.at(index).sum()),
          )
        })
        .flatten(),
      [*Totale per ruolo*],
      ..(0, 1, 2, 3, 4, 5).map(idx => {
        let sum = 0
        for i in range(0, 7) {
          sum += content.at(i).at(idx)
        }
        return str(sum)
      }),
    )
  }
  figure(
    caption: caption,
    kind: table,
    table(
      columns: (1.9fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: left,
      table.header([*Membro*], [*Resp.*], [*Amm.*], [*Ana.*], [*Proge.*], [*Progr*], [*Ver.*], [*Totale*]),
      ..data,
      str(content.flatten().sum()),
    ),
  )
}

#let consuntivoOre(preventivo: (), consuntivo: (), tabCaption: "", costTabCaption: "", chartCaption: "") = {
  let membri = (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
    "Riccardo Milan",
  )

  let ore(i) = {
    [#membri.at(i)]
  }

  let data = {
    (
      ..membri
        .enumerate()
        .map(((i, _)) => {
          (
            membri.at(i),
            ..consuntivo
              .at(i)
              .enumerate()
              .map(((j, _)) => {
                let diff = consuntivo.at(i).at(j) - preventivo.at(i).at(j)
                return [#str(consuntivo.at(i).at(j)) #if diff > 0 [(#text(red)[+#str(diff)])] else if (
                    diff < 0
                  ) [(#text(green)[#str(diff)])]]
              }),
            [#str(consuntivo.at(i).sum())],
          )
        })
        .flatten(),
      [*Totale per ruolo*],
      ..range(6).map(idx => {
        let sum = 0
        for i in range(0, 7) {
          sum += consuntivo.at(i).at(idx)
        }
        return str(sum)
      }),
    )
  }
  figure(
    caption: tabCaption,
    kind: table,
    table(
      columns: (1.9fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: left,
      table.header([*Membro*], [*Resp.*], [*Amm.*], [*Ana.*], [*Proge.*], [*Progr*], [*Ver.*], [*Totale*]),
      ..data,
      str(consuntivo.flatten().sum()),
    ),
  )


  let ruoli = (
    ("Responsabile", 30),
    ("Amministratore", 20),
    ("Analista", 25),
    ("Progettista", 25),
    ("Programmatore", 15),
    ("Verificatore", 15),
  )

  let data = ruoli
    .enumerate()
    .map(((index, value)) => {
      let costo = 0
      for i in range(0, 7) {
        costo += consuntivo.at(i).at(index)
      }
      return (ruoli.at(index).at(0), [#str(costo * ruoli.at(index).at(1)) €])
    })

  let costoFinale = {
    let somma = 0
    for i in range(0, 7) {
      for j in range(0, 6) {
        somma += consuntivo.at(i).at(j) * ruoli.at(j).at(1)
      }
    }
    str(somma)
  }


  align(center)[#figure(
      kind: table,
      caption: costTabCaption,
      table(
        columns: (25%, 25%),
        table.header([*Ruolo*], [*Costo*]),
        ..data.flatten(),
        [*Totale*], [#costoFinale €]
      ),
    )]

  let oreRuolo(i) = {
    let ore = 0
    for j in range(0, 7) {
      ore += consuntivo.at(j).at(i)
    }
    return ore
  }
  let chartData = (
    ("Responsabile", oreRuolo(0)),
    ("Amministratore", oreRuolo(1)),
    ("Analista", oreRuolo(2)),
    ("Progettista", oreRuolo(3)),
    ("Programmatore", oreRuolo(4)),
    ("Verificatore", oreRuolo(5)),
  )

  align(center)[
    #figure(
      kind: image,
      caption: chartCaption,
      cetz.canvas({
        let colors = gradient.linear(red, yellow, green, blue)

        chart.piechart(
          chartData,
          value-key: 1,
          label-key: 0,
          radius: 3,
          slice-style: colors,
          gap: 0,
          outer-label: (content: "%"),
        )
      }),
    )]
}

//Funzioni per i grafici
#let plotGrafico1(tabCaption, data1, nomeData1) = {
  import "@preview/cetz:0.3.2"
  import "@preview/cetz-plot:0.1.1"

  figure(
    kind: image,
    caption: tabCaption,
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      plot.plot(
        size: (15, 8),
        x-tick-step: none,
        x-ticks: ((0, [Sprint 1]), (1, [Sprint 2]), (2, [Sprint 3]), (3, [Sprint 4]), (4, [Sprint 5])),
        x-grid: true,
        y-grid: true,
        legend: "south",
        {
          let coloreFunzione = rgb("#1f77b4") // Imposta un colore specifico

          plot.add(data1, label: nomeData1, mark: "o")
        },
      )
    }),
  )
}


#let plotGrafico2(tabCaption, data1, nomeData1, data2, nomeData2) = {
  import "@preview/cetz:0.3.2"
  import "@preview/cetz-plot:0.1.1"

  figure(
    kind: image,
    caption: tabCaption,
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      //set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)), legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

      plot.plot(
        size: (15, 8),
        x-tick-step: none,
        x-ticks: ((0, [Sprint 1]), (1, [Sprint 2]), (2, [Sprint 3]), (3, [Sprint 4]), (4, [Sprint 5])),
        x-grid: true,
        y-grid: true,
        legend: "south",
        {
          plot.add(data1, label: nomeData1, mark: "o")
          plot.add(data2, label: nomeData2, mark: "o")
        },
      )
    }),
  )
}

#let plotGrafico3(tabCaption, data1, nomeData1, data2, nomeData2, data3, nomeData3) = {
  import "@preview/cetz:0.3.2"
  import "@preview/cetz-plot:0.1.1"

  figure(
    kind: image,
    caption: tabCaption,
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      //set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)), legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

      plot.plot(
        size: (15, 8),
        x-tick-step: none,
        x-ticks: (
          (0, [Sprint 1]),
          (1, [Sprint 2]),
          (2, [Sprint 3]),
          (3, [Sprint 4]),
          (4, [Sprint 5]),
          (5, [Sprint 6]),
          (6, [Sprint 7]),
          (7, [Sprint 8]),
        ),
        x-grid: true,
        y-grid: true,
        legend: "south",
        y-min: 0,
        {
          plot.add(data1, label: nomeData1, mark: "o")
          plot.add(data2, label: nomeData2, mark: "o")
          plot.add(data3, label: nomeData3, mark: "o")
        },
      )
    }),
  )
}

#let plotGrafico4(tabCaption, data1, nomeData1, data2, nomeData2, data3, nomeData3, data4, nomeData4) = {
  import "@preview/cetz:0.3.2"
  import "@preview/cetz-plot:0.1.1"

  figure(
    kind: image,
    caption: tabCaption,
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      //set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)), legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

      plot.plot(
        size: (15, 8),
        x-tick-step: none,
        x-ticks: (
          (0, [Sprint 1]),
          (1, [Sprint 2]),
          (2, [Sprint 3]),
          (3, [Sprint 4]),
          (4, [Sprint 5]),
          (5, [Sprint 6]),
          (6, [Sprint 7]),
          (7, [Sprint 8]),
        ),
        x-grid: true,
        y-grid: true,
        legend: "south",
        {
          plot.add(data1, label: nomeData1, mark: "o")
          plot.add(data2, label: nomeData2, mark: "o")
          plot.add(data3, label: nomeData3, mark: "o")
          plot.add(data4, label: nomeData4, mark: "o")
        },
      )
    }),
  )
}

#let plotGrafico5(
  tabCaption,
  data1,
  nomeData1,
  data2,
  nomeData2,
  data3,
  nomeData3,
  data4,
  nomeData4,
  data5,
  nomeData5,
) = {
  import "@preview/cetz:0.3.2"
  import "@preview/cetz-plot:0.1.1"

  figure(
    kind: image,
    caption: tabCaption,
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      //set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)), legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

      plot.plot(
        size: (15, 8),
        x-tick-step: none,
        x-ticks: (
          (0, [Sprint 1]),
          (1, [Sprint 2]),
          (2, [Sprint 3]),
          (3, [Sprint 4]),
          (4, [Sprint 5]),
          (5, [Sprint 6]),
          (6, [Sprint 7]),
          (7, [Sprint 8]),
        ),
        x-grid: true,
        y-grid: true,
        legend: "south",
        {
          plot.add(data1, label: nomeData1, mark: "o")
          plot.add(data2, label: nomeData2, mark: "o")
          plot.add(data3, label: nomeData3, mark: "o")
          plot.add(data4, label: nomeData4, mark: "o")
          plot.add(data5, label: nomeData5, mark: "o")
        },
      )
    }),
  )
}

#let plotGrafico9(
  tabCaption,
  data1,
  nomeData1,
  data2,
  nomeData2,
  data3,
  nomeData3,
  data4,
  nomeData4,
  data5,
  nomeData5,
  data6,
  nomeData6,
  data7,
  nomeData7,
  data8,
  nomeData8,
  data9,
  nomeData9,
) = {
  import "@preview/cetz:0.3.2"
  import "@preview/cetz-plot:0.1.1"

  let default-colors = (blue, red, green, yellow, black, purple, orange, rgb("#2dccbf"), rgb("#ee5cb6"))

  let default-plot-style(i) = {
    let color = default-colors.at(calc.rem(i, default-colors.len()))
    return (stroke: color, fill: color.lighten(75%))
  }

  figure(
    kind: image,
    caption: tabCaption,
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      //set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)), legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

      plot.plot(
        size: (15, 8),
        x-tick-step: none,
        x-ticks: (
          (0, [Sprint 1]),
          (1, [Sprint 2]),
          (2, [Sprint 3]),
          (3, [Sprint 4]),
          (4, [Sprint 5]),
          (5, [Sprint 6]),
          (6, [Sprint 7]),
          (7, [Sprint 8]),
        ),
        x-grid: true,
        y-grid: true,
        legend: "south",
        plot-style: default-plot-style,
        {
          plot.add(data1, label: nomeData1)
          plot.add(data2, label: nomeData2)
          plot.add(data3, label: nomeData3)
          plot.add(data4, label: nomeData4)
          plot.add(data5, label: nomeData5)
          plot.add(data6, label: nomeData6)
          plot.add(data7, label: nomeData7)
          plot.add(data8, label: nomeData8)
          plot.add(data9, label: nomeData9)
        },
      )
    }),
  )
}

#let plotGrafico7(
  tabCaption,
  data1,
  nomeData1,
  data2,
  nomeData2,
  data3,
  nomeData3,
  data4,
  nomeData4,
  data5,
  nomeData5,
  data6,
  nomeData6,
  data7,
  nomeData7,
) = {
  import "@preview/cetz:0.3.2"
  import "@preview/cetz-plot:0.1.1"

  let default-colors = (blue, red, green, yellow, black, purple, orange, rgb("#2dccbf"), rgb("#ee5cb6"))

  let default-plot-style(i) = {
    let color = default-colors.at(calc.rem(i, default-colors.len()))
    return (stroke: color, fill: color.lighten(75%))
  }

  figure(
    kind: image,
    caption: tabCaption,
    cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *

      //set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)), legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

      plot.plot(
        size: (15, 8),
        x-tick-step: none,
        x-ticks: (
          (0, [Sprint 1]),
          (1, [Sprint 2]),
          (2, [Sprint 3]),
          (3, [Sprint 4]),
          (4, [Sprint 5]),
          (5, [Sprint 6]),
          (6, [Sprint 7]),
          (7, [Sprint 8]),
        ),
        x-grid: true,
        y-grid: true,
        legend: "south",
        plot-style: default-plot-style,
        {
          plot.add(data1, label: nomeData1)
          plot.add(data2, label: nomeData2)
          plot.add(data3, label: nomeData3)
          plot.add(data4, label: nomeData4)
          plot.add(data5, label: nomeData5)
          plot.add(data6, label: nomeData6)
          plot.add(data7, label: nomeData7)
        },
      )
    }),
  )
}
