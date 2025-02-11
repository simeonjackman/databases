# Einführung: Projekt zu SQL-Datenbanken

## Einführung
* Stellen Sie sicher, dass Sie die SQLite Extension installiert haben: Drücken Sie `Ctrl/Cmd + Shift + P` und geben Sie `Install Extensions` ein. Geben Sie dann `alexcvzz.vscode-sqlite` ein und installieren Sie die Extension.
* Drücken Sie `Ctrl/Cmd + Shift + P` und geben Sie `Open Database` ein, wählen Sie dann `project.db`aus. Die Datenbank sollte dann im Exporer unten links angezeigt werden.
* Drücken Sie `Ctrl/Cmd + Shift + P` und geben Sie `Use Database` ein, wählen Sie dann `project.db`aus. 

## Aufgabe

Das Ziel dieses kleinen Projektes ist, dass Sie den ganzen Prozess von der Datenmodellierung bis zum Erstellen einer Datenbank einmal durchspielen.

### 1. Projektidee

Überlegen Sie sich als erstes eine "Geschäftsidee" (Bücherladen, Bäckerei, etc.) bei der Daten gespeichert werden müssen. Überlegen Sie sich folgende Fragen:
* Welche Daten muss ich speichern?
* Wie hängen die Daten zusammen?
* Welche Prozesse in der echten Welt ändern die Daten? (Bsp. Bücherladen: ein neues Buch wird in den Katalog aufgenommen)
* Definieren Sie drei Geschäftsprozesse, bei welchen Daten hinzugefügt, geändert oder gelöscht werden.

### 2. ERM Erstellen

Erstellen Sie zu Ihrer Projektidee ein ERM. Das ERM soll zu einer Datenbank führen, welche mindestens drei und maximal fünf Tabellen besitzt.
(Beachten Sie, dass n:m Beziehungen jeweils eine eigene Tabelle benötigen)
Stellen Sie sicher, dass Ihr ERM folgende Punkte enhält:
* Entitäten
* Attribute
* Primärschlüssel
* Beziehungen
* Kardinalitäten

### 3. ERM Spiegeln

Erklären Sie Ihr ERM einer anderen Gruppe (und umgekehrt.) Überprüfen Sie, ob Sie das ERM der anderen Gruppe verstehen.

### 4. Datenbank erstellen

Erstellen Sie SQL-Code im File ```create.sql```, welcher eine Datenbank aus Ihrem ERM erstellt.
Der SQL-Code im File wird ausgeführt, indem Sie im File rechts klicken und dann auf `Run Query`drücken.

### 5. Datenbank füllen

Erstellen Sie SQL-Code im File ```data.sql```, welcher mindestens ein Tupel (Eintrag) in jede Tabelle Ihrer Datenbank einfügt.
Verwenden Sie dazu folgenden Befehl als Vorlage:
```
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```
Der SQL-Code im File wird ausgeführt, indem Sie im File rechts klicken und dann auf `Run Query`drücken.

### 6. Geschäftsprozesse abbilden

Erstellen Sie SQL-Code im File ```processes.sql```, welcher die drei vorher definierten Geschäftsprozesse abbildet.

### 7. Diskussion

Bereiten Sie sich auf die Diskussion vor, indem Sie für sich selbst folgende Fragen beantworten:
* Konnte ich die Geschäftsprozesse abbilden? Wenn nein, warum nicht?
* Haben die Geschäftsprozesse einen Einfluss auf die Konsistenz meiner Datenbank?
* Habe ich Redundanzen in meiner Datenbank? Wenn ja, wo?
* Was würde ich anders Modellieren im ERM?
* Was würde ich anders in der Datenbank abbilden?
  
Erklären Sie dann Ihre Datenbank und Geschäftsprozesse einer anderen Gruppe (und umgekehrt).
Besprechen Sie dann die Fragen und versuchen Sie die Antworten des Gegenübers zu verstehen.