{-# LANGUAGE ImplicitParams #-}
module Main where

import Test.Tasty
import Test.Tasty.HUnit
import Test.HUnit.Approx
import Aufgaben

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Unit Tests for Stufe2"
  [ testGroup "Aufgabe 14a: generateStarPattern"
      [ testCase "generateStarPattern '*' [3,5,2]" $
          generateStarPattern '*' [3,5,2] @?= "***  \n*****\n**   \n"
      , testCase "generateStarPattern '#' [1,4,2]" $
          generateStarPattern '#' [1,4,2] @?= "#   \n####\n##  \n"
      , testCase "generateStarPattern '*' []" $
          generateStarPattern '*' [] @?= ""
      ]

  , testGroup "Aufgabe 22: nonEmptySublists"
      [ testCase "nonEmptySublists \"pi3\"" $
          nonEmptySublists "pi3" @?= ["p", "pi", "pi3", "i", "i3", "3"]
      , testCase "nonEmptySublists \"abc\"" $
          nonEmptySublists "abc" @?= ["a", "ab", "abc", "b", "bc", "c"]
      , testCase "nonEmptySublists \"\"" $
          nonEmptySublists "" @?= []
      ]

  , testGroup "Aufgabe 23: differenceFromMean"
      [ testCase "differenceFromMean [1,7,3,5,4]" $
          differenceFromMean [1,7,3,5,4] @?= [3.0,-3.0,1.0,-1.0,0.0]
      , testCase "differenceFromMean [10,20,30,40,50]" $
          differenceFromMean [10,20,30,40,50] @?= [20.0,10.0,0.0,-10.0,-20.0]
      , testCase "differenceFromMean [5]" $
          differenceFromMean [5] @?= [0.0]
      ]

  , testGroup "Aufgabe 24: countNodes"
      [ testCase "countNodes on small tree" $
          countNodes (NT24 23 [NT24 99 [], NT24 3 [NT24 0 [], NT24 1 []], NT24 89 []]) @?= 6
      , testCase "countNodes on single-node tree" $
          countNodes (NT24 42 []) @?= 1
      , testCase "countNodes on larger tree" $
          countNodes (NT24 1 [NT24 2 [NT24 3 []], NT24 4 [], NT24 5 [NT24 6 [], NT24 7 []]]) @?= 7
      ]

  , testGroup "Aufgabe 35: extractLeaves"
      [ testCase "extractLeaves from binary tree" $
          extractLeaves (Br35 (Lf35 3) (Br35 (Lf35 7) (Lf35 3))) @?= [3, 7, 3]
      , testCase "extractLeaves from single leaf" $
          extractLeaves (Lf35 5) @?= [5]
      , testCase "extractLeaves from empty tree" $
          extractLeaves (Br35 (Lf35 1) (Br35 (Lf35 2) (Br35 (Lf35 3) (Lf35 4)))) @?= [1, 2, 3, 4]
      ]

  , testGroup "Aufgabe 48: treeSize"
      [ testCase "treeSize on small tree" $
          treeSize (Br48 (Br48 Lf48 1 Lf48) 2 (Br48 Lf48 3 Lf48)) @?= 3
      , testCase "treeSize on single-node tree" $
          treeSize (Br48 Lf48 5 Lf48) @?= 1
      , testCase "treeSize on larger tree" $
          treeSize (Br48 (Br48 Lf48 1 (Br48 Lf48 2 Lf48)) 3 (Br48 (Br48 Lf48 4 Lf48) 5 Lf48)) @?= 5
      ]

  , testGroup "Aufgabe 53: getMatrixRow"
      [ testCase "getMatrixRow from 3x3 matrix" $
          getMatrixRow (Ma [[3,7,5],[9,2,0],[5,8,1]]) 2 @?= [7,2,8]
      , testCase "getMatrixRow from 4x4 matrix" $
          getMatrixRow (Ma [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]) 3 @?= [3,7,11,15]
      , testCase "getMatrixRow from 2x2 matrix" $
          getMatrixRow (Ma [[1,2],[3,4]]) 1 @?= [1,3]
      ]

  , testGroup "Aufgabe 54: evaluateTerm"
      [ testCase "evaluateTerm (Summe (Zahl 3) (Zahl 5))" $
          evaluateTerm (Summe (Zahl' 3) (Zahl' 5)) @?= 8
      , testCase "evaluateTerm (Produkt (Zahl 2) (Summe (Zahl 3) (Zahl 4)))" $
          evaluateTerm (Produkt (Zahl' 2) (Summe (Zahl' 3) (Zahl' 4))) @?= 14
      , testCase "evaluateTerm (Produkt (Summe (Zahl 2) (Zahl 3)) (Zahl 4))" $
          evaluateTerm (Produkt (Summe (Zahl' 2) (Zahl' 3)) (Zahl' 4)) @?= 20
      ]
  , testGroup "Aufgabe 61: isBalancedBrackets"
      [ testCase "isBalancedBrackets \"(foo (baz))!\"" $
          isBalancedBrackets "(foo (baz))!" @?= True
      , testCase "isBalancedBrackets \"foo)(baz)\"" $
          isBalancedBrackets "foo)(baz)" @?= False
      , testCase "isBalancedBrackets \"(foo ()\"" $
          isBalancedBrackets "(foo ()" @?= False
      , testCase "isBalancedBrackets \"())(\"" $
          isBalancedBrackets "())(" @?= False
      ]

  , testGroup "Aufgabe 62: hasDuplicateNodes"
      [ testCase "hasDuplicateNodes (Node62 5 [(Node62 5 [Leaf62 4])])" $
          hasDuplicateNodes (Node62 5 [(Node62 5 [Leaf62 4])]) @?= True
      , testCase "hasDuplicateNodes (Node62 5 [Node62 6 [Leaf62 4], Node62 4 [Leaf62 3]])" $
          hasDuplicateNodes (Node62 5 [Node62 6 [Leaf62 4], Node62 4 [Leaf62 3]]) @?= True
      , testCase "hasDuplicateNodes (Node62 5 [Node62 6 [Leaf62 4], Node62 3 [Leaf62 2]])" $
          hasDuplicateNodes (Node62 5 [Node62 6 [Leaf62 4], Node62 3 [Leaf62 2]]) @?= False
      ]

  , testGroup "Aufgabe 66: staggeredCharPattern"
      [ testCase "staggeredCharPattern 3 2 1 'o'" $
          staggeredCharPattern 3 2 1 'o' @?= " ooo\nooo\n"
      , testCase "staggeredCharPattern 6 3 2 '*'" $
          staggeredCharPattern 6 3 2 '*' @?= "    ******\n  ******\n******\n"
      , testCase "staggeredCharPattern 6 3 (-2) '*'" $
          staggeredCharPattern 6 3 (-2) '*' @?= "******\n  ******\n    ******\n"
      ]

  , testGroup "Aufgabe 71: Dreieck Typklassen-Instanzen"
      [ testCase "Functor instance for Dreieck" $
          fmap (+1) (Dreieck 1 2 3) @?= Dreieck 2 3 4
      , testCase "Foldable instance for Dreieck (sum)" $
          sum (Dreieck 1 2 3) @?= 6
      , testCase "Eq instance for Dreieck" $
          (Dreieck 3 4 5 == Dreieck 3 4 5) @?= True
      ]

   , testGroup "Aufgabe 72: drawSquare"
        [ testCase "drawSquare 1" $
            drawSquare 1 @?= "*\n"
        , testCase "drawSquare 2" $
            drawSquare 2 @?= "**\n**\n"
        , testCase "drawSquare 4" $
            drawSquare 4 @?= "****\n****\n****\n****\n"
        , testCase "drawSquare 0 (edge case)" $
            drawSquare 0 @?= ""
        , testCase "drawSquare -3 (invalid input)" $
            drawSquare (-3) @?= ""
        , testCase "drawSquare 10 (large case)" $
            drawSquare 10 @?= unlines (replicate 10 (replicate 10 '*'))
        ]

   , testGroup "Aufgabe 72: drawRectangle"
        [ testCase "drawRectangle 1x1" $
            drawRectangle 1 1 @?= "*\n"
        , testCase "drawRectangle 1x5" $
            drawRectangle 1 5 @?= "*****\n"
        , testCase "drawRectangle 3x2" $
            drawRectangle 3 2 @?= "**\n**\n**\n"
        , testCase "drawRectangle 0x5 (should return empty string)" $
            drawRectangle 0 5 @?= ""
        , testCase "drawRectangle 5x0 (should return empty string)" $
            drawRectangle 5 0 @?= ""
        , testCase "drawRectangle -2x4 (invalid input, should return empty string)" $
            drawRectangle (-2) 4 @?= ""
        ]

    , testGroup "Aufgabe 72: drawTriangle"
        [ testCase "drawTriangle 1 (edge case)" $
            drawTriangle 1 @?= "*\n"
        , testCase "drawTriangle 2" $
            drawTriangle 2 @?= " *\n***\n"
        , testCase "drawTriangle 3" $
            drawTriangle 3 @?= "  *\n ***\n*****\n"
        , testCase "drawTriangle 4" $
            drawTriangle 4 @?= "   *\n  ***\n *****\n*******\n"
        , testCase "drawTriangle 5" $
            drawTriangle 5 @?= "    *\n   ***\n  *****\n *******\n*********\n"
        , testCase "drawTriangle 0 (should return empty string)" $
            drawTriangle 0 @?= ""
        , testCase "drawTriangle -1 (invalid input, should return empty string)" $
            drawTriangle (-1) @?= ""
        , testCase "drawTriangle 10 (large case)" $
            drawTriangle 10 @?= "         *\n        ***\n       *****\n      *******\n     *********\n    ***********\n   *************\n  ***************\n *****************\n*******************\n"
        ]

   , testGroup "Aufgabe 72: drawDiamond"
        [ testCase "drawDiamond 1" $
            drawDiamond 1 @?= "*\n"
        , testCase "drawDiamond 3" $
            drawDiamond 3 @?= "  *\n ***\n*****\n ***\n  *\n"
        , testCase "drawDiamond 4 (even input, should behave correctly)" $
            drawDiamond 4 @?= "   *\n  ***\n *****\n*******\n *****\n  ***\n   *\n"
        , testCase "drawDiamond 5" $
            drawDiamond 5 @?= "    *\n   ***\n  *****\n *******\n*********\n *******\n  *****\n   ***\n    *\n"
        , testCase "drawDiamond 0 (invalid input)" $
            drawDiamond 0 @?= ""
        , testCase "drawDiamond -2 (invalid input)" $
            drawDiamond (-2) @?= ""
        ]

  , testGroup "Aufgabe 74: fifoQueue"
      [ testCase "fifoQueue [1,2,3] 4 7" $
          fifoQueue [1,2,3] 4 7 @?= [7,1,2,3]
      , testCase "fifoQueue [7,1,2,3] 4 8" $
          fifoQueue [7,1,2,3] 4 8 @?= [8,7,1,2]
      , testCase "fifoQueue [1,2,3,4] 4 5" $
          fifoQueue [1,2,3,4] 4 5 @?= [5,1,2,3]
      ]

  , testGroup "Aufgabe 77: reimplementPrefixInfixSuffix"
      [ testCase "isPrefixOf' \"haskell\" \"haskell rocks\"" $
          isPrefixOf' "haskell" "haskell rocks" @?= True
      , testCase "isInfixOf' \"abc\" \"xxabcxx\"" $
          isInfixOf' "abc" "xxabcxx" @?= True
      , testCase "isSuffixOf' \"rocks\" \"haskell rocks\"" $
          isSuffixOf' "rocks" "haskell rocks" @?= True
      ]

  , testGroup "Aufgabe 82: isUnimodal"
      [ testCase "isUnimodal [1,3,5,7,6,4,2,1]" $
          isUnimodal [1,3,5,7,6,4,2,1] @?= True
      , testCase "isUnimodal [1,2,3,4,1,2,3,4]" $
          isUnimodal [1,2,3,4,1,2,3,4] @?= False
      , testCase "isUnimodal [10,20,30,40,30,20,10]" $
          isUnimodal [10,20,30,40,30,20,10] @?= True
      ]
  , testGroup "Aufgabe 102: drawCross"
      [ testCase "drawCross 2 3 '*'" $
          drawCross 2 3 '*' @?= "  **\n  **\n  **\n********\n********\n  **\n  **\n  **\n"
      , testCase "drawCross 4 2 '8'" $
          drawCross 4 2 '8' @?= "  8888\n  8888\n88888888\n88888888\n88888888\n88888888\n  8888\n  8888\n"
      ]

  , testGroup "Aufgabe 107: maxDifference"
      [ testCase "maxDifference [7,1,5,4]" $
          maxDifference [7,1,5,4] @?= Just 4
      , testCase "maxDifference [9,4,3,2]" $
          maxDifference [9,4,3,2] @?= Nothing
      , testCase "maxDifference [1,5,2,10]" $
          maxDifference [1,5,2,10] @?= Just 9
      ]

  , testGroup "Aufgabe 109: foldDigits"
      [ testCase "foldDigits [1,2,3,45,6,789]" $
          foldDigits [1,2,3,45,6,789] @?= 123456789
      , testCase "foldDigits []" $
          foldDigits [] @?= 0
      , testCase "foldDigits [9,99,999]" $
          foldDigits [9,99,999] @?= 999999
      ]

  , testGroup "Aufgabe 110: Zahlensystem Operations"
      [ testCase "intToZahl 12345" $
          intToZahl 12345 @?= Zahl EINS (Zahl ZWEI (Zahl DREI (Zahl VIER FUENF)))
      , testCase "zahlToInt (Zahl EINS (Zahl ZWEI DREI))" $
          zahlToInt (Zahl EINS (Zahl ZWEI DREI)) @?= 123
      , testCase "intToZahl 123 .+. intToZahl 100" $
          (intToZahl 123 .+. intToZahl 100) @?= intToZahl 223
      , testCase "intToZahl 123 .-. intToZahl 100" $
          (intToZahl 123 .-. intToZahl 100) @?= intToZahl 23
      ]

  , testGroup "Aufgabe 116: commonIndent / filterByIndent"
      [ testCase "commonIndent \"qwe\\nasd\\nyxc\\n  asd\\nadqw\"" $
          commonIndent "qwe\nasd\nyxc\n  asd\nadqw" @?= "qwe\nasd\nyxc"
      , testCase "filterByIndent 0 \"qwe\\nasd\\nyxc\\n  asd\\nadqw\"" $
          filterByIndent 0 "qwe\nasd\nyxc\n  asd\nadqw" @?= ["qwe","asd","yxc","adqw"]
      , testCase "filterByIndent 2 \"qwe\\nasd\\nyxc\\n  asd\\nadqw\"" $
          filterByIndent 2 "qwe\nasd\nyxc\n  asd\nadqw" @?= ["asd"]
      ]

  , testGroup "Aufgabe 118: isPalindrome / findPalindromes"
      [ testCase "isPalindrome \"ooffoo\"" $
          isPalindrome "ooffoo" @?= True
      , testCase "isPalindrome \"123123\"" $
          isPalindrome "123123" @?= False
      , testCase "findPalindromes \"123ooffoo456000\"" $
          findPalindromes "123ooffoo456000" @?= ["ooffoo"]
      , testCase "findPalindromes \"123ooffo456000\"" $
          findPalindromes "123ooffo456000" @?= []
      ]

  , testGroup "Aufgabe 123: findCharPositions"
      [ testCase "findCharPositions text 'I'" $
          findCharPositions "I live in a house.\nI have two brothers.\nMy father teaches." 'I'
          @?= [Position 1 1, Position 2 1]
      , testCase "findCharPositions text 'o'" $
          findCharPositions "Hello world\nGoodbye" 'o'
          @?= [Position 1 5, Position 1 8, Position 2 2]
      ]

  , testGroup "Aufgabe 131: findSubtrees"
      [ testCase "findSubtrees tree 3" $
          findSubtrees (Node131 (2 :: Int) (Node131 3 (Leaf131 5) (Leaf131 3)) (Leaf131 1)) 3
          @?= [Node131 3 (Leaf131 5) (Leaf131 3), Leaf131 3]
      , testCase "replaceNodes tree (3,0)" $
          replaceNodes (Node131 (2 :: Int) (Node131 3 (Leaf131 5) (Leaf131 3)) (Leaf131 1)) (3,0)
          @?= Node131 2 (Node131 0 (Leaf131 5) (Leaf131 0)) (Leaf131 1)
      ]
  , testGroup "Aufgabe 134: isSquareString / isSquareStringInfinite"
      [ testCase "isSquareString \"abc\\ndef\\nhij\"" $
          isSquareString "abc\ndef\nhij" @?= True
      , testCase "isSquareString \"foo\\nfoo\"" $
          isSquareString "foo\nfoo" @?= False
      , testCase "isSquareString \"abc\\ndefgh\\nhij\"" $
          isSquareString "abc\ndefgh\nhij" @?= False
      ]

  , testGroup "Aufgabe 137: calculatePrice"
      [ testCase "calculatePrice [Apfel, Zitrone, Birne, Apfel]" $
          calculatePrice [Apfel, Zitrone, Birne, Apfel] @?= 396
      , testCase "calculatePrice (replicate 6 Apfel ++ replicate 3 Birne)" $
          calculatePrice (replicate 6 Apfel ++ replicate 3 Birne) @?= 1044
      , testCase "calculatePrice [Apfel, Apfel, Apfel, Apfel, Apfel]" $
          calculatePrice [Apfel, Apfel, Apfel, Apfel, Apfel] @?= 299
      ]

  , testGroup "Aufgabe 140: transformTrafficLightTree"
      [ testCase "transformTrafficLightTree (Node Gruen (Leaf 1) (Leaf 2))" $
          transformTrafficLightTree (NodeAB Gruen (LeafAB 1) (LeafAB 2))
          @?= NodeAB Gelb (LeafAB 1) (LeafAB 2)
      , testCase "transformTrafficLightTree (Node Rot (Leaf 1) (Leaf 2))" $
          transformTrafficLightTree (NodeAB Rot (LeafAB 1) (LeafAB 2))
          @?= NodeAB Gruen (LeafAB 2) (LeafAB 1)
      ]

  , testGroup "Aufgabe 143: haveSamePrefixes"
      [ testCase "haveSamePrefixes [[\"a\",\"fg\",\"uvw\"] [\"abc\",\"fgh\",\"uvw\"]]" $
          haveSamePrefixes ["a","fg","uvw"] ["abc","fgh","uvw"] @?= True
      , testCase "haveSamePrefixes [[1,3],[7,10],[8]] [[1,3,5],[7,9],[8,12]]" $
          haveSamePrefixes [[1,3],[7,10],[8]] [[1,3,5],[7,9],[8,12]] @?= False
      , testCase "haveSamePrefixes [] []" $
          (haveSamePrefixes ([] :: [String]) ([] :: [String])) @?= True
      ]

  , testGroup "Aufgabe 144: isWellFormedTree"
      [ testCase "isWellFormedTree t1 == False" $
          isWellFormedTree (Node144 [Leaf144 "1", Node144 [], Leaf144 "2"]) @?= False
      , testCase "isWellFormedTree t2 == True" $
          isWellFormedTree (Node144 [Leaf144 "a", Node144 [Leaf144 "b", Leaf144 "c", Node144 [Leaf144 "d", Leaf144 "e"], Leaf144 "f", Node144 [Leaf144 "x"]]]) @?= True
      ]

  , testGroup "Aufgabe 146: figureArea"
      [ testCase "figureArea (Circle 3.7)" $
          figureArea (Circle 3.7) @?= 43.008403427644275
      , testCase "figureArea (Square 2)" $
          figureArea (Square 2) @?= 4.0
      , testCase "figureArea (Rectangle 3 4)" $
          figureArea (Rectangle 3 4) @?= 12.0
      ]

  , testGroup "Aufgabe 147: drawHistogram"
      [ testCase "drawHistogram '*' [3,5,2]" $
          drawHistogram '*' [3,5,2] @?= " * \n * \n** \n***\n***\n"
      , testCase "drawHistogram 'X' [1,5,1,3]" $
          drawHistogram 'X' [1,5,1,3] @?= "X\nX\nX X\nX X\nXXXX\n"
      ]

  , testGroup "Aufgabe 149: unzipIntoN"
      [ testCase "unzipIntoN 3 [1..5]" $
          unzipIntoN 3 [1..5] @?= [[1,4],[2,5],[3]]
      , testCase "unzipIntoN 3 [1..10]" $
          unzipIntoN 3 [1..10] @?= [[1,4,7,10],[2,5,8],[3,6,9]]
      , testCase "unzipIntoN 5 \"abcdefghijklmno\"" $
          unzipIntoN 5 "abcdefghijklmno" @?= ["afk","bgl","chm","din","ejo"]
      ]
  , testGroup "Aufgabe 150: isTriangleShapeInfinite / unzipIntoNInfinite"
      [ testCase "isTriangleShapeInfinite [[1],[2,3],[1..]] == False" $
          isTriangleShapeInfinite [[1],[2,3],[1..]] @?= False
      , testCase "unzipIntoNInfinite 3 [1..]" $
          take 2 <$> unzipIntoNInfinite 3 [1..] @?= [[1,4],[2,5],[3,6]]
      ]

  , testGroup "Aufgabe 151: extractDiagonal"
      [ testCase "extractDiagonal [[1],[10,20,30],[100,200,300]]" $
          extractDiagonal [[1],[10,20,30],[100,200,300]] @?= [1,20,300]
      , testCase "extractDiagonal [\"abc\",\"def\",\"ghi\",\"jklmn\",\"o\",\"pqrstu\"]" $
          extractDiagonal ["abc","def","ghi","jklmn","o","pqrstu"] @?= "aeim"
      ]

  , testGroup "Aufgabe 153: variadicTreeHeight"
      [ testCase "variadicTreeHeight (NT153 4 []) == 1" $
          variadicTreeHeight (NT153 4 []) @?= 1
      , testCase "variadicTreeHeight (NT153 3 [NT153 4 [], NT153 4 []]) == 2" $
          variadicTreeHeight (NT153 3 [NT153 4 [], NT153 4 []]) @?= 2
      , testCase "variadicTreeHeight (NT153 2 [NT153 4 [], NT153 3 [NT153 4 []]]) == 3" $
          variadicTreeHeight (NT153 2 [NT153 4 [], NT153 3 [NT153 4 []]]) @?= 3
      ]

  , testGroup "Aufgabe 153: isVariadicTreeBalanced"
      [ testCase "isVariadicTreeBalanced (NT153 4 []) == True" $
          isVariadicTreeBalanced (NT153 4 []) @?= True
      , testCase "isVariadicTreeBalanced (NT153 3 [NT153 4 [], NT153 4 []]) == True" $
          isVariadicTreeBalanced (NT153 3 [NT153 4 [], NT153 4 []]) @?= True
      , testCase "isVariadicTreeBalanced (NT153 2 [NT153 4 [], NT153 3 [NT153 4 []]]) == False" $
          isVariadicTreeBalanced (NT153 2 [NT153 4 [], NT153 3 [NT153 4 []]]) @?= False
      ]
  ]