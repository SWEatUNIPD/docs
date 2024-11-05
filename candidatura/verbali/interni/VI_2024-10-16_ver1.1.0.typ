#import "/templates/template.typ": *

#show: content=>verbale(
  data: "16 ottobre 2024", 
  responsabile: "Andrea Precoma", 
  redattori: ("Klaudio Merja",), 
  titolo: "Prima riunione", 
  verificatori: (
    "Andrea Perozzo",
    "Riccardo Milan"
  ),
  riassunto: "Prima riunione conoscitiva del gruppo, dove viene concordato nome e logo dello stesso, i vari strumenti da utilizzare e vengono analizzate le aziende di interesse dei membri.",
  versioni: (
    "1.1.0",
    [04/11/2024],
    "Klaudio Merja",
    [Andrea Perozzo\ Riccardo Milan],
    [
      - Aggiunto riassunto del verbale
      - Aggiunta sezione "Conclusioni"

    ],

    "1.0.1",
    [27/10/2024], 
    "Klaudio Merja", 
    "Riccardo Milan",
    [
      - Correzione degli errori presenti all'interno del documento
      - Aggiunto registro delle versioni
    ],

    "1.0.0", 
    [16/10/2024], 
    "Klaudio Merja", 
    "Riccardo Milan",
    [- Stesura del verbale],
  ),
  content: content
)

#infoRiunione(
  data: "16/10/2024", durata: "1 ora e mezza", luogo: "Chiamata Discord", ora: "16:30", partecipantiEsterni: (),
)

= Ordine del giorno
== Nome del team
Il gruppo, a seguito di una serie di nomi proposti dai vari membri, ha convenuto nell'utilizzo del nome #strong[SWE@].
== Logo rappresentativo del team
A seguito di vari loghi proposti, il gruppo ha deciso l'utilizzo del seguente logo:
#align(center, [
  #figure(image("../../../assets/img/logo.svg", width: 40%))
])
== Strumenti da utilizzare
Il gruppo ha raggiunto la decisione finale di utilizzare i seguenti strumenti:
- #strong[Discord] e #strong[Telegram] per le comunicazioni interne
- #strong[Gmail] come provider di posta elettronica per le comunicazioni esterne, con la seguente email: #link("mailto:sweat.unipd@gmail.com", text(size: 10pt, weight: "bold", fill: rgb("#04E824"), underline("sweat.unipd@gmail.com")))
- #strong[Git] per il versionamento del codice, in particolar modo sfruttando la piattaforma GitHub. È stata creata inoltre un'organizzazione per la raccolta di tutti i repository inerenti al progetto: #link("https://github.com/SWEatUNIPD")[#text(weight: "bold", fill: rgb("#04E824"), underline("https://github.com/SWEatUNIPD"))]
- #strong[Typst] per la stesura delle varie documentazioni inerenti al progetto
== Scelta dei capitolati e invio e-mail proponenti
Dopo aver analizzato i capitolati d'appalto presentati dalle varie aziende, in relazione alle conoscenze di ogni singolo componente del gruppo e alla fattibilità di ogni capitolato, le preferenze sono ricadute sui capitolati C3 (VarGroup S.p.A.) e C4 (SyncLab S.r.L.).
    
Il gruppo propone inoltre l'invio delle e-mail alle aziende nominate per organizzare un'incontro conoscitivo e risolvere alcuni dubbi e/o perplessità relative alle specifiche dei progetti proposti.

= Conclusioni
Il gruppo, alla fine della riunione, ha raggiunto le seguenti decisioni:
- Nome del gruppo: *SWE@*
- Strumenti per le comunicazioni interne: *Discord* e *Telegram*
- Strumenti per le comunicazioni esterne: *Gmail*
- Strumento per la stesura dei documenti: *Typst*

Vengono incaricati i componenti *Klaudio Merja* per l'invio dell'e-mail a Sync Lab S.r.l. e *Andrea Precoma* per l'invio dell'e-mail a VarGroup S.p.A.