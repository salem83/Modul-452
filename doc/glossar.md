Glossar Modul 451
=================

Äquivalenzklassen
> Eingabedaten nach Bereichen einteilen welche vermutlich ein Ähnliches Verhalten hervorrufen. Beispiel: `[0], [1-199]`

Fehlermaskierung
> Ein Fehlerzustand wird durch andere Fehlerzustände oder spezifische Konfigurationen kaschiert und ist (momentan) nicht sichtbar.

Fehlerwirkung
> Sicht- oder Erlebbahrer Fehler im Programm.

Fehlerzustand
> Auch `Bug`. Fehler im Programm. Muss aber nicht nach aussen sichtbar sein!

Testfall (konkreter)
> Aufbauen auf logischem testfall. Ordnet einen konkreten Eingabewert aus dem zulässigen Bereich einem zu erwarteten Ergebnis bzw. Ausgabe zu.

| EINGABE        | 0           | 42  |
| ------------- |:-------------:| -----:|
| AUSGABE      | false | true |

Testfall (logischer)
> Zuordnung von Eingabedaten (Bereiche, als Äquvalenzklassen), zum erwarteten Ergebnis bzw. Ausgabe.

| EINGABE        | 0           | 1-199  |
| ------------- |:-------------:| -----:|
| AUSGABE      | false | true |
