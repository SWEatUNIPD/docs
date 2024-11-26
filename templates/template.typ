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

  align(
    center + top,
    [
      #figure(
        image("/assets/img/logo.svg", width: 50%),
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
      #if riassunto.len() > 0 {
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

  pagebreak(weak: true)

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(indent: auto)
  pagebreak()
  content
  if uso == "Esterno" and firmaRichiesta == true {
    v(25pt)
    align(right, "Firma dell'azienda proponente")
  }
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


#let Lettera(
  data: "",
  titolo: "",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  mittenti: (
    "Andrea Precoma",
    "Andrea Perozzo",
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

  align(
    center + top,
    [
      #figure(
        image("/assets/img/logo.svg", width: 50%),
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

        "Destinatari", destinatari.join([\ ]),

        grid.cell(colspan: 2, []),

        "Mittenti", mittenti.join([\ ])
      )
    ],
  )

  align(
    center + bottom,
    [
      #figure(
        image("/assets/img/unipd.png", width: 16%),
      )
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
}//TODO: Verificare che i link a capo non siano buggati

#let generaGlossario(glossario) = {
  for key in glossario.keys() {
    [
      = #key
      #v(10pt)
    ]
    for word in glossario.at(key).keys() {
      [
        #text(weight: "bold", size: 12pt, word)

        #glossario.at(key).at(word)
        #v(10pt)
      ]
    }
    pagebreak()
  }
}

#let tabellaRischio(ID: "", descrizione: "", probabilità: "", impatto: "", piano: "") = {
  table(
    fill: (_, y) => if calc.even(y) {
      rgb("04E82420")
    }, //TODO: mantenere la colorazione della tabella in questo modo?
    columns: (27%, 73%),
    [*ID Rischio*], [#ID],
    [*Descrizione*], [#descrizione],
    [*Probabilità*], [#probabilità],
    [*Impatto negativo*], [#impatto],
    [*Piano di contingenza*], [#piano],
  )
}

#let rendicontazioneOre(content) = {
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

  table(
    columns: (2.2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    table.header([*Membro*], [*Resp.*], [*Amm.*], [*Ana.*], [*Proge.*], [*Progr*], [*Ver.*], [*Totale*]),
    ..data,
    str(content.flatten().sum())
  )
}

#let consuntivoOre(content) = {
  rendicontazioneOre(content)
  let ruoli = (
    ("Responsabile", 30),
    ("Amministratore", 20),
    ("Analista", 25),
    ("Progettista", 25),
    ("Programmatore", 15),
    ("Verificatore", 15),
  )

  let data = ruoli.enumerate().map(((index, value)) => {
    let costo = 0
    for i in range(0, 7) {
      costo += content.at(i).at(index)
    }
    return (ruoli.at(index).at(0), [#str(costo * ruoli.at(index).at(1)) €])
  })

  let costoFinale = {
    let somma = 0
    for i in range(0, 7) {
      for j in range(0, 6) {
        somma += content.at(i).at(j) * ruoli.at(j).at(1)
      }
    }
    str(somma)
  }

  align(center)[#table(
      columns: (25%, 25%),
      table.header([*Ruolo*], [*Costo*]),
      ..data.flatten(),
      [*Totale*], [#costoFinale €]
    )]
}
