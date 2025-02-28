{-# LANGUAGE ImplicitParams #-}
module Main where

import Test.Tasty
import Test.Tasty.HUnit
import Test.HUnit.Approx
import Aufgaben

main :: IO ()
main = defaultMain tests1

tests1 :: TestTree
tests1 = testGroup "Unit Tests for All Aufgaben"
  [ testGroup "Aufgabe 1: everyNth / exceptEveryNth"
      [ testCase "everyNth 3 [1,9,3,4,1,6,7,18,4,11]" $
          everyNth 3 [1,9,3,4,1,6,7,18,4,11] @?= [3,6,4]
      , testCase "everyNth 2 [10,20,30,40,50]" $
          everyNth 2 [10,20,30,40,50] @?= [20,40]
      , testCase "exceptEveryNth 3 [1,9,3,4,1,6,7,18,4,11]" $
          exceptEveryNth 3 [1,9,3,4,1,6,7,18,4,11] @?= [1,9,4,1,7,18,11]
      , testCase "exceptEveryNth 2 [10,20,30,40,50]" $
          exceptEveryNth 2 [10,20,30,40,50] @?= [10,30,50]
      ]
  , testGroup "Aufgabe 2: reverseChunks"
      [ testCase "reverseChunks 3 [8,18,15,20,12,12,14,12,2,19,0]" $
          reverseChunks 3 [8,18,15,20,12,12,14,12,2,19,0] @?= [15,18,8,12,12,20,2,12,14,0,19]
      , testCase "reverseChunks 2 [1,2,3,4,5,6,7,8,9]" $
          reverseChunks 2 [1,2,3,4,5,6,7,8,9] @?= [2,1,4,3,6,5,8,7,9]
      ]
  , testGroup "Aufgabe 6: pairwiseZip / pairwiseZipWith"
      [ testCase "pairwiseZip [4,2,1,7] \"abcd\"" $
          pairwiseZip [4,2,1,7] "abcd" @?= [(4,'a'),(2,'b'),(1,'c'),(7,'d')]
      , testCase "pairwiseZipWith (+) [1,2,3] [10,20,30]" $
          pairwiseZipWith (+) [1,2,3] [10,20,30] @?= [11,22,33]
      , testCase "pairwiseZipWith (*) [2,3,4] [5,6,7]" $
          pairwiseZipWith (*) [2,3,4] [5,6,7] @?= [10,18,28]
      ]
  , testGroup "Aufgabe 15: longestStringLength"
      [ testCase "longestStringLength [\"Der\", \"laengste\", \"String\"]" $
          longestStringLength ["Der", "laengste", "String"] @?= 8
      , testCase "longestStringLength [\"kurz\", \"mittel\", \"sehrsehrlang\"]" $
          longestStringLength ["kurz", "mittel", "sehrsehrlang"] @?= 12
      ]
  , testGroup "Aufgabe 16: oddDigitNumbers"
      [ testCase "oddDigitNumbers 13" $
          oddDigitNumbers 13 @?= [1,3,5,7,9,11,13,15,17,19,21,23,25]
      , testCase "oddDigitNumbers 5" $
          oddDigitNumbers 5 @?= [1,3,5,7,9]
      ]
  , testGroup "Aufgabe 17: secondToLast"
      [ testCase "secondToLast [1, 2, 3, 4, 5]" $
          secondToLast [1, 2, 3, 4, 5] @?= 4
      , testCase "secondToLast ['a', 'b', 'c', 'd']" $
          secondToLast ['a', 'b', 'c', 'd'] @?= 'c'
      ]
  , testGroup "Aufgabe 18: countQXY / countChars"
      [ testCase "countQXY \"quax\"" $
          countQXY "quax" @?= 2
      , testCase "countQXY \"xxxyyyqqq\"" $
          countQXY "xxxyyyqqq" @?= 9
      , testCase "countChars \"qxy\" \"qqqquayx\"" $
          countChars "qxy" "qqqquayx" @?= 6
      , testCase "countChars \"abc\" \"aabbccabc\"" $
          countChars "abc" "aabbccabc" @?= 9
      ]
  , testGroup "Aufgabe 19: divisibleBySix / divisibleBy"
      [ testCase "divisibleBySix [1..25]" $
          divisibleBySix [1..25] @?= [6,12,18,24]
      , testCase "divisibleBy 6 [1..50]" $
          divisibleBy 6 [1..50] @?= [6,12,18,24,30,36,42,48]
      , testCase "divisibleBy 3 [1..10]" $
          divisibleBy 3 [1..10] @?= [3,6,9]
      ]
  , testGroup "Aufgabe 20: extractJustValues"
      [ testCase "extractJustValues [Just 3, Nothing, Just 5]" $
          extractJustValues [Just 3, Nothing, Just 5] @?= [3,5]
      , testCase "extractJustValues [Nothing, Just 7, Just 8, Nothing, Just 10]" $
          extractJustValues [Nothing, Just 7, Just 8, Nothing, Just 10] @?= [7,8,10]
      , testCase "extractJustValues []" $
          extractJustValues ([] :: [Maybe Int]) @?= ([] :: [Int])
      ]

  , testGroup "Aufgabe 25: elementPositions"
      [ testCase "elementPositions 0 [0,1,5,0,3]" $
          elementPositions 0 [0,1,5,0,3] @?= [0,3]
      , testCase "elementPositions 'a' \"banana\"" $
          elementPositions 'a' "banana" @?= [1,3,5]
      , testCase "elementPositions 10 [1,2,3,4,5]" $
          elementPositions 10 [1,2,3,4,5] @?= []
      ]

  , testGroup "Aufgabe 26: middleElement"
      [ testCase "middleElement [1,2,3,4,5,6,7]" $
          middleElement [1,2,3,4,5,6,7] @?= 4
      , testCase "middleElement \"haskell\"" $
          middleElement "haskell" @?= 'k'
      , testCase "middleElement [1,2,3,4,5,6,7]" $
          middleElement [1,2,3,4,5,6] @?= 3
      ]

  , testGroup "Aufgabe 27: rectangleOfStars"
      [ testCase "rectangleOfStars 3" $
          rectangleOfStars 3 @?= "***\n***\n***"
      , testCase "rectangleOfStars 5" $
          rectangleOfStars 5 @?= "*****\n*****\n*****\n*****\n*****"
      ]

  , testGroup "Aufgabe 28: allSameLength"
      [ testCase "allSameLength [[1,2], [3,4]]" $
          allSameLength [[1,2], [3,4]] @?= True
      , testCase "allSameLength [[1,2,3], [4,5]]" $
          allSameLength [[1,2,3], [4,5]] @?= False
      , testCase "allSameLength []" $
          allSameLength ([] :: [[Int]]) @?= True
      ]

  , testGroup "Aufgabe 29: padLists"
      [ testCase "padLists '+' [\"f\", \"abaz\", \"bar\"]" $
          padLists '+' ["f", "abaz", "bar"] @?= ["f+++", "abaz", "bar+"]
      , testCase "padLists '-' [\"hi\", \"hello\"]" $
          padLists '-' ["hi", "hello"] @?= ["hi---", "hello"]
      ]

  , testGroup "Aufgabe 30: firstNOdds"
      [ testCase "firstNOdds 2 [1,2,3,5]" $
          firstNOdds 2 [1,2,3,5] @?= [1,3]
      , testCase "firstNOdds 3 [2,4,6,1,3,5,7,9]" $
          firstNOdds 3 [2,4,6,1,3,5,7,9] @?= [1,3,5]
      ]

  , testGroup "Aufgabe 31: removeEveryNth"
      [ testCase "removeEveryNth 5 [1,2,3,4,5,6]" $
          removeEveryNth 5 [1,2,3,4,5,6] @?= [1,2,3,4,6]
      , testCase "removeEveryNth 2 [10,20,30,40,50,60]" $
          removeEveryNth 2 [10,20,30,40,50,60] @?= [10,30,50]
      ]
  , testGroup "Aufgabe 32: properPunctuationSpacing"
      [ testCase "properPunctuationSpacing \"Na, hallo.\"" $
          properPunctuationSpacing "Na, hallo." @?= True
      , testCase "properPunctuationSpacing \"Wie geht's ?\"" $
          properPunctuationSpacing "Wie geht's ?" @?= False
      , testCase "properPunctuationSpacing \"Das ist großartig!\"" $
          properPunctuationSpacing "Das ist großartig!" @?= True
      ]

  , testGroup "Aufgabe 33: hasAdjacentDuplicates"
      [ testCase "hasAdjacentDuplicates [1,3,5,5,7]" $
          hasAdjacentDuplicates [1,3,5,5,7] @?= True
      , testCase "hasAdjacentDuplicates [3,7,5,7]" $
          hasAdjacentDuplicates [3,7,5,7] @?= False
      , testCase "hasAdjacentDuplicates \"hallo\"" $
          hasAdjacentDuplicates "hallo" @?= True
      ]

  , testGroup "Aufgabe 34: chunkList"
      [ testCase "chunkList 3 [1..7]" $
          chunkList 3 [1..7] @?= [[1,2,3],[4,5,6],[7]]
      , testCase "chunkList 2 [1,2,3,4,5]" $
          chunkList 2 [1,2,3,4,5] @?= [[1,2],[3,4],[5]]
      , testCase "chunkList 4 [1,2,3]" $
          chunkList 4 [1,2,3] @?= [[1,2,3]]
      ]

  , testGroup "Aufgabe 36: replaceOccurrences"
      [ testCase "replaceOccurrences '1' \"123\" \"ab1cd1\"" $
          replaceOccurrences '1' "123" "ab1cd1" @?= "ab123cd123"
      , testCase "replaceOccurrences ' ' \"!!\" \"Wie geht es dir?\"" $
          replaceOccurrences ' ' "!!" "Wie geht es dir?" @?= "Wie!!geht!!es!!dir?"
      , testCase "replaceOccurrences 3 [6,6] [1,2,3,1,2,3,1]" $
          replaceOccurrences 3 [6,6] [1,2,3,1,2,3,1] @?= [1,2,6,6,1,2,6,6,1]
      ]

  , testGroup "Aufgabe 37: consecutivePairs"
      [ testCase "consecutivePairs [5,8,7,4]" $
          consecutivePairs [5,8,7,4] @?= [(5,8),(8,7),(7,4)]
      , testCase "consecutivePairs \"haskell\"" $
          consecutivePairs "haskell" @?= [('h','a'),('a','s'),('s','k'),('k','e'),('e','l'),('l','l')]
      ]

  , testGroup "Aufgabe 38: splitAlternating"
      [ testCase "splitAlternating [7,4,3,2,5]" $
          splitAlternating [7,4,3,2,5] @?= ([7,3,5],[4,2])
      , testCase "splitAlternating \"abcdefg\"" $
          splitAlternating "abcdefg" @?= ("aceg", "bdf")
      ]

  , testGroup "Aufgabe 39: interleaveLists"
      [ testCase "interleaveLists [1,3,5] [2,4]" $
          interleaveLists [1,3,5] [2,4] @?= [1,2,3,4,5]
      , testCase "interleaveLists \"abc\" \"12345\"" $
          interleaveLists "abc" "12345" @?= "a1b2c345"
      , testCase "interleaveLists [10,20] [5,15,25,35]" $
          interleaveLists [10,20] [5,15,25,35] @?= [10,5,20,15,25,35]
      ]

  , testGroup "Aufgabe 41: filterSquares"
      [ testCase "filterSquares [1..25]" $
          filterSquares [1..25] @?= [1,4,9,16,25]
      , testCase "filterSquares [10,20,30,40,50]" $
          filterSquares [10,20,30,40,50] @?= []
      , testCase "filterSquares [1,4,9,16,25,36,49,64,81,100]" $
          filterSquares [1,4,9,16,25,36,49,64,81,100] @?= [1,4,9,16,25,36,49,64,81,100]
      ]
  , testGroup "Aufgabe 42: indexedList"
      [ testCase "indexedList \"ayq\"" $
          indexedList "ayq" @?= [(0, 'a'), (1, 'y'), (2, 'q')]
      , testCase "indexedList [10,20,30]" $
          indexedList [10,20,30] @?= [(0,10), (1,20), (2,30)]
      ]

  , testGroup "Aufgabe 43a: reverseFirstHalf"
      [ testCase "reverseFirstHalf \"foobar\"" $
          reverseFirstHalf "foobar" @?= "oofbar"
      , testCase "reverseFirstHalf [1,2,3,4,5,6]" $
          reverseFirstHalf [1,2,3,4,5,6] @?= [3,2,1,4,5,6]
      ]

  , testGroup "Aufgabe 43b: reverseFirstN"
      [ testCase "reverseFirstN 3 \"foobar\"" $
          reverseFirstN 3 "foobar" @?= "oofbar"
      , testCase "reverseFirstN 2 \"foobar\"" $
          reverseFirstN 2 "foobar" @?= "ofobar"
      , testCase "reverseFirstN 5 \"foobar\"" $
          reverseFirstN 5 "foobar" @?= "aboofr"
      ]

  , testGroup "Aufgabe 44: secondLargest"
      [ testCase "secondLargest [1,5,7,3]" $
          secondLargest [1,5,7,3] @?= 5
      , testCase "secondLargest [10,20,30,40,50]" $
          secondLargest [10,20,30,40,50] @?= 40
      ]

  , testGroup "Aufgabe 45: extractSublist"
      [ testCase "extractSublist 3 8 \"abcdefghijklmnopq\"" $
          extractSublist 3 8 "abcdefghijklmnopq" @?= "defgh"
      , testCase "extractSublist 1 4 [10,20,30,40,50]" $
          extractSublist 1 4 [10,20,30,40,50] @?= [20,30,40]
      ]

  , testGroup "Aufgabe 46: runLengthEncoding"
      [ testCase "runLengthEncoding \"foo baaar\"" $
          runLengthEncoding "foo baaar" @?= [('f',1), ('o',2), (' ',1), ('b',1), ('a',3), ('r',1)]
      , testCase "runLengthEncoding \"aaabbcddddee\"" $
          runLengthEncoding "aaabbcddddee" @?= [('a',3), ('b',2), ('c',1), ('d',4), ('e',2)]
      ]

  , testGroup "Aufgabe 47: transformString"
      [ testCase "transformString \"Hallo.\"" $
          transformString "Hallo." @?= "HALLO!"
      , testCase "transformString \"test, case!\"" $
          transformString "test, case!" @?= "TEST, CASE!"
      ]

  , testGroup "Aufgabe 49: removeEverySecond"
      [ testCase "removeEverySecond \"Huapstkxeilflt\"" $
          removeEverySecond "Huapstkxeilflt" @?= "Haskell"
      , testCase "removeEverySecond [1,2,3,4,5,6,7,8]" $
          removeEverySecond [1,2,3,4,5,6,7,8] @?= [1,3,5,7]
      ]
  ]