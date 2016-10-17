
# Themenvorschläge


## Nebenläufigkeit


### Concurrent haskell - S. P. Jones and A. Gordon and S. Finne (1996)

Die Arbeit stellt die Bibliothek Concurrent Haskell vor. Diese Bibliothek kann genutzt werden, um nebenläufige Programme also Programme mit Threads und geteilten Ressourcen in Haskell zu schreiben. Während das Abstraktionsniveau der Bibliothek relativ niedrig ist, da es sich um die erste Bibliothek dieser Art für Haskell handelt, sind Konzepte wie geteilte Variable und Semaphore so klar umgesetzt, dass die Bibliothek sich immer noch gut eignet, um grundlegende Algorithmen der nebenläufigen Programmierung klar zu modellieren.

[Veröffentlichung](http://research.microsoft.com/en-us/um/people/simonpj/papers/concurrent-haskell.pdf)


### Composable memory transactions - T. Harris and S. Marlow and S. Peyton-Jones and M. Herlihy (2005)

Diese Arbeit stellt das Konzept des Software Transactional Memory (STM) vor. Dieses Konzept lehnt sich an das Transaktionskonzept aus dem Bereich der Datenbanken an und kann genutzt werden, um einfacher nebenläufige Programme zu schreiben. Dabei werden Änderungen an geteilten Variablen nur vorgenommen, wenn alle beteiligten Threads einen konsistenten Blick auf die Werte der veränderten Variablen hatten. Auf diese Weise können nebenläufige Programme auf einer hohen Abstraktionsebene implementiert werden. Das STM-Konzept wurde auch für andere Programmiersprachen implementiert, konnte sich dort aber, auf Grund von Seiteneffekten, die nicht mit diesem Ansatz harmonieren, nicht durchsetzen.

[Veröffentlichung](https://cs.uwaterloo.ca/~Brecht/courses/702/Possible-Readings/transactional-memory/composable-mem-trans-ppopp-2005.pdf)


## Datenstrukturen


### Explaining binomial heaps - R. Hinze (1999)

Die Arbeit führt die Datenstruktur _binonmial heap_ ein und ist explizit für Leser mit grundlegenden Haskell-Kenntnissen geschrieben. Die Datenstruktur fasst ähnlich wie eine Liste mehrere Werte zusammen und erlaubt effizientes Einfügen von neuen Elementen und Finden und Entfernen des minimalen Elementes im Heap. Ein binomial Heap eignet sich zum Beispiel zur Implementierung einer Prioritäten-Warteschlange.

[Veröffentlichung](https://www.google.de/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&ved=0ahUKEwj_rqGuqd3PAhWE2CwKHTeEBjcQFgghMAE&url=http%3A%2F%2Fwww.cs.ox.ac.uk%2Fralf.hinze%2Fpublications%2FBinomialHeaps.ps.gz&usg=AFQjCNEZRErn829vcyom1zPUR822jDGwlA&bvm=bv.135974163,d.bGg)


## Abstraktionen


### A tutorial on the universality and expressiveness of fold - G. Hutton (1999)

Diese Arbeit diskutiert die Funktion fold auf einer Liste und welche Art von Funktionen man mit Hilfe der Funktion fold definieren kann. Grundsätzlich gibt es bestimmte Arten von Rekursion, die sich nicht durch ein fold ausdrücken lassen. Es zeigt sich aber, dass sich in einer funktionalen Programmiersprache mehr Funktionen mit Hilfe von fold ausdrücken lassen, als man auf den ersten Blick vermuten würde.

[Veröffentlichung](http://eprints.nottingham.ac.uk/224/1/fold.pdf)


### The under-appreciated unfold -J. Gibbons and G. Jones (1998)

Neben der Funktion fold gibt es noch die Funktion unfold, die eine Art Gegenspieler zur Funktion fold darstellt. Während fold eine Liste konsumiert, ist es mit der Funktion unfold möglich, eine Liste zu generieren. Während die Idee eines Folds inzwischen auch in anderen Programmiersprachen zum Einsatz kommt, ist die Funktion unfold auch in Haskell immer noch vergleichsweise selten in Gebrauch. Die Arbeit stellt eine Implementierung einer Breitensuche auf einem Baum mit Hilfe der Funktion unfold vor.

[Veröffentlichung](http://www.cs.ox.ac.uk/people/jeremy.gibbons/publications/unfold.ps.gz)


### Monad transformers and modular interpreters - S. Liang and P. Hudak and M. Jones (1995)

In dieser Arbeit werden _monad transformer_ vorgestellt. Diese erlauben es, mehrere Monaden zu einer neuen Monade zu kombinieren und damit Effekte, die durch eine Monade definiert werden können, zu kombinieren. In praktischen Anwendungen kommen solche _monad stacks_ sehr häufig zum Einsatz, weshalb die Vor- und Nachteile von _monad transformer_ immer noch ein Thema aktueller Forschung sind.

[Veröffentlichung](https://pdfs.semanticscholar.org/a10b/695bbadd23ba02f4355e9aa2626245f0f5c8.pdf)


### Programming with arrows - J. Hughes (2004)

Arrows sind, ähnlich wie Monaden ein allgemeines Konzept zur Abstraktion. Die Arbeit stellt die Idee der _arrows_ so wie praktische Anwendungen dieser Abstraktion vor. Die Arbeit ist vergleichsweise lang, dafür setzt sie aber nur ein geringes Vorwissen voraus, da es sich um den Inhalt eine vorgeschrittenen Vorlesung handelt.

[Veröffentlichung](http://www.academia.edu/download/30725172/Varmo_Vene_Advanced_Functional_Programming_5_co.pdf#page=80)


### Monadic parsing in Haskell - G. Hutton and E. Meijer (1998)

Diese Arbeit stellt die Idee der Parserkombinatoren vor. Ein Parser ist eine Funktion, die eine Zeichenkette analysiert, zerlegt und in einen strukturierten Datentypen umwandelt. Parserkombinatoren bieten die Möglichkeit einen solchen Parser einfach zu definieren, indem die zur Verfügung gestellten Kombinatoren verwendet werden. Die Idee der Parserkombinatoren wurde inzwischen in einer Vielzahl von Programmiersprachen implementiert, so gibt es Bibliotheken für Parserkombinatoren zum Beispiel in Java, C#, Ruby, C++, Python und JavaScript.

[Veröffentlichung](http://www.cs.nott.ac.uk/~pszgmh/pearl.pdf)


### All Sorts of Permutations - J. Christiansen and N. Danilenko and S. Dylus (2016)

Diese Arbeit demonstriert einen Zusammenhang zwischen Sortieren und Permutieren in Haskell. Sortieren beschreibt dabei die Aufgabe mit Hilfe einer Vergleichsfunktion eine Liste von Werten in die richtige Reihenfolge zu bringen. Beim Permutieren wird für eine Liste jede mögliche Reihenfolge der Liste generiert. Der Zusammenhang basiert darauf, dass man zwei verschiedene Instanzen einer monadischen Funktion betrachtet. Dieser Zusammenhang ist nicht auf Sortieren und Permutieren beschränkt, sondern lässt sich auch auf andere Funktionen anwenden, zum Beispiel auf die Funktion filter.

[Veröffentlichung](http://informatik.uni-kiel.de/~sad/icfp2016-preprint.pdf)


## Testen


### QuickCheck: a lightweight tool for random testing of Haskell programs - K. Claessen and J. Hughes (2011)

Diese Arbeit stellt eine Bibliothek mit dem Namen QuickCheck und das Konzept des _property-based testing_ vor. Während bei einem Unit-Test normalerweise eine Eigenschaft für ein paar Beispieleingaben getestet wird, wird beim _property-based testing_ eine Eigenschaft sehr viele, zufällig generierte Eingaben gestestet. Auf diese Weise kann eine Funktion ohne großen Aufwand für eine Vielzahl von Testfällen getestet werden. Die Erzeugung der Testeingaben wird durch die Struktur des Typs der Eingaben geleitet. Die Idee des _property-based testing_ hat inzwischen Einzug in fast alle stark getypten Programmiersprachen gehalten. So gibt es reimplementieren des QuickCheck-Ansatzen in Programmiersprachen wie Scala, Java, Swift und Objective-C.

[Veröffentlichung](http://www.cs.tufts.edu/~nr/cs257/archive/john-hughes/quick.pdf)


### Debugging Haskell by Observing Intermediate Data Structures - A. Gill (2000)

Da funktionale Programme sehr viel abstrakter sind als imperative Programme, lassen sich Konzepte zum Debuggen von Programmen nicht einfach von imperativen auf funktionale Programmiersprachen übertragen. Diese Arbeit stellt ein Konzept zum Debuggen von funktionalen Programmen vor, das sich als einfache Biliothek implementieren lässt. Das heißt, es ist nicht notwendig, den Compiler abzuändern, sondern der Debugger steht durch eine einfache Import-Anweisung zur Verfügung. Die vorgestellte Form des Debuggings eignet sich besonders gut, um das Verhalten der Faulheit zu obseriveren.

[Veröffentlichung](http://www.ittc.ku.edu/~andygill/papers/Hood00.pdf)


## Security


### Two can keep a secret, if one of them uses Haskell - A. Russo (2015)

In dieser Arbeit wird eine Bibliothek für Mandatory Access Control (MAC) oder Information-Flow Control (IFC) vorgestellt. Während der erste Begriff aus dem Bereich der Betriebssysteme stammt, kommt der zweite Begriff aus dem Bereich der Programmiersprachen. Die Arbeit zeigt, wie man mit Hilfe des Typsystems von Haskell eine Bibliothek entwerfen kann, die nur eingeschränkten Zugriff auf gewisse Informationen erlaubt.

[Veröffentlichung](https://pdfs.semanticscholar.org/4be7/7d8e77c95deac350e757220c45c051ace4f5.pdf)


## Typen


## Theorems for free! - P. Wadler (1989)

Freie Theoreme sind Aussagen über funktionale Programme, die allein vom Typ einer Funktion abgeleitet werden können. Diese Aussagen hängen im Wesentlichen mit der Tatsache zusammen, dass polymorphe Funktionen keine Werte des polymorphen Typen erfinden können. Da eine Funktion außerdem keine Seiteneffekte ausführen kann, erhält man vergleichsweise starke Aussagen über polymorphe Funktionen, ohne deren Implementierung zu kennen. Die Arbeit war sehr einflussreich und freie Theoreme werden in vielen Bereichen genutzt, um Aussagen über funktionale Programme zu beweisen.

[Veröffentlichung](http://www.cs.sfu.ca/CourseCentral/831/burton/Notes/July14/free.pdf)


## Uniqueness typing simplified - E. De Vries and R. Plasmeijer and D. M. Abrahamson (2007)

In einem Typsystem mit _uniqueness types_ können bestimmte Variablen nur ein einziges Mal genutzt werden. Das Typsystem stellt dabei sicher, dass bestimmte Variablen tatsächlich nur einmal genutzt werden. Nutzt man eine solche Variablen in einem Programm mehrfach, liefert der Compiler einen Typfehler und das Programm lässt sich nicht übersetzen. Ein solches Typsystem kommt der in der funktionalen Programmiersprache Clean zum Einsatz, um Seiteneffekte in die Sprache zu integrieren.

[Veröffentlichung](ftp://ftp.theochem.ru.nl/pub/SoftwEng.FunctLang/papers/2008/vrie08-IFL07-UniquenessTypingSimplified.pdf)


## Liquidhaskell: Experience with refinement types in the real world - N. Vazou and E. L. Seidel and R. Jhala (2014)

Liquidhaskell ist eine Implementierung von _refinement types_ für Haskell. Ein Typsystem mit _refinement types_ erlaubt es, sehr viel stärkere Aussagen über Programme zu treffen als es mit Typsystemen wie dem von Haskell möglich ist. Aus diesem Grund sind _refinement types_ gut geeignet, um sicherheitskritische Anwendungen zu entwickeln. Die Arbeit stellt die Haskell-Bibliothek an einer Reihe von Beispielen vor und zeigt, welche Arten von Garantieren, man mit Hilfe dieser Typen über Programme erhält.

[Veröffentlichung](http://goto.ucsd.edu/~nvazou/real_world_liquid.pdf)


## Propositions as types - P. Wadler (2015)

In dieser Arbeit geht es um den Zusammenhang zwischen Logik und den Typen in einer funktionalen Programmiersprache. Die Arbeit ist relativ verständlich geschrieben und erfordert wenig Vorwissen, da es sich nicht um eine wissenschaftliche Veröffentlichung sondern um eine Art Zeitschriftenartikel handelt. Der Artikel ist in den Communications of the ACM erschienen, einer monatlichen Serie von Artikeln der amerikanischen Gesellschaft für Informatik. Daher adressiert der Artikel Personen aus allen Bereichen der Informatik. Das Thema an sich ist aber sehr abstrakt und beleuchtet einen sehr grundlegenden Zusammenhang zwischen zwei formalen Systemen.

[Veröffentlichung](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.673.269&rep=rep1&type=pdf)


## Web-Entwicklung


### Type-Level Web APIs with Servant - A. Mestanogullari and S. Hahn and J. K. Arni and A. Löh (2015)

Servant ist eine Haskell-Bibliothek zur Entwicklung von Http-Servern. Die Bibliothek stellt Konzepte zur Verfügung, um typsicher Http-Schnittstellen zu beschreiben. Wird an der Beschreibung eine Änderung vorgenommen, kann das Programm erst wieder übersetzt werden, wenn die Dienste, die die Schnittstelle nutzen, ebenfalls angepasst sind. Da diese Arbeit vergleichsweise aktuell ist, kommen einige der aktuelleren Typ-Erweiterungen von Haskell zum Einsatz. Zum einen kann man an dieser Arbeit schön sehen, was man mit Hilfe dieser Erweiterungen alles ausdrücken kann, zum anderen muss man in Kauf nehmen, dass man sich in einige der Erweiterungen zumindest teilweise einlesen muss.

[Veröffentlichung](http://alpmestan.com/servant/servant-wgp.pdf)


### Vorstellung der Programmiersprache Elm

Die Programmiersprache Elm ist im Rahmen einer Masterarbeit entstanden und ist stark an Haskell angelegt. Die Sprache ist als Alternative für die Entwicklung des Frontends von Webanwendungen gedacht. Die Sprache setzte ursprünglich die Konzepte der funktional reaktiven Programmierung ein. Da es keine gut lesbare Veröffentlichung zu Elm gibt, muss als Bestandteil dieses Themas eine Literaturrecherche betrieben werden, um nutbare Quellen zu finden. Neben der Einordnung der Sprache in den Bereich der Webentwicklung sollte ein Vergleich zu Haskell gezogen werden.

[Veröffentlichung](http://elm-lang.org)


### Vorstellung der Programmiersprache PureScript

Die Programmiersprache PureScript ist ebenfalls sehr eng an die Programmiersprache Haskell angelegt. Die Sprache wird nach JavaScript übersetzt und ist als Alternative für JavaScript gedacht. Ein Ziel der Entwicklung war ein Compiler, der gut lesbaren JavaScript-Code erzeugt. Da es keine Veröffentlichung zu PureScript gibt, muss als Bestandteil dieses Themas eine Literaturrecherche betrieben werden, um nutbare Quellen zu finden. Neben der Einordnung der Sprache in den Bereich der Webentwicklung sollte ein Vergleich zu Haskell gezogen werden.

[Veröffentlichung](http://www.purescript.org)
