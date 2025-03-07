{-# LANGUAGE ImplicitParams #-}
module Main where

import Test.Tasty
import Test.Tasty.HUnit
import Test.HUnit.Approx
import Aufgaben

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Unit Tests for Functors-fmaps"
  [ 
    testGroup "Aufgabe 40: Functor-Instanzen für Element und Curry"
      [ testCase "Functor-Gesetz: fmap id (Element1 42)" $
          fmap id (Element1 42) @?= Element1 42
      , testCase "Functor-Gesetz: fmap id (Element2 (3, 5))" $
          fmap id (Element2 (3, 5)) @?= Element2 (3, 5)
      , testCase "Functor-Gesetz: fmap (+1) (Curried \"Test\" 5)" $
          fmap (+1) (Curried "Test" 5) @?= Curried "Test" 6
      , testCase "Functor-Gesetz: fmap show (Element3 (Curried 1 2))" $
          fmap show (Element3 (Curried 1 2)) @?= Element3 (Curried 1 "2")
      , testCase "Functor-Gesetz: fmap (\\x -> x * 2) (Element4 (Curried 2 3))" $
          fmap (\x -> x * 2) (Element4 (Curried 2 3)) @?= Element4 (Curried 4 6)
      , testCase "Functor-Gesetz: fmap (*2) (Element5 (Curried \"x\" 10))" $
          fmap (*2) (Element5 (Curried "x" 10)) @?= Element5 (Curried "x" 20)
      ],

    testGroup "Aufgabe 60: Functor-Instanzen für benutzerdefinierte Baumstrukturen und Listen"
      [ -- Tests für List
        testCase "fmap (*2) auf List" $
          fmap (*2) (Element 1 (Element 2 Leer)) @?= Element 2 (Element 4 Leer)
      , testCase "fmap show auf List" $
          fmap show (Element 3 (Element 4 Leer)) @?= Element "3" (Element "4" Leer)

        -- Tests für Binaerbaum
      , testCase "fmap (*2) auf Binaerbaum" $
          fmap (*2) (Knoten (Blatt 1) 2 (Blatt 3)) @?= Knoten (Blatt 2) 4 (Blatt 6)
      , testCase "fmap id auf leeren Binaerbaum" $
          fmap id LeerBaum @?= LeerBaum
      , testCase "fmap show auf Binaerbaum" $
          fmap show (Knoten (Blatt 5) 6 (Blatt 7)) @?= Knoten (Blatt "5") "6" (Blatt "7")

        -- Tests für VariadischerBaum
      , testCase "fmap show auf VariadischerBaum" $
          fmap show (Baum 1 [Baum 2 [], Baum 3 [Baum 4 []]]) 
          @?= Baum "1" [Baum "2" [], Baum "3" [Baum "4" []]]

        -- Tests für T-Struktur
      , testCase "fmap (*3) auf T-Struktur" $
          fmap (*3) (T K 2 'a' 3) @?= T K 6 'a' 9
      ],

    testGroup "Aufgabe 71: Instanzierung von Typklassen für Dreieck und Grid"
      [ testCase "Eq: Gleichheit von Dreieck" $
          (Dreieck 1 2 3 == Dreieck 1 2 3) @?= True
      , testCase "Ord: Vergleich von Dreieck" $
          (Dreieck 1 2 3 > Dreieck 1 1 3) @?= True
      , testCase "Num: Addition von Dreieck" $
          (Dreieck 1 2 3 + Dreieck 4 5 6) @?= Dreieck 5 7 9
      , testCase "Functor: fmap (*2) auf Dreieck" $
          fmap (*2) (Dreieck 1 2 3) @?= Dreieck 2 4 6
      , testCase "Foldable: sum auf Dreieck" $
          sum (Dreieck 1 2 3) @?= 6

        -- Tests für Grid
      , testCase "Eq: Gleichheit von Grid" $
          (M [1,2,3] == M [1,2,3]) @?= True
      , testCase "Ord: Vergleich von Grid" $
          (M [1,2,3] > M [1,1,3]) @?= True
      , testCase "Num: Addition von Grid" $
          (M [1,2,3] + M [4,5,6]) @?= M [5,7,9]
      , testCase "Functor: fmap (*2) auf Grid" $
          fmap (*2) (M [1,2,3]) @?= M [2,4,6]
      , testCase "Foldable: sum auf Grid" $
          sum (M [1,2,3]) @?= 6
      ]
  ]
