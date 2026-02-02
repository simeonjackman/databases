# Aufgabenblatt: SQL-Übungen zur Schweizer Handball Liga der Frauen
Das Ziel dieses Aufgabenblatts ist es zu lernen, komplexere Datenbanken zu verstehen und SQL-Abfragen zu üben.

## Einführung
* Stellen Sie sicher, dass Sie die SQLite Extension installiert haben: Drücken Sie `Ctrl/Cmd + Shift + P` und geben Sie `Install Extensions` ein. Geben Sie dann `alexcvzz.vscode-sqlite` ein und installieren Sie die Extension.
* Drücken Sie `Ctrl/Cmd + Shift + P` und geben Sie `Open Database` ein, wählen Sie dann `sports.db`aus. Die Datenbank sollte dann im Exporer unten links angezeigt werden.
* Drücken Sie `Ctrl/Cmd + Shift + P` und geben Sie `Use Database` ein, wählen Sie dann `sports.db`aus. 
* Um eine Datenbankabfrage auszuführen, drücken Sie `Ctrl/Cmd + Shift + P` und geben Sie `SQLite: New Query` ein

## Aufgaben
### Teil 1: Einfache Abfragen
1. Alle Spielerinnen anzeigen: Schreiben Sie eine SQL-Abfrage, die alle Spielerinnen mit ihrem Namen, Jahrgang und ihrer Position ausgibt.
2. Spielerinnenliste eines bestimmten Teams: Zeigen Sie die Namen aller Spielerinnen des Teams "LC Bruehl Handball" an.
3. Vertragsdetails finden: Finden Sie die Vertragsdauer (Dauer) und den Lohn (Lohn) für die Spielerin mit dem Namen "Anna Meier".
4. Spiele eines Teams anzeigen: Listen Sie alle Spiele der "Spono Eagles". Zeigen Sie dabei die SpielNr und den Spielzeitpunkt an.

### Teil 2: Filtern und Sortieren
5. Älteste Spielerin eines Teams: Schreiben Sie eine Abfrage, die den Namen der ältesten Spielerin des Teams "Yellow Winterthur" ausgibt.
6. Spielzeit sortiert anzeigen: Listen Sie alle Spielerinnen aus dem Spiel mit der SpielNr = 1, sortiert nach der Spielzeit in absteigender Reihenfolge.

### Teil 3: Aggregatfunktionen
7. Durchschnittsgrösse der Spielerinnen eines Teams: Finden Sie die durchschnittliche Grösse der Spielerinnen des Teams "Spono Eagles". Runden Sie das Ergebnis auf 2 Nachkommastellen. (Siehe [W3school - avg](https://www.w3schools.com/sql/sql_avg.asp))
8. Gesamte Spielzeit eines Teams in einem Spiel: Schreiben Sie eine Abfrage, die die gesamte Spielzeit der Spielerinnen des Teams "LC Bruehl Handball" in Spiel SpielNr = 2 berechnet.

### Teil 4: Joins
9. Lösen Sie Aufgabe 8 mit einem Join. (Siehe [W3school - join](https://www.w3schools.com/sql/sql_join.asp))
10. Spielerinnenliste mit Vertragsdetails: Schreiben Sie eine Abfrage, die alle Spielerinnen mit ihrem Namen, ihrem Team und den Vertragsdetails (Dauer, Lohn) kombiniert.
11. Spielstatistik für ein Spiel: Erstellen Sie eine Abfrage, die für das Spiel SpielNr = 3 folgende Informationen ausgibt:

* Name der Spielerinnen im Spiel
* Teamname
* Spielzeit
* Sortieren Sie die Ergebnisse nach dem Teamnamen

12. Welche Spielerin verdient pro gespielte Spielminute am meisten?
