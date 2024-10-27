#import "../../../template.typ": *

#verbale(
  data: "16 ottobre 2024", 
  responsabile: "Andrea Precoma", 
  redattori: ("Klaudio Merja",), 
  titolo: "Verbale: Prima riunione", 
  verificatori: (
    "Andrea Perozzo", 
    "Davide Marin", 
    "Davide Martinelli", 
    "Davide Picello", 
    "Riccardo Milan"
  ),
  versioni: (
    [27/10/2024], 
    "1.1", 
    "Klaudio Merja", 
    [
      - Correzione degli errori presenti all'interno del documento
      - Aggiunto registro delle versioni
    ],

    [16/10/2024], 
    "1.0", 
    "Klaudio Merja", 
    [- Stesura del verbale],
  ),
  content: [
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
      #figure(image("../../../assets/img/logo.svg", width: 40%))
    ])
    == Strumenti da utilizzare
    Il gruppo ha raggiunto la decisione finale di utilizzare i seguenti strumenti:
    - #strong[Discord] e #strong[Telegram] per le comunicazioni interne
    - #strong[Gmail] come provider di posta elettronica per le comunicazioni esterne, con la seguente email: #link("mailto:sweat.unipd@unipd.it", text(size: 10pt, weight: "bold", fill: rgb("#04E824"), [sweat.unipd\@gmail.com]))
    - #strong[Git] per il versionamento del codice, in particolar modo sfruttando la piattaforma GitHub. È stata creata inoltre un'organizzazione per la raccolta di tutti i repository inerenti al progetto: #text(weight: "bold", fill: rgb("#04E824"),link("https://github.com/SWEatUNIPD"))
    - #strong[Typst] per la stesura delle varie documentazioni inerenti al progetto

    == Scelta dei capitolati e invio e-mail proponenti
    Dopo aver analizzato i capitolati d'appalto presentati dalle varie aziende, in relazione alle conoscenze di ogni singolo componente del gruppo e alla fattibilità di ogni capitolato, le preferenze sono ricadute sui capitolati C3 (VarGroup S.p.A.) e C4 (SyncLab S.r.L.).
    
    Sono state inviate inoltre le relative e-mail alle singole per organizzare un'incontro conoscitivo e risolvere alcuni dubbi e/o perplessità relative alle specifiche dei progetti proposti.
  ]
)
