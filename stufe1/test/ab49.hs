{-# LANGUAGE ImplicitParams #-}
module Main where

import Test.Tasty
import Test.Tasty.HUnit
import Test.HUnit.Approx
import Aufgaben

main :: IO ()
main = defaultMain tests2

tests2 :: TestTree
tests2 = testGroup "Unit Tests for All Aufgaben"
  [ testGroup "Aufgabe 50: sumCharCodes"
      [ testCase "sumCharCodes \"hallo\"" $
          sumCharCodes "hallo" @?= 528
      , testCase "sumCharCodes \"Hello!\"" $
          sumCharCodes "Hello!" @?= 500
      , testCase "sumCharCodes \"abc\"" $
          sumCharCodes "abc" @?= 294
      ]

  , testGroup "Aufgabe 52: happy"
      [ testCase "happy [19, 34, 23, 14, 5, 1]" $
          happy [19, 34, 23, 14, 5, 1] @?= True
      , testCase "happy [4, 37, 38, 23, 19]" $
          happy [4, 37, 38, 23, 19] @?= False
      , testCase "happy [2,4,6,8,10]" $
          happy [2,4,6,8,10] @?= False
      ]

  , testGroup "Aufgabe 59: compressString"
      [ testCase "compressString \"piii bbblii blaa blllup\"" $
          compressString "piii bbblii blaa blllup" @?= "pi3 b3li2 bla2 bl3up"
      , testCase "compressString \"aaabbbccdd\"" $
          compressString "aaabbbccdd" @?= "a3b3c2d2"
      ]

  , testGroup "Aufgabe 63: addLineNumbers"
      [ testCase "addLineNumbers \"Ein Hund\\nlief um die\\nEcke\"" $
          addLineNumbers "Ein Hund\nlief um die\nEcke" @?= "1 Ein Hund\n2 lief um die\n3 Ecke"
      , testCase "addLineNumbers \"Zeile1\\nZeile2\\nZeile3\"" $
          addLineNumbers "Zeile1\nZeile2\nZeile3" @?= "1 Zeile1\n2 Zeile2\n3 Zeile3"
      ]

  , testGroup "Aufgabe 64: noSevens"
      [ testCase "take 10 noSevens" $
          take 10 noSevens @?= [1,2,3,4,5,6,8,9,10,11]
      , testCase "take 15 noSevens" $
          take 15 noSevens @?= [1,2,3,4,5,6,8,9,10,11,12,13,14,15,16]
      ]

  , testGroup "Aufgabe 65: isDescendingLengths"
      [ testCase "isDescendingLengths [\"Murmeltier\", \"Ozelot\", \"Maus\"]" $
          isDescendingLengths ["Murmeltier", "Ozelot", "Maus"] @?= True
      , testCase "isDescendingLengths [\"Apfel\", \"Birne\", \"Kiwi\"]" $
          isDescendingLengths ["Apfel", "Birne", "Kiwi"] @?= False
      , testCase "isDescendingLengths []" $
          isDescendingLengths [] @?= True
      ]

  , testGroup "Aufgabe 67: rowWiseDotProduct"
      [ testCase "rowWiseDotProduct [[1,2],[3,4],[5,6]] [[3,4],[5,6],[7,8]]" $
          rowWiseDotProduct [[1,2],[3,4],[5,6]] [[3,4],[5,6],[7,8]] @?= [11,39,83]
      , testCase "rowWiseDotProduct [[2,3],[4,5]] [[6,7],[8,9]]" $
          rowWiseDotProduct [[2,3],[4,5]] [[6,7],[8,9]] @?= [33,77]
      ]

  , testGroup "Aufgabe 68: matrixMultiply"
      [ testCase "matrixMultiply [[1,2],[3,4]] [[5,6],[7,8]]" $
          matrixMultiply [[1,2],[3,4]] [[5,6],[7,8]] @?= [[19,22],[43,50]]
      , testCase "matrixMultiply [[2,3],[4,5]] [[6,7],[8,9]]" $
          matrixMultiply [[2,3],[4,5]] [[6,7],[8,9]] @?= [[36,41],[64,73]]
      ]
  , testGroup "Aufgabe 78: removeConsecutiveDuplicates"
      [ testCase "removeConsecutiveDuplicates \"I,,   the   machhhhhine    \"" $
          removeConsecutiveDuplicates "I,,   the   machhhhhine    " @?= "I, the machine "
      , testCase "removeConsecutiveDuplicates \"aaabbbcccaaa\"" $
          removeConsecutiveDuplicates "aaabbbcccaaa" @?= "abca"
      , testCase "removeConsecutiveDuplicates \"hellooo world!!!\"" $
          removeConsecutiveDuplicates "hellooo world!!!" @?= "helo world!"
      ]

  , testGroup "Aufgabe 80: removeNthOccurrence"
      [ testCase "removeNthOccurrence 1 'a' \"the walls are coming together\"" $
          removeNthOccurrence 1 'a' "the walls are coming together" @?= "the wlls are coming together"
      , testCase "removeNthOccurrence 2 'a' \"the walls are coming together\"" $
          removeNthOccurrence 2 'a' "the walls are coming together" @?= "the walls re coming together"
      , testCase "removeNthOccurrence 3 'a' \"banana banana banana\"" $
          removeNthOccurrence 3 'a' "banana banana banana" @?= "banana banana bnana"
      ]

  , testGroup "Aufgabe 84: centerString"
      [ testCase "centerString 6 \"ABC\"" $
          centerString 6 "ABC" @?= Just " ABC  "
      , testCase "centerString 5 \"ABC\"" $
          centerString 5 "ABC" @?= Just " ABC "
      , testCase "centerString 3 \"ABCD\"" $
          centerString 3 "ABCD" @?= Nothing
      ]

  , testGroup "Aufgabe 90: teamsToString / stringToTeams"
      [ testCase "teamsToString [(\"Team 1\", [\"Tarek\", \"Hany\"])]" $
          teamsToString [("Team 1", ["Tarek", "Hany"])] @?= "Team 1: Tarek, Hany"
      , testCase "stringToTeams \"Team 1: Alice, Bob\\nTeam 2: Charlie\"" $
          stringToTeams "Team 1: Alice, Bob\nTeam 2: Charlie" @?= [("Team 1", ["Alice", "Bob"]), ("Team 2", ["Charlie"])]
      , testCase "teamsToString [(\"Red\", [\"John\", \"Doe\"]), (\"Blue\", [\"Jane\", \"Smith\"])]" $
          teamsToString [("Red", ["John", "Doe"]), ("Blue", ["Jane", "Smith"])] @?= "Red: John, Doe\nBlue: Jane, Smith"
      ]

  , testGroup "Aufgabe 93: devilP / allDevils"
      [ testCase "devilP 246669" $
          devilP 246669 @?= True
      , testCase "devilP 246696" $
          devilP 246696 @?= False
      , testCase "take 10 allDevils" $
          take 10 allDevils @?= [666,1666,2666,3666,4666,5666,6660,6661,6662,6663]
      ]

  , testGroup "Aufgabe 94: importantMessage"
      [ testCase "importantMessage 3 '*' \"wichtig!\"" $
          importantMessage 3 '*' "wichtig!" @?= "*\n**\n***   wichtig!\n**\n*"
      , testCase "importantMessage 5 's' \"noch wichtiger!\"" $
          importantMessage 5 's' "noch wichtiger!" @?= "s\nss\nsss\nssss\nsssss   noch wichtiger!\nssss\nsss\nss\ns"
      ]

  , testGroup "Aufgabe 98: lengthOfLongestString"
      [ testCase "lengthOfLongestString [\"Der\", \"laengste\", \"String\"]" $
          lengthOfLongestString ["Der", "laengste", "String"] @?= 8
      , testCase "lengthOfLongestString [\"Apfel\", \"Birne\", \"Wassermelone\"]" $
          lengthOfLongestString ["Apfel", "Birne", "Wassermelone"] @?= 12
      ]

  , testGroup "Aufgabe 99: numbersWithOddDigits"
      [ testCase "numbersWithOddDigits 13" $
          numbersWithOddDigits 13 @?= [1,3,5,7,9,11,13,15,17,19,31,33,35]
      , testCase "numbersWithOddDigits 5" $
          numbersWithOddDigits 5 @?= [1,3,5,7,9]
      , testCase "drop 10 (numbersWithOddDigits 20)" $
          drop 10 (numbersWithOddDigits 20) @?= [31,33,35,37,39,51,53,55,57,59]
      ]
  , testGroup "Aufgabe 100: addnNumbers"
      [ testCase "addnNumbers [1..10] 3" $
          addnNumbers [1..10] 3 @?= [6,15,24,10]
      , testCase "addnNumbers [1..20] 4" $
          addnNumbers [1..20] 4 @?= [10,26,42,58,74]
      , testCase "take 5 $ addnNumbers [1..] 5" $
          take 5 (addnNumbers [1..] 5) @?= [15,40,65,90,115]
      ]
  , testGroup "Aufgabe 101: triangNums / isTriangNum"
      [ testCase "triangNums first 15 elements" $
          take 15 triangNums @?= [0,1,3,6,10,15,21,28,36,45,55,66,78,91,105]
      , testCase "isTriangNum 36" $
          isTriangNum 36 @?= True
      , testCase "isTriangNum 99" $
          isTriangNum 99 @?= False
      , testCase "isTriangNum 0" $
          isTriangNum 0 @?= True
      ]

  , testGroup "Aufgabe 105: inits / tails"
      [ testCase "inits \"abc\"" $
          inits "abc" @?= ["","a","ab","abc"]
      , testCase "tails \"abc\"" $
          tails "abc" @?= ["abc","bc","c",""]
      , testCase "inits \"\"" $
          inits "" @?= [""]
      , testCase "tails \"\"" $
          tails "" @?= [""]
      ]

  , testGroup "Aufgabe 106: lastIntDigit / lastIntSubstring"
      [ testCase "lastIntDigit \"ta12re65zt\"" $
          lastIntDigit "ta12re65zt" @?= Just 5
      , testCase "lastIntDigit \"tarezt\"" $
          lastIntDigit "tarezt" @?= Nothing
      , testCase "lastIntSubstring \"ta12re65zt\"" $
          lastIntSubstring "ta12re65zt" @?= Just 65
      , testCase "lastIntSubstring \"tarezt\"" $
          lastIntSubstring "tarezt" @?= Nothing
      ]

  , testGroup "Aufgabe 109: foldDigits"
      [ testCase "foldDigits [1,2,3,45,6,789]" $
          foldDigits [1,2,3,45,6,789] @?= 123456789
      , testCase "foldDigits []" $
          foldDigits [] @?= 0
      , testCase "foldDigits [0,1,2]" $
          foldDigits [0,1,2] @?= 12
      ]

  , testGroup "Aufgabe 111: containsAll / containsInOrder"
      [ testCase "containsAll [1,2,3] [6,5,4,3,2,1]" $
          containsAll [1,2,3] [6,5,4,3,2,1] @?= True
      , testCase "containsAll [1,2,3] [6,5,4,3,2]" $
          containsAll [1,2,3] [6,5,4,3,2] @?= False
      , testCase "containsInOrder [1,2,3] [6,5,4,3,2,1]" $
          containsInOrder [1,2,3] [6,5,4,3,2,1] @?= False
      , testCase "containsInOrder [1,2,3] [6,2,4,1,2,9,9,3]" $
          containsInOrder [1,2,3] [6,2,4,1,2,9,9,3] @?= True
      ]

  , testGroup "Aufgabe 119: greater"
      [ testCase "greater (5,[1,2,3,4,5,6,7,8,9,10])" $
          greater (5,[1,2,3,4,5,6,7,8,9,10]) @?= [6,7,8,9,10]
      , testCase "greater ('m', \"abcdefxyz\")" $
          greater ('m', "abcdefxyz") @?= "xyz"
      , testCase "greater (10, [5, 8, 12, 15])" $
          greater (10, [5, 8, 12, 15]) @?= [12,15]
      ]

  , testGroup "Aufgabe 120: replicate', lines', unlines', intercalate', intersperse'"
      [ testCase "replicate' 3 'a'" $
          replicate' 3 'a' @?= "aaa"
      , testCase "replicate' 5 1" $
          replicate' 5 1 @?= [1,1,1,1,1]
      , testCase "lines' \"Hello\\nWorld\"" $
          lines' "Hello\nWorld" @?= ["Hello", "World"]
      , testCase "unlines' [\"Hello\", \"World\"]" $
          unlines' ["Hello", "World"] @?= "Hello\nWorld\n"
      , testCase "intercalate' \", \" [\"a\", \"b\", \"c\"]" $
          intercalate' ", " ["a", "b", "c"] @?= "a, b, c"
      , testCase "intersperse' ',' \"hello\"" $
          intersperse' ',' "hello" @?= "h,e,l,l,o"
      ]
  , testGroup "Aufgabe 121: allOddLength / allSatisfy"
      [ testCase "allOddLength [\"qwe\",\"1\",\"qweasdy\"]" $
          allOddLength ["qwe","1","qweasdy"] @?= True
      , testCase "allOddLength [\"hello\",\"world\",\"test\"]" $
          allOddLength ["hello","world","test"] @?= False
      , testCase "allOddLength [\"a\",\"bbb\",\"ccccc\"]" $
          allOddLength ["a","bbb","ccccc"] @?= True
      , testCase "allSatisfy (\\l -> odd (length l)) [\"qwe\",\"1\",\"qweasdy\"]" $
          allSatisfy (\l -> odd (length l)) ["qwe","1","qweasdy"] @?= True
      , testCase "allSatisfy (\\l -> even (length l)) [\"qwe\",\"1\",\"qweasdy\"]" $
          allSatisfy (\l -> even (length l)) ["qwe","1","qweasdy"] @?= False
      ]

  , testGroup "Aufgabe 128: quad / quadi"
      [ testCase "quad \"abc\\ndef\\nhij\"" $
          quad "abc\ndef\nhij" @?= True
      , testCase "quad \"foo\\nfoo\"" $
          quad "foo\nfoo" @?= False
      , testCase "quad \"abc\\ndefgh\\nhij\"" $
          quad "abc\ndefgh\nhij" @?= False
      , testCase "quadi (cycle \"foo\\n\")" $
          quadi (cycle "foo\n") @?= False
      , testCase "quadi (\"ab\\ncd\\nxx\" ++ [undefined])" $
          quadi ("ab\ncd\nxx" ++ [undefined]) @?= False
      ]
  , testGroup "Aufgabe 133: beifang / avgHering / avgKabeljau / avgSeelachs"
      [ testCase "length (beifang fang1)" $
          length (beifang fang1) @?= 5
      , testCase "beifang fang1 enthält nur Fische über dem Mindestgewicht" $
          all (\f -> case f of
              Hering g   -> g >= 200
              Kabeljau g -> g >= 1500
              Seelachs g -> g >= 2000) (beifang fang1) @?= True
      , testCase "avgHering fang1" $
          avgHering fang1 @?= 206
      , testCase "avgKabeljau fang1" $
          avgKabeljau fang1 @?= 1555
      , testCase "avgSeelachs fang1" $
          avgSeelachs fang1 @?= 2107
      , testCase "avgHering mit leerer Liste" $
          avgHering [] @?= 0
      , testCase "avgKabeljau mit leerer Liste" $
          avgKabeljau [] @?= 0
      , testCase "avgSeelachs mit leerer Liste" $
          avgSeelachs [] @?= 0
      ]

  , testGroup "Aufgabe 137: preis"
      [ testCase "preis k1" $
          preis k1 @?= 396
      , testCase "preis k2 (mit Rabatt)" $
          preis k2 @?= 1044
      , testCase "preis mit genau 5 Äpfeln (Rabatt sollte greifen)" $
          preis [Apfel, Apfel, Apfel, Apfel, Apfel] @?= 299
      , testCase "preis mit genau 3 Birnen (Rabatt sollte greifen)" $
          preis [Birne, Birne, Birne] @?= 249
      , testCase "preis mit 6 Äpfeln (1 Rabatt-Paket + 1 regulärer Apfel)" $
          preis [Apfel, Apfel, Apfel, Apfel, Apfel, Apfel] @?= (299 + 79)
      , testCase "preis mit 4 Birnen (1 Rabatt-Paket + 1 reguläre Birne)" $
          preis [Birne, Birne, Birne, Birne] @?= (249 + 99)
      , testCase "preis mit nur Zitronen (kein Rabatt)" $
          preis [Zitrone, Zitrone, Zitrone] @?= 3 * 139
      , testCase "preis mit leerer Kiste" $
          preis [] @?= 0
      ]

  , testGroup "Aufgabe 138: ausgewogen"
      [ testCase "ausgewogen \"Onomatopöie\"" $
          ausgewogen "Onomatopöie" @?= False
      , testCase "ausgewogen \"Hundeauge\"" $
          ausgewogen "Hundeauge" @?= True
      , testCase "ausgewogen \"Schraubstock\"" $
          ausgewogen "Schraubstock" @?= False
      , testCase "ausgewogen \"∗∗∗?∗ Hundeaugen .,.,.,,, \"" $
          ausgewogen "∗∗∗?∗ Hundeaugen .,.,.,,, " @?= True
      , testCase "ausgewogen \"aeiouäöübcdfg\"" $
          ausgewogen "aeiouäöübcdfg" @?= True
      , testCase "ausgewogen \"AEIOUbcdfg\"" $
          ausgewogen "AEIOUbcdfg" @?= True
      , testCase "ausgewogen \"a\"" $
          ausgewogen "a" @?= False
      , testCase "ausgewogen \"h\"" $
          ausgewogen "h" @?= False
      , testCase "ausgewogen \"aeiouäöübcd\"" $
          ausgewogen "aeiouäöübcd" @?= False
      , testCase "ausgewogen \"\"" $
          ausgewogen "" @?= True
      ]

  , testGroup "Aufgabe 139: center / centerlines / centertext"
      [ testCase "center 5 \"foo\"" $
          center 5 "foo" @?= " foo "
      , testCase "center 8 \"baz\"" $
          center 8 "baz" @?= "  baz   "
      , testCase "center 6 \"hello\"" $
          center 6 "hello" @?= "hello "
      , testCase "centerlines [\"Here\", \"are\", \"4\", \"lines!\"]" $
          centerlines ["Here", "are", "4", "lines!"] @?= [" Here "," are  ","  4   ","lines!"]
      , testCase "centerlines [\"abc\", \"defgh\", \"ij\"]" $
          centerlines ["abc", "defgh", "ij"] @?= [" abc ","defgh"," ij  "]
      , testCase "centertext \"This\\nis\\na\\nstring!\"" $
          centertext "This\nis\na\nstring!" @?= " This  \n  is   \n   a   \nstring!\n"
      , testCase "centertext \"Haskell\\nrocks!\"" $
          centertext "Haskell\nrocks!" @?= "Haskell\nrocks! \n"
      ]
  , testGroup "Aufgabe 141: positions"
      [ testCase "positions \"Foo\"" $
          positions "Foo" @?= [('F',1),('o',2),('o',3)]
      , testCase "positions [10,20,30]" $
          positions [10,20,30] @?= [(10,1), (20,2), (30,3)]
      , testCase "positions \"abcde\"" $
          positions "abcde" @?= [('a',1),('b',2),('c',3),('d',4),('e',5)]
      ]

  , testGroup "Aufgabe 142: rpad / rpadinf"
      [ testCase "rpad '*' [\"abcde\",\"fgh\",\"uvwxyz\"]" $
          rpad '*' ["abcde","fgh","uvwxyz"] @?= ["abcde*","fgh***","uvwxyz"]
      , testCase "rpad 0 [[1,3,5],[1 .. 5],[7,9]]" $
          rpad 0 [[1,3,5],[1..5],[7,9]] @?= [[1,3,5,0,0],[1,2,3,4,5],[7,9,0,0,0]]
      , testCase "map (take 5) (rpadinf 0 [[1,3 ..],[1 ..],[7,9]])" $
          map (take 5) (rpadinf 0 [[1,3 ..],[1 ..],[7,9]]) @?=
            [[1,3,5,7,9],[1,2,3,4,5],[7,9,0,0,0]]
      , testCase "rpadinf 0 [[1..],[2..],[3..]] (take 5 von jeder Liste)" $
          map (take 5) (rpadinf 0 [[1..],[2..],[3..]]) @?=
            [[1,2,3,4,5],[2,3,4,5,6],[3,4,5,6,7]]
      ]

  , testGroup "Aufgabe 145: triangle"
      [ testCase "triangle [\"a\",\"xy\",\"123\"]" $
          triangle ["a","xy","123"] @?= True
      , testCase "triangle [[1],[2,3],[3]]" $
          triangle [[1],[2,3],[3]] @?= False
      , testCase "triangle [[1],[2,3],[4,5,6]]" $
          triangle [[1],[2,3],[4,5,6]] @?= True
      , testCase "triangle [[],[1],[2,3],[4,5,6]]" $
          triangle [[],[1],[2,3],[4,5,6]] @?= True
      , testCase "triangle [[1],[2,3],[4,5]]" $
          triangle [[1],[2,3],[4,5]] @?= False
      ]

  , testGroup "Aufgabe 148: trimTrailingSpaces / trimTrailingSpacesList"
      [ testCase "trimTrailingSpaces \"pain\"" $
          trimTrailingSpaces "pain" @?= "pain"
      , testCase "trimTrailingSpaces \"pain \"" $
          trimTrailingSpaces "pain " @?= "pain"
      , testCase "trimTrailingSpaces \"  sadness and sorrow   \"" $
          trimTrailingSpaces "  sadness and sorrow   " @?= "  sadness and sorrow"
      , testCase "trimTrailingSpaces \"sadness and sorrow\"" $
          trimTrailingSpaces "sadness and sorrow" @?= "sadness and sorrow"

      , testCase "trimTrailingSpacesList [\"pain\",\"pain \",\"  sadness and sorrow   \",\"sadness and sorrow\"]" $
          trimTrailingSpacesList ["pain","pain ","  sadness and sorrow   ","sadness and sorrow"] @?=
            ["pain","pain","  sadness and sorrow","sadness and sorrow"]
      ]

  , testGroup "Aufgabe 152: diamond"
      [ testCase "diamond 'x' 1" $
          diamond 'x' 1 @?= "x\n"
      , testCase "diamond '*' 2" $
          diamond '*' 2 @?=
            " *\n"
            ++ "***\n"
            ++ " *\n"
      , testCase "diamond '#' 3" $
          diamond '#' 3 @?=
            "  #\n"
            ++ " ###\n"
            ++ "#####\n"
            ++ " ###\n"
            ++ "  #\n"
      , testCase "diamond '@' 4" $
          diamond '@' 4 @?=
            "   @\n"
            ++ "  @@@\n"
            ++ " @@@@@\n"
            ++ "@@@@@@@\n"
            ++ " @@@@@\n"
            ++ "  @@@\n"
            ++ "   @\n"
      , testCase "diamond '*' 5" $
          diamond '*' 5 @?=
            "    *\n"
            ++ "   ***\n"
            ++ "  *****\n"
            ++ " *******\n"
            ++ "*********\n"
            ++ " *******\n"
            ++ "  *****\n"
            ++ "   ***\n"
            ++ "    *\n"
      ]
  , testGroup "Aufgabe 154: frequency"
      [ testCase "frequency \"\"" $
          frequency "" @?= []
      , testCase "frequency \"abc123AB!ax.\"" $
          frequency "abc123AB!ax.'" @?= [('a',3),('b',2),('x',1),('c',1)]
      , testCase "frequency \"Straßenbahnlinie 6?\"" $
          frequency "Straßenbahnlinie 6?" @?=
            [('n',3),('i',2),('e',2),('a',2),('ß',1),('t',1),('s',1),
             ('r',1),('l',1),('h',1),('b',1)]
      , testCase "frequency \"HELLO world!!!\"" $
          frequency "HELLO world!!!" @?= [('l',3),('o',2),('h',1),('e',1),('w',1),('r',1),('d',1)]
      , testCase "frequency \"AaAaBbBzZzZ\"" $
          frequency "AaAaBbBzZzZ" @?= [('a',4),('z',4),('b',3)]
      , testCase "frequency \"The quick brown fox jumps over the lazy dog\"" $
          frequency "The quick brown fox jumps over the lazy dog" @?=
            [('o',4),('e',3),('h',2),('t',2),('u',2),('i',2),('c',2),('r',2),
             ('w',2),('n',2),('f',1),('x',1),('j',1),('m',1),('p',1),('s',1),
             ('v',1),('l',1),('a',1),('z',1),('y',1),('d',1),('g',1)]
      ]
  ]