# DS.PM2 - FS 2026

## Praktikum 2 - Swiss Household Data

**Abgabe:** Rmd-Datei im Git-Verzeichnis (fugen Sie hofc bzw. bure als collaborator hinzu) sowie eine PDF-Datei via Moodle (keine Einreichung per E-Mail).  
**Spatester Abgabetermin:** 26. April 2026 um 23:59 Uhr  
**Gruppengrosse:** 2 Studierende

Sie erhalten den Auftrag, die Daten des Swiss Household Panels (SHP) fur die folgende Fragestellung aufzubereiten:

**Wie hat sich das Vertrauen der Schweizer Wohnbevolkerung in den Bundesrat seit 1999 entwickelt, und gibt es Unterschiede zwischen verschiedenen Untergruppen?**

Die aufbereiteten Daten sollen die folgenden Variablen enthalten:

| Spaltenname | Variablenbeschrieb |
|---|---|
| IDPERS | Personen-ID, als Integer kodiert |
| IDHOUS | Haushalts-ID, als Integer kodiert |
| YEAR | Jahr der Befragung, als Integer kodiert |
| PP04 | Vertrauen in den Bundesrat: kein Vertrauen; 1; 2; ... ; 9; volles Vertrauen |
| BIRTHY | Geburtsjahr, als Integer kodiert |
| BIRTHYGEN | Aus dem Geburtsjahr BIRTHY abgeleitete Kohorte: [1904,1950); [1950,1960); [1960,1970); [1970,1980); [1980,1990); [1990,2000); [2000,2010); [2010,2026] |
| SEX | Geschlecht: mannlich; weiblich; andere |
| CANTON | Kanton: AG; AI; AR; ... ; ZH |
| EDUCAT | Hochste Ausbildung: Unvollstandige obligatorische Schulbildung; Obligatorische Schule grundlegende berufliche Ausbildung; Hauswirtschaftskurs; einjahrige Handelsschule; Allgemeine Ausbildungsschule; Lehre (EFZ); Vollzeit-Berufsfachschule; Maturitat / Bachelor; Berufshochschule mit Meisterdiplom, eidgenossisches Zertifikat; Technische oder berufliche Schule; Hochschule fur Technik (ETS, HTL usw.); Universitat, akademische Mittelschule, PH, HEP, HES, FH |
| HASKID | Ob Person mindestens ein eigenes Kind hat: nein; ja |
| NAT | Nationalitat: CH; CH+Andere; Andere |
| PC19 | Langerfristiges gesundheitliches Problem oder Behinderung: nein; ja |
| PP10 | Selbsteinschatzung politische Position: links; 1; 2; ... ; 9; rechts |
| NETHHINCPP | Jahrliches Netto-Haushaltseinkommen pro Haushaltsmitglied; nummerisch |
| PO58 | Finanzielle Probleme in der Jugend: nein; ja |
| COMPLETE | TRUE bzw. FALSE ob der Datensatz bei mindestens einer Variablen ein fehlender Wert hat |

Es sollen nur Befragungsjahre berucksichtigt werden, in denen die Variable Vertrauen in den Bundesrat abgefragt wurde (finden Sie selbst heraus, welche). Eine Zeile der aufbereiteten Daten zeichnet die Daten einer befragten Person zu einem gegebenen Befragungsjahr auf, so dass es je Person mehrere Zeilen geben kann. Es sollen nur Daten von Erwachsenen berucksichtigt werden, wodurch von einigen Personen alle Datensatze oder ein Teil davon wegfallen.

Fur die Analyse ist die Variable Vertrauen in den Bundesrat als Zielgrosse, und die restlichen Variablen als potenzielle Einflussfaktoren zu betrachten. Neben den vorgegebenen Einflussfaktoren soll mindestens ein weitere Variable bestimmt werden, die Ihrer Auffassung ebenfalls einen Einfluss auf das Vertrauen in den Bundesrat haben konnte und in den Daten vorhanden ist.

Zur Aufgabe gehoren u.A. eine Planung, das Dokumentieren der aufbereiteten Daten, Massnahmen zur Datensicherheit etc. so, dass Ihre Arbeit fur eine Drittperson nachvollziehbar und die Datenaufbereitung replizierbar ist.

## Woche 1: Planung, Datenakquisition und Einlesen der Daten

### 1. Planung

1. Verschaffen Sie sich eine Ubersicht uber den Swiss Household Panel, z.B. durch Lesen des Dokuments Voorpostel et al. (2021) (Kap. 1, 2 (ohne 2.6) und 4.1). Lernen Sie daraus, wie die Daten erhoben werden und wie Sie strukturiert sind.
2. Dokumentieren Sie Ihre Uberlegungen zum praktischen Vorgehen. Halten Sie die benotigten Arbeitsschritte (Planung, Datenakquisition etc.) fest und bestimmen Sie, wer innerhalb des Teams welche Rolle bzw. Verantwortlichkeiten einnimmt (Koordination, Programmierung, Dokumentation etc.).
3. Organisieren Sie die Dateiverwaltung. Legen Sie ein Dateiverzeichnis an, auf welches alle Gruppenmitglieder zugreifen konnen (und niemand anderes). Die Grundstruktur konnte Ordner fur folgende Inhalte beinhalten:
   - Lagerung der Rohdaten
   - Lagerung der aufbereiteten Daten
   - Programmiercode, verwaltet mit Git
   - Dokumentation

   Legen Sie eine README Datei an, in welcher die Dateiverwaltung beschrieben wird.

### 2. Datenakquisition

1. `https://www.swissubase.ch/` (Anmeldung via edu-ID)
2. Suche nach Swiss Household Panel > ...
3. Download der Rohdaten in das festgelegte Verzeichnis
4. Erste Datenkontrolle: Konnen die Rohdaten in R eingelesen werden? Wir empfehlen, mit den SPSS Daten zu arbeiten (Dateien mit `.sav` Endung) und fur das Einlesen die Funktion `read.spss()` des R-Pakets `foreign` zu verwenden.

### 3. Eigenen Einflussfaktor bestimmen

Ermitteln Sie eine zusatzlich (Gruppierungs-) Variable, die Ihrer Auffassung nach ebenfalls Einfluss auf das Vertrauen in den Bundesrat hat. Uberprufen Sie mittels Codebooks oder Suche auf `https://forscenter.ch/`, ob die benotigten Informationen verfugbar sind. Notieren Sie sich eine Hypothese dafur, welchen Zusammenhang Sie erwarten (z.B. je tiefer der Geburtsjahrgang desto hoher die Wahrscheinlichkeit fur hohes Vertrauen in den Bundesrat).

Bestenfalls werden auch Literaturhinweise zu diesen Zusammenhangen ermittelt.

Nutzen Sie die Moglichkeit, dem Dozenten in der Folgewoche den Teil zur Planung und den eigenen Einflussfaktoren kurz zu prasentieren.

## Woche 2: Datenaufbereitung

Programmieren Sie die Datenaufbereitung in R mittels Funktionen der `tidyverse`-Pakete. Die Datenaufbereitung beinhaltet folgende Teilschritte:

- **Vorbereitung**  
  Bestimmen Sie mit Hilfe der Codebooks in der Dokumentation oder via Suche auf `https://forscenter.ch/` und den Hinweisen unten die benotigten Variablen und notieren Sie, in welchen Tabellen diese Variablen vorhanden sind.

- **Daten einlesen**  
  Lesen Sie alle benotigten Dateien der Rohdaten in R ein. Wir empfehlen, mit den SPSS Daten zu arbeiten und fur das Einlesen die Funktion `read.spss()` des R-Pakets `foreign` zu verwenden. Erstellen Sie eine Prozedur, in welcher Sie von der heruntergeladenen ZIP-Datei ausgehen und alle Schritte (inklusive dem Entzippen) von R ausgefuhrt werden.

- **Select**  
  Reduzieren Sie die eingelesenen Daten auf die benotigten Variablen. Dazu gehoren neben den erforderlichen Variablen auch ID-Variablen, die fur das spatere Zusammenfuhren der Tabellen notwendig sind.

- **Filtering**  
  Berucksichtigen Sie ausschliesslich Befragte, die im jeweiligen Jahr erwachsen sind.

- **Merging**  
  Fuhren Sie mittels Join-Funktionen die Daten zu einer Tabelle zusammen. Dokumentieren Sie mittels einer Skizze alle verwendeten Tabellen, welche Art von Joins eingesetzt wurden und welche ID-Variablen verwendet wurden.

- **Konstruktion von Daten**  
  Konstruieren Sie alle erforderlichen Variablen, die nicht direkt aus den Rohdaten verfugbar sind (z.B. `HASKID` aus `OWNKID$$`, mit `$$` einem Platzhalter fur das Jahr).  
  Detail: Einige der numerischen Variablen wie das Alter sind als Faktoren kodiert. Rekodieren Sie solche Variable als numerische (z.B. via `as.numeric(as.character())`).

- **Daten ablegen**  
  Speichern Sie die erzeugten Daten im vorgesehenen Verzeichnis ab. Sie konnen die Daten auch in mehreren Formaten ablegen, z.B. einmal mit `write.table()` als Textdatei und einmal mit `saveRDS()` oder `save()` als R-Objekt.

Legen Sie die aufbereiteten Daten in dem dafur vorgesehenen Verzeichnis ab. Stellen Sie das Zusammenfuhren der Daten schematisch dar (Diagramm). Der Code der R-Masterdatei soll strukturiert und kommentiert sein.

## Woche 3: Datenqualitat, Plausibilisierung und Auswertung

### 1. Datenqualitat bezuglich fehlenden Werten

1. Berechnen und dokumentieren Sie fur jedes Jahr, wie viele Datensatze bzw. Befragte mindestens einen fehlenden Wert aufweisen. Als fehlend gelten alle Werte mit Missing-Value-Codes wie 'filter error' usw., ohne dass zwischen diesen Codes unterschieden werden muss. Bemerkung: Wenn Sie die Daten mit `read.spss()` einlesen (empfohlen), werden mit dem Argument `use.missings = FALSE` alle Missing-Value-Codes automatisch in `NA` umgewandelt, so dass sie sich nicht um die Missing-Value-Codes kummern mussen.
2. Berechnen Sie anschliessend ebenfalls fur jedes Jahr, wie viele fehlende Werte es pro Variable gibt. Identifizieren Sie die Variable, die in einem bestimmten Jahr praktisch keine gultigen Werte enthalt (d. h. mehr als 90% fehlende Werte).
3. Bearbeiten Sie die Daten der in Punkt 2 identifizierten Variable im entsprechenden Jahr, indem Sie die fehlenden Werte durch den neuesten verfugbaren Wert derselben Person aus fruheren Jahren ersetzen.

### 2. Plausibilitat der Daten

Uberprufen Sie, ob bei den vorliegenden Daten ein bestimmtes Geschlecht, Altersgruppe oder Kanton unter- bzw. ubervertreten ist, vor und nach entfernen der Befragten mit Missing Values. Vergleichen Sie dazu mittels grafischen Darstellungen die Geschlechts- und Alters- und Kantonsverteilungen mit entsprechenden Daten des Bundesamts fur Statistik (BfS, siehe z.B. `https://www.bfs.admin.ch`). Fur das Einlesen der Daten des BfS konnen Sie den folgenden Befehl verwenden:

```r
read.px(
  filename = "https://dam-api.bfs.admin.ch/hub/api/dam/assets/36021707/master",
  encoding = "utf-8"
)
```

### 3. Auswertung

1. Fuhren Sie eine deskriptive Datenanalyse durch, um einen ersten Uberblick uber die Zielgrosse und mogliche Einflussfaktoren zu erhalten. Stellen Sie dazu die zeitliche Entwicklung der Variablen zum Vertrauen der Wohnbevolkerung in den Bundesrat dar. Erganzen Sie die Analyse, indem Sie mindestens 5 zusatzliche grafische Darstellungen generieren, in denen sich das Vertrauen der Wohnbevolkerung in den Bundesrat zwischen Untergruppen (z.B. Geschlecht) unterscheiden lasst.
2. Fuhren Sie Analysen zur Beantwortung ihrer Hypothese durch, und dokumentieren Sie, ob die Ergebnisse mit Ihren Hypothesen kongruent sind.

Stellen Sie die Resultate und Erkenntnisse in einem Kurzbericht mit R-Markdown.

## Woche 4: Abschlussarbeiten

Tragen Sie die Dokumentationen aller Teilarbeiten, also Planung, Organisation, Datensicherheit, eigene Einflussfaktoren, Skizze zum Zusammenfuhren der Daten, Beschrieb der aufbereiteten Daten, Datenqualitat, Plausibilitat und Auswertung in einem Bericht zusammen, inklusive einer Zusammenfassung, Einleitung und Schlusswort. Verwenden Sie dafur R-Markdown.

Abzugeben ist eine ZIP-Datei ihres Verzeichnis mit allen R-Skripten und Dokumentationsdateien. Der in R-Markdown geschriebene Kurzbericht soll im RMD und PDF Format verfugar sein.

## Bewertung

Ihre Arbeit wird nach den folgenden 7 gleichgewichteten Kriterien beurteilt.

- Vollstandigkeit
- Arbeitsorganisation (Uberlegungen zum praktischen Vorgehen, Dateiverwaltung)
- Replizierbarkeit der Datenaufbereitung
- Kreativitat der Ausgestaltung der Arbeit
- Konzise Sprache (so knapp wie moglich aber so lang wie notig)
- Nachvollzieharkeit der Analysen
- R-Code

## Hinweise

### Datenquellen und benotigte Schlusselvariablen

`SS` = Platzhalter fur das Jahr ohne Jahrhundert (z.B. 26 fur 2026)

| Datenquelle | Schlusselvariablen |
|---|---|
| SHP_MP() | IDPERS |
| SHP_SO() | IDPERS |
| SHP$$_P_USER() | IDPERS, IDHOUS$$ |
| SHP$$_H_USER() | IDHOUS$$ |

### Hinweise zu einzelnen Variablen

| Beschrieb | Datenquelle/Spaltenname |
|---|---|
| PP04 | SHP$$_P_USER / P$$P04 |
| BIRTHY | SHP_MP / BIRTHY |
| BIRTHYGEN | SHP_MP / BIRTHY |
| SEX | SHP_MP / SEX |
| CANTON | SHP$$_H_USER / CANTON$$ |
| EDUCAT | SHP$$_P_USER / EDUCAT$$ |
| HASKID | SHP$$_P_USER / OWNKID$$ |
| NAT | SHP$$_P_USER / NAT_1_$$, SHP$$_P_USER / NAT_2_$$, SHP$$_P_USER / NAT_3_$$ |
| PC19 | SHP$$_P_USER / P$$P19 oder teilweise SHP$$_P_USER / P$$P19A |
| PP10 | SHP$$_P_USER / P$$P10 |
| NETHHINCPP | SHP$$_H_USER / I19HTYN, SHP$$_H_USER / NBPERS19 |
| PO58 | SHP_SO / P..O58 |

## References

Voorpostel, Marieke, Robin Tillmann, Florence Lebert, Ursina Kuhn, Oliver Lipps, Valerie-Anne Ryserand, Erika Antal, et al. 2021. *Swiss Household Panel User Guide (1999 - 2019).* FORS. `https://forscenter.ch/wp-content/uploads/2021/09/shp_user-guide-w21.pdf`
