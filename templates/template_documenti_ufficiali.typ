#let documentoUfficiale(
  data: "",
  titolo: "",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  responsabile: "",
  redattori: (),
  verificatori: (),
  content: []
) = {
  set text(lang: "it", size: 14pt)
  set page(margin: (x: 2.5cm, y: 2.5cm))
  set heading(numbering: "1.")
  set par(justify: true)

  align(center + top, [
    #figure(
      image("/assets/img/logo.svg", width: 50%)
    )
    #v(10pt);
    #text(size: 23pt, weight: "bold", titolo) \
    #text(size: 15pt, [#data])
    #v(10em)
    #grid(
      columns: (1fr, 1fr),
      align: (right, left),
      grid.vline(x: 1),
      inset: (x:5pt, y:4pt),

      "Destinatari", destinatari.join([\ ]),

      grid.cell(colspan: 2, []),

      "Responsabile", responsabile,
      "Redattori", redattori.join([\ ]),
      "Verificatori", verificatori.join([\ ])
    )
  ])

  align(center + bottom, [
    #figure(
      image("/assets/img/unipd.png", width: 16%)
    )
    Corso di Ingegneria del Software\ A.A. 2024/25\
  ])

  pagebreak(weak: true)

  set page(numbering: "1", header: [
    #grid(
      columns: (1fr, 1fr),
      align: (left, horizon+right),
      image("/assets/img/watermark.png", width: 70pt), 
      titolo, 
      grid.cell(colspan: 2, line(length: 100%, stroke: 1pt + rgb("#04E824")))
    )
  ])

  pagebreak(weak: true)

  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }
  
  content
}
