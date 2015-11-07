Glossar Modul 451
=================

Abnahmetest
> Formales Testen hinsichtlich der Benutzeranforderungen und -bedürfnisse bzw. der Geschäftsprozesse. Es wird durchgeführt, um einem Auftraggeber oder einer bevollmächtigten Instanz die Entscheidung auf der Basis der Abnahmekriterien zu ermöglichen, ob ein System anzunehmen ist oder nicht. [Nach IEEE 610]

Äquivalenzklassen
> Eingabedaten nach Bereichen einteilen welche vermutlich ein ähnliches Verhalten hervorrufen. Beispiel: `[0], [1-199]`

Black-Box-Test
> Funktionales oder nicht-funktionales Testen ohne Nutzung von Informationen über Interna eines Systems oder einer Komponente.

Box (black-, white-, grey)
> TODO

Fehlerklasse
> TODO

Fehlermaskierung
> Ein Fehlerzustand wird durch andere Fehlerzustände oder spezifische Konfigurationen kaschiert und ist (momentan) nicht sichtbar.

Fehlerwirkung
> Sicht- oder erlebbahrer Fehler im Programm.

Fehlerzustand
> Auch `Bug`. Fehler im Programm. Muss aber nicht nach aussen sichtbar sein!

Funktionaler Test
> TODO

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

Testkonzept
> Strategisches bindendes Papier zum Vorgehen betreffend Testen im Projekt.

Testtreiber
> Software welche das ausführen von Tests ermöglicht (phpUnit, JUnit, xUnit, perl-prove).

zustandsbezogener Test
> TODO
