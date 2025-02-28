module Aufgaben where

--------------------------------------------------------------------------------
-- Aufgabe 1: nestedSubtraction
--  Diese Funktion führt eine verschachtelte Subtraktion durch, indem sie
--  von `num1` ausgehend wiederholt `num2` abzieht und dabei das Ergebnis
--  weiter in die Berechnung einfügt.
--
--  Beispiele:
--  nestedSubtraction 6 3 ~~> 6 - (5 - (4 - 3)) = 2
--  nestedSubtraction 5 4 ~~> 5 - 4 = 1
--  nestedSubtraction 6 6 ~~> 6
--------------------------------------------------------------------------------
nestedSubtraction :: Integer -> Integer -> Integer
nestedSubtraction num1 num2 = undefined

--------------------------------------------------------------------------------
-- Aufgabe 2: evenNumbersInRange
--  Diese Funktion gibt alle geraden Zahlen zwischen `num1` und `num2` 
--  (inklusive) zurück, unabhängig von der Reihenfolge der Eingaben.
--
--  Beispiele:
--  evenNumbersInRange 1 10 ~~> [2,4,6,8,10]
--  evenNumbersInRange 10 1 ~~> [2,4,6,8,10]
--  evenNumbersInRange 10 10 ~~> [10]
--------------------------------------------------------------------------------
evenNumbersInRange :: Integer -> Integer -> [Integer]
evenNumbersInRange num1 num2 = undefined

--------------------------------------------------------------------------------
-- Aufgabe 3: evenNumbersAsString
--  Diese Funktion gibt alle geraden Zahlen zwischen `num1` und `num2` 
--  (inklusive) als String zurück, getrennt durch Leerzeichen.
--
--  Beispiele:
--  evenNumbersAsString 1 10 ~~> "2 4 6 8 10"
--  evenNumbersAsString 10 1 ~~> "2 4 6 8 10"
--  evenNumbersAsString 10 10 ~~> "10"
--------------------------------------------------------------------------------
evenNumbersAsString :: Integer -> Integer -> String
evenNumbersAsString num1 num2 = undefined

--------------------------------------------------------------------------------
-- Aufgabe 4: rangeFromZero
--  Diese Funktion gibt alle Zahlen von 0 bis `num` (inklusive) in einer Liste zurück.
--
--  Beispiele:
--  rangeFromZero 10 ~~> [0,1,2,3,4,5,6,7,8,9,10]
--  rangeFromZero 0 ~~> [0]
--------------------------------------------------------------------------------
rangeFromZero :: Integer -> [Integer]
rangeFromZero num = undefined

--------------------------------------------------------------------------------
-- Aufgabe 5: countdown
--  Diese Funktion gibt alle Zahlen von `num` bis 0 (inklusive) in einer Liste zurück.
--
--  Beispiele:
--  countdown 10 ~~> [10,9,8,7,6,5,4,3,2,1,0]
--  countdown 0 ~~> [0]
--------------------------------------------------------------------------------
countdown :: Integer -> [Integer]
countdown num = undefined

--------------------------------------------------------------------------------
-- Aufgabe 6: repeatChar
--  Diese Funktion gibt eine Liste von `zahl` Wiederholungen des Zeichens `ch` zurück,
--  dargestellt als Zeichenkette.
--
--  Beispiele:
--  repeatChar 'o' 3 ~~> "ooo"
--  repeatChar 'z' 5 ~~> "zzzzz"
--------------------------------------------------------------------------------
repeatChar :: Char -> Int -> [Char]
repeatChar ch zahl = undefined

--------------------------------------------------------------------------------
-- Aufgabe 7: decreasingCharPyramid
--  Diese Funktion gibt eine Liste zurück, in der das Zeichen `ch` in abnehmender 
--  Anzahl von `zahl` bis 1 vorkommt.
--
--  Beispiele:
--  decreasingCharPyramid '*' 3 ~~> ["***","**","*"]
--  decreasingCharPyramid 'z' 4 ~~> ["zzzz","zzz","zz","z"]
--------------------------------------------------------------------------------
decreasingCharPyramid :: Char -> Int -> [String]
decreasingCharPyramid ch zahl = undefined

--------------------------------------------------------------------------------
-- Aufgabe 8: increasingCharPyramid
--  Diese Funktion gibt eine Liste zurück, in der das Zeichen `ch` in aufsteigender 
--  Anzahl von 1 bis `zahl` vorkommt.
--
--  Beispiele:
--  increasingCharPyramid '*' 3 ~~> ["*","**","***"]
--  increasingCharPyramid 'z' 4 ~~> ["z","zz","zzz","zzzz"]
--------------------------------------------------------------------------------
increasingCharPyramid :: Char -> Int -> [String]
increasingCharPyramid ch zahl = undefined

--------------------------------------------------------------------------------
-- Aufgabe 9: increasingCharPyramidSpaced
--  Diese Funktion gibt eine Zeichenkette zurück, in der das Zeichen `ch` in 
--  aufsteigender Anzahl von 1 bis `zahl` vorkommt, getrennt durch Leerzeichen.
--
--  Beispiele:
--  increasingCharPyramidSpaced '*' 3
--  ~~> "* ** ***"
--
--  increasingCharPyramidSpaced 'z' 4
--  ~~> "z zz zzz zzzz"
--------------------------------------------------------------------------------
increasingCharPyramidSpaced :: Char -> Int -> String
increasingCharPyramidSpaced ch zahl = undefined


--------------------------------------------------------------------------------
-- Aufgabe 10: increasingCharPyramidNewline
--  Diese Funktion gibt eine Zeichenkette zurück, in der das Zeichen `ch` in 
--  aufsteigender Anzahl von 1 bis `zahl` vorkommt, getrennt durch Zeilenumbrüche.
--
--  Beispiele:
--  increasingCharPyramidNewline '*' 3
--  ~~> "*\n**\n***"
--
--  increasingCharPyramidNewline 'z' 4
--  ~~> "z\nzz\nzzz\nzzzz"
--------------------------------------------------------------------------------
increasingCharPyramidNewline :: Char -> Int -> String
increasingCharPyramidNewline ch zahl = undefined


--------------------------------------------------------------------------------
-- Aufgabe 11: mirroredCountdown
--  Diese Funktion gibt eine Liste zurück, die von `num` bis 0 zählt und dann 
--  wieder zurück bis `num` hochzählt.
--
--  Beispiele:
--  mirroredCountdown 5
--  ~~> [5,4,3,2,1,0,1,2,3,4,5]
--
--  mirroredCountdown 3
--  ~~> [3,2,1,0,1,2,3]
--
--  mirroredCountdown 1
--  ~~> [1,0,1]
--
--  mirroredCountdown 0
--  ~~> [0]
--------------------------------------------------------------------------------
mirroredCountdown :: Int -> [Int]
mirroredCountdown num = undefined


--------------------------------------------------------------------------------
-- Aufgabe 12: maximumInList
--  Diese Funktion gibt die größte Zahl in einer Liste zurück.
--
--  Beispiele:
--  maximumInList [9,8,7,6,77,55]
--  ~~> 77
--------------------------------------------------------------------------------
maximumInList :: [Int] -> Int
maximumInList list = undefined


--------------------------------------------------------------------------------
-- Aufgabe 13.1: removeDuplicates (nub)
--  Diese Funktion entfernt doppelte Elemente aus einer Liste.
--
--  Beispiele:
--  removeDuplicates [1,1,2,2,3,3,4,4]
--  ~~> [1,2,3,4]
--------------------------------------------------------------------------------
removeDuplicates :: [Int] -> [Int]
removeDuplicates list = undefined


--------------------------------------------------------------------------------
-- Aufgabe 13.2: listIntersection (intersect)
--  Diese Funktion gibt die gemeinsamen Elemente zweier Listen zurück.
--  Die Ausgabe enthält keine Duplikate.
--
--  Beispiele:
--  listIntersection [1,1,2,2,3,3,4,4] [5,4,3]
--  ~~> [3,4]
--------------------------------------------------------------------------------
listIntersection :: [Int] -> [Int] -> [Int]
listIntersection list1 list2 = undefined


--------------------------------------------------------------------------------
-- Aufgabe 13.3: listDifference (diff)
--  Diese Funktion gibt die Elemente aus der ersten Liste zurück,
--  die nicht in der zweiten Liste vorkommen.
--  Die Ausgabe enthält keine Duplikate.
--
--  Beispiele:
--  listDifference [1,1,2,2,3,3,4,4] [5,4,3]
--  ~~> [1,2]
--------------------------------------------------------------------------------
listDifference :: [Int] -> [Int] -> [Int]
listDifference list1 list2 = undefined


--------------------------------------------------------------------------------
-- Aufgabe 13.4: listUnion (union)
--  Diese Funktion kombiniert zwei Listen und entfernt doppelte Werte.
--
--  Beispiele:
--  listUnion [1,1,2,2,3,3,4,4] [5,4,3]
--  ~~> [1,2,3,4,5]
--------------------------------------------------------------------------------
listUnion :: [Int] -> [Int] -> [Int]
listUnion list1 list2 = undefined


--------------------------------------------------------------------------------
-- Aufgabe 14: zipLists
--  Diese Funktion kombiniert zwei Listen zu einer Liste von Tupeln.
--  Die Elemente der ersten Liste werden mit den entsprechenden Elementen
--  der zweiten Liste verknüpft.
--
--  Beispiele:
--  zipLists [1,2,3] "abc"
--  ~~> [(1,'a'),(2,'b'),(3,'c')]
--------------------------------------------------------------------------------
zipLists :: [Int] -> [Char] -> [(Int,Char)]
zipLists list1 list2 = undefined


--------------------------------------------------------------------------------
-- Aufgabe 15: lookupValue
--  Diese Funktion sucht den Wert zu einem bestimmten Schlüssel in einer Liste von Tupeln.
--  Falls der Schlüssel nicht existiert, bleibt das Ergebnis undefiniert.
--
--  Beispiele:
--  lookupValue 'b' [('z',1),('n',44),('b',5),('e',4)]
--  ~~> 5
--
--  lookupValue 'a' [('z',1),('n',44),('b',5),('e',4)]
--  ~~> undefined
--------------------------------------------------------------------------------
lookupValue :: Char -> [(Char,Int)] -> Int
lookupValue ch list = undefined


--------------------------------------------------------------------------------
-- Aufgabe 16: containsNumber
--  Diese Funktion prüft, ob eine gegebene Zahl in einer Liste enthalten ist.
--
--  Beispiele:
--  containsNumber 3 [1,2,3,4,5]
--  ~~> True
--
--  containsNumber 6 [1,2,3,4,5]
--  ~~> False
--------------------------------------------------------------------------------
containsNumber :: Int -> [Int] -> Bool
containsNumber num list = undefined

--------------------------------------------------------------------------------
-- Aufgabe 17.1: firstOccurrence
--  Diese Funktion gibt die Position des ersten Vorkommens eines Zeichens
--  in einem String zurück. Falls das Zeichen nicht existiert, bleibt es undefiniert.
--
--  Beispiele:
--  firstOccurrence "Hello World" 'o'
--  ~~> 4
--------------------------------------------------------------------------------
firstOccurrence :: String -> Char -> Int
firstOccurrence text char = undefined


--------------------------------------------------------------------------------
-- Aufgabe 17.2: allOccurrences
--  Diese Funktion gibt alle Positionen eines Zeichens in einem String zurück.
--
--  Beispiele:
--  allOccurrences "Hello World" 'o'
--  ~~> [4,7]
--------------------------------------------------------------------------------
allOccurrences :: String -> Char -> [Int]
allOccurrences text char = undefined


--------------------------------------------------------------------------------
-- Aufgabe 18: charAtPosition
--  Diese Funktion gibt das Zeichen an der angegebenen Position in einem String zurück.
--
--  Beispiele:
--  charAtPosition "Hello World" 4
--  ~~> 'o'
--------------------------------------------------------------------------------
charAtPosition :: String -> Int -> Char
charAtPosition text position = undefined


--------------------------------------------------------------------------------
-- Aufgabe 19: sumOfList
--  Diese Funktion gibt die Summe aller Zahlen in einer Liste zurück.
--
--  Beispiele:
--  sumOfList [1,3,5,7]
--  ~~> 16
--------------------------------------------------------------------------------
sumOfList :: [Int] -> Int
sumOfList liste = undefined


--------------------------------------------------------------------------------
-- Aufgabe 20: intListToStringList
--  Diese Funktion konvertiert eine Liste von Zahlen in eine Liste von Strings.
--
--  Beispiele:
--  intListToStringList [1,3,5,7]
--  ~~> ["1","3","5","7"]
--------------------------------------------------------------------------------
intListToStringList :: [Int] -> [String]
intListToStringList liste = undefined


--------------------------------------------------------------------------------
-- Aufgabe 21: intListToString
--  Diese Funktion konvertiert eine Liste von Zahlen in eine einzige Zeichenkette.
--
--  Beispiele:
--  intListToString [1,30,5,7]
--  ~~> "13057"
--------------------------------------------------------------------------------
intListToString :: [Int] -> String
intListToString liste = undefined


--------------------------------------------------------------------------------
-- Aufgabe 22: rangeToTen
--  Diese Funktion gibt alle Zahlen von der gegebenen Zahl bis 10 zurück.
--  Falls die gegebene Zahl größer als 10 ist, wird eine leere Liste zurückgegeben.
--
--  Beispiele:
--  rangeToTen 2
--  ~~> [2,3,4,5,6,7,8,9,10]
--
--  rangeToTen 5
--  ~~> [5,6,7,8,9,10]
--
--  rangeToTen (-5)
--  ~~> [-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10]
--
--  rangeToTen 10
--  ~~> [10]
--
--  rangeToTen 11
--  ~~> []
--------------------------------------------------------------------------------
rangeToTen :: Int -> [Int]
rangeToTen n = undefined