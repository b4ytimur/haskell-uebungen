module Aufgaben where

--------------------------------------------------------------------------------
-- Aufgabe 14a: Zeilenweise Sternmuster 
-- 
--  Die Funktion `generateStarPattern` erzeugt ein Muster aus dem Zeichen `ch`, 
--  wobei jede Zahl in der Liste angibt, wie viele `ch`-Zeichen in einer Zeile 
--  stehen sollen.
--
--  Beispiele:
--  generateStarPattern '*' [3,5,2] 
--    ~~> "***  \n*****\n**   \n"
--
--  putStrLn (generateStarPattern '*' [3,5,2])
--    ***
--    *****
--    **
--------------------------------------------------------------------------------
generateStarPattern :: Char -> [Int] -> [Char]
generateStarPattern = undefined


--------------------------------------------------------------------------------
-- Aufgabe 14b: Transponierte Darstellung des Sternmusters
--
--  Die Funktion `generateTransposedStarPattern` erzeugt ebenfalls ein Zeichenmuster 
--  mit `ch`, aber die Ausgabe wird so transponiert, dass das höchste Vorkommen einer 
--  Zahl in der Liste die Anzahl der Zeilen bestimmt.
--
--  Beispiele:
--  generateTransposedStarPattern '*' [3,5,2]
--    ~~> "***\n***\n** \n * \n * \n"
--
--  putStrLn (generateTransposedStarPattern '*' [3,5,2])
--    ***
--    ***
--    **
--     *
--     *
--
--  Hinweis:
--  - Die vordefinierte Funktion `transpose` aus `Data.List` könnte hilfreich sein.
--------------------------------------------------------------------------------
generateTransposedStarPattern :: Char -> [Int] -> [Char]
generateTransposedStarPattern = undefined

--------------------------------------------------------------------------------
-- Aufgabe 22: Berechnung nichtleerer Teillisten
--  
--  Die Funktion `nonEmptySublists` gibt alle nichtleeren Teilstrings einer 
--  gegebenen Liste zurück. Jede Teilliste beginnt an einer Position in der 
--  Eingabeliste und enthält alle möglichen Endungen ab dieser Position.
--
--  Beispiele:
--  nonEmptySublists "pi3"
--    ~~> ["p", "pi", "pi3", "i", "i3", "3"]
--
--  nonEmptySublists [1,2,3]
--    ~~> [[1], [1,2], [1,2,3], [2], [2,3], [3]]
--------------------------------------------------------------------------------
nonEmptySublists :: [a] -> [[a]]
nonEmptySublists = undefined

--------------------------------------------------------------------------------
-- Aufgabe 23: Differenz mit dem Mittelwert
--
--  Die Funktion `differenceFromMean` berechnet den Mittelwert einer gegebenen 
--  Liste und gibt für jedes Element die Differenz zu diesem Mittelwert zurück.
--
--  Beispiele:
--  differenceFromMean [1,7,3,5,4]
--    ~~> [3.0,-3.0,1.0,-1.0,0.0]
--
--  Erklärung der Signatur-Varianten:
--
--  Variante 1:
--  differenceFromMean :: (Integral a, Fractional b) => [a] -> [b]
--   - Hier können Ganzzahlen (`Integral a`) als Eingabe verwendet werden.
--   - Der Mittelwert und die Differenzen werden jedoch als `Fractional b` 
--     ausgegeben, sodass eine Fließkommazahl entsteht.
--
--  Variante 2:
--  differenceFromMean :: Fractional a => [a] -> [a]
--   - Die Eingabe muss bereits `Fractional` sein, also beispielsweise `Double`.
--   - Da keine Umwandlung von `Integral` zu `Fractional` nötig ist, ist die 
--     Implementierung einfacher.
--
--  Variante 3:
--  differenceFromMean :: (Num a, Show a, Fractional b, Read b) => [a] -> [b]
--   - Diese Variante erfordert, dass die Eingabeelemente `Num` sind und 
--     darstellbar (`Show a`).
--   - Die Ergebnisse werden erst in `String` umgewandelt, dann mit `Read b` 
--     wieder in eine Zahl konvertiert.
--   - Dies ist ineffizient, aber machbar, indem man `show` und `read` nutzt.
--------------------------------------------------------------------------------
differenceFromMean :: (Integral a, Fractional b) => [a] -> [b]
differenceFromMean = undefined

differenceFromMean' :: Fractional a => [a] -> [a]
differenceFromMean' = undefined

differenceFromMeanStrange :: (Num a, Show a, Fractional b, Read b) => [a] -> [b]
differenceFromMeanStrange = undefined

--------------------------------------------------------------------------------
-- Aufgabe 24: Anzahl der Knoten in einem variadischen Baum
--
--  Ein variadischer Baum ist eine Baumstruktur, in der jeder Knoten eine
--  beliebige Anzahl von Kindknoten haben kann.
--
--  Der Baum ist definiert als:
--  data NTree a = NT a [NTree a] deriving Show
--
--  Die Funktion `countNodes` zählt die Anzahl der Knoten in einem gegebenen Baum.
--
--  Beispiel:
--  countNodes (NT 23 [NT 99 [], NT 3 [NT 0 [], NT 1 []], NT 89 []])
--    ~~> 6
--
--  Erklärung:
--  - Jeder Knoten wird gezählt, einschließlich des Wurzelknotens.
--  - Danach wird rekursiv die Anzahl der Knoten in den Kindbäumen summiert.
--------------------------------------------------------------------------------

data NTree a = NT a [NTree a] deriving Show

countNodes :: NTree a -> Int
countNodes = undefined

--------------------------------------------------------------------------------
-- Aufgabe 35: Extraktion aller Blätter aus einem Binärbaum
--
--  Gegeben ist ein Binärbaum, der entweder ein Blatt (`Lf a`) oder ein
--  Verzweigungsknoten (`Br left right`) ist.
--
--  Die Funktion `extractLeaves` extrahiert alle Blätter aus einem Binärbaum
--  und gibt eine Liste der Blattwerte zurück.
--
--  Beispiel:
--  extractLeaves (Br (Lf 3) (Br (Lf 7) (Lf 3)))
--    ~~> [3, 7, 3]
--
--  Erklärung:
--  - Wenn der Knoten ein Blatt (`Lf a`) ist, wird der Wert direkt zur Liste
--    hinzugefügt.
--  - Wenn es ein Verzweigungsknoten (`Br left right`) ist, werden die Blätter
--    aus beiden Teilbäumen rekursiv extrahiert und zusammengefügt.
--------------------------------------------------------------------------------

data Tree35 a = Lf35 a | Br35 (Tree35 a) (Tree35 a)

extractLeaves :: Tree35 a -> [a]
extractLeaves = undefined

--------------------------------------------------------------------------------
-- Aufgabe 48: Bestimmen der Anzahl der Elemente in einem Binärbaum
--
--  Gegeben ist ein Binärbaum (`Tree a`), der entweder ein leeres Blatt (`Lf`)
--  oder ein Verzweigungsknoten (`Br left value right`) ist.
--
--  Die Funktion `treeSize` berechnet die Anzahl der gespeicherten Elemente
--  (Knoten mit Werten) im Baum.
--
--  Beispiel:
--  treeSize (Br (Br Lf 1 Lf) 2 (Br Lf 3 Lf))
--    ~~> 3
--
--  Erklärung:
--  - Ein leerer Baum (`Lf`) enthält keine Elemente → `size Lf = 0`
--  - Ein Verzweigungsknoten (`Br left value right`) enthält:
--      - den aktuellen Wert (`+1`),
--      - die Anzahl der Elemente im linken Teilbaum (`size left`),
--      - die Anzahl der Elemente im rechten Teilbaum (`size right`).
--------------------------------------------------------------------------------
data Tree48 a = Lf48 | Br48 (Tree48 a) a (Tree48 a)

treeSize :: Tree48 a -> Int
treeSize = undefined

--------------------------------------------------------------------------------
-- Aufgabe 53: getMatrixRow
--
--  Eine Matrix ist als Liste ihrer Spaltenvektoren dargestellt:
--  data Matrix a = Ma [[a]]
--
--  Die Funktion `getMatrixRow` gibt die i-te Zeile einer Matrix zurück.
--
--  Beispiele:
--  getMatrixRow (Ma [[3,7,5],[9,2,0],[5,8,1]]) 2
--    ~~> [7,2,8]  (Die zweite Zeile der Matrix)
--
--  Erklärung:
--  - Die Eingabematrix ist als Liste von Spalten gespeichert.
--  - Die Funktion rekonstruiert die Zeilen der Matrix und gibt die gewünschte Zeile zurück.
--------------------------------------------------------------------------------

data Matrix a = Ma [[a]]

getMatrixRow :: Matrix a -> Int -> [a]
getMatrixRow = undefined

--------------------------------------------------------------------------------
-- Aufgabe 54: evaluateTerm
--
--  Gegeben ist der algebraische Datentyp `Term a`, der numerische Ausdrücke darstellt:
--  data Term a = Zahl a
--              | Summe (Term a) (Term a)
--              | Produkt (Term a) (Term a)
--
--  Die Funktion `evaluateTerm` berechnet das Ergebnis eines solchen numerischen Ausdrucks.
--
--  Beispiele:
--  evaluateTerm (Summe (Zahl 3) (Zahl 5))
--    ~~> 8
--
--  evaluateTerm (Produkt (Summe (Zahl 2) (Zahl 3)) (Zahl 4))
--    ~~> 20   ((2 + 3) * 4)
--------------------------------------------------------------------------------

data Term a = Zahl' a
            | Summe (Term a) (Term a)
            | Produkt (Term a) (Term a)

evaluateTerm :: Num a => Term a -> a
evaluateTerm = undefined

--------------------------------------------------------------------------------
-- Aufgabe 61: isBalancedBrackets
--
--  Die Funktion prüft, ob in einer Zeichenkette alle Klammern korrekt
--  geöffnet und geschlossen wurden.
--
--  Beispiele:
--  isBalancedBrackets "(foo (baz))!"
--    ~~> True
--
--  isBalancedBrackets "foo)(baz)"
--    ~~> False  (Schließende Klammer kommt zuerst)
--
--  isBalancedBrackets "(foo ()"
--    ~~> False  (Fehlende schließende Klammer)
--
--  isBalancedBrackets "())("
--    ~~> False  (Falsche Reihenfolge)
--
--  Erklärung:
--  - Klammern werden gezählt: `(` erhöht den Zähler, `)` verringert ihn.
--  - Am Ende sollte der Zähler 0 sein.
--  - Während des Zählens darf der Zähler nie negativ werden.
--------------------------------------------------------------------------------

isBalancedBrackets :: String -> Bool
isBalancedBrackets = undefined

--------------------------------------------------------------------------------
-- Aufgabe 62: hasDuplicateNodes
--
--  Gegeben ist der Datentyp für variadische Bäume:
--  data Tree a = Node a [Tree a] | Leaf a
--
--  Die Funktion `hasDuplicateNodes` prüft, ob es zwei gleiche Knoten gibt.
--
--  Beispiele:
--  hasDuplicateNodes (Node 5 [(Node 5 [Leaf 4])])
--    ~~> True  (Knoten mit Wert 5 kommt doppelt vor)
--
--  hasDuplicateNodes (Node 5 [Node 6 [Leaf 4], Node 4 [Leaf 3]])
--    ~~> True  (Knoten mit Wert 4 kommt doppelt vor)
--
--  hasDuplicateNodes (Node 5 [Node 6 [Leaf 4], Node 3 [Leaf 2]])
--    ~~> False (Alle Knoten sind einzigartig)
--
--  Erklärung:
--  - Alle besuchten Knotenwerte werden gespeichert.
--  - Falls ein Wert erneut auftaucht, gibt die Funktion `True` zurück.
--------------------------------------------------------------------------------

data Tree62 a = Node62 a [Tree62 a] | Leaf62 a

hasDuplicateNodes :: Eq a => Tree62 a -> Bool
hasDuplicateNodes = undefined

--------------------------------------------------------------------------------
-- Aufgabe 66: staggeredCharPattern
--
--  Diese Funktion gibt ein stufenförmiges Muster aus Zeichen zurück.
--  Der dritte Parameter bestimmt, ob das Muster nach rechts (+) oder links (-)
--  gestaffelt ist.
--
--  Beispiele:
--  staggeredCharPattern 3 2 1 'o'
--    ~~> "  ooo\nooo\n"
--
--  staggeredCharPattern 6 3 2 '*' 
--    ~~> "    ******\n  ******\n******\n"
--
--  staggeredCharPattern 6 3 (-2) '*'
--    ~~> "******\n  ******\n    ******\n"
--
--  Mit `putStrLn` sehen die Muster so aus:
--  putStrLn $ staggeredCharPattern 10 4 3 'o'
--           oooooooooo
--        oooooooooo
--     oooooooooo
--  oooooooooo
--------------------------------------------------------------------------------

staggeredCharPattern :: Int -> Int -> Int -> Char -> String
staggeredCharPattern = undefined

--------------------------------------------------------------------------------
-- Aufgabe 71: Dreieck und Gitter Typklassen-Instanzen
--
--  Hier werden Typklassen für zwei benutzerdefinierte Datentypen implementiert:
--
--  1) `Dreieck a`: Ein Dreieck mit drei Seitenlängen.
--     - Soll Num, Eq, Ord, Functor, Foldable instanziieren.
--
--  2) `Grid a`: Eine generische Matrixdarstellung.
--     - Soll Num, Eq, Ord, Functor, Foldable instanziieren.
--------------------------------------------------------------------------------

data Dreieck a = Dreieck a a a | Failing deriving Show
newtype Grid a = M [a] deriving Show

instance Num a => Num (Dreieck a) where
  (+) = undefined
  (*) = undefined
  abs = undefined
  signum = undefined
  fromInteger = undefined
  negate = undefined

instance Eq a => Eq (Dreieck a) where
  (==) = undefined

instance Ord a => Ord (Dreieck a) where
  compare = undefined

instance Functor Dreieck where
  fmap = undefined

instance Foldable Dreieck where
  foldr = undefined

instance Functor Grid where
  fmap = undefined

instance Foldable Grid where
  foldr = undefined

--------------------------------------------------------------------------------
-- Aufgabe 72: drawShape
--
--  Die Funktion `drawShape` zeichnet verschiedene geometrische Muster:
--
--  - `drawSquare`: Zeichnet ein Quadrat mit `n` Zeilen und Spalten.
--  - `drawRectangle`: Zeichnet ein Rechteck mit `n` Zeilen und `m` Spalten.
--  - `drawTriangle`: Zeichnet verschiedene Dreiecke.
--  - `drawDiamond`: Zeichnet eine Raute.
--  - `drawHourglass`: Zeichnet eine Sanduhr.
--
--  Beispiele:
--  putStrLn $ drawSquare 4
--  ****
--  ****
--  ****
--  ****
--
--  putStrLn $ drawRectangle 2 5
--  *****
--  *****
--
--  putStrLn $ drawTriangle 4
--     *
--    ***
--   *****
--  *******
--
--  putStrLn $ drawDiamond 4
--     *
--    ***
--   *****
--  *******
--   *****
--    ***
--     *
--------------------------------------------------------------------------------

drawSquare :: Int -> String
drawSquare = undefined

drawRectangle :: Int -> Int -> String
drawRectangle = undefined

drawTriangle :: Int -> String
drawTriangle = undefined

drawDiamond :: Int -> String
drawDiamond = undefined

drawHourglass :: Int -> String
drawHourglass = undefined

--------------------------------------------------------------------------------
-- Aufgabe 74: fifoQueue
--
--  Implementiert das FIFO (First In, First Out) Prinzip:
--  - Fügt ein Element in eine begrenzte Liste (Queue) ein.
--  - Falls die maximale Größe erreicht ist, wird das älteste Element entfernt.
--
--  Beispiele:
--  fifoQueue [1,2,3] 4 7
--    ~~> [7,1,2,3]
--
--  fifoQueue [7,1,2,3] 4 8
--    ~~> [8,7,1,2]
--------------------------------------------------------------------------------

fifoQueue :: [a] -> Int -> a -> [a]
fifoQueue = undefined

--------------------------------------------------------------------------------
-- Aufgabe 77: reimplementPrefixInfixSuffix
--
--  Implementiere die bekannten Funktionen erneut:
--
--  - `isPrefixOf`: Prüft, ob die erste Liste ein Präfix der zweiten ist.
--  - `isInfixOf`: Prüft, ob die erste Liste eine Teilsequenz der zweiten ist.
--  - `isSuffixOf`: Prüft, ob die erste Liste ein Suffix der zweiten ist.
--
--  Beispiele:
--  isPrefixOf "haskell" "haskell rocks"
--    ~~> True
--
--  isInfixOf "abc" "xxabcxx"
--    ~~> True
--
--  isSuffixOf "rocks" "haskell rocks"
--    ~~> True
--------------------------------------------------------------------------------

isPrefixOf' :: Eq a => [a] -> [a] -> Bool
isPrefixOf' = undefined

isInfixOf' :: Eq a => [a] -> [a] -> Bool
isInfixOf' = undefined

isSuffixOf' :: Eq a => [a] -> [a] -> Bool
isSuffixOf' = undefined

--------------------------------------------------------------------------------
-- Aufgabe 82: isUnimodal
--
--  Eine Liste heißt unimodal, wenn:
--   1) Die Elemente zuerst monoton steigen.
--   2) Danach monoton abfallen.
--
--  Beispiele:
--  isUnimodal [1,3,5,7,6,4,2,1]
--    ~~> True
--
--  isUnimodal [1,2,3,4,1,2,3,4]
--    ~~> False
--------------------------------------------------------------------------------

isUnimodal :: (Ord a) => [a] -> Bool
isUnimodal = undefined

--------------------------------------------------------------------------------
-- Aufgabe 102: drawCross
--
--  Diese Funktion gibt einen String zurück, der ein Kreuz auf der Konsole
--  darstellt. Die Arme haben die Breite `width` und die Länge `length` und
--  bestehen aus dem Zeichen `c`.
--
--  Beispiele:
--  putStrLn $ drawCross 2 3 '∗'
--
--     **
--     **
--     **
--  ********
--  ********
--     **
--     **
--     **
--
--  putStrLn $ drawCross 4 2 '8'
--
--    8888
--    8888
--  88888888
--  88888888
--  88888888
--  88888888
--    8888
--    8888
--
--  Hinweis: Die Funktion replicate :: Int -> a -> [a] ist hilfreich.
--------------------------------------------------------------------------------

drawCross :: Int -> Int -> Char -> String
drawCross = undefined

--------------------------------------------------------------------------------
-- Aufgabe 107: maxDifference
--
--  Diese Funktion bestimmt den maximalen positiven Unterschied zwischen zwei
--  Elementen einer Liste, wobei das zweite Element später in der Liste
--  erscheinen muss.
--
--  Beispiele:
--  maxDifference [7,1,5,4]
--    ~~> Just 4   (weil 5 - 1 = 4)
--
--  maxDifference [9,4,3,2]
--    ~~> Nothing  (da kein nums[j] > nums[i] existiert)
--
--  maxDifference [1,5,2,10]
--    ~~> Just 9   (weil 10 - 1 = 9)
--------------------------------------------------------------------------------

maxDifference :: [Int] -> Maybe Int
maxDifference = undefined

--------------------------------------------------------------------------------
-- Aufgabe 109: foldDigits
--
--  Diese Funktion nimmt eine Liste von Zahlen und verbindet sie zu einer
--  einzigen Zahl, indem die Zahlen als aufeinanderfolgende Ziffern betrachtet
--  werden.
--
--  Beispiele:
--  foldDigits [1,2,3,45,6,789]
--    ~~> 123456789
--
--  foldDigits []
--    ~~> 0
--------------------------------------------------------------------------------

foldDigits :: [Int] -> Int
foldDigits = undefined

--------------------------------------------------------------------------------
-- Aufgabe 110: Zahlensystem in rekursiver Darstellung
--
--  Hier wird eine eigene Rekursion für Zahlen definiert.
--
--  - `intToZahl`: Konvertiert eine Ganzzahl in die rekursive Struktur.
--  - `zahlToInt`: Wandelt die Struktur zurück in eine Ganzzahl.
--  - `( .+.)`: Implementiert Addition im Zahlensystem.
--  - `( .-.)`: Implementiert Subtraktion im Zahlensystem.
--  - `stringIsNumber`: Prüft, ob ein String nur aus Ziffern besteht.
--  - `fromString`: Wandelt einen String in das Zahlensystem um.
--  - `fromList`: Wandelt eine Liste von Ziffern in das Zahlensystem um.
--  - `simulate`: Simuliert arithmetische Operationen im Zahlensystem.
--
--  Beispiele:
--  intToZahl 12345
--    ~~> Zahl EINS (Zahl ZWEI (Zahl DREI (Zahl VIER FUENF)))
--
--  zahlToInt (Zahl EINS (Zahl ZWEI DREI))
--    ~~> 123
--
--  intToZahl 123 .+. intToZahl 100
--    ~~> intToZahl 223
--
--  intToZahl 123 .-. intToZahl 100
--    ~~> intToZahl 23
--
--  simulate (ADD (LITERAL $ intToZahl 123) (LITERAL $ intToZahl 100))
--    ~~> intToZahl 223
--------------------------------------------------------------------------------

data Zahl = NULL
          | EINS
          | ZWEI
          | DREI
          | VIER
          | FUENF
          | SECHS
          | SIEBEN
          | ACHT
          | NEUN
          | Zahl Zahl Zahl
          deriving (Show, Eq)

intToZahl :: Int -> Zahl
intToZahl = undefined

zahlToInt :: Zahl -> Int
zahlToInt = undefined

(.+.) :: Zahl -> Zahl -> Zahl
(.+.) = undefined

(.-.) :: Zahl -> Zahl -> Zahl
(.-.) = undefined

stringIsNumber :: String -> Bool
stringIsNumber = undefined

fromString :: String -> Zahl
fromString = undefined

fromList :: [Int] -> Zahl
fromList = undefined

data Operation =
    ADD      Operation Operation
  | ABSTRACT Operation Operation
  | LITERAL  Zahl
  deriving (Show, Eq)

simulate :: Operation -> Zahl
simulate = undefined

--------------------------------------------------------------------------------
-- Aufgabe 116: commonIndent / filterByIndent
--
--  Diese Funktionen analysieren die Einrückung von Zeilen in einem Text.
--
--  - `commonIndent` gibt den Präfix der Zeilen zurück, die gleich eingerückt sind.
--  - `filterByIndent` gibt alle Zeilen zurück, die mit einer bestimmten Anzahl
--    von Leerzeichen eingerückt sind.
--
--  Beispiele:
--
--  commonIndent "qwe\nasd\nyxc\n  asd\nadqw"
--    ~~> "qwe\nasd\nyxc"
--
--  filterByIndent 0 "qwe\nasd\nyxc\n  asd\nadqw"
--    ~~> ["qwe","asd","yxc","adqw"]
--
--  filterByIndent 2 "qwe\nasd\nyxc\n  asd\nadqw"
--    ~~> ["asd"]
--------------------------------------------------------------------------------

commonIndent :: String -> String
commonIndent = undefined

filterByIndent :: Int -> String -> [String]
filterByIndent = undefined

--------------------------------------------------------------------------------
-- Aufgabe 118: isPalindrome / substrings / findPalindromes
--
--  Diese Funktionen analysieren Zeichenketten auf Palindrome.
--
--  - `isPalindrome` prüft, ob ein String ein Palindrom ist.
--  - `substrings` gibt alle nicht-leeren Teilstrings einer Zeichenkette zurück.
--  - `findPalindromes` sucht alle Teilstrings, die Palindrome sind.
--
--  Beispiele:
--
--  isPalindrome "a"
--    ~~> True
--
--  isPalindrome "ooIoo"
--    ~~> True
--
--  substrings "123456"
--    ~~> ["1","2","3","4","5","6"
--         ,"12","123","1234","12345","123456"
--         ,"23","234","2345","23456"
--         ,"34","345","3456"
--         ,"45","456"
--         ,"56"]
--
--  findPalindromes "123ooffoo456000"
--    ~~> ["ooffoo"]
--
--  findPalindromes "123ooffo456000"
--    ~~> []
--
--  findPalindromes "123ooffoooof00011000"
--    ~~> ["ooffoo","foooof","00","000","00011000","00","000","11","0110","001100", ...]
--------------------------------------------------------------------------------

isPalindrome :: String -> Bool
isPalindrome = undefined

substrings :: String -> [String]
substrings = undefined

findPalindromes :: String -> [String]
findPalindromes = undefined

--------------------------------------------------------------------------------
-- Aufgabe 123: findCharPositions
--
--  Diese Funktion sucht nach einem bestimmten Zeichen in einem Text und gibt
--  dessen Positionen (Zeile und Spalte) zurück.
--
--  `Position` ist ein Datentyp, der die Position in Zeile und Spalte speichert.
--
--  Beispiele:
--
--  text =
--    "I live in a house near the mountains.\n\
--    \I have two brothers and one sister, and I was born last.\n\
--    \My father teaches mathematics, and my mother is a nurse at a big hospital.\n\
--    \My brothers are very smart and work hard in school. My sister is a nervous girl, but she is very kind.\n\
--    \My grandmother also lives with us. She came from Italy when I was two years old. She has grown old, but she is still very strong. She cooks the best food!"
--
--  findCharPositions text 'I'
--    ~~> [Position {zeile = 1, spalte = 1}
--         ,Position {zeile = 2, spalte = 1},Position {zeile = 2, spalte = 41}
--         ,Position {zeile = 5, spalte = 50},Position {zeile = 5, spalte = 61}]
--------------------------------------------------------------------------------

data Position = Position {
  zeile :: Int,
  spalte :: Int
} deriving Show

-- erforderlich für Tests
instance Eq Position where
    (Position z1 s1) == (Position z2 s2) = z1 == z2 && s1 == s2
-- erforderlich für Tests

findCharPositions :: String -> Char -> [Position]
findCharPositions = undefined

--------------------------------------------------------------------------------
-- Aufgabe 131: findSubtrees / replaceNodes / countLeaves / filterTreeValues
--
--  Diese Funktionen arbeiten mit einem Binärbaum:
--
--  - `findSubtrees` gibt alle Unterbäume zurück, deren Wurzel gleich `element` ist.
--  - `replaceNodes` ersetzt alle Vorkommen eines bestimmten Wertes mit einem neuen Wert.
--  - `countLeaves` zählt die Anzahl der Blätter in einem Baum.
--  - `filterTreeValues` gibt alle Werte zurück, für die eine gegebene Bedingung `f` erfüllt ist.
--
--  Beispiele:
--
--  tree =
--    Node 2
--      (Node 3
--         (Node 5
--            (Leaf 6)
--            (Leaf 7))
--         (Leaf 3))
--      (Leaf 1)
--
--  findSubtrees tree 3
--    ~~> [Node 3 (Node 5 (Leaf 6) (Leaf 7)) (Leaf 3), Leaf 3]
--
--  replaceNodes tree (3,0)
--    ~~> Node 2
--          (Node 0
--             (Node 5
--                (Leaf 6)
--                (Leaf 7))
--             (Leaf 0))
--          (Leaf 1)
--
--  countLeaves tree
--    ~~> 4
--
--  filterTreeValues tree even
--    ~~> [2,6]
--------------------------------------------------------------------------------

data Tree131 a = Node131 a (Tree131 a) (Tree131 a) | Leaf131 a deriving Show

-- erforderlich für Tests
instance Eq a => Eq (Tree131 a) where
    Leaf131 x == Leaf131 y = x == y
    Node131 v l r == Node131 v' l' r' = v == v' && l == l' && r == r'
    _ == _ = False
-- erforderlich für Tests

findSubtrees :: Eq a => Tree131 a -> a -> [Tree131 a]
findSubtrees = undefined

replaceNodes :: Eq a => Tree131 a -> (a, a) -> Tree131 a
replaceNodes = undefined

countLeaves :: Tree131 a -> Int
countLeaves = undefined

filterTreeValues :: Tree131 a -> (a -> Bool) -> [a]
filterTreeValues = undefined

--------------------------------------------------------------------------------
-- Aufgabe 134: isSquareString / isSquareStringInfinite
--
--  Diese Funktionen überprüfen, ob eine Zeichenkette eine quadratische Struktur hat.
--  Eine Zeichenkette ist quadratisch, wenn sie genau so viele Zeilen mit gleicher Länge enthält,
--  wie diese Zeilen lang sind.
--
--  - `isSquareString` funktioniert für endliche Zeichenketten.
--  - `isSquareStringInfinite` erweitert die Logik und kann auch unendliche Zeichenketten erkennen.
--
--  Beispiele:
--  isSquareString "abc\ndef\nhij"      ~~> True
--  isSquareString "foo\nfoo"           ~~> False
--  isSquareString "abc\ndefgh\nhij"    ~~> False
--
--  isSquareStringInfinite (cycle "foo\n")  ~~> False
--  isSquareStringInfinite ("ab\ncd\nxx" ++ [undefined])  ~~> False
--------------------------------------------------------------------------------

isSquareString :: String -> Bool
isSquareString = undefined

isSquareStringInfinite :: String -> Bool
isSquareStringInfinite = undefined

--------------------------------------------------------------------------------
-- Aufgabe 137: calculatePrice
--
--  Diese Funktion berechnet den Preis einer Obstkiste in Cent, wobei Mengenrabatte
--  für Äpfel und Birnen berücksichtigt werden.
--
--  - Ein Apfel kostet 79 Cent, aber 5 Äpfel gibt es für 299 Cent.
--  - Eine Birne kostet 99 Cent, aber 3 Birnen gibt es für 249 Cent.
--  - Zitronen kosten 139 Cent und haben keinen Rabatt.
--
--  Beispiele:
--  calculatePrice [Apfel, Zitrone, Birne, Apfel]  ~~> 396
--  calculatePrice (replicate 6 Apfel ++ replicate 3 Birne)  ~~> 1044
--------------------------------------------------------------------------------

data Obst = Apfel | Birne | Zitrone deriving (Show, Eq)

calculatePrice :: [Obst] -> Int
calculatePrice = undefined

--------------------------------------------------------------------------------
-- Aufgabe 140: transformTrafficLightTree
--
--  Diese Funktion operiert auf einem Baum, dessen Knoten mit Ampelfarben markiert sind:
--
--  - Rote Knoten vertauschen die Unterbäume und werden grün.
--  - Gelbe Knoten werden rot.
--  - Grüne Knoten werden gelb.
--  - Blätter bleiben unverändert.
--
--  Beispiele:
--  transformTrafficLightTree (Node Gruen (Leaf 1) (Leaf 2)) 
--    ~~> Node Gelb (Leaf 1) (Leaf 2)
--
--  transformTrafficLightTree (Node Rot (Leaf 1) (Leaf 2)) 
--    ~~> Node Gruen (Leaf 2) (Leaf 1)
--------------------------------------------------------------------------------

data Farbe = Rot | Gelb | Gruen deriving (Show, Eq)
data Ampelbaum a = LeafAB a | NodeAB Farbe (Ampelbaum a) (Ampelbaum a) deriving (Show, Eq)

transformTrafficLightTree :: Ampelbaum a -> Ampelbaum a
transformTrafficLightTree = undefined

--------------------------------------------------------------------------------
-- Aufgabe 143: haveSamePrefixes
--
--  Diese Funktion überprüft, ob zwei Listen von Listen gleich lange Elemente haben
--  und jede innere Liste aus `as` ein Präfix der entsprechenden Liste in `bs` ist.
--
--  Beispiele:
--  haveSamePrefixes ["a","fg","uvw"] ["abc","fgh","uvw"]  ~~> True
--  haveSamePrefixes [[1,3],[7,10],[8]] [[1,3,5],[7,9],[8,12]]  ~~> False
--  haveSamePrefixes [] []  ~~> True
--  haveSamePrefixes [] ["foo"]  ~~> False
--------------------------------------------------------------------------------

haveSamePrefixes :: Eq a => [[a]] -> [[a]] -> Bool
haveSamePrefixes = undefined

--------------------------------------------------------------------------------
-- Aufgabe 144: isWellFormedTree / renderTree / treeHeight / isBalancedTree
--
--  1) `isWellFormedTree` prüft, ob ein variadischer Baum wohlgeformt ist,
--     d.h., ob kein Knoten eine leere Liste von Kinderknoten hat.
--  2) `renderTree` gibt eine indizierte String-Darstellung eines variadischen Baums aus.
--  3) `treeHeight` bestimmt die Höhe eines variadischen Baumes.
--  4) `isBalancedTree` prüft, ob der Baum balanciert ist, d.h.,
--     ob sich die Höhen der Kinderbäume um höchstens 1 unterscheiden.
--
--  Beispiele:
--  isWellFormedTree t1  ~~> False
--  isWellFormedTree t2  ~~> True
--
--  putStrLn $ renderTree t2
--  "a"
--    "b"
--    "c"
--      "d"
--      "e"
--    "f"
--      "x"
--
--  treeHeight t1  ~~> 2
--  treeHeight t2  ~~> 4
--
--  isBalancedTree t1  ~~> True
--  isBalancedTree t2  ~~> False
--------------------------------------------------------------------------------

data NTree144 a = Node144 [NTree144 a] | Leaf144 a deriving (Show, Eq)

isWellFormedTree :: NTree144 a -> Bool
isWellFormedTree = undefined

renderTree :: Show a => NTree144 a -> String
renderTree = undefined

treeHeight :: NTree144 a -> Int
treeHeight = undefined

isBalancedTree :: NTree144 a -> Bool
isBalancedTree = undefined

--------------------------------------------------------------------------------
-- Aufgabe 146: figureArea / totalArea / isEqualFigure
--
--  1) `figureArea` berechnet die Fläche von Kreisen, Rechtecken und Quadraten.
--  2) `totalArea` berechnet die Gesamtfläche einer Liste von Figuren.
--  3) `isEqualFigure` definiert eine benutzerdefinierte Eq-Instanz, sodass
--     ein Rechteck mit gleichen Seitenlängen einem Quadrat entspricht.
--
--  Beispiele:
--  figureArea (Circle 3.7)  ~~> 43.008403427644275
--  figureArea (Square 2)  ~~> 4.0
--
--  totalArea [Square 1, Rectangle 3 4]  ~~> 13.0
--
--  Square 2 == Rectangle 2 2  ~~> True
--  Square 2.2 == Rectangle 5.7 8.2  ~~> False
--------------------------------------------------------------------------------

data Figure = Circle { radius :: Double }
            | Rectangle { height :: Double, width :: Double }
            | Square { width :: Double }
            deriving Show

figureArea :: Figure -> Double
figureArea = undefined

totalArea :: [Figure] -> Double
totalArea = undefined

instance Eq Figure where
    (==) = undefined

--------------------------------------------------------------------------------
-- Aufgabe 147: drawHistogram
--
--  `drawHistogram` erstellt ein vertikales Histogramm basierend auf einer Liste
--  von Werten und einem Füllzeichen.
--
--  Beispiele:
--  drawHistogram '*' [3,5,2]  ~~> " * \n * \n** \n***\n***\n"
--
--  putStr $ drawHistogram 'X' [1,5,1,3]
--  X
--  X
--  X X
--  X X
--  XXXX
--------------------------------------------------------------------------------

drawHistogram :: Char -> [Int] -> String
drawHistogram = undefined

--------------------------------------------------------------------------------
-- Aufgabe 149: unzipIntoN
--
--  `unzipIntoN` verteilt die Eingabeliste zyklisch auf `n` Unterlisten.
--
--  Beispiele:
--  unzipIntoN 3 [1..5]  ~~> [[1,4],[2,5],[3]]
--  unzipIntoN 3 [1..10]  ~~> [[1,4,7,10],[2,5,8],[3,6,9]]
--------------------------------------------------------------------------------

unzipIntoN :: Int -> [a] -> [[a]]
unzipIntoN = undefined

--------------------------------------------------------------------------------
-- Aufgabe 150: isTriangleShapeInfinite / unzipIntoNInfinite
--
--  `isTriangleShapeInfinite` behandelt Dreieck-Listen mit potenziell unendlichen Listen.
--  `unzipIntoNInfinite` verarbeitet unendliche Listen korrekt.
--
--  Beispiele:
--  isTriangleShapeInfinite [[1],[2,3],[1..]]  ~~> False
--  map (take 2) (unzipIntoNInfinite 3 [1..])  ~~> [[1,4],[2,5],[3,6]]
--------------------------------------------------------------------------------

isTriangleShapeInfinite :: [[a]] -> Bool
isTriangleShapeInfinite = undefined

unzipIntoNInfinite :: Int -> [a] -> [[a]]
unzipIntoNInfinite = undefined

--------------------------------------------------------------------------------
-- Aufgabe 151: extractDiagonal
--
--  `extractDiagonal` nimmt aus einer Liste von Listen die Diagonale.
--  Die Funktion soll mit unendlichen Listen funktionieren.
--
--  Beispiele:
--  extractDiagonal [[1],[10,20,30],[100,200,300]]  ~~> [1,20,300]
--  extractDiagonal ["abc","def","ghi","jklmn","o","pqrstu"]  ~~> "aeim"
--------------------------------------------------------------------------------

extractDiagonal :: [[a]] -> [a]
extractDiagonal = undefined

--------------------------------------------------------------------------------
-- Aufgabe 153: variadicTreeHeight / isVariadicTreeBalanced
--
--  `variadicTreeHeight` gibt die Höhe eines variadischen Baums zurück.
--  `isVariadicTreeBalanced` prüft, ob der Baum balanciert ist.
--
--  Beispiele:
--  map variadicTreeHeight [tree1, tree2, tree3, tree4]  ~~> [1,2,3,4]
--  map isVariadicTreeBalanced [tree1, tree2, tree3, tree4]  ~~> [True, True, True, False]
--------------------------------------------------------------------------------

data NTree153 a = NT153 a [NTree153 a] deriving (Show, Eq)

variadicTreeHeight :: NTree153 a -> Int
variadicTreeHeight = undefined

isVariadicTreeBalanced :: NTree153 a -> Bool
isVariadicTreeBalanced = undefined
