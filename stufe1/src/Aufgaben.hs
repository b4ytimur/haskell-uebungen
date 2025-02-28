module Aufgaben where

import Data.Char (isAlpha, toLower)
import Data.List (sortOn)

--------------------------------------------------------------------------------
-- Aufgabe 1: everyNth / exceptEveryNth
--  Diese Funktionen wählen entweder jedes n-te Element aus einer Liste aus
--  oder entfernen jedes n-te Element aus der Liste.
--
--  Beispiele:
--  everyNth 3 [1,9,3,4,1,6,7,18,4,11] ~~> [3,6,4]
--  exceptEveryNth 3 [1,9,3,4,1,6,7,18,4,11] ~~> [1,9,4,1,7,18,11]
--------------------------------------------------------------------------------
everyNth :: Int -> [a] -> [a]
everyNth = undefined

exceptEveryNth :: Int -> [a] -> [a]
exceptEveryNth = undefined

--------------------------------------------------------------------------------
-- Aufgabe 2: reverseChunks
--  Diese Funktion nimmt eine Liste und unterteilt sie in Blöcke der Größe `n`,
--  die dann jeweils umgedreht werden.
--
--  Beispiel:
--  reverseChunks 3 [8,18,15,20,12,12,14,12,2,19,0]
--  ~~> [15,18,8,12,12,20,2,12,14,0,19]
--------------------------------------------------------------------------------
reverseChunks :: Int -> [a] -> [a]
reverseChunks = undefined

--------------------------------------------------------------------------------
-- Aufgabe 6: pairwiseZip / pairwiseZipWith
--  Diese Funktionen sind Varianten der Standardfunktionen `zip` und `zipWith`,
--  um zwei Listen paarweise zu kombinieren.
--
--  Beispiele:
--  pairwiseZip [4,2,1,7] "abcd" ~~> [(4,'a'),(2,'b'),(1,'c'),(7,'d')]
--  pairwiseZipWith (+) [1,2,3] [10,20,30] ~~> [11,22,33]
--------------------------------------------------------------------------------
pairwiseZip :: [a] -> [b] -> [(a, b)]
pairwiseZip = undefined

pairwiseZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
pairwiseZipWith = undefined

--------------------------------------------------------------------------------
-- Aufgabe 15: longestStringLength
--  Diese Funktion gibt die Länge des längsten Strings in einer nicht-leeren
--  Liste von Strings zurück.
--
--  Beispiel:
--  longestStringLength ["Der", "laengste", "String"] ~~> 8
--------------------------------------------------------------------------------
longestStringLength :: [String] -> Int
longestStringLength = undefined

--------------------------------------------------------------------------------
-- Aufgabe 16: oddDigitNumbers
--  Gibt eine Liste der ersten `n` natürlichen Zahlen zurück, die ausschließlich
--  ungerade Ziffern enthalten.
--
--  Beispiel:
--  oddDigitNumbers 13 ~~> [1,3,5,7,9,11,13,15,17,19,31,33,35]
--------------------------------------------------------------------------------
oddDigitNumbers :: Int -> [Int]
oddDigitNumbers = undefined

--------------------------------------------------------------------------------
-- Aufgabe 17: secondToLast
--  Gibt das vorletzte Element einer Liste zurück.
--
--  Beispiel:
--  secondToLast [1, 2, 3, 4, 5] ~~> 4
--------------------------------------------------------------------------------
secondToLast :: [a] -> a
secondToLast = undefined

--------------------------------------------------------------------------------
-- Aufgabe 18: countQXY / countChars
--  Diese Funktionen zählen die Anzahl der Vorkommen bestimmter Zeichen in einem
--  String.
--
--  Beispiele:
--  countQXY "quax" ~~> 2
--  countChars "qxy" "qqqquayx" ~~> 6
--------------------------------------------------------------------------------
countQXY :: String -> Int
countQXY = undefined

countChars :: String -> String -> Int
countChars = undefined

--------------------------------------------------------------------------------
-- Aufgabe 19: divisibleBySix / divisibleBy
--  Gibt eine Liste aller durch sechs teilbaren Zahlen (oder durch eine andere
--  gegebene Zahl) zurück.
--
--  Beispiele:
--  divisibleBySix [1..25] ~~> [6,12,18,24]
--  divisibleBy 6 [1..25] ~~> [6,12,18,24]
--------------------------------------------------------------------------------
divisibleBySix :: [Int] -> [Int]
divisibleBySix = undefined

divisibleBy :: Int -> [Int] -> [Int]
divisibleBy = undefined

--------------------------------------------------------------------------------
-- Aufgabe 20: extractJustValues
--  Extrahiert alle `Just`-Werte aus einer Liste von `Maybe`-Werten.
--
--  Beispiel:
--  extractJustValues [Just 3, Nothing, Just 5] ~~> [3, 5]
--------------------------------------------------------------------------------
extractJustValues :: [Maybe a] -> [a]
extractJustValues = undefined

--------------------------------------------------------------------------------
-- Aufgabe 25: elementPositions
--  Gibt eine Liste der Positionen eines bestimmten Elements in einer Liste zurück.
--
--  Beispiel:
--  elementPositions 0 [0,1,5,0,3] ~~> [0,3]
--------------------------------------------------------------------------------
elementPositions :: Eq a => a -> [a] -> [Int]
elementPositions = undefined

--------------------------------------------------------------------------------
-- Aufgabe 26: middleElement
--  Gibt das mittlere Element einer Liste zurück. Bei gerader Länge wird das
--  erste der beiden mittleren Elemente gewählt.
--
--  Beispiele:
--  middleElement [1,2,3,4,5,6,7] ~~> 4
--  middleElement [1,2,3,4,5,6] ~~> 3
--------------------------------------------------------------------------------
middleElement :: [a] -> a
middleElement = undefined

--------------------------------------------------------------------------------
-- Aufgabe 27: rectangleOfStars
--  Erstellt eine quadratische Zeichenmatrix der Größe `n` bestehend aus `*`.
--  Die Funktion gibt den String zurück, sodass `putStr` das Muster korrekt ausgibt.
--
--  Beispiel:
--  rectangleOfStars 3 ~~> "***\n***\n***"
--
--  putStrLn (rectangleOfStars 3)
--  Gibt aus:
--  ***
--  ***
--  ***
--------------------------------------------------------------------------------
rectangleOfStars :: Int -> String
rectangleOfStars = undefined

--------------------------------------------------------------------------------
-- Aufgabe 28: allSameLength
--  Überprüft, ob alle Listen in einer Liste die gleiche Länge haben.
--
--  Beispiele:
--  allSameLength [[1,2], [3,4]] ~~> True
--  allSameLength [[1,2,3], [4,5]] ~~> False
--------------------------------------------------------------------------------
allSameLength :: [[a]] -> Bool
allSameLength = undefined

--------------------------------------------------------------------------------
-- Aufgabe 29: padLists
--  Ergänzt kürzere Strings in einer Liste mit einem bestimmten Zeichen (`c`), 
--  sodass alle Strings die gleiche Länge haben.
--
--  Beispiel:
--  padLists '+' ["f", "abaz", "bar"] ~~> ["f+++", "abaz", "bar+"]
--------------------------------------------------------------------------------
padLists :: Char -> [String] -> [String]
padLists = undefined

--------------------------------------------------------------------------------
-- Aufgabe 30: firstNOdds
--  Gibt die ersten `n` ungeraden Zahlen aus einer Liste zurück.
--
--  Beispiel:
--  firstNOdds 2 [1,2,3,5] ~~> [1,3]
--------------------------------------------------------------------------------
firstNOdds :: Int -> [Int] -> [Int]
firstNOdds = undefined

--------------------------------------------------------------------------------
-- Aufgabe 31: removeEveryNth
--  Entfernt jedes `n`-te Element aus einer Liste.
--
--  Beispiel:
--  removeEveryNth 5 [1,2,3,4,5,6] ~~> [1,2,3,4,6]
--------------------------------------------------------------------------------
removeEveryNth :: Int -> [a] -> [a]
removeEveryNth = undefined

--------------------------------------------------------------------------------
-- Aufgabe 32: properPunctuationSpacing
--  Überprüft, ob Satzzeichen (`.`, `,`, `?`, `!`) korrekt gesetzt sind, d.h.,
--  direkt nach einem Wort ohne Leerzeichen stehen.
--
--  Beispiel:
--  properPunctuationSpacing "Na, hallo." ~~> True
--------------------------------------------------------------------------------
properPunctuationSpacing :: String -> Bool
properPunctuationSpacing = undefined

--------------------------------------------------------------------------------
-- Aufgabe 33: hasAdjacentDuplicates
--  Überprüft, ob eine Liste mindestens zwei aufeinanderfolgende gleiche Elemente enthält.
--
--  Beispiele:
--  hasAdjacentDuplicates [1, 3, 5, 5, 7] ~~> True
--  hasAdjacentDuplicates [3, 7, 5, 7] ~~> False
--------------------------------------------------------------------------------
hasAdjacentDuplicates :: Eq a => [a] -> Bool
hasAdjacentDuplicates = undefined

--------------------------------------------------------------------------------
-- Aufgabe 34: chunkList
--  Teilt eine Liste in Blöcke der Länge `n` auf. Der letzte Block darf kürzer sein.
--
--  Beispiel:
--  chunkList 3 [1..7] ~~> [[1,2,3],[4,5,6],[7]]
--------------------------------------------------------------------------------
chunkList :: Int -> [a] -> [[a]]
chunkList = undefined

--------------------------------------------------------------------------------
-- Aufgabe 36: replaceOccurrences
--  Ersetzt alle Vorkommen eines bestimmten Elements durch eine gegebene Liste.
--
--  Beispiele:
--  replaceOccurrences '1' "123" "ab1cd1" ~~> "ab123cd123"
--  replaceOccurrences 3 [6,6] [1,2,3,1,2,3,1] ~~> [1,2,6,6,1,2,6,6,1]
--------------------------------------------------------------------------------
replaceOccurrences :: Eq a => a -> [a] -> [a] -> [a]
replaceOccurrences = undefined

--------------------------------------------------------------------------------
-- Aufgabe 37: consecutivePairs
--  Erstellt eine Liste von Paaren aus dem `i`-ten und `i+1`-ten Element einer Liste.
--
--  Beispiel:
--  consecutivePairs [5,8,7,4] ~~> [(5,8),(8,7),(7,4)]
--------------------------------------------------------------------------------
consecutivePairs :: [a] -> [(a,a)]
consecutivePairs = undefined

--------------------------------------------------------------------------------
-- Aufgabe 38: splitAlternating
--  Teilt eine Liste in zwei Teillisten auf, indem die Elemente abwechselnd 
--  in die beiden Listen eingefügt werden.
--
--  Beispiel:
--  splitAlternating [7,4,3,2,5] ~~> ([7,3,5],[4,2])
--------------------------------------------------------------------------------
splitAlternating :: [a] -> ([a], [a])
splitAlternating = undefined

--------------------------------------------------------------------------------
-- Aufgabe 39: interleaveLists
--  Mischt zwei Listen so zusammen, dass abwechselnd Elemente entnommen werden.
--  Falls eine Liste kürzer ist, werden die verbleibenden Elemente der längeren Liste angehängt.
--
--  Beispiel:
--  interleaveLists [1,3,5] [2,4] ~~> [1,2,3,4,5]
--------------------------------------------------------------------------------
interleaveLists :: [a] -> [a] -> [a]
interleaveLists = undefined

--------------------------------------------------------------------------------
-- Aufgabe 41: filterSquares
--  Gibt eine Liste aller Quadratzahlen aus einer Liste zurück.
--
--  Beispiel:
--  filterSquares [1..25] ~~> [1, 4, 9, 16, 25]
--------------------------------------------------------------------------------
filterSquares :: (Num a, Integral a) => [a] -> [a]
filterSquares = undefined

--------------------------------------------------------------------------------
-- Aufgabe 42: indexedList
--  Erstellt eine Liste von Paaren aus Index und Wert einer Liste.
--
--  Beispiel:
--  indexedList "ayq" ~~> [(0, 'a'), (1, 'y'), (2, 'q')]
--------------------------------------------------------------------------------
indexedList :: [a] -> [(Int, a)]
indexedList = undefined

--------------------------------------------------------------------------------
-- Aufgabe 43a: reverseFirstHalf
--  Dreht die erste Hälfte einer Liste um und belässt die zweite Hälfte unverändert.
--
--  Beispiel:
--  reverseFirstHalf "foobar" ~~> "oofbar"
--------------------------------------------------------------------------------
reverseFirstHalf :: [a] -> [a]
reverseFirstHalf = undefined

--------------------------------------------------------------------------------
-- Aufgabe 43b: reverseFirstN
--  Dreht die ersten `n` Elemente einer Liste um, während der Rest unverändert bleibt.
--
--  Beispiele:
--  reverseFirstN 3 "foobar" ~~> "oofbar"
--  reverseFirstN 2 "foobar" ~~> "ofobar"
--------------------------------------------------------------------------------
reverseFirstN :: Int -> [a] -> [a]
reverseFirstN = undefined

--------------------------------------------------------------------------------
-- Aufgabe 44: secondLargest
--  Gibt das zweitgrößte Element einer Liste zurück.
--
--  Beispiel:
--  secondLargest [1,5,7,3] ~~> 5
--------------------------------------------------------------------------------
secondLargest :: Ord a => [a] -> a
secondLargest = undefined

--------------------------------------------------------------------------------
-- Aufgabe 45: extractSublist
--  Extrahiert eine Teilliste zwischen den Indizes `start` (inklusive) und `end` (exklusiv).
--
--  Beispiel:
--  extractSublist 3 8 "abcdefghijklmnopq" ~~> "defgh"
--------------------------------------------------------------------------------
extractSublist :: Int -> Int -> [a] -> [a]
extractSublist = undefined

--------------------------------------------------------------------------------
-- Aufgabe 46: runLengthEncoding
--  Komprimiert eine Zeichenkette, indem aufeinanderfolgende Wiederholungen gezählt werden.
--
--  Beispiel:
--  runLengthEncoding "foo baaar" ~~> [('f',1), ('o',2), (' ',1), ('b',1), ('a',3), ('r',1)]
--------------------------------------------------------------------------------
runLengthEncoding :: Eq a => [a] -> [(a, Int)]
runLengthEncoding = undefined

--------------------------------------------------------------------------------
-- Aufgabe 47: transformString
--  Ersetzt '.' mit '!' und wandelt alle Kleinbuchstaben in Großbuchstaben um.
--
--  Beispiel:
--  transformString "Hallo." ~~> "HALLO!"
--------------------------------------------------------------------------------
transformString :: String -> String
transformString = undefined

--------------------------------------------------------------------------------
-- Aufgabe 49: removeEverySecond
--  Entfernt jedes zweite Element aus einer Liste.
--
--  Beispiel:
--  removeEverySecond "Huapstkxeilflt" ~~> "Haskell"
--------------------------------------------------------------------------------
removeEverySecond :: [a] -> [a]
removeEverySecond = undefined

--------------------------------------------------------------------------------
-- Aufgabe 50: sumCharCodes
--  Gibt die Summe der numerischen ASCII-Werte aller Zeichen einer Zeichenkette zurück.
--
--  Beispiel:
--  sumCharCodes "hallo" ~~> 528
--------------------------------------------------------------------------------
sumCharCodes :: String -> Int
sumCharCodes = undefined

--------------------------------------------------------------------------------
-- Aufgabe 52: happy
--  Prüft, ob die Summe aller geraden Zahlen in einer Liste gleich der Summe aller 
--  ungeraden Zahlen ist.
--
--  Beispiele:
--  happy [19, 34, 23, 14, 5, 1] ~~> True
--  happy [4, 37, 38, 23, 19] ~~> False
--------------------------------------------------------------------------------
happy :: [Int] -> Bool
happy = undefined

--------------------------------------------------------------------------------
-- Aufgabe 59: compressString
--  Ersetzt aufeinanderfolgende Buchstaben durch eine Zählung der Wiederholungen.
--
--  Beispiel:
--  compressString "piii bbblii blaa blllup" ~~> "pi3 b3li2 bla2 bl3up"
--------------------------------------------------------------------------------
compressString :: String -> String
compressString = undefined

--------------------------------------------------------------------------------
-- Aufgabe 63: addLineNumbers
--  Fügt Zeilennummern zu einem gegebenen Text hinzu.
--
--  Beispiel:
--  addLineNumbers "Ein Hund\nlief um die\nEcke"
--  ~~> "1 Ein Hund\n2 lief um die\n3 Ecke"
--------------------------------------------------------------------------------
addLineNumbers :: String -> String
addLineNumbers = undefined

--------------------------------------------------------------------------------
-- Aufgabe 64: noSevens
--  Gibt eine unendliche Liste natürlicher Zahlen zurück, in denen die Ziffer '7' nicht vorkommt.
--
--  Beispiel:
--  take 10 noSevens ~~> [1,2,3,4,5,6,8,9,10,11]
--------------------------------------------------------------------------------
noSevens :: [Int]
noSevens = undefined

--------------------------------------------------------------------------------
-- Aufgabe 65: isDescendingLengths
--  Überprüft, ob jede Liste in einer Liste von Listen kürzer oder gleich lang wie die vorherige ist.
--
--  Beispiel:
--  isDescendingLengths ["Murmeltier", "Ozelot", "Maus"] ~~> True
--------------------------------------------------------------------------------
isDescendingLengths :: [[a]] -> Bool
isDescendingLengths = undefined

--------------------------------------------------------------------------------
-- Aufgabe 67: rowWiseDotProduct
--  Berechnet für jede Zeile das Skalarprodukt mit der entsprechenden Zeile aus einer zweiten Matrix.
--
--  Beispiel:
--  rowWiseDotProduct [[1,2],[3,4],[5,6]] [[3,4],[5,6],[7,8]]
--  ~~> [11,39,83]
--------------------------------------------------------------------------------
rowWiseDotProduct :: Num a => [[a]] -> [[a]] -> [a]
rowWiseDotProduct = undefined

--------------------------------------------------------------------------------
-- Aufgabe 68: matrixMultiply
--  Berechnet das Produkt zweier Matrizen.
--
--  Beispiel:
--  matrixMultiply [[1,2],[3,4]] [[5,6],[7,8]]
--  ~~> [[19,22],[43,50]]
--------------------------------------------------------------------------------
matrixMultiply :: Num a => [[a]] -> [[a]] -> [[a]]
matrixMultiply = undefined

--------------------------------------------------------------------------------
-- Aufgabe 78: removeConsecutiveDuplicates
--  Entfernt aufeinanderfolgende gleiche Zeichen aus einer Liste.
--
--  Beispiel:
--  removeConsecutiveDuplicates "I,,   the   machhhhhine    "
--  ~~> "I, the machine "
--------------------------------------------------------------------------------
removeConsecutiveDuplicates :: Eq a => [a] -> [a]
removeConsecutiveDuplicates = undefined

--------------------------------------------------------------------------------
-- Aufgabe 80: removeNthOccurrence
--  Entfernt das `i`-te Vorkommen eines Elements in einer Liste.
--
--  Beispiel:
--  removeNthOccurrence 1 'a' "the walls are coming together"
--  ~~> "the wlls are coming together"
--------------------------------------------------------------------------------
removeNthOccurrence :: Eq a => Int -> a -> [a] -> [a]
removeNthOccurrence = undefined

--------------------------------------------------------------------------------
-- Aufgabe 84: centerString
--  Zentriert einen String in einem Leerzeichen-Feld oder gibt `Nothing` zurück,
--  falls die Breite nicht ausreicht.
--
--  Beispiele:
--  centerString 3 "ABCD" ~~> Nothing
--  centerString 6 "ABC"  ~~> Just " ABC  "
--------------------------------------------------------------------------------
centerString :: Int -> String -> Maybe String
centerString = undefined

--------------------------------------------------------------------------------
-- Aufgabe 90: teamsToString / stringToTeams
--  Konvertiert eine Liste von Teams in einen String und umgekehrt.
--
--  Beispiel:
--  teamsToString [("Team 1",["Tarek","Hany"]), ("Team 2",["Mike"])]
--  ~~> "Team 1: Tarek, Hany\nTeam 2: Mike"
--------------------------------------------------------------------------------
teamsToString :: [(String, [String])] -> String
teamsToString = undefined

stringToTeams :: String -> [(String, [String])]
stringToTeams = undefined

--------------------------------------------------------------------------------
-- Aufgabe 93: devilP / allDevils
--  Prüft, ob die Ziffernfolge '666' in einer Zahl vorkommt.
--  Gibt eine unendliche Liste aller Teufelszahlen zurück.
--
--  Beispiel:
--  take 10 allDevils
--  ~~> [666,1666,2666,3666,4666,5666,6660,6661,6662,6663]
--------------------------------------------------------------------------------
devilP :: Int -> Bool
devilP = undefined

allDevils :: [Int]
allDevils = undefined

--------------------------------------------------------------------------------
-- Aufgabe 94: importantMessage
--  Erstellt ein Dreieck in der angegebenen Breite `width` mit Zeichen `c`
--  und platziert einen Text daneben.
--
--  Beispiel:
--  importantMessage 3 '*' "wichtig!"
--  ~~> "*\n**\n***   wichtig!\n**\n*"
--------------------------------------------------------------------------------
importantMessage :: Int -> Char -> String -> String
importantMessage = undefined

--------------------------------------------------------------------------------
-- Aufgabe 98: lengthOfLongestString
--  Gibt die Länge des längsten Strings in einer nichtleeren Liste zurück.
--
--  Beispiel:
--  lengthOfLongestString ["Der", "laengste", "String"]
--  ~~> 8
--------------------------------------------------------------------------------
lengthOfLongestString :: [String] -> Int
lengthOfLongestString = undefined

--------------------------------------------------------------------------------
-- Aufgabe 99: numbersWithOddDigits
--  Gibt die ersten n positiven Zahlen zurück, die nur ungerade Ziffern enthalten.
--
--  Beispiel:
--  numbersWithOddDigits 13
--  ~~> [1,3,5,7,9,11,13,15,17,19,31,33,35]
--------------------------------------------------------------------------------
numbersWithOddDigits :: Int -> [Int]
numbersWithOddDigits = undefined

--------------------------------------------------------------------------------
-- Aufgabe 100: addnNumbers
--  Addiert jeweils n aufeinanderfolgende Zahlen in einer (evtl. unendlichen) Liste.
--  Falls die Restliste kürzer als n ist, werden einfach alle verbleibenden Zahlen addiert.
--
--  Beispiele:
--  addnNumbers [1 .. 10] 3 ~~> [6,15,24,10]
--  take 5 $ addnNumbers [1 ..] 5 ~~> [15,40,65,90,115]
--------------------------------------------------------------------------------

addnNumbers :: [Int] -> Int -> [Int]
addnNumbers = undefined

--------------------------------------------------------------------------------
-- Aufgabe 101: triangNums / isTriangNum
--  Eine Dreieckszahl ist die Summe aller Zahlen von 0 bis n.
--  Die Funktion `triangNums` erzeugt eine unendliche Liste aller Dreieckszahlen.
--  Die Funktion `isTriangNum` überprüft, ob eine Zahl eine Dreieckszahl ist.
--
--  Beispiele:
--  take 15 triangNums ~~> [0,1,3,6,10,15,21,28,36,45,55,66,78,91,105]
--  isTriangNum 36 ~~> True
--  isTriangNum 99 ~~> False
--------------------------------------------------------------------------------

triangNums :: [Int]
triangNums = undefined

isTriangNum :: Int -> Bool
isTriangNum = undefined

--------------------------------------------------------------------------------
-- Aufgabe 105: inits / tails
--  Die Funktion `inits` erzeugt eine Liste aller möglichen Präfixe einer Liste.
--  Die Funktion `tails` erzeugt eine Liste aller möglichen Suffixe einer Liste.
--
--  Beispiele:
--  inits "abc" ~~> ["","a","ab","abc"]
--  tails "abc" ~~> ["abc","bc","c",""]
--------------------------------------------------------------------------------

inits :: [a] -> [[a]]
inits = undefined

tails :: [a] -> [[a]]
tails = undefined

--------------------------------------------------------------------------------
-- Aufgabe 106: lastIntDigit / lastIntSubstring
--  `lastIntDigit` gibt die letzte vorkommende Ziffer in einem String zurück.
--  `lastIntSubstring` gibt die letzte vorkommende zusammenhängende Zahl zurück.
--
--  Beispiele:
--  lastIntDigit "ta12re65zt" ~~> Just 5
--  lastIntDigit "tarezt" ~~> Nothing
--
--  lastIntSubstring "ta12re65zt" ~~> Just 65
--  lastIntSubstring "tarezt" ~~> Nothing
--------------------------------------------------------------------------------

lastIntDigit :: String -> Maybe Int
lastIntDigit = undefined

lastIntSubstring :: String -> Maybe Int
lastIntSubstring = undefined

--------------------------------------------------------------------------------
-- Aufgabe 109: foldDigits
--  Wandelt eine Liste von Zahlen in eine einzelne Zahl um, indem sie als Ziffern
--  aneinandergereiht werden. Falls die Liste leer ist, wird 0 zurückgegeben.
--
--  Beispiele:
--  foldDigits [1,2,3,45,6,789] ~~> 123456789
--  foldDigits [] ~~> 0
--------------------------------------------------------------------------------

foldDigits :: [Int] -> Int
foldDigits = undefined

--------------------------------------------------------------------------------
-- Aufgabe 111: containsAll / containsInOrder
--  `containsAll` prüft, ob alle Elemente der ersten Liste in der zweiten vorkommen.
--  `containsInOrder` prüft, ob die Elemente der ersten Liste in der zweiten vorkommen
--  und zwar in der gleichen Reihenfolge.
--
--  Beispiele:
--  containsAll [1,2,3] [6,5,4,3,2,1] ~~> True
--  containsAll [1,2,3] [6,5,4,3,2] ~~> False
--
--  containsInOrder [1,2,3] [6,5,4,3,2,1] ~~> False
--  containsInOrder [1,2,3] [6,2,4,1,2,9,9,3] ~~> True
--------------------------------------------------------------------------------

containsAll :: Eq a => [a] -> [a] -> Bool
containsAll = undefined

containsInOrder :: Eq a => [a] -> [a] -> Bool
containsInOrder = undefined

--------------------------------------------------------------------------------
-- Aufgabe 119: greater
--  Gibt alle Elemente aus einer Liste zurück, die größer als das angegebene Element sind.
--
--  Beispiel:
--  greater (5,[1,2,3,4,5,6,7,8,9,10]) ~~> [6,7,8,9,10]
--------------------------------------------------------------------------------

greater :: Ord a => (a, [a]) -> [a]
greater = undefined

--------------------------------------------------------------------------------
-- Aufgabe 120: replicate', lines', unlines', intercalate', intersperse'
--  Reimplementierung der vordefinierten Funktionen.
--
--  Beispiele:
--  replicate' 3 'a' ~~> "aaa"
--  lines' "Hello\nWorld" ~~> ["Hello", "World"]
--  unlines' ["Hello", "World"] ~~> "Hello\nWorld\n"
--  intercalate' ", " ["a", "b", "c"] ~~> "a, b, c"
--  intersperse' ',' "hello" ~~> "h,e,l,l,o"
--------------------------------------------------------------------------------

replicate' :: Int -> a -> [a]
replicate' = undefined

lines' :: String -> [String]
lines' = undefined

unlines' :: [String] -> String
unlines' = undefined

intercalate' :: [a] -> [[a]] -> [a]
intercalate' = undefined

intersperse' :: a -> [a] -> [a]
intersperse' = undefined

--------------------------------------------------------------------------------
-- Aufgabe 121: allOddLength / allSatisfy
--  `allOddLength` überprüft, ob alle inneren Listen eine ungerade Länge haben.
--  `allSatisfy` verallgemeinert `allOddLength`, indem eine beliebige Bedingung 
--  übergeben wird.
--
--  Beispiele:
--  allOddLength ["qwe","1","qweasdy"] ~~> True
--
--  allSatisfy (\l -> odd (length l)) ["qwe","1","qweasdy"] ~~> True
--  allSatisfy (\l -> even (length l)) ["qwe","1","qweasdy"] ~~> False
--------------------------------------------------------------------------------

allOddLength :: [[a]] -> Bool
allOddLength = undefined

allSatisfy :: ([a] -> Bool) -> [[a]] -> Bool
allSatisfy = undefined

--------------------------------------------------------------------------------
-- Aufgabe 128: quad / quadi
--  `quad` überprüft, ob eine endliche Zeichenkette eine quadratische Struktur hat,
--  d.h. sie enthält genau so viele Zeilen gleicher Länge, wie diese Länge beträgt.
--  
--  `quadi` erweitert `quad`, um auch unendliche Zeichenketten korrekt zu behandeln.
--
--  Beispiele:
--  quad "abc\ndef\nhij" ~~> True
--  quad "foo\nfoo" ~~> False
--  quad "abc\ndefgh\nhij" ~~> False
--
--  quadi (cycle "foo\n") ~~> False
--  quadi ("ab\ncd\nxx" ++ [undefined]) ~~> False
--------------------------------------------------------------------------------

quad :: String -> Bool
quad = undefined

quadi :: String -> Bool
quadi = undefined

--------------------------------------------------------------------------------
-- Aufgabe 133: beifang / avgHering / avgKabeljau / avgSeelachs
--  `beifang` entfernt alle Fische aus der Liste, deren Gewicht unter dem Mindestgewicht liegt.
--  `avgHering`, `avgKabeljau` und `avgSeelachs` berechnen das durchschnittliche
--  Gewicht der jeweiligen Fischart in einem Fang.
--
--  Mindestgewichte:
--  - Hering:   200g
--  - Kabeljau: 1500g
--  - Seelachs: 2000g
--
--  Beispiele:
--  length (beifang fang1) ~~> 5
--  avgHering fang1 ~~> 206
--  avgKabeljau fang1 ~~> 1555
--  avgSeelachs fang1 ~~> 2107
--------------------------------------------------------------------------------

data Fisch = Hering {gewicht :: Int}
           | Kabeljau {gewicht :: Int}
           | Seelachs {gewicht :: Int}
           deriving (Show, Eq)

fang1 :: [Fisch]
fang1 = [Hering 198, Seelachs 2012, Hering 215, Seelachs 2312,
         Kabeljau 1612, Hering 207, Seelachs 1998, Kabeljau 1498]

beifang :: [Fisch] -> [Fisch]
beifang = undefined

avgHering :: [Fisch] -> Int
avgHering = undefined

avgKabeljau :: [Fisch] -> Int
avgKabeljau = undefined

avgSeelachs :: [Fisch] -> Int
avgSeelachs = undefined

--------------------------------------------------------------------------------
-- Aufgabe 137: preis
--  Berechnet den Preis in Cent für eine Obstkiste unter Berücksichtigung von Mengenrabatten.
--
--  Preis pro Stück:
--  - Apfel:   79 Cent
--  - Birne:   99 Cent
--  - Zitrone: 139 Cent
--
--  Rabattaktionen:
--  - 5 Äpfel für 299 Cent (statt 395 Cent)
--  - 3 Birnen für 249 Cent (statt 297 Cent)
--
--  Beispiele:
--  preis [Apfel, Zitrone, Birne, Apfel] ~~> 396
--  preis (k1 ++ k1 ++ k1) ~~> 1044
--------------------------------------------------------------------------------

data Obst = Apfel | Birne | Zitrone
    deriving (Eq, Show)

k1 :: [Obst]
k1 = [Apfel, Zitrone, Birne, Apfel]

k2 :: [Obst]
k2 = k1 ++ k1 ++ k1

preis :: [Obst] -> Int
preis = undefined

--------------------------------------------------------------------------------
-- Aufgabe 138: ausgewogen
--  Ein String ist ausgewogen, wenn die Anzahl der Vokale und Konsonanten
--  sich höchstens um 1 unterscheidet.
--
--  Vokale: a, e, i, o, u, ä, ö, ü (Groß-/Kleinschreibung wird ignoriert)
--  Konsonanten: Alle anderen Buchstaben
--
--  Beispiele:
--  ausgewogen "Onomatopöie" ~~> False
--  ausgewogen "Hundeauge" ~~> True
--  ausgewogen "Schraubstock" ~~> False
--  ausgewogen "∗∗∗?∗ Hundeaugen .,.,.,,, " ~~> True
--------------------------------------------------------------------------------

ausgewogen :: String -> Bool
ausgewogen = undefined

--------------------------------------------------------------------------------
-- Aufgabe 139: center / centerlines / centertext
--  `center n str` zentriert eine Zeichenkette auf eine Länge von `n`. Falls `str`
--  länger als `n` ist, wird es abgeschnitten.
--
--  `centerlines` zentriert alle Strings einer Liste basierend auf der längsten Zeile.
--
--  `centertext` wendet `centerlines` auf die Zeilen eines Textes an.
--
--  Beispiele:
--  center 5 "foo" ~~> " foo "
--  center 8 "baz" ~~> "  baz   "
--
--  centerlines ["Here", "are", "4", "lines!"]
--  ~~> [" Here "," are  ","  4   ","lines!"]
--
--  centertext "This\nis\na\nstring!"
--  ~~> " This  \n  is   \n   a   \nstring!\n"
--------------------------------------------------------------------------------

center :: Int -> String -> String
center = undefined

centerlines :: [String] -> [String]
centerlines = undefined

centertext :: String -> String
centertext = undefined

--------------------------------------------------------------------------------
-- Aufgabe 141: positions
--  Gibt eine Liste von Paaren (x, i) zurück, wobei x das jeweilige Listenelement
--  ist und i die Position in der Liste (beginnend mit 1).
--
--  Beispiel:
--  positions "Foo" ~~> [('F',1),('o',2),('o',3)]
--------------------------------------------------------------------------------

positions :: [a] -> [(a, Int)]
positions = undefined

--------------------------------------------------------------------------------
-- Aufgabe 142: rpad / rpadinf
--  `rpad` füllt alle Listen in einer Liste von Listen auf die Länge der längsten
--  Liste mit dem angegebenen Füllzeichen auf.
--
--  Beispiel:
--  rpad '*' ["abcde","fgh","uvwxyz"] ~~> ["abcde*","fgh***","uvwxyz"]
--
--  `rpadinf` ist eine erweiterte Version von `rpad`, die auch mit unendlichen
--  Listen korrekt funktioniert.
--
--  Beispiel:
--  map (take 5) $ rpadinf 0 [[1,3 ..],[1 ..],[7,9]] ==
--    [[1,3,5,7,9],[1,2,3,4,5],[7,9,0,0,0]]
--------------------------------------------------------------------------------

rpad :: a -> [[a]] -> [[a]]
rpad = undefined

rpadinf :: a -> [[a]] -> [[a]]
rpadinf = undefined

--------------------------------------------------------------------------------
-- Aufgabe 145: triangle
--  Überprüft, ob eine Liste von Listen in Dreiecksform ist, d.h. die n-te
--  Liste muss genau die Länge n haben.
--
--  Beispiele:
--  triangle ["a","xy","123"] ~~> True
--  triangle [[1],[2,3],[3]] ~~> False
--------------------------------------------------------------------------------

triangle :: [[a]] -> Bool
triangle = undefined

--------------------------------------------------------------------------------
-- Aufgabe 148: trimTrailingSpaces / trimTrailingSpacesList
--  `trimTrailingSpaces` gibt einen String bis zum letzten Nicht-Leerzeichen zurück.
--  `trimTrailingSpacesList` wendet `trimTrailingSpaces` auf jede Zeichenkette 
--  in einer Liste an.
--
--  Beispiele:
--  trimTrailingSpaces "pain" ~~> "pain"
--  trimTrailingSpaces "pain " ~~> "pain"
--  trimTrailingSpaces "  sadness and sorrow   " ~~> "  sadness and sorrow"
--
--  trimTrailingSpacesList ["pain","pain ","  sadness and sorrow   ","sadness and sorrow"]
--  ~~> ["pain","pain","  sadness and sorrow","sadness and sorrow"]
--------------------------------------------------------------------------------

trimTrailingSpaces :: String -> String
trimTrailingSpaces = undefined

trimTrailingSpacesList :: [String] -> [String]
trimTrailingSpacesList = undefined

--------------------------------------------------------------------------------
-- Aufgabe 152: diamond
--  Erzeugt eine Raute aus einem gegebenen Zeichen mit einer bestimmten Kantenlänge.
--
--  Beispiel:
--  diamond 'x' 1 ~~> "x\n"
--  diamond '*' 5 ~~> 
--      "    *\n"
--      "   ***\n"
--      "  *****\n"
--      " *******\n"
--      "*********\n"
--      " *******\n"
--      "  *****\n"
--      "   ***\n"
--      "    *\n"
--
--  Hinweise:
--  - Die Ausgabe hat `2n - 1` Zeilen.
--  - Zeile i (1 ≤ i ≤ 2n - 1) besteht aus (n - j) Leerzeichen, gefolgt von (2j - 1) Zeichen.
--  - j = i für i ≤ n, sonst j = 2n - i.
--------------------------------------------------------------------------------

diamond :: Char -> Int -> String
diamond = undefined

--------------------------------------------------------------------------------
-- Aufgabe 154: frequency
--  Zählt die Häufigkeit von Buchstaben in einer Zeichenkette und gibt sie in
--  absteigender Reihenfolge zurück.
--
--  - Nur Buchstaben werden gezählt (keine Zahlen, Sonderzeichen usw.).
--  - Groß- und Kleinschreibung werden ignoriert.
--  - Zeichen mit einer Häufigkeit von 0 werden nicht ausgegeben.
--  - Die Reihenfolge bei gleicher Häufigkeit ist nicht spezifiziert.
--
--  Beispiele:
--  frequency "" ~~> []
--  frequency "'abc123AB!ax.'" ~~> [('a',3),('b',2),('x',1),('c',1)]
--  frequency "Straßenbahnlinie 6?" ~~> [('n',3),('i',2),('e',2),('a',2),
--                                       ('ß',1),('t',1),('s',1),('r',1),
--                                       ('l',1),('h',1),('b',1)]
--
--  Hinweise:
--  - `isAlpha :: Char -> Bool` prüft, ob ein Zeichen ein Buchstabe ist.
--  - `toLower :: Char -> Char` konvertiert Buchstaben zu Kleinbuchstaben.
--  - `sortOn :: Ord b => (a -> b) -> [a] -> [a]` sortiert nach einer bestimmten Eigenschaft.
--------------------------------------------------------------------------------

frequency :: String -> [(Char, Int)]
frequency = undefined
