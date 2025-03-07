module Aufgaben where

import System.Random (randomRIO)
import System.IO (readFile, writeFile)

--------------------------------------------------------------------------------
-- Aufgabe 55: Zufallszahlen-Anzeige
--
--  Schreiben Sie eine Funktion, die nach jeder Benutzereingabe eine Zufallszahl 
--  auf der Konsole ausgibt. Falls der Benutzer "q" eingibt, terminiert das Programm.
--
--  Beispiel:
--
--  > randomLoop
--  Eingabe: hello
--  Zufallszahl: 42
--  Eingabe: test
--  Zufallszahl: 17
--  Eingabe: q
--  Beendet.
--------------------------------------------------------------------------------
randomLoop :: IO ()
randomLoop = undefined

--------------------------------------------------------------------------------
-- Aufgabe 58: Summiere zwei Eingaben
--
--  Schreiben Sie eine Funktion, die zwei natürliche Zahlen von der Konsole
--  einliest, diese addiert und das Ergebnis ausgibt.
--
--  Beispiel:
--
--  sumInput
--  3
--  4
--  ~~> "3 plus 4 sind 7"
--------------------------------------------------------------------------------
sumInput :: IO ()
sumInput = undefined

--------------------------------------------------------------------------------
-- Aufgabe 70: Liste zufällig durchmischen
--
--  Schreiben Sie eine Funktion, die die Reihenfolge der Elemente einer gegebenen
--  Liste mittels `randomRIO` zufällig verändert.
--
--  Beispiel:
--
--  > shuffleList [1,2,3,4,5]
--  ~~> [3,1,5,4,2]   (Beispielhafte Ausgabe, da zufällig)
--------------------------------------------------------------------------------
shuffleList :: [a] -> IO [a]
shuffleList = undefined

--------------------------------------------------------------------------------
-- Aufgabe 79: Zufallswerte generieren
--
--  Schreiben Sie eine Funktion, die `n` zufällige Werte innerhalb eines gegebenen
--  Zahlenbereichs `(von, zu)` generiert und als Liste zurückgibt.
--
--  Beispiel:
--
--  > randomList 5 (1,20)
--  ~~> [1,1,6,5,18]   (Beispielhafte Ausgabe, da zufällig)
--
--  Erweiterung:
--  Implementiere eine zweite Version, die keine Duplikate in der Liste zulässt.
--
--  Beispiel:
--
--  > uniqueRandomList 5 (1,20)
--  ~~> [3,15,8,12,19]   (Beispielhafte Ausgabe, da zufällig)
--------------------------------------------------------------------------------
randomList :: Int -> (Int, Int) -> IO [Int]
randomList = undefined

uniqueRandomList :: Int -> (Int, Int) -> IO [Int]
uniqueRandomList = undefined

--------------------------------------------------------------------------------
-- Aufgabe 89: Zufällige, eindeutige Elemente aus einer Liste wählen
--
--  Implementiere eine Funktion, die eine bestimmte Anzahl (`n`) zufällig 
--  ausgewählter, eindeutiger Elemente aus einer gegebenen Liste zurückgibt.
--
--  Beispiel:
--
--  > randomUniqueElements "qweasdyxc" 2
--  ~~> "xd"   (Beispielhafte Ausgabe, da zufällig)
--
--  > randomUniqueElements [5,4,33,2] 3
--  ~~> [33,2,4]   (Beispielhafte Ausgabe, da zufällig)
--------------------------------------------------------------------------------
randomUniqueElements :: [a] -> Int -> IO [a]
randomUniqueElements = undefined

--------------------------------------------------------------------------------
-- Aufgabe 97: Mehrzeilige Eingabe bis Semikolon
--
--  Implementieren Sie die Funktion `mehrzEingabe`, die solange zeilenweise
--  Eingaben von der Konsole entgegennimmt, bis eine dieser Eingaben mit einem
--  Semikolon (`;`) endet. Der übergebene String wird mit den eingegebenen 
--  Zeilen verkettet, wobei jede neue Zeile mit einem Leerzeichen beginnt.
--
--  Beispiel:
--
--  > mehrzEingabe "Hier:"
--  erfolgt
--  eine
--  Eingabe;
--  ==> "Hier: erfolgt eine Eingabe;"
--
--  > mehrzEingabe "Beispiel 2:"
--  Semikolon allein in Zeile
--  ;
--  ==> "Beispiel 2: Semikolon allein in Zeile ;"
--------------------------------------------------------------------------------
mehrzEingabe :: String -> IO String
mehrzEingabe = undefined

--------------------------------------------------------------------------------
-- Aufgabe 104: Interaktive Texteingabe mit Spezialanweisungen
--
--  Implementieren Sie eine Funktion, die zeilenweise Eingaben von der Konsole
--  entgegennimmt und dabei folgende Spezialanweisungen unterstützt:
--
--  - `"del"` löscht die letzte Eingabe.
--  - `"rep"` wiederholt die letzte Eingabe.
--  - `"stp"` beendet die Eingabe und gibt die gesammelten Eingaben als
--     einen String zurück, in dem die Wörter durch Leerzeichen getrennt sind.
--
--  Die Funktion erhält zwei Strings:
--  - Der erste String ist ein Startwort und speichert die bisherigen Eingaben.
--  - Der zweite String enthält die zuletzt getätigte Eingabe.
--
--  Beispiel:
--
--  > console "message :" ""
--  eine
--  grosse
--  del
--  kleine
--  rep
--  mickeymaus
--  stp
--  ==> "message : eine kleine kleine mickeymaus"
--------------------------------------------------------------------------------
console :: String -> String -> IO String
console = undefined

--------------------------------------------------------------------------------
-- Aufgabe 115: Präfix zu jeder Zeile in einer Datei hinzufügen
--
--  Implementieren Sie eine Funktion, die einen gegebenen String als Präfix
--  an den Anfang jeder Zeile in einer Datei anhängt.
--
--  Angenommen, der Inhalt der Datei ist:
--
--  qwe
--  asd
--  yxc
--
--  Und der Präfix ist `"123"`, dann soll die Datei nach der Verarbeitung
--  so aussehen:
--
--  123qwe
--  123asd
--  123yxc
--
--  Hinweis:
--  - Es kann davon ausgegangen werden, dass die Datei existiert.
--  - Die Funktion soll den Inhalt der Datei überschreiben.
--
--  Beispiel:
--
--  > addPrefixToFile "123" "example.txt"
--------------------------------------------------------------------------------
addPrefixToFile :: String -> FilePath -> IO ()
addPrefixToFile = undefined