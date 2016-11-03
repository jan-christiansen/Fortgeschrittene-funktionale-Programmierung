
# Themenvorschläge


## Typen


### Theorems for free! - P. Wadler (1989)

Freie Theoreme sind Aussagen über funktionale Programme, die allein vom Typ einer Funktion abgeleitet werden können. Diese Aussagen hängen im Wesentlichen mit der Tatsache zusammen, dass polymorphe Funktionen keine Werte des polymorphen Typen erfinden können. Da eine Funktion außerdem keine Seiteneffekte ausführen kann, erhält man vergleichsweise starke Aussagen über polymorphe Funktionen, ohne deren Implementierung zu kennen. Die Arbeit war sehr einflussreich und freie Theoreme werden in vielen Bereichen genutzt, um Aussagen über funktionale Programme zu beweisen.

[Veröffentlichung](http://www.cs.sfu.ca/CourseCentral/831/burton/Notes/July14/free.pdf)


### Uniqueness typing simplified - E. De Vries and R. Plasmeijer and D. M. Abrahamson (2007)

In einem Typsystem mit _uniqueness types_ können bestimmte Variablen nur ein einziges Mal genutzt werden. Das Typsystem stellt dabei sicher, dass bestimmte Variablen tatsächlich nur einmal genutzt werden. Nutzt man eine solche Variablen in einem Programm mehrfach, liefert der Compiler einen Typfehler und das Programm lässt sich nicht übersetzen. Ein solches Typsystem kommt der in der funktionalen Programmiersprache Clean zum Einsatz, um Seiteneffekte in die Sprache zu integrieren.

[Veröffentlichung](https://pdfs.semanticscholar.org/42e7/e8c61a43578cafb8c9ed939d948f09c5e393.pdf)


### Liquidhaskell: Experience with refinement types in the real world - N. Vazou and E. L. Seidel and R. Jhala (2014)

Liquidhaskell ist eine Implementierung von _refinement types_ für Haskell. Ein Typsystem mit _refinement types_ erlaubt es, sehr viel stärkere Aussagen über Programme zu treffen als es mit Typsystemen wie dem von Haskell möglich ist. So ist es zum Beispiel möglich im Typen die Länge einer Liste auszudrücken. Damit erhält man zum Beispiel die Garantie, dass man nie versucht, auf einen Index außerhalb einer Liste zuzugreifen. Typsysteme wie _refinement types_ eignen sich gut, um sicherheitskritische Anwendungen zu entwickeln. Die Arbeit stellt die Haskell-Bibliothek an einer Reihe von Beispielen vor und zeigt, welche Arten von Garantieren, man mit Hilfe dieser Typen über Programme erhält.

[Veröffentlichung](http://goto.ucsd.edu/~nvazou/real_world_liquid.pdf)


### Propositions as types - P. Wadler (2015)

In dieser Arbeit geht es um den Zusammenhang zwischen Logik und den Typen in einer funktionalen Programmiersprache. Die Arbeit ist relativ verständlich geschrieben und erfordert wenig Vorwissen, da es sich nicht um eine wissenschaftliche Veröffentlichung sondern um eine Art Zeitschriftenartikel handelt. Der Artikel ist in den Communications of the ACM erschienen, einer monatlichen Serie von Artikeln der amerikanischen Gesellschaft für Informatik. Daher adressiert der Artikel Personen aus allen Bereichen der Informatik. Das Thema an sich ist aber sehr abstrakt und beleuchtet einen sehr grundlegenden Zusammenhang zwischen zwei formalen Systemen.

[Veröffentlichung](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.673.269&rep=rep1&type=pdf)


## Compiler-Optimierungen


### A short cut to deforestation - A. Gill and J. Launchbury and S. L. Peyton Jones (1993)

Bei der Programmierung in einer funktionalen Sprache werden sehr viele Zwischendatenstrukturen erzeugt. Wenn wir zum Beispiel zuerst die Funktion _map_ und im Anschluss die Funktion _filter_ auf eine Liste anwenden, wird durch _map_ eine Liste erzeugt, die durch _filter_ wieder konsumiert wird. Compiler-Optimierungen, die die Erzeugung solcher Zwischendatenstrukturen verhindern, bezeichnet man als _deforestation_. In dieser Arbeit wird einer der ersten Ansätze für _deforestation_ präsentiert, der auch heute noch Verwendung findet.

[Veröffentlichung](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.224.4460&rep=rep1&type=pdf)


## Abstraktionen


### A tutorial on the universality and expressiveness of fold - G. Hutton (1999)

Diese Arbeit diskutiert die Funktion _fold_ auf einer Liste und welche Art von Funktionen man mit Hilfe der Funktion _fold_ definieren kann. Grundsätzlich gibt es bestimmte Arten von Rekursion, die sich nicht durch ein _fold_ ausdrücken lassen. Es zeigt sich aber, dass sich in einer funktionalen Programmiersprache mehr Funktionen mit Hilfe von _fold_ ausdrücken lassen, als man auf den ersten Blick vermuten würde.

[Veröffentlichung](http://eprints.nottingham.ac.uk/224/1/fold.pdf)


### The under-appreciated unfold -J. Gibbons and G. Jones (1998)

Neben der Funktion _fold_ gibt es noch die Funktion _unfold_, die eine Art Gegenspieler zur Funktion _fold_ darstellt. Während _fold_ eine Liste konsumiert, ist es mit der Funktion _unfold_ möglich, eine Liste zu generieren. Während die Idee eines Folds inzwischen auch in anderen Programmiersprachen zum Einsatz kommt, ist die Funktion _unfold_ auch in Haskell immer noch vergleichsweise selten in Gebrauch. Die Arbeit stellt eine Implementierung einer Breitensuche auf einem Baum mit Hilfe der Funktion _unfold_ vor.

[Veröffentlichung](http://www.cs.ox.ac.uk/people/jeremy.gibbons/publications/unfold.ps.gz)


### Monad transformers and modular interpreters - S. Liang and P. Hudak and M. Jones (1995)

In dieser Arbeit werden _monad transformer_ vorgestellt. Diese erlauben es, mehrere Monaden zu einer neuen Monade zu kombinieren und damit Effekte, die durch eine Monade definiert werden können, zu kombinieren. In praktischen Anwendungen kommen solche _monad stacks_ sehr häufig zum Einsatz, weshalb die Vor- und Nachteile von _monad transformer_ immer noch ein Thema aktueller Forschung sind.

[Veröffentlichung](https://pdfs.semanticscholar.org/a10b/695bbadd23ba02f4355e9aa2626245f0f5c8.pdf)


### Programming with arrows - J. Hughes (2004)

Arrows sind, ähnlich wie Monaden ein allgemeines Konzept zur Abstraktion. Die Arbeit stellt die Idee der _arrows_ so wie praktische Anwendungen dieser Abstraktion vor. Die Arbeit ist vergleichsweise lang, dafür setzt sie aber nur ein geringes Vorwissen voraus, da es sich um den Inhalt einer vorgeschrittenen Vorlesung handelt.

[Veröffentlichung](https://karczmarczuk.users.greyc.fr/TEACH/Doc/afp-arrows.pdf)


### Generics for the masses - R. Hinze (2004)

Diese Arbeit stellt einen Ansatz zur generischen Programmierung in Haskell vor. Die generische Programmierung erlaubt es, eine einzelne Funktion zu definieren, die auf einer Vielzahl von Typen genutzt werden kann. Im Unterschied zu einer polymorphen Funktion verhält sich eine generische Funktion nicht für alle Typen gleich, sondern trifft Entscheidungen abhängig von der Struktur des Typen. Typische Beispiele für generische Funktionen sind zum Beispiel die strukturelle Gleichheit von Werten oder die Funktion _show_.

[Veröffentlichung](http://www.cs.ox.ac.uk/ralf.hinze/publications/ICFP04.pdf)


### Applicative programming with effects - C. McBride and R. Paterson (2008)

Diese Arbeit stellt die Typklasse _Applicative_ vor. Diese Typklasse stellt ähnlich wie eine Monade eine Abstraktion verschiedener Strukturen dar. Die Typklassen _Monad_ und _Applicative_ sind sehr eng miteinander verwandt. Einige Strukturen erfüllen die Anforderung der Typklasse _Applicative_, sind aber keine Monade. Die Entwicklung der Typklasse _Applicative_ wurde vor allem durch Entwicklungen im Bereich der Parserkombinatoren vorangetrieben, erwies sich aber als sehr viel grundlegender.

[Veröffentlichung](http://staff.city.ac.uk/~ross/papers/Applicative.pdf)


### All Sorts of Permutations - J. Christiansen and N. Danilenko and S. Dylus (2016)

Diese Arbeit demonstriert einen Zusammenhang zwischen Sortieren und Permutieren in Haskell. Sortieren beschreibt dabei die Aufgabe mit Hilfe einer Vergleichsfunktion eine Liste von Werten in die richtige Reihenfolge zu bringen. Beim Permutieren wird für eine Liste jede mögliche Reihenfolge der Liste generiert. Der Zusammenhang basiert darauf, dass man zwei verschiedene Instanzen einer monadischen Funktion betrachtet. Dieser Zusammenhang ist nicht auf Sortieren und Permutieren beschränkt, sondern lässt sich auch auf andere Funktionen anwenden, zum Beispiel auf die Funktion _filter_.

[Veröffentlichung](http://informatik.uni-kiel.de/~sad/icfp2016-preprint.pdf)


## Datenstrukturen


### Explaining binomial heaps - R. Hinze (1999)

Die Arbeit führt die Datenstruktur _binomial heap_ ein und ist explizit für Leser mit grundlegenden Haskell-Kenntnissen geschrieben. Die Datenstruktur fasst ähnlich wie eine Liste mehrere Werte zusammen und erlaubt effizientes Einfügen von neuen Elementen und Finden und Entfernen des minimalen Elementes im Heap. Ein binomial Heap eignet sich zum Beispiel zur Implementierung einer Prioritäten-Warteschlange.

[Veröffentlichung](https://www.google.de/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&ved=0ahUKEwj_rqGuqd3PAhWE2CwKHTeEBjcQFgghMAE&url=http%3A%2F%2Fwww.cs.ox.ac.uk%2Fralf.hinze%2Fpublications%2FBinomialHeaps.ps.gz&usg=AFQjCNEZRErn829vcyom1zPUR822jDGwlA&bvm=bv.135974163,d.bGg)


### Inductive graphs and functional graph algorithms - M. Erwig (2001)

Graphen lassen sich in funktionalen Programmiersprachen nicht sehr gut abbilden, da Werte in funktionalen Sprachen immer auf Wertgleichheit getestet werden und nicht auf Referenzgleichheit. Daher lassen sich die klassischen Implementierungen von Graphalgorithmen nicht elegant in eine funktionale Programmiersprache übersetzen. Diese Arbeit stellt stellt eine Modellierung von Graphen vor, die sich sehr viel besser in das funktionale Programmierparadigma passt.

[Veröffentlichung](https://www.researchgate.net/profile/Martin_Erwig/publication/2364482_Inductive_Graphs_and_Functional_Graph_Algorithms/links/5439ae4f0cf2d6698be167f3.pdf)


## Testen


### QuickCheck: a lightweight tool for random testing of Haskell programs - K. Claessen and J. Hughes (2011)

Diese Arbeit stellt eine Bibliothek mit dem Namen QuickCheck und das Konzept des _property-based testing_ vor. Während bei einem Unit-Test normalerweise eine Eigenschaft für ein paar Beispieleingaben getestet wird, wird beim _property-based testing_ eine Eigenschaft sehr viele, zufällig generierte Eingaben getestet. Auf diese Weise kann eine Funktion ohne großen Aufwand für eine Vielzahl von Testfällen getestet werden. Die Erzeugung der Testeingaben wird durch die Struktur des Typs der Eingaben geleitet. Die Idee des _property-based testing_ hat inzwischen Einzug in fast alle stark getypten Programmiersprachen gehalten. So gibt es reimplementieren des QuickCheck-Ansatzes in Programmiersprachen wie Scala, Java, Swift und Objective-C.

[Veröffentlichung](http://www.cs.tufts.edu/~nr/cs257/archive/john-hughes/quick.pdf)


### Debugging Haskell by Observing Intermediate Data Structures - A. Gill (2000)

Da funktionale Programme sehr viel abstrakter sind als imperative Programme, lassen sich Konzepte zum Debuggen von Programmen nicht einfach von imperativen auf funktionale Programmiersprachen übertragen. Diese Arbeit stellt ein Konzept zum Debuggen von funktionalen Programmen vor, das sich als einfache Bibliothek implementieren lässt. Das heißt, es ist nicht notwendig, den Compiler abzuändern, sondern der Debugger steht durch eine einfache Import-Anweisung zur Verfügung. Die vorgestellte Form des Debuggings eignet sich besonders gut, um das Verhalten der Faulheit zu observieren.

[Veröffentlichung](http://www.ittc.ku.edu/~andygill/papers/Hood00.pdf)


## Nebenläufigkeit/Ausnahmebehandlung/Foreign Function Interface


### Tackling the awkward squad - S. P. Jones (2010)

Die Arbeit zeigt, wie einige Konzepte der imperativen Programmierung in Haskell integriert werden. Zuerst wird illustriert, wie die IO-Monade implementiert und wie diese formal modelliert werden kann. Daneben werden noch Konzepte wie veränderbare Speicherzellen, Nebenläufigkeit, Ausnahmebehandlung und das Foreign Function Interface (FFI) vorgestellt. Das FFI stellt ein Konzept zur Verfügung, um andere Programmiersprachen, zum Beispiel C an Haskell anzubinden. Es handelt sich bei der Arbeit um Lecture Notes, die Simon Peyton Jones bereits im Jahr 2000 bei einer Summer School verwendet hat. Das Dokument wurde seitdem mehrfach überarbeitet und an den aktuellen Stand angepasst.

[Veröffentlichung](http://research.microsoft.com/en-us/um/people/simonpj/Papers/marktoberdorf/mark.pdf.gz)


### Concurrent haskell - S. P. Jones and A. Gordon and S. Finne (1996)

Die Arbeit stellt die Bibliothek Concurrent Haskell vor. Diese Bibliothek kann genutzt werden, um nebenläufige Programme also Programme mit Threads und geteilten Ressourcen in Haskell zu schreiben. Während das Abstraktionsniveau der Bibliothek relativ niedrig ist, da es sich um die erste Bibliothek dieser Art für Haskell handelt, sind Konzepte wie geteilte Variable und Semaphore so klar umgesetzt, dass die Bibliothek sich immer noch gut eignet, um grundlegende Algorithmen der nebenläufigen Programmierung klar zu modellieren.

[Veröffentlichung](http://research.microsoft.com/en-us/um/people/simonpj/papers/concurrent-haskell.pdf)


### Composable memory transactions - T. Harris and S. Marlow and S. Peyton-Jones and M. Herlihy (2005)

Diese Arbeit stellt das Konzept des Software Transactional Memory (STM) vor. Dieses Konzept lehnt sich an das Transaktionskonzept aus dem Bereich der Datenbanken an und kann genutzt werden, um einfacher nebenläufige Programme zu schreiben. Dabei werden Änderungen an geteilten Variablen nur vorgenommen, wenn alle beteiligten Threads einen konsistenten Blick auf die Werte der veränderten Variablen hatten. Auf diese Weise können nebenläufige Programme auf einer hohen Abstraktionsebene implementiert werden. Das STM-Konzept wurde auch für andere Programmiersprachen implementiert, konnte sich dort aber, auf Grund von Seiteneffekten, die nicht mit diesem Ansatz harmonieren, nicht durchsetzen.

[Veröffentlichung](https://cs.uwaterloo.ca/~Brecht/courses/702/Possible-Readings/transactional-memory/composable-mem-trans-ppopp-2005.pdf)


## Security


### Two can keep a secret, if one of them uses Haskell - A. Russo (2015)

In dieser Arbeit wird eine Bibliothek für _Mandatory Access Control (MAC)_ oder _Information-Flow Control (IFC)_ vorgestellt. Während der erste Begriff aus dem Bereich der Betriebssysteme stammt, kommt der zweite Begriff aus dem Bereich der Programmiersprachen. Die Arbeit zeigt, wie man mit Hilfe des Typsystems von Haskell eine Bibliothek entwerfen kann, die nur eingeschränkten Zugriff auf gewisse Informationen erlaubt.

[Veröffentlichung](https://pdfs.semanticscholar.org/4be7/7d8e77c95deac350e757220c45c051ace4f5.pdf)


## Domain Specific Languages


### Monadic parsing in Haskell - G. Hutton and E. Meijer (1998)

Diese Arbeit stellt die Idee der Parserkombinatoren vor. Ein Parser ist eine Funktion, die eine Zeichenkette analysiert, zerlegt und in einen strukturierten Datentypen umwandelt. Parserkombinatoren bieten die Möglichkeit einen solchen Parser einfach zu definieren, indem die zur Verfügung gestellten Kombinatoren verwendet werden. Die Idee der Parserkombinatoren wurde inzwischen in einer Vielzahl von Programmiersprachen implementiert, so gibt es Bibliotheken für Parserkombinatoren zum Beispiel in Java, C#, Ruby, C++, Python und JavaScript.

[Veröffentlichung](http://www.cs.nott.ac.uk/~pszgmh/pearl.pdf)


### Probabilistic functional programming in Haskell - M. Erwig and S. Kollmansberger (2006)

Probabilistische Programmiersprachen erlauben es, einfach die Berechnung von Wahrscheinlichkeiten zu modellieren. Solche Programmiersprachen werden zum Beispiel im Bereich der künstlichen Intelligenz zur Modellierung von neuronalen Netzen genutzt. Die Arbeit demonstriert, wie man in Haskell eine Bibliothek zur probabilistischen Programmierung einfach mit Hilfe einer monadischen Abstraktion implementieren kann.

[Veröffentlichung](http://icerote.net/doc/library/programming/fp/Probabilistic%20functional%20programming%20in%20Haskell.pdf)


## Web-Entwicklung


### Type-Level Web APIs with Servant - A. Mestanogullari and S. Hahn and J. K. Arni and A. Löh (2015)

Servant ist eine Haskell-Bibliothek zur Entwicklung von Http-Servern. Die Bibliothek stellt Konzepte zur Verfügung, um typsicher Http-Schnittstellen zu beschreiben. Wird an der Beschreibung eine Änderung vorgenommen, kann das Programm erst wieder übersetzt werden, wenn die Dienste, die die Schnittstelle nutzen, ebenfalls angepasst sind. Da diese Arbeit vergleichsweise aktuell ist, kommen einige der aktuelleren Typ-Erweiterungen von Haskell zum Einsatz. Zum einen kann man an dieser Arbeit schön sehen, was man mit Hilfe dieser Erweiterungen alles ausdrücken kann, zum anderen muss man in Kauf nehmen, dass man sich in einige der Erweiterungen zumindest teilweise einlesen muss.

[Veröffentlichung](http://alpmestan.com/servant/servant-wgp.pdf)


### Vorstellung der Programmiersprache Elm

Die Programmiersprache Elm ist im Rahmen einer Masterarbeit entstanden und ist stark an Haskell angelegt. Die Sprache ist als Alternative für die Entwicklung des Frontends von Webanwendungen gedacht. Die Sprache setzte ursprünglich die Konzepte der funktional reaktiven Programmierung ein. Da es keine gut lesbare Veröffentlichung zu Elm gibt, muss als Bestandteil dieses Themas eine Literaturrecherche betrieben werden, um nutzbare Quellen zu finden. Neben der Einordnung der Sprache in den Bereich der Webentwicklung sollte ein Vergleich zu Haskell gezogen werden.

[Internetseite](http://elm-lang.org)


### Vorstellung der Programmiersprache PureScript

Die Programmiersprache PureScript ist ebenfalls sehr eng an die Programmiersprache Haskell angelegt. Die Sprache wird nach JavaScript übersetzt und ist als Alternative für JavaScript gedacht. Ein Ziel der Entwicklung war ein Compiler, der gut lesbaren JavaScript-Code erzeugt. Da es keine Veröffentlichung zu PureScript gibt, muss als Bestandteil dieses Themas eine Literaturrecherche betrieben werden, um nutzbare Quellen zu finden. Neben der Einordnung der Sprache in den Bereich der Webentwicklung sollte ein Vergleich zu Haskell gezogen werden.

[Internetseite](http://www.purescript.org)


## Weitere Programmiersprachen


### Vorstellung der Programmiersprache Coq

Coq ist eine funktionale Programmiersprache, die außerdem einen interaktiven Beweisassistenten zur Verfügung stellt, um Aussagen über die Programme zu beweisen. Das heißt, man kann zum Beispiel funktionale Programme in Coq schreiben und dann Aussagen über diese Programme beweisen. Ein Beweis besteht dabei aus einer Reihe von Schritten, die man ebenfalls in die Programmdatei schreibt. Der Compiler überprüft dann beim Übersetzen des Programms, ob die Schritte des Beweises richtig sind. Man kann mit Hilfe von Coq aber nicht nur Aussagen über funktionale Programme beweisen. So wurde zum Beispiel mit Hilfe von Coq die Korrektheit eines C-Compilers bewiesen (http://compcert.inria.fr), der zum Beispiel bei der Entwicklung von hoch-sicherheitskritischen Systemen wie Atomkraftwerken zum Einsatz kommt. Die Korrektheit des C-Compilers stellt sicher, dass der C-Compiler bei der Übersetzung und Optimierung des Codes die Bedeutung des Programms nicht verändert.

[Internetseite](https://coq.inria.fr)
