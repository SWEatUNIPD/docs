#import "/templates/template.typ": *

#show: content => verbale(
  data: "10 novembre 2024",
  responsabile: "Riccardo Milan",
  redattori: ("Andrea Precoma",),
  titolo: "Terza riunione",
  verificatori: (
    "Andrea Perozzo",
    "Davide Picello",
    "Klaudio Merja",
  ),
  riassunto: "Discussione principale riguardo alla struttura del backlog, alla suddivisione delle repository e al sistema di pubblicazione della documentazione. Miglioramento del Way of Working.",
  versioni: (
    "1.0.0",
    [10/11/2024],
    "Andrea Precoma",
    "Andrea Perozzo\nDavide Picello\nKlaudio Merja",
    [- Stesura del verbale],
  ),
  content: content,
)

#infoRiunione(
  data: "10/11/2024",
  durata: "2 ore e 10 minuti",
  luogo: "Chiamata Discord",
  ora: "15:15",
  partecipantiEsterni: (),
)

= Ordine del giorno
== Riunione esterna con l'azienda proponente
In seguito alla vittoria della candidatura per il capitolato C4 abbiamo provveduto a pianificare una _e-mail_ per lunedì 11 novembre per concordare un incontro con l'azienda proponente. Abbiamo chiesto disponibilità dopo il "Diario di Bordo" e la lezione rovesciata in modo da avere qualche chiarimento anche dal professor Vardanega e avere più materiale sul quale discutere.

== Sito per la documentazione
Dopo alcune proposte stilistiche riguardo al sito dove pubblicare la documentazione abbiamo deciso di aggiornarci alla prossima riunione. Abbiamo quindi creato la _repository_ #formatLink(url: "sweatunipd.github.io") che dovrà contenere i _file_ relativi alla struttura del sito (HTML, CSS e JavaScript). Nei giorni successivi andremo a definire meglio l'organizzazione e le funzionalità della _repository_.

== Backlog
Abbiamo deciso di utilizzare il sistema di #rifGlossario("GitHub") composto da _*board*_ e _*issue*_ come _#rifGlossario("backlog")_. Poiché abbiamo pianificato di creare più _repository_ a seconda dell'area di azione, ad esempio una per la documentazione e una per il sito che visualizzi i documenti, abbiamo convenuto a creare una sola _board_ che contenesse tutte le _issue_. In base alle attività vengono create le _issue_ nelle rispettive _repository_, così da mantenere la separazione strutturale e poterle collegare alle "_commit_", ma vengono inserite nella stessa _board_ così da essere tracciabili nello stesso spazio. Per mantenere questa metodologia abbiamo adottato le seguenti regole:
- Dopo aver ragionato sulle azioni future, sempre durante la riunione si andranno a creare le _issue_ in modo che tutti siano allineati sulle attività del _backlog_.
- Le _issue_ vanno create come già in accordo dal gruppo (descritto nel verbale interno del 04 novembre 2024 in mancanza al momento delle Norme di Progetto).
- Il redattore del verbale dovrà popolare la tabella delle decisioni collegando i codici delle attività con le rispettive _issue_.
- I nomi delle _issue_ devono essere ben descrittivi perché saranno inseriti nella Tabella delle decisioni.
- I codici delle attività sono strutturati nel seguente modo: *[X][\#ID _issue_]* dove X è una lettera che identifica univocamente la _repository_, seguita dall'ID della _issue_ scritta con quattro cifre così da mantenere una lunghezza fissa fino alla _issue_ numero 9999 per ciascuna _repository_. Le lettere che identificano le _repository_ al momento sono *D* per la documentazione e *S* per il sito. Nel caso le attività non corrispondessero a delle issue perché di natura organizzativa (ad esempio richiedere un incontro all'azienda proponente) si aggiunge il codice *ORG*.

== Aggiornamento GitHub Action
Per correttezza nei confronti dell'azienda proponente che deve firmare i verbali esterni abbiamo deciso di non pubblicare questi ultimi fino a presa visione della controparte. Inoltre un passaggio della verifica dei documenti è la compilazione dei _file_ #rifGlossario("Typst"). Abbiamo pianificato quindi i seguenti cambiamenti per la GitHub Action:
- Deve compilare i _file_ `.typ` modificati in modo da rilevare errori sintatici e rendere il documento di facile lettura per i verificatori. Inoltre compilando solo i _file_ modificati evitiamo il sovraccarico con l'aumentare della documentazione.
- Deve pubblicare nel sito i documenti compilati ad esclusione dei verbali esterni. Questi, una volta firmati dalla controparte, vengono aggiunti manualmente nella cartella dei verbali esterni in formato `.pdf` e pubblicati automaticamente.

== Diario di Bordo
Abbiamo formato i punti da discutere per la lezione dedicata ai "Diari di Bordo" di martedì 12 novembre. Inoltre ci siamo accordati sul fatto di dedicare 10 minuti alla fine dell'ultima riunione di ciascuna settimana per delineare il diario di bordo della settimana successiva. In caso nascessero problematiche improvvise ci impegnamo a riunirci brevemente sulla piattaforma Discord il fine settimana.

== Glossario e README
Per evitare malinterpretazioni tra i termini abbiamo aggiunto un glossario da popolare col proseguimento del progetto. Abbiamo inoltre aggiunto le informazioni generali alle _repository_ nel _file standard_ `README.md`.

= Conclusioni
Come molte riunioni nel primo periodo del progetto questa è servita a modellare nuovamente il _#rifGlossario("way of working")_ del gruppo oltre a incrementare la struttura dell'organizzazione. Ci impegnamo quindi a rispettare i punti definiti precedentemente in modalità asincrona e a incontrarci il prima possibile con l'azienda proponente. In caso non fosse possibile pianificheremo una riunione interna.

= Tabella delle decisioni
#backlog(content: (
  "ORG",
  "Andrea Precoma",
  [Richiesta di un incontro con l'azienda proponente via _e-mail_],
  "ORG",
  "Gruppo",
  "Assegnazione dei ruoli per cominciare il progetto",
  link("https://github.com/SWEatUNIPD/docs/issues/17")[D0017],
  "Riccardo Milan",
  "Redazione Glossario",
  link("https://github.com/SWEatUNIPD/docs/issues/18")[D0018],
  "Andrea Precoma",
  "Verbale Interno del 2024-11-10",
  link("https://github.com/SWEatUNIPD/docs/issues/19")[D0019],
  "Klaudio Merja",
  "ReadMe del repository",
  link("https://github.com/SWEatUNIPD/docs/issues/20")[D0020],
  "Klaudio Merja",
  "Modificare la Action per la compilazione dei verbali da firmare e per la visualizzazione artefatti della Pull Request",
  link("https://github.com/SWEatUNIPD/sweatunipd.github.io/issues/1")[S0001],
  "Klaudio Merja\nDavide Marin",
  "Creazione sito",
))