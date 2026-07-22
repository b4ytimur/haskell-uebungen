# Haskell Übungen

🚧 **Hinweis:** Es gibt noch einige Probleme mit den Tests, die mit jedem neuen Commit behoben werden. Falls du Fehler findest oder Tests korrigieren möchtest, bist du herzlich eingeladen, Verbesserungen vorzunehmen! 🙌

Dieses Repository enthält eine Sammlung von Haskell-Übungsaufgaben zur Vorbereitung auf meine Klausur. Die Aufgaben sind in **verschiedene Schwierigkeitsstufen** unterteilt:

1. **basics** – Einfache Grundlagenübungen für den Einstieg.
2. **stufe1** – Mittelschwere Aufgaben mit verschiedenen Konzepten aus der funktionalen Programmierung.
3. **stufe2** – Fortgeschrittene Aufgaben mit komplexeren Strukturen und Algorithmen.
4. **fortgeschritten** – Erweiterte Konzepte mit Fokus auf **Monaden, Funktoren und IO**.

## 📂 Struktur des Repositories

```
repo
  ├── basics           # Grundlagenübungen für den Einstieg in Haskell
  ├── stufe1           # Mittelschwere Aufgaben aus vergangenen Klausuren
  ├── stufe2           # Fortgeschrittene Aufgaben mit komplexen Datenstrukturen
  ├── fortgeschritten  # Themen zu Funktoren, Monaden und IO-Manipulation
  │   ├── functors-fmaps  # Übungen zu Funktoren und fmap
  │   ├── monade-io-um    # Übungen zu IO-Manipulationen und Monaden
```

## 🛠 Installation & Nutzung

Um die Übungen lokal auszuführen und zu testen, benötigst du **GHC** und **Stack**. Falls Stack noch nicht installiert ist, kannst du es mit folgendem Befehl installieren:

```bash
curl -sSL https://get.haskellstack.org/ | sh
```

### 1️⃣ **Tests für Basics ausführen**
```bash
cd basics
stack test
```

### 2️⃣ **Tests für Stufe 1 ausführen**
```bash
cd stufe1

stack test :bis49 # Testet alle Aufgaben bis Nummer 49
stack test :ab49  # Testet alle Aufgaben ab Nummer 49
```

### 3️⃣ **Tests für Stufe 2 ausführen**
```bash
cd stufe2
stack test
```

### 4️⃣ **Tests für Fortgeschrittene Themen ausführen**
```bash
cd fortgeschritten

# Funktoren & fmap
cd functors-fmaps
stack test

# IO-Manipulationen & Monaden
cd ../monade-io-um
stack test
```

---

## 📖 Inhalt der einzelnen Stufen

### 🔹 **Basics**
- Einfache mathematische Berechnungen
- Zeichenkettenverarbeitung
- Rekursion und Listenoperationen

### 🔹 **Stufe 1**
- Aufgaben aus alten Klausuren (bis 2017 zurück)
- Einfache Datenstrukturen (Listen, Bäume)
- Funktionen mit höherer Ordnung

### 🔹 **Stufe 2**
- Fortgeschrittene rekursive Algorithmen
- Algebraische Datentypen (Bäume, Graphen)
- Typklassen-Instanzen (Functor, Foldable, Num)
- Implementierung von mathematischen Konzepten

### 🔹 **Fortgeschritten**
Diese Kategorie deckt fortgeschrittene Haskell-Konzepte ab, darunter:
- **Funktoren & fmap** (`fortgeschritten/functors-fmaps`)
  - Implementierung eigener Funktor-Instanzen
  - Arbeiten mit `fmap`, `Applicative` und `Monad`
- **Monaden & IO-Manipulation** (`fortgeschritten/monade-io-um`)
  - Arbeiten mit `IO`-Operationen
  - Implementierung und Verknüpfung von Monaden
  - Nutzung von `do`-Notation zur IO-Steuerung

---

## 🧪 Testen mit HUnit & QuickCheck

Die Aufgaben sind mit **HUnit** getestet. Falls du eigene Tests schreiben oder bestehende Tests erweitern möchtest, kannst du sie in den jeweiligen `test/UnitTest.hs`-Dateien finden.

```haskell
tests2 :: TestTree
tests2 = testGroup "Unit Tests für stufe2"
  [ testCase "Beispiel-Test für eine Funktion" $
      exampleFunction 42 @?= expectedResult
  ]
```

---

## 🏆 Ziel des Projekts

Dieses Repository soll dir helfen:
- Haskell besser zu verstehen 🧠
- Dich auf Klausuren vorzubereiten 📚
- Dein funktionales Denken zu verbessern 🏗

Falls du Fehler findest oder Verbesserungen vorschlagen möchtest, kannst du gerne einen **Pull-Request** erstellen oder eine **Issue** auf GitHub öffnen! 🚀

---

## 🗂 Ursprung der Aufgaben
Diese Aufgaben wurden aus verschiedenen Quellen zusammengestellt, insbesondere aus alten Klausuren und Haskell-Übungen auf dem Discord-Server von **Tarek (tarek6766)**. Sie wurden für eine einfache Nutzung formatiert und automatisiert.

Falls du Fragen oder Verbesserungsvorschläge hast, erstelle ein **Issue** oder einen **Pull Request**! 🚀

[Server-Link](https://discord.gg/ZpTqM2wMEe)

---

## Lizenz
Dieses Projekt ist ausschließlich für Bildungszwecke bestimmt. Die Originalaufgaben stammen aus alten Klausuren und wurden für eine effizientere Vorbereitung formatiert.
