#import "/templates/template.typ": *

#show: content=>verbale(
  data: "04 novembre 2024", 
  titolo: "Seconda riunione", 
  responsabile: "Andrea Perozzo", 
  redattori: ("Andrea Precoma",), 
  verificatori: (
    "Davide Marin",
    "Riccardo Milan"
  ),
  versioni: (
    "1.0.0", 
    [04/11/2024], 
    "Andrea Precoma",
    "Davide Marin\nRiccardo Milan",
    [
      - Stesura verbale
    ]
  ),
  riassunto: "Vengono descritte le norme da seguire per la corretta struttura e utilizzo della repository. Inoltre sono delineate le modifiche effettuate ai documenti relativi ai verbali.",
  content: content
)

#infoRiunione(
  data: "04/11/2024", durata: "2 ore e 40 minuti", luogo: "Chiamata Discord", ora: "15:00", partecipantiEsterni: (),
)

= Ordine del giorno
In seguito alla lezione dedicata all'aggiudicazione degli appalti e ai chiarimenti del docente Vardanega abbiamo provveduto ad apportare delle modifiche rispetto ai punti giudiati deboli o errati.

== Ridefinizione della struttura della GitHub repository
=== Branches
Nel branch principale, denominato *main*, viene pubblicato il codice sorgente in linguaggio *typist* che è stato sottoposto a verifica e approvato. Qualora si debba apportare delle modifiche ai file viene creato un branch apposito nel quale si pubblicano i file modificati. I verificatori si occuperanno poi di visionarli e in caso approvarli unendoli al branch principale.

=== Automazione
Per automatizzare il processo di pubblicazione dei documenti è stata configurata una *GitHub action* che compila i file .typ e li pubblica nel sito #link("https://sweatunipd.github.io/docs/")[#text(weight: "bold", fill: rgb("04E824"),underline("https://sweatunipd.github.io/docs/"))]. Attualmente viene eseguita solo sui file nel branch main ma abbiamo in piano di estenderla anche ai branch temporanei per testare la compilazione anche sui documenti appena modificati. Poiché i verbali esterni devono essere firmati dalla controparte abbiamo pensato di pubblicare automaticamente i documenti senza la firma in modo che possano essere visionati in qualsiasi momento dai docenti in caso di necessità; quando in un secondo momento la controparte restituisce il documento firmato, questo viene aggiunto manualmente nella cartella dist/candidatura/verbali/esterni in modo che la GitHub action sovrascriva nel sito il vecchio documento con quello firmato.

=== Sistema di ticketing
Abbiamo creato una board con tre stati (todo, in progess, done) in modo da tracciare le azioni di stesura e modifica dei documenti con delle *issue*. Inoltre viene utilizzata la richiesta di verifica tramite *pull request*: i redattori che hanno apportato delle modifiche mandano delle pull request ai verificatori i quali, in caso di approvazione, chiudono la issue corrispondente. L'approvazione della pull request provoca la chiusura automatica del branch temporaneo utilizzato dai redattori.

=== Suddivisione cartelle
Al momento è presente la cartella *Candidatura* ma abbiamo in programma di creare le cartelle *RTB* e *PB* rispettivamente per i documenti relativi alla Requirements and Technology Baseline e alla Product Baseline. In ogni "macro cartella" sono presenti i relativi documenti di progetto, verbali esterni e interni.

La cartella *assets* è dedicata alle risorse usate nei documenti quali immagini e font.

Nella cartella *templates* sono presenti i file template usati per i documenti in typist e per i diari di bordo, quest'ultimi non pubblicati nella repository perché hanno uno scopo "usa e getta".

La cartella *dist/candidatura/verbali/esterni* viene utilizzata per pubblicare i verbali esterni firmati come è spiegato dettagliatamente nella sezione Automazione.

=== Norme di nomenclatura
Per nominare le cartelle e i file è stato scelto lo stile *snake case* ad eccezione delle date, scritte in formato aaaa-mm-gg per mantenere l'ordine cronologico, separate dal trattino.

I verbali seguono il seguente stile: *[VI/VE]\_[aaaa-mm-gg]\_ver[A.B.C]* dove VI e VE indicano rispettivamente i verbali interni ed esterni, segue poi la data in cui è avvenuto l'incontro descritto dal verbale e la versione del file. I documenti diversi dai verbali ma che sono comuqnue inclusi in un ciclo di vita seguono il seguente stile: *[nome]\_ver[A.B.C]*.

In relazione alla documentazione abbiamo ritenuto opportuno suddividere i tre indicatori della versione come segue:
- *A* per le modifiche consistenti del contenuto (si omettono quindi leggeri cambi di punteggiatura o ortografia).
- *B* per le modifiche consistenti della struttura quali ad esempio rinominazione dei paragrafi.
- *C* per le modifiche di stile.

== Template dei verbali
Per esplicitare meglio la "decisione" che motiva le riunioni e di conseguenza i verbali abbiamo pensato di aggiungere un paragrafo in calce ai verbali che spiegasse in modo chiaro perché sono state affrontate determinate scelte e cosa si ha in programma di fare conseguentemente alle stesse. Inoltre è stato rimosso il logo di UniPD dalla prima pagine e sostituito con una breve sezione "Riassunto del verbale".

È stato modificato il registro delle modifiche aggiungendo per ogni riga anche i nomi dei verificatori in modo da indicare che le modifiche apportate in quella determinata versione sono state verificate e, se necessario, si hanno le informazioni per risalire agli autori.

= Conclusioni
Il gruppo si impegna a mantenere in atto le norme decise nella riunione e riportate a verbale in modo da produrre una valida candidatura. Verranno inoltre aggiornati i vecchi documenti secondo le norme precedentemente accordate per manetenere continuità. Essendo ancora nelle prime fasi infatti abbiamo ritenuto che fosse meglio uniformare tutti i documenti per stabilire una struttura solida. Parte delle decisioni prese rientrano nel *way of working*, pertanto andranno integrate nel documento *Norme di progetto* che verrà affrontato più avanti durante il corso.