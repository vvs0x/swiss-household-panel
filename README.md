# swiss-household-panel

Repository zur Bearbeitung von Praktikum 2 im Modul `DS.PM2`.

## Struktur

- `data/raw`
  Rohdaten, insbesondere `Data_SPSS.zip`
- `data/processed`
  Aufbereitete Datensätze aus Woche 2 und Woche 3
- `src`
  R-Markdown-Dateien für Datenaufbereitung, Analyse und den zusammengeführten Abgabebericht
- `docs`
  Aufgabenstellung und Kommunikationsteil

## Wichtige Dateien

- `src/Praktikum_2_Schwarz_Berdelis.Rmd`
  Vollständiger zusammengeführter Bericht für die Abgabe
- `src/Datenaufbereitung.Rmd`
  Dokumentation und Code für Woche 2
- `src/Datenqualitaet_Plausibilisierung_Auswertung.Rmd`
  Dokumentation und Code für Woche 3

## Reproduzierbarkeit

Die Verarbeitung geht von `data/raw/Data_SPSS.zip` aus.
Die ZIP-Datei wird innerhalb des R-Codes entpackt, die benötigten SPSS-Dateien werden eingelesen und anschliessend zu den aufbereiteten Datensätzen zusammengeführt.

Die erzeugten Dateien werden in `data/processed` gespeichert:

- `shp_panel_week2_longfiles.csv`
- `shp_panel_week2_longfiles.rds`
- `shp_panel_week3_imputed.csv`
- `shp_panel_week3_imputed.rds`

## Abgabe

Für die Abgabe relevant sind:

- das Git-Verzeichnis mit Code und Dokumentation,
- das Master-R-Markdown `src/Praktikum_2_Schwarz_Berdelis.Rmd`,
- sowie die daraus erzeugte PDF-Datei.
