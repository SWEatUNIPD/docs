#let verbale(
  data: "",
  titolo: "",
  uso: "Interno",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  verificatori: (),
  responsabile: "",
  riassunto: "",
  redattori: (),
  versioni: (),
  content: []
) = {
  set text(lang: "it")
  set page(margin: (x: 2.5cm, y: 2.5cm))
  set heading(numbering: "1.")
  set par(justify: true)

  align(center + top, [
    #figure(
      image("/assets/img/logo.svg", width: 50%),
    )
    #v(10pt);
    #text(size: 23pt,weight: "bold", titolo) \
    #text(size: 15pt, [#data])
    #v(10em)
    #grid(
      columns: (1fr, 1fr),
      align: (right, left),
      grid.vline(x: 1),
      inset: (x:5pt,y:4pt),

      "Uso", uso, 
      "Destinatari", destinatari.join([\ ]),

      grid.cell(colspan: 2, []),

      "Responsabile", responsabile,
      "Redattori", redattori.join([\ ]),
      "Verificatori", verificatori.join([\ ]),
    )
  ])
  align(center+bottom, [
    #if riassunto.len() > 0 {
      heading([Riassunto del verbale], numbering: none, outlined: false)
      riassunto
    }
  ])
  pagebreak(weak: true)

  set page(numbering: "1", header: [
    #grid(
      columns: (1fr, 1fr),
      align: (left, horizon+right),
      image("/assets/img/watermark.png", width: 70pt), titolo, grid.cell(colspan: 2, line(length: 100%, stroke: 1pt + rgb("#04E824")))
    )
  ])
  heading([Registro delle modifiche], numbering: none, outlined: false)
  
  text(size: 10pt,table(
    columns: (0.7fr, 1.5fr, 2fr, 2fr, 4fr),
    align: horizon+left,
    table.header([*Ver.*], [*Data*], [*Redattori*], [*Verificatori*], [*Descrizione*]),
    ..versioni
  ))

  pagebreak(weak: true)

  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(indent: auto)
  pagebreak()
  content
  if uso == "Esterno" {
    v(25pt)
    align(right, "Firma dell'azienda proponente")
  }
}

#let infoRiunione(
  luogo: "",
  data: "",
  ora: "",
  durata: "",
  partecipanti: ("Andrea Perozzo", "Andrea Precoma", "Davide Marin", "Davide Martinelli", "Davide Picello", "Riccardo Milan", "Klaudio Merja"),
  partecipantiEsterni: ()
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
    #if (partecipantiEsterni.len() !=0){
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
  mittenti: ("Andrea Precoma", "Andrea Perozzo", "Davide Marin", "Davide Martinelli", "Davide Picello", "Klaudio Merja", "Riccardo Milan"),
  content: []
) = {
  set text(lang: "it", font: "Inter 18pt")
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

      "Mittenti", mittenti.join([\ ])
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
