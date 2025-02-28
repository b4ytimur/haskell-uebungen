# Basics: Haskell Grundlagen-Übungen (Aufgaben 1-22)

Dieses Repository enthält eine Sammlung von grundlegenden Haskell-Übungen, die für Einsteiger:innen in die funktionale Programmierung gedacht sind. Diese Aufgaben decken verschiedene fundamentale Konzepte ab, darunter Listenverarbeitung, Rekursion, Zeichenkettenmanipulation und einfache mathematische Operationen.

## 📌 Inhalt

Die folgenden Aufgaben bieten eine progressive Einführung in Haskell, beginnend mit einfachen mathematischen Operationen und endend mit komplexeren Listen- und Zeichenkettenmanipulationen.

---

### 🔹 **Aufgabenübersicht**:

| **Nr.** | **Aufgabe** | **Beschreibung** |
|---------|------------|----------------|
| **1**  | `nestedSubtraction` | Verschachtelte Subtraktion mit rekursivem Abzug. |
| **2**  | `evenNumbersInRange` | Finde alle geraden Zahlen zwischen zwei Zahlen (reihenfolgenunabhängig). |
| **3**  | `evenNumbersAsString` | Wie Aufgabe 2, aber als String formatiert. |
| **4**  | `rangeFromZero` | Erzeuge eine Liste aller Zahlen von 0 bis `num`. |
| **5**  | `countdown` | Erzeuge eine Liste von `num` bis 0. |
| **6**  | `repeatChar` | Wiederhole ein Zeichen `n`-mal in einer Zeichenkette. |
| **7**  | `decreasingCharPyramid` | Pyramidenstruktur mit Zeichen (`n`-mal absteigend). |
| **8**  | `increasingCharPyramid` | Pyramidenstruktur mit Zeichen (`n`-mal aufsteigend). |
| **9**  | `increasingCharPyramidSpaced` | Aufgabe 8, aber mit Leerzeichen zwischen den Elementen. |
| **10** | `increasingCharPyramidNewline` | Aufgabe 8, aber mit Zeilenumbrüchen. |
| **11** | `mirroredCountdown` | Zähle von `num` bis 0 und zurück. |
| **12** | `maximumInList` | Finde das größte Element in einer Liste. |
| **13.1** | `removeDuplicates` | Entferne doppelte Werte aus einer Liste. |
| **13.2** | `listIntersection` | Finde gemeinsame Elemente zweier Listen. |
| **13.3** | `listDifference` | Finde Elemente, die nur in der ersten Liste vorkommen. |
| **13.4** | `listUnion` | Kombiniere zwei Listen, entferne doppelte Werte. |
| **14** | `zipLists` | Kombiniere zwei Listen zu einer Liste aus Tupeln. |
| **15** | `lookupValue` | Finde einen Wert anhand eines Schlüssels in einer Liste von Tupeln. |
| **16** | `containsNumber` | Überprüfe, ob eine Zahl in einer Liste enthalten ist. |
| **17.1** | `firstOccurrence` | Finde die erste Position eines Zeichens in einem String. |
| **17.2** | `allOccurrences` | Finde alle Positionen eines Zeichens in einem String. |
| **18** | `charAtPosition` | Gibt das Zeichen an einer bestimmten Position in einem String zurück. |
| **19** | `sumOfList` | Summiere alle Elemente einer Liste. |
| **20** | `intListToStringList` | Konvertiere eine Liste von Zahlen in eine Liste von Strings. |
| **21** | `intListToString` | Konvertiere eine Liste von Zahlen in einen zusammenhängenden String. |
| **22** | `rangeToTen` | Erzeuge eine Liste von `n` bis 10, falls `n ≤ 10` ist. |

---

## Struktur
Die Aufgaben sind in der Datei `src/Aufgaben.hs` definiert, wobei jede Aufgabe eine kurze Beschreibung, eine Funktionssignatur und einige Beispielausgaben enthält.

### Testen der Lösungen
Dieses Repository enthält eine umfangreiche Test-Suite zur Validierung der implementierten Funktionen.

### Testen mit `stack`
Zum Ausführen der Tests benutze:
```bash
stack test
```

---

## Installation
### Voraussetzungen
- GHC (Glasgow Haskell Compiler)
- Stack (Haskell-Projektverwaltung)

### Klonen des Repositories
```bash
git clone <repository-url>
cd basics
stack setup
stack build
```

---

## 🗂 Ursprung der Aufgaben
Diese Aufgaben wurden aus verschiedenen Quellen zusammengestellt, insbesondere aus alten Klausuren und Haskell-Übungen auf dem Discord-Server von Tarek (tarek6766). Sie wurden für eine einfache Nutzung formatiert und automatisiert.

Falls du Fragen oder Verbesserungsvorschläge hast, erstelle ein **Issue** oder einen **Pull Request**! 🚀

[Server-Link](https://discord.gg/ZpTqM2wMEe)

## Lizenz
Dieses Projekt ist ausschließlich für Bildungszwecke bestimmt. Die Originalaufgaben stammen aus alten Klausuren und wurden für eine effizientere Vorbereitung formatiert.