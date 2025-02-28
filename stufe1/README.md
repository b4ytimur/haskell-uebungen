# Haskell Klausurvorbereitung – Stufe 1

Dieses Repository enthält eine Sammlung von Haskell-Übungsaufgaben, die auf alten Klausuren von der Universität Bremen basieren. Die älteste Aufgabe stammt aus dem Jahr **2017**. Diese Aufgaben decken verschiedene Schwierigkeitsstufen ab und bieten eine großartige Möglichkeit, sich auf die Klausur vorzubereiten.

## ✨ Alte Klausuraufgaben
Die folgenden Aufgaben sind aus alten Klausuren entnommen:

**1, 2, 14, 15, 18, 21, 28, 29, 31, 32, 43, 45, 47, 50, 52, 55, 56, 59, 64, 65, 66, 71, 78, 84, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 127, 128, 129, 130, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 149, 150, 151, 152, 153, 154**

Diese Aufgaben enthalten eine Mischung aus grundlegenden und fortgeschrittenen Konzepten in Haskell.

---

## Struktur
Die Aufgaben sind in der Datei `src/Aufgaben.hs` definiert, wobei jede Aufgabe eine kurze Beschreibung, eine Funktionssignatur und einige Beispielausgaben enthält.

---

## 🛠️ Tests mit Stack ausführen
Um sicherzustellen, dass die Lösungen korrekt sind, gibt es eine vollständige Testsuite.

### **Tests in zwei Gruppen ausführen:**
Die Tests wurden in zwei Hälften geteilt:
- `test :ab49` enthält die Tests **ab Aufgabe 49**.
- `test :bis49` enthält die Tests **bis Aufgabe 49**.

#### **Nur die erste Hälfte der Tests ausführen:**
```sh
stack test :bis49
```

#### **Nur die zweite Hälfte der Tests ausführen:**
```sh
stack test :ab49
```

---

## Installation
### Voraussetzungen
- GHC (Glasgow Haskell Compiler)
- Stack (Haskell-Projektverwaltung)

### Klonen des Repositories
```bash
git clone <repository-url>
cd stufe1
stack setup
stack build
```

## 🗂 Ursprung der Aufgaben
Diese Aufgaben wurden aus verschiedenen Quellen zusammengestellt, insbesondere aus alten Klausuren und Haskell-Übungen auf dem Discord-Server von Tarek (tarek6766). Sie wurden für eine einfache Nutzung formatiert und automatisiert.

Falls du Fragen oder Verbesserungsvorschläge hast, erstelle ein **Issue** oder einen **Pull Request**! 🚀

[Server-Link](https://discord.gg/ZpTqM2wMEe)

## Lizenz
Dieses Projekt ist ausschließlich für Bildungszwecke bestimmt. Die Originalaufgaben stammen aus alten Klausuren und wurden für eine effizientere Vorbereitung formatiert.