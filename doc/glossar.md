Glossar Modul 451
=================

Abnahmetest
> TODO

Äquivalenzklassen
> Eingabedaten nach Bereichen einteilen welche vermutlich ein ähnliches Verhalten hervorrufen. Beispiel: `[0], [1-199]`

Box (black-, white-, grey)
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
> TODO

Integrationstest
> TODO

Kompontententest
> TODO

Nicht-Funktionaler Test
> TODO

Systemtest
> TODO

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
