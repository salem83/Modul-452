Glossar Modul 451
=================

Abnahmetest
> Formales Testen hinsichtlich der Benutzeranforderungen und -bedürfnisse bzw. der Geschäftsprozesse. Es wird durchgeführt, um einem Auftraggeber oder einer bevollmächtigten Instanz die Entscheidung auf der Basis der Abnahmekriterien zu ermöglichen, ob ein System anzunehmen ist oder nicht. [Nach IEEE 610]

Äquivalenzklassen
> Eingabedaten nach Bereichen einteilen welche vermutlich ein ähnliches Verhalten hervorrufen. Beispiel: `[0], [1-199]`

Black-Box-Test
> Funktionales oder nicht-funktionales Testen ohne Nutzung von Informationen über Interna eines Systems oder einer Komponente.

Box (black-, white-, grey)
> BlackBox: Testfälle werden anhand von der Spezifikation und Anforderungen erzeugt. Die durchführung wird unwissentlich der Implementation durchgefühert und ledlgich Ein- sowie ausgabe geprüft.
> Whitebox (Glassbox): hierbei wird der Quellcode auf seine Richtigkeit geprüft. Der Testfall steht aber in keinem Bezug zu den Anforderungen bzw. Spezifikationen. 
> Greybox: Testfälle werden anhand des Quellcodes erstellt, bei der ausführng wird dieser nicht beachtet. Es wird lediglich die Ein- und Ausgabe geprüft. Wird hauptsätlich bei Integrationstest implementiert.

Fehlerklasse
> Bei Fehlerklassen sind die Fehlerwirkungen in Kategorien eingeteilt. z.B.  0 = kein Fehler bis 5 = schwerwiegender Fehler (Programmabsturz oder korrupte Daten)

Fehlermaskierung
> Ein Fehlerzustand wird durch andere Fehlerzustände oder spezifische Konfigurationen kaschiert und ist (momentan) nicht sichtbar.

Fehlerwirkung
> Sicht- oder erlebbahrer Fehler im Programm.

Fehlerzustand
> Auch `Bug`. Fehler im Programm. Muss aber nicht nach aussen sichtbar sein!

Funktionaler Test
> Bei einem funktionalen Test wird eine Funktion gegenüber der Spezifikation und den Anforderungen geprüft. Die ist Bestandteil der Qualitätssicherung und wird in Form eines black-box Tests durch geführt.

Grenzwertanalyse
> Ein Black-Box-Testentwurfsverfahren, bei dem die Testfälle unter Nutzung von Grenzwerten entworfen werden. Siehe auch Grenzwert.

Integrationstest
> Testen mit dem Ziel, Fehlerzustände in den Schnittstellen und im Zusammenspiel zwischen integrierten Komponenten aufzudecken. Siehe auch Komponentenintegrationstest, Systemintegrationstest.

Kompontententest
> Auch Unit Test genant. Eine Komponennte/Klasse wird isoliert von den anderen getestet. Falls eine Instanz einer anderen Klasse benötigt wird, muss hierzu ein Stub erstellt werden.

Nicht-Funktionaler Test
> Hierbei werden Attribute wie Effizienz, Stabilität, Benutzbarkeit, Änderbarkeit/Wartbarkeit, Lasttest, Robustheit, Kompatibilität, Dokumentation geprüft.

Regressionstest
> Bei einem Regressionstest werden Testresultate historisch verglichen. Dies um zu prüfen ob eine Änderung keine auswirkung auf andere Komponenten hat.

Systemtest
> Gesamt System (End-System: UI, externen Schnittstellen, Betriebssystem, 3rd Party, SW als laufender Prozess) wird unter spezifischen Gesichtspunkten (Funktionalität (UseCases, Pflichtenheft) Nicht Funktional (Lasttest, Performance, Speicherverhalten, ...) getestet.

Testfall
> Der Testfall ist ein Dokument mit allen nötigen Informationen (Umgebung (HW/SW), Vor-/Nachbedingungen, Testobjekt, Testdaten, Testschritte) um ein Fehlerzustand zu reproduzieren und verifizieren.

Testfall (konkreter)
> Aufbauend auf logischem Testfall. Ordnet einen konkreten Eingabewert aus dem zulässigen Bereich einem zu erwarteten Ergebnis bzw. Ausgabe zu.

| EINGABE        | 0           | 42  |
| ------------- |:-------------:| -----:|
| AUSGABE      | false | true |

Testfall (logischer)
> Zuordnung von Eingabedaten (Bereiche, als Äquvalenzklassen), zum erwarteten Ergebnis bzw. Ausgabe.

| EINGABE        | 0           | 1-199  |
| ------------- |:-------------:| -----:|
| AUSGABE      | false | true |

Testfallmatrix
> Die Testfallmatrix beinhaltet, welche Funktionen und/oder Daten von den Testfällen abgedekt werden. So können mit wenigen Tests mehrere Funktionen gleichzeitig oder mehrfach geprüft werden. Dies minimiet die Anzahl der nötiogen Tests.

Testkonzept
> Strategisches bindendes Papier zum Vorgehen betreffend Testen im Projekt.

Testtreiber
> Software welche das ausführen von Tests ermöglicht (phpUnit, JUnit, xUnit, perl-prove).

zustandsbezogener Test
> Hiebrie muss ein besitmmter Zustand einer Klasse, Komponenten oder des gesammten Sysmtems erreicht werden, bevor eine Fehlerzustand eintritt. 
