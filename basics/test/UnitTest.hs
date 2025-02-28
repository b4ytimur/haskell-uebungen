{-# LANGUAGE ImplicitParams #-}
module Main where

import Test.Tasty
import Test.Tasty.HUnit
import Test.HUnit.Approx
import Aufgaben

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Unit Tests for All Aufgaben"
  [ testGroup "Aufgabe 1: nestedSubtraction"
      [ testCase "nestedSubtraction 6 3" $
          nestedSubtraction 6 3 @?= 2
      , testCase "nestedSubtraction 5 4" $
          nestedSubtraction 5 4 @?= 1
      , testCase "nestedSubtraction 6 6" $
          nestedSubtraction 6 6 @?= 6
      ]
  , testGroup "Aufgabe 2: evenNumbersInRange"
      [ testCase "evenNumbersInRange 1 10" $
          evenNumbersInRange 1 10 @?= [2,4,6,8,10]
      , testCase "evenNumbersInRange 10 1" $
          evenNumbersInRange 10 1 @?= [2,4,6,8,10]
      , testCase "evenNumbersInRange 10 10" $
          evenNumbersInRange 10 10 @?= [10]
      ]
  , testGroup "Aufgabe 3: evenNumbersAsString"
      [ testCase "evenNumbersAsString 1 10" $
          evenNumbersAsString 1 10 @?= "2 4 6 8 10"
      , testCase "evenNumbersAsString 10 1" $
          evenNumbersAsString 10 1 @?= "2 4 6 8 10"
      , testCase "evenNumbersAsString 10 10" $
          evenNumbersAsString 10 10 @?= "10"
      ]
  , testGroup "Aufgabe 4: rangeFromZero"
      [ testCase "rangeFromZero 10" $
          rangeFromZero 10 @?= [0,1,2,3,4,5,6,7,8,9,10]
      , testCase "rangeFromZero 0" $
          rangeFromZero 0 @?= [0]
      ]
  , testGroup "Aufgabe 5: countdown"
      [ testCase "countdown 10" $
          countdown 10 @?= [10,9,8,7,6,5,4,3,2,1,0]
      , testCase "countdown 0" $
          countdown 0 @?= [0]
      ]
  , testGroup "Aufgabe 6: repeatChar"
      [ testCase "repeatChar 'o' 3" $
          repeatChar 'o' 3 @?= "ooo"
      , testCase "repeatChar 'z' 5" $
          repeatChar 'z' 5 @?= "zzzzz"
      ]
  , testGroup "Aufgabe 7: decreasingCharPyramid"
      [ testCase "decreasingCharPyramid '*' 3" $
          decreasingCharPyramid '*' 3 @?= ["***","**","*"]
      , testCase "decreasingCharPyramid 'z' 4" $
          decreasingCharPyramid 'z' 4 @?= ["zzzz","zzz","zz","z"]
      ]
  , testGroup "Aufgabe 8: increasingCharPyramid"
      [ testCase "increasingCharPyramid '*' 3" $
          increasingCharPyramid '*' 3 @?= ["*","**","***"]
      , testCase "increasingCharPyramid 'z' 4" $
          increasingCharPyramid 'z' 4 @?= ["z","zz","zzz","zzzz"]
      ]
  , testGroup "Aufgabe 9: increasingCharPyramidSpaced"
      [ testCase "increasingCharPyramidSpaced '*' 3" $
          increasingCharPyramidSpaced '*' 3 @?= "* ** ***"
      , testCase "increasingCharPyramidSpaced 'z' 4" $
          increasingCharPyramidSpaced 'z' 4 @?= "z zz zzz zzzz"
      ]
  , testGroup "Aufgabe 10: increasingCharPyramidNewline"
      [ testCase "increasingCharPyramidNewline '*' 3" $
          increasingCharPyramidNewline '*' 3 @?= "*\n**\n***"
      , testCase "increasingCharPyramidNewline 'z' 4" $
          increasingCharPyramidNewline 'z' 4 @?= "z\nzz\nzzz\nzzzz"
      ]
  , testGroup "Aufgabe 11: mirroredCountdown"
      [ testCase "mirroredCountdown 5" $
          mirroredCountdown 5 @?= [5,4,3,2,1,0,1,2,3,4,5]
      , testCase "mirroredCountdown 3" $
          mirroredCountdown 3 @?= [3,2,1,0,1,2,3]
      , testCase "mirroredCountdown 1" $
          mirroredCountdown 1 @?= [1,0,1]
      , testCase "mirroredCountdown 0" $
          mirroredCountdown 0 @?= [0]
      ]
  , testGroup "Aufgabe 12: maximumInList"
      [ testCase "maximumInList [9,8,7,6,77,55]" $
          maximumInList [9,8,7,6,77,55] @?= 77
      ]
  , testGroup "Aufgabe 13.1: removeDuplicates (nub)"
      [ testCase "removeDuplicates [1,1,2,2,3,3,4,4]" $
          removeDuplicates [1,1,2,2,3,3,4,4] @?= [1,2,3,4]
      ]
  , testGroup "Aufgabe 13.2: listIntersection (intersect)"
      [ testCase "listIntersection [1,1,2,2,3,3,4,4] [5,4,3]" $
          listIntersection [1,1,2,2,3,3,4,4] [5,4,3] @?= [3,4]
      ]
  , testGroup "Aufgabe 13.3: listDifference (diff)"
      [ testCase "listDifference [1,1,2,2,3,3,4,4] [5,4,3]" $
          listDifference [1,1,2,2,3,3,4,4] [5,4,3] @?= [1,2]
      ]
  , testGroup "Aufgabe 13.4: listUnion (union)"
      [ testCase "listUnion [1,1,2,2,3,3,4,4] [5,4,3]" $
          listUnion [1,1,2,2,3,3,4,4] [5,4,3] @?= [1,2,3,4,5]
      ]
  , testGroup "Aufgabe 14: zipLists"
      [ testCase "zipLists [1,2,3] \"abc\"" $
          zipLists [1,2,3] "abc" @?= [(1,'a'),(2,'b'),(3,'c')]
      ]
  , testGroup "Aufgabe 15: lookupValue"
      [ testCase "lookupValue 'b' [('z',1),('n',44),('b',5),('e',4)]" $
          lookupValue 'b' [('z',1),('n',44),('b',5),('e',4)] @?= 5
      ]
  , testGroup "Aufgabe 16: containsNumber"
      [ testCase "containsNumber 3 [1,2,3,4,5]" $
          containsNumber 3 [1,2,3,4,5] @?= True
      , testCase "containsNumber 6 [1,2,3,4,5]" $
          containsNumber 6 [1,2,3,4,5] @?= False
      ]
  , testGroup "Aufgabe 17.1: firstOccurrence"
      [ testCase "firstOccurrence \"Hello World\" 'o'" $
          firstOccurrence "Hello World" 'o' @?= 4
      ]
  , testGroup "Aufgabe 17.2: allOccurrences"
      [ testCase "allOccurrences \"Hello World\" 'o'" $
          allOccurrences "Hello World" 'o' @?= [4,7]
      ]
  , testGroup "Aufgabe 18: charAtPosition"
      [ testCase "charAtPosition \"Hello World\" 4" $
          charAtPosition "Hello World" 4 @?= 'o'
      ]
  , testGroup "Aufgabe 19: sumOfList"
      [ testCase "sumOfList [1,3,5,7]" $
          sumOfList [1,3,5,7] @?= 16
      ]
  , testGroup "Aufgabe 20: intListToStringList"
      [ testCase "intListToStringList [1,3,5,7]" $
          intListToStringList [1,3,5,7] @?= ["1","3","5","7"]
      ]
  , testGroup "Aufgabe 21: intListToString"
      [ testCase "intListToString [1,30,5,7]" $
          intListToString [1,30,5,7] @?= "13057"
      ]
  , testGroup "Aufgabe 22: rangeToTen"
      [ testCase "rangeToTen 2" $
          rangeToTen 2 @?= [2,3,4,5,6,7,8,9,10]
      , testCase "rangeToTen 5" $
          rangeToTen 5 @?= [5,6,7,8,9,10]
      , testCase "rangeToTen (-5)" $
          rangeToTen (-5) @?= [-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10]
      , testCase "rangeToTen 10" $
          rangeToTen 10 @?= [10]
      , testCase "rangeToTen 11" $
          rangeToTen 11 @?= []
      ]
  ]
