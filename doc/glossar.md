Glossar Modul 451
=================

Abnahmanetest
> (Unter Aufsicht von) Kunde testet vertragliche Abnahmekriterien. Systemverhalten ind Kunden Umgebung und mit Kunden-Konfiguration

Äquivalenzklassen
> Eingabedaten nach Bereichen einteilen welche vermutlich ein Ähnliches Verhalten hervorrufen. Beispiel: `[0], [1-199]`

Fehlermaskierung
> Ein Fehlerzustand wird durch andere Fehlerzustände oder spezifische Konfigurationen kaschiert und ist (momentan) nicht sichtbar.

Fehlerwirkung
> Sicht- oder Erlebbahrer Fehler im Programm.

Fehlerzustand
> Auch `Bug`. Fehler im Programm. Muss aber nicht nach aussen sichtbar sein!

Integrationstest
> Prüft zusammenspiel einzelner Komponenten. Deckt Inkompatibilität auf Interface- oder Protokollebene auf.

Komponententest (auch UnitTest)
> Prüft einzelne Klassen isoliert auf Funktionalität

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





