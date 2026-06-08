# LNW3 – „Technischer Kurzbericht“: Bewertungskriterien

> Quelle: `COMB_FS26_Bewertungskriterien-Bericht_LNW3(3).pdf`  
> Kontext: COMB – LNW3, ILC / SoE

## Überblick

Der technische Kurzbericht wird mit maximal **60 Punkten** bewertet.  
Die Bewertung besteht aus vier Hauptkriterien mit jeweils maximal **15 Punkten**.

## Punkteskala

| Erfüllungsgrad | Punkte |
|---|---:|
| vollständig erfüllt | 15 |
| überwiegend erfüllt | 12 |
| ausreichend erfüllt | 9 |
| teilweise erfüllt | 6 |
| überwiegend nicht erfüllt | 3 |
| nicht erfüllt | 0 |

## Bewertungskriterien

### I. Struktur und Aufbau

**Maximalpunktzahl:** 15 Punkte

Bewertet werden:

- Formales:
  - Deckblatt
  - Inhaltsverzeichnis
  - Einleitung
  - Stand der Technik
  - Lösungsansatz
  - Fazit
- Roter Faden
- Gliederung
- Übergänge
- Nachvollziehbarkeit
- Umfang:
  - **4500 Zeichen ohne Leerzeichen**
  - Toleranz: **± 10 %**

| Erfüllungsgrad | Punkte |
|---|---:|
| vollständig erfüllt | 15 |
| überwiegend erfüllt | 12 |
| ausreichend erfüllt | 9 |
| teilweise erfüllt | 6 |
| überwiegend nicht erfüllt | 3 |
| nicht erfüllt | 0 |

### II. Inhalt und Fachlichkeit

**Maximalpunktzahl:** 15 Punkte

Bewertet werden:

- Problemverständnis
- Stand der Technik
- Fachliche Korrektheit
- Plausible Vermittlung
- Inhaltliche Tiefe
- Informationsgehalt
- Gesellschaftlicher Nutzen

| Erfüllungsgrad | Punkte |
|---|---:|
| vollständig erfüllt | 15 |
| überwiegend erfüllt | 12 |
| ausreichend erfüllt | 9 |
| teilweise erfüllt | 6 |
| überwiegend nicht erfüllt | 3 |
| nicht erfüllt | 0 |

### III. Sprache und Visualisierungen

**Maximalpunktzahl:** 15 Punkte

Bewertet werden:

- Stil
- Adressat:innenbezug
- Verständlichkeit
- Visualisierungen:
  - **3 Visualisierungen**
  - Beschriftung
  - Einbettung in den Bericht

| Erfüllungsgrad | Punkte |
|---|---:|
| vollständig erfüllt | 15 |
| überwiegend erfüllt | 12 |
| ausreichend erfüllt | 9 |
| teilweise erfüllt | 6 |
| überwiegend nicht erfüllt | 3 |
| nicht erfüllt | 0 |

### IV. Quellen, Wissenschaftlichkeit und KI-Transparenz

**Maximalpunktzahl:** 15 Punkte

Bewertet werden:

- Quellenqualität
  - **6 Quellen**
  - aktuell
  - relevant
- IEEE-Zitierweise
- Deklaration von KI-Nutzung

| Erfüllungsgrad | Punkte |
|---|---:|
| vollständig erfüllt | 15 |
| überwiegend erfüllt | 12 |
| ausreichend erfüllt | 9 |
| teilweise erfüllt | 6 |
| überwiegend nicht erfüllt | 3 |
| nicht erfüllt | 0 |

## Checkliste für Codex / Berichtserstellung

Diese Checkliste kann als Arbeitsgrundlage für die Erstellung oder Prüfung des Berichts verwendet werden.

### Struktur

- [ ] Deckblatt vorhanden
- [ ] Inhaltsverzeichnis vorhanden
- [ ] Einleitung vorhanden
- [ ] Abschnitt „Stand der Technik“ vorhanden
- [ ] Lösungsansatz beschrieben
- [ ] Fazit vorhanden
- [ ] Bericht hat einen klaren roten Faden
- [ ] Übergänge zwischen Abschnitten sind nachvollziehbar
- [ ] Umfang liegt bei ca. 4500 Zeichen ohne Leerzeichen
- [ ] Umfang liegt innerhalb der Toleranz von ± 10 %

### Inhalt

- [ ] Problem wird verständlich erklärt
- [ ] Stand der Technik ist fachlich korrekt dargestellt
- [ ] Lösungsansatz ist plausibel
- [ ] Aussagen sind fachlich korrekt
- [ ] Bericht ist informativ und ausreichend tief
- [ ] Gesellschaftlicher Nutzen wird erläutert

### Sprache und Visualisierungen

- [ ] Sprache ist verständlich
- [ ] Stil passt zur Zielgruppe
- [ ] Adressat:innenbezug ist erkennbar
- [ ] Genau 3 Visualisierungen sind enthalten
- [ ] Jede Visualisierung ist beschriftet
- [ ] Jede Visualisierung wird im Text erklärt oder eingebettet

### Quellen und Transparenz

- [ ] Mindestens 6 Quellen vorhanden
- [ ] Quellen sind aktuell
- [ ] Quellen sind relevant
- [ ] Quellen sind qualitativ geeignet
- [ ] IEEE-Zitierweise wird verwendet
- [ ] KI-Nutzung ist deklariert

## Maschinenlesbare Kurzfassung

```yaml
assignment:
  title: "Technischer Kurzbericht"
  max_points: 60
  character_count:
    target_without_spaces: 4500
    tolerance_percent: 10

grading_scale:
  vollständig_erfüllt: 15
  überwiegend_erfüllt: 12
  ausreichend_erfüllt: 9
  teilweise_erfüllt: 6
  überwiegend_nicht_erfüllt: 3
  nicht_erfüllt: 0

criteria:
  - id: I
    name: "Struktur und Aufbau"
    max_points: 15
    requirements:
      - "Deckblatt"
      - "Inhaltsverzeichnis"
      - "Einleitung"
      - "Stand der Technik"
      - "Lösungsansatz"
      - "Fazit"
      - "Roter Faden"
      - "Gliederung"
      - "Übergänge"
      - "Nachvollziehbarkeit"
      - "4500 Zeichen ohne Leerzeichen, ±10 %"

  - id: II
    name: "Inhalt und Fachlichkeit"
    max_points: 15
    requirements:
      - "Problemverständnis"
      - "Stand der Technik"
      - "fachliche Korrektheit"
      - "plausible Vermittlung"
      - "Tiefe"
      - "Informationsgehalt"
      - "gesellschaftlicher Nutzen"

  - id: III
    name: "Sprache und Visualisierungen"
    max_points: 15
    requirements:
      - "Stil"
      - "Adressat:innenbezug"
      - "Verständlichkeit"
      - "3 Visualisierungen"
      - "Beschriftung der Visualisierungen"
      - "Einbettung der Visualisierungen"

  - id: IV
    name: "Quellen, Wissenschaftlichkeit und KI-Transparenz"
    max_points: 15
    requirements:
      - "6 aktuelle und relevante Quellen"
      - "Quellenqualität"
      - "IEEE-Zitierweise"
      - "Deklaration KI"
```
