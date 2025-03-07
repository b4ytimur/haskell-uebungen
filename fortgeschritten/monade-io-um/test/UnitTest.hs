{-# LANGUAGE ImplicitParams #-}
module Main where

import Test.Tasty
import Test.Tasty.HUnit
import Test.HUnit.Approx
import Control.Monad (replicateM)
import Data.List (nub)
import System.Directory (removeFile)

import Aufgaben

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Unit Tests for Monade-IO-um"
  [
    -- Tests für Aufgabe 55: Zufallszahlen-Anzeige
    testGroup "Aufgabe 55: randomLoop"
      [ testCase "Terminates when 'q' is entered" $
          return () -- Manuelles Testen notwendig für IO-Interaktionen
      ],

    -- Tests für Aufgabe 58: Summiere zwei Eingaben
    testGroup "Aufgabe 58: sumInput"
      [ testCase "Handles valid input" $
          return () -- Manuelles Testen notwendig für IO-Interaktionen
      ],

    -- Tests für Aufgabe 70: Liste zufällig durchmischen
    testGroup "Aufgabe 70: shuffleList"
      [ testCase "Shuffled list has the same elements" $ do
          let inputList = [1,2,3,4,5]
          shuffled <- shuffleList inputList
          assertBool "Shuffled list contains all elements" (all (`elem` shuffled) inputList)
      , testCase "Shuffled list has the same length" $ do
          let inputList = [1,2,3,4,5]
          shuffled <- shuffleList inputList
          length shuffled @?= length inputList
      , testCase "Different order expected (not always guaranteed)" $ do
          let inputList = [1,2,3,4,5]
          shuffledLists <- replicateM 5 (shuffleList inputList)
          assertBool "At least one shuffled list differs" (any (/= inputList) shuffledLists)
      ],

    -- Tests für Aufgabe 79: Zufallswerte generieren
    testGroup "Aufgabe 79: randomList & uniqueRandomList"
      [ testCase "randomList generates correct length" $ do
          result <- randomList 5 (1, 20)
          length result @?= 5
      , testCase "uniqueRandomList generates correct length" $ do
          result <- uniqueRandomList 5 (1, 20)
          length result @?= 5
      , testCase "uniqueRandomList produces unique elements" $ do
          result <- uniqueRandomList 5 (1, 20)
          length (nub result) @?= 5
      ],

    -- Tests für Aufgabe 89: Zufällige, eindeutige Elemente aus einer Liste wählen
    testGroup "Aufgabe 89: randomUniqueElements"
      [ testCase "randomUniqueElements returns correct length" $ do
          result <- randomUniqueElements [1..10] 5
          length result @?= 5
      , testCase "randomUniqueElements maintains uniqueness" $ do
          result <- randomUniqueElements [1..10] 5
          length (nub result) @?= 5
      , testCase "randomUniqueElements handles empty list" $ do
          result <- randomUniqueElements ([] :: [Int]) 3
          result @?= ([] :: [Int])
      ],
    
    -- Tests für Aufgabe 97: Mehrzeilige Eingabe bis Semikolon
    testGroup "Aufgabe 97: mehrzEingabe"
      [ testCase "Handles input ending in semicolon" $
          return () -- Manuelles Testen notwendig
      , testCase "Handles semicolon as first input" $
          return () -- Manuelles Testen notwendig
      , testCase "Handles multiple lines before semicolon" $
          return () -- Manuelles Testen notwendig
      ],

    -- Tests für Aufgabe 104: Interaktive Texteingabe mit Spezialanweisungen
    testGroup "Aufgabe 104: console"
      [ testCase "Handles normal input" $
          return () -- Manuelles Testen notwendig
      , testCase "Handles del command" $
          return () -- Manuelles Testen notwendig
      , testCase "Handles rep command" $
          return () -- Manuelles Testen notwendig
      , testCase "Handles stp command" $
          return () -- Manuelles Testen notwendig
      ],
    
    -- Tests für Aufgabe 115: Präfix zu jeder Zeile in einer Datei hinzufügen
    testGroup "Aufgabe 115: addPrefixToFile"
      [ testCase "Fügt Präfix zu jeder Zeile hinzu" $ do
          let testFile = "test_output_115.txt"
              initialContent = "qwe\nasd\nyxc"
              expectedContent = "123qwe\n123asd\n123yxc\n"
              prefix = "123"
          writeFile testFile initialContent
          addPrefixToFile prefix testFile
          result <- readFile testFile
          removeFile testFile
          result @?= expectedContent
      ]
  ]