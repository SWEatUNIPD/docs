#import "/templates/template.typ": *

#show: content => verbale(
  data: "10 marzo 2025",
  responsabile: "Klaudio Merja",
  redattori: ("Andrea Perozzo",),
  titolo: "Tredicesima riunione",
  verificatori: ("Davide Picello",),
  destinatari: ("Gruppo SWE@",),
  content: content,
)

#infoRiunione(
  luogo: "Chiamata Discord",
  data: "10/03/2025",
  ora: "14:30",
  durata: "1 ora e mezza",
  partecipantiEsterni: (),
)

= Ordine del giorno
== Riepilogo incontro esterno.
Inizialmente abbiamo fatto il punto di quanto emerso nella riunione esterna con l'azienda:

- È stato richiesto di esplicitare con maggior precisione i requisiti per i _test_ di accettazione, in particolare riguardo al flusso di generazione degli annunci tramite #rifGlossario("LLM") e alla verifica di come vengono mostrati sulla _#rifGlossario("dashboard")_.

== Strategia per i _test_ di accettazione e di sistema.
- Abbiamo concordato di inserire i _test_ di accettazione a fine _milestone_, dopo averli condivisi con l'azienda, così da assicurarci che rispecchino i bisogni reali del proponente.
- Parallelamente, l'aggiornamento del Piano di Qualifica dovrà includere tutti i _test_ di sistema di base, utili per garantire che i dati (posizioni #rifGlossario("GPS"), annunci generati) vengano gestiti correttamente nel flusso complessivo.

== Architettura e gestione microservizi.
- La tendenza, ribadita anche dall'azienda e dal prof. Cardin, è quella di progettare in modo modulare ogni microservizio con la propria logica interna, pur non esagerando con la complessità “_over-engineered_”.
- Fisseremo con il prof. Cardin per mercoledì in cui verranno confermate le scelte architetturali e il livello di dettaglio richiesto.

== Stato del simulatore e generazione dati
- Abbiamo fatto il punto sullo sviluppo del simulatore: la componente principale funziona, ma va rifinita l'_injection_ delle dipendenze e la struttura delle cartelle (per _test_ e codice sorgente).
- Ci siamo prefissati di terminare entro la settimana la configurazione definitiva per consentire l'integrazione con la _#rifGlossario("pipeline")_ di _test_ automatici.

== Aggiornamento su Grafana e integrazione con la base dati
- L'obiettivo è realizzare una _dashboard_ su #rifGlossario("Grafana") che mostri in tempo reale i dati dei mezzi, i percorsi simulati e gli annunci generati.
- Per raggiungere questo scopo, occorre ultimare la definizione dello schema del _#rifGlossario("database")_, in particolare la parte di preferenze utente e di arricchimento dati.
- Verranno poi impostate le _query_ necessarie a Grafana per visualizzare lo storico dei dati e la mappa in modo chiaro e funzionale.

= Conclusioni
La riunione ci ha permesso di consolidare gli obiettivi per questo  _#rifGlossario("sprint")_ e definire i prossimi passi, specialmente in merito alla stesura dei _test_ di accettazione, dei _test_ di sistema e alla verifica finale con il prof. Cardin sulle scelte architetturali. Il simulatore sarà rifinito in tempi brevi per consentire l'integrazione con la _pipeline_ di _test_, mentre su Grafana inizierà a prendere forma la _dashboard_ dedicata allo storico degli annunci e al tracciamento GPS.

= Tabella delle decisioni
#backlog(content: (
  link("https://github.com/SWEatUNIPD/docs/issues/166")[D0166],
  [Klaudio Merja],
  [Redazione verbale esterno 10/03/25],

  link("https://github.com/SWEatUNIPD/docs/issues/167")[D0167],
  [Andrea Perozzo],
  [Redazione verbale interno 10/03/25],

  link("https://github.com/SWEatUNIPD/docs/issues/168")[D0168],
  [Klaudio Merja],
  [Stesura pianificazione _sprint_ 8],

  link("https://github.com/SWEatUNIPD/docs/issues/169")[D0169],
  [Klaudio Merja],
  [Stesura retrospettiva _sprint_ 8],

  link("https://github.com/SWEatUNIPD/docs/issues/170")[D0170],
  [Davide Marin],
  [Ultimare il Manuale Utente],

  link("https://github.com/SWEatUNIPD/docs/issues/171")[D0171],
  [Davide Picello],
  [Stesura dei _test_ di unità del simulatore nel PdQ],

  link("https://github.com/SWEatUNIPD/docs/issues/172")[D0172],
  [Davide Martinelli],
  [Stesura dei _test_ di unità del _job_ di Flink nel PdQ],

  link("https://github.com/SWEatUNIPD/docs/issues/173")[D0173],
  [Davide Marin],
  [_Upload_ delle metriche dal cruscotto al PdQ],

  link("https://github.com/SWEatUNIPD/docs/issues/177")[D0177],
  [Andrea Precoma],
  [Stesura sezione del simulatore nella ST],

  link("https://github.com/SWEatUNIPD/docs/issues/178")[D0178],
  [Andrea Precoma],
  [Stesura sezione architetture e design pattern nella ST],

  link("https://github.com/SWEatUNIPD/sweatunipd.github.io/issues/4")[S0004],
  [Klaudio Merja],
  [Ultime migliorie del sito],

  link("https://github.com/SWEatUNIPD/NearYou/issues/12")[N0012],
  [Andrea Precoma],
  [_Refactoring_ del simulatore con architettura],

  link("https://github.com/SWEatUNIPD/NearYou/issues/13")[N0013],
  [Klaudio Merja],
  [Creazione dello _stream processor_ in Flink],

  link("https://github.com/SWEatUNIPD/NearYou/issues/14")[N0014],
  [Davide Picello],
  [Creazione dei _test_ di unità per il simulatore],

  link("https://github.com/SWEatUNIPD/NearYou/issues/15")[N0015],
  [Davide Martinelli],
  [Creazione dei _test_ di unità per il _stream processor_],

  link("https://github.com/SWEatUNIPD/NearYou/issues/16")[N0016],
  [Klaudio Merja],
  [Ultimazione del _processor_ di Flink],

  link("https://github.com/SWEatUNIPD/NearYou/issues/17")[N0017],
  [Andrea Perozzo],
  [Ultimazione del _database_],

  link("https://github.com/SWEatUNIPD/NearYou/issues/18")[N0018],
  [Riccardo Milan],
  [Ultimazione della _dashboard_ Grafana],
))
