#import "/templates/template.typ": *

#show: content => verbale(
  data: "11 novembre 2024",
  uso: "Interno",
  responsabile: "Klaudio Merja",
  redattori: ("Andrea Perozzo", "Andrea Precoma", "Riccardo Milan", "Klaudio Merja"),
  titolo: "Glossario",
  verificatori: ("Andrea Perozzo", "Andrea Precoma", "Davide Picello"),
  versioni: (
    "0.10.0",
    "10/12/2024",
    "Davide Marin\nKlaudio Merja",
    "Andrea Precoma\nRiccardo Milan",
    [
      - Aggiunto il termine "Marker"
    ],
    "0.9.0",
    "06/12/2024",
    "Andrea Perozzo",
    "Riccardo Milan",
    [- Aggiunti i termini "API" e "Processor"],
    "0.8.0",
    "04/12/2024",
    "Davide Picello",
    "Riccardo Milan",
    [- Aggiunto il termine "Docker"],
    "0.7.0",
    "29/11/2024",
    "Andrea Perozzo\nKlaudio Merja",
    "Andrea Precoma\nRiccardo Milan",
    [
      - Aggiunti i termini "ClickUp", "Docker Compose", "GitLab", "Event-driven architecture", "Mockup", "Kubernetes", "Spring" e "Trello"
    ],
    "0.6.0",
    "27/11/2024",
    "Klaudio Merja",
    "Davide Marin\nDavide Picello",
    [- Aggiunti i termini "Bike-sharing", "Branch", "Feedback", "Sprint" e "Stakeholder"],
    "0.5.0",
    "23/11/2024",
    "Davide Picello",
    "Davide Marin",
    [- Aggiunto il termine "Deep dive"],
    "0.4.0",
    "25/11/2024",
    "Andrea Precoma",
    "Davide Marin\nDavide Picello",
    [
      - Creato paragrafo per i termini che iniziano con "U"
      - Aggiunto i termini "Hosting" e "Utility"
    ],
    "0.3.0",
    "25/11/2024",
    "Andrea Perozzo",
    "Davide Picello",
    [- Aggiunti i termini "Database", "Data Broker", "Data Generator", "Faker", "GPS", "LLM", "SimPy", "TimeScale"],
    "0.2.0",
    "14/11/2024",
    "Klaudio Merja",
    "Andrea Precoma",
    [- Aggiunti i termini "Way of Working", "GenAI", "Prompt" e "ROI"],
    "0.1.0",
    "11/11/2024",
    "Riccardo Milan",
    "Andrea Perozzo",
    [- Redazione glossario con termini del capitolato],
  ),
  content: content,
)

= Introduzione
Il seguente documento ha lo scopo di disambiguare e definire correttamente i termini specifici e non banali del dominio d'uso, presenti nella documentazione.
\
La presenza di un termine o espressione all'interno del Glossario negli altri documenti viene indicata aggiungendogli un apice con la lettera "g" e sottolineando l'intera espressione (es. #rifGlossario("Apache Superset")) per indicare chiaramente l'intero costrutto da cercare nel glossario.

#pagebreak()
#generaGlossario(json("../glossario.json"))
