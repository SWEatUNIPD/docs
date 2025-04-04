#import "/templates/template.typ": *

#show: content => verbale(
  data: "19 Marzo 2025",
  responsabile: "Andrea Precoma",
  destinatari: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Sync Lab S.r.l.",
  ),
  uso: "Esterno",
  redattori: ("Klaudio Merja",),
  titolo: "SAL fine ottavo sprint",
  verificatori: (
    "Davide Martinelli",
  ),
  content: content,
  firmaRichiesta: true,
)


#infoRiunione(
  luogo: "Sede di Padova di SyncLab S.r.l.",
  data: "19/03/2025",
  ora: "16:30",
  durata: "Un'ora e mezza",
  partecipantiEsterni: ("Fabio Pallaro", "Andrea Dorigo", "Daniele Zorzi"),
  partecipanti: (
    "Andrea Perozzo",
    "Andrea Precoma",
    "Davide Marin",
    "Davide Martinelli",
    "Davide Picello",
    "Klaudio Merja",
    "Riccardo Milan",
  ),
)

= Sintesi dell'incontro
Il gruppo ha presentato un riepilogo dei progressi ottenuti e gli studi effettuati riguardo l'#rifGlossario("MVP"), simulando un ipotetica presentazione finale per il PB. È stato presentato inoltre il prodotto finale realizzato da parte del gruppo. Infine è stata richiesta l'approvazione finale del prodotto per la presentazione finale del PB.

== Riepilogo dei progressi ottenuti
Su richiesta dell'azienda, il gruppo ha presentato un riepilogo dei progressi ottenuti nel periodo di tempo intercorso tra la presentazione RTB e il presente incontro. Sono state presentate tutte le scelte implementative e architetturali fatte dal gruppo, in particolare riguardo le tecnologie scelte per il MVP. Il gruppo ha presentato anche i _test_ di accettazione redatti e concordati con l'azienda per richiederne la conferma.

L'azienda ci ha fatto notare che la presentazione che si aspettava doveva essere più orientata verso il capitolato e il prodotto finale piuttosto che sulle scelte architetturali, mirando a raggiungere un pubblico più ampio e non solo tecnico. Nonostante ciò, l'azienda ha apprezzato il lavoro svolto e validato i _test_ di accettazione.

== Dimostrazione MVP
Il gruppo ha esposto il prodotto finale realizzato, dimostrando l'effettivo funzionamento del MVP. La dimostrazione consisteva in una simulazione di una decina di utenti visibili sulla _#rifGlossario("dashboard")_ di #rifGlossario("Grafana") che, tramite i loro spostamenti in punti di loro interesse, permettevano la generazione di annunci pubblicitari per merito dell'#rifGlossario("LLM"). Sono state presentate inoltre anche le altre funzionalità implementate, tra cui lo storico annunci pubblicitari e le relative informazioni per ogni singolo annuncio.

== Approvazione finale
A seguito di quanto presentato dal gruppo, l'azienda ha ritenuto il lavoro svolto soddisfacente e conforme alle loro aspettative, approvando quindi il prodotto finale realizzato.

== Conclusioni
Si termina così l'incontro finale con l'azienda e il gruppo, ponendo fine al progetto. Il gruppo ringrazia l'azienda per la disponibilità e la collaborazione dimostrata durante tutto il periodo di lavoro. Si attende ora la conclusione della redazione della documentazione finale e la presentazione del PB con i professori Cardin e Vardanega.
