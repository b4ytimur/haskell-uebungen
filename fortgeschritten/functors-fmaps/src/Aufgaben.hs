module Aufgaben where

--------------------------------------------------------------------------------
-- Aufgabe 40: Functor-Instanzen für Element und Curry
--  Implementiere Instanzen der Typklasse `Functor` für verschiedene Varianten
--  des Datentyps `Element` und `Curry`. Die `Functor`-Instanz sollte sich 
--  gemäß den Functor-Gesetzen verhalten.
--
--  1) Gegeben ist der algebraische Datentyp:
--  
--     newtype Element a = Element a
--
--     Definiere eine Instanz für die Typklasse `Functor`.
--
--  2) Gegeben ist der algebraische Datentyp:
--
--     newtype Element a = Element (Int, a)
--
--     Definiere eine Instanz für die Typklasse `Functor`.
--
--  3) Gegeben ist der algebraische Datentyp:
--
--     data Curry a b = Curried a b
--
--     Definiere eine Instanz für die Typklasse `Functor`.
--
--  4) Gegeben sind die algebraischen Datentypen:
--
--     data Curry a b = Curried a b
--
--     instance Functor (Curry a) where
--       fmap f (Curried a b) = Curried a (f b)
--
--     newtype Element a = Element (Curry a a)
--
--     Definiere eine Instanz für die Typklasse `Functor`.
--
--  5) Gegeben sind die algebraischen Datentypen:
--
--     data Curry a b = Curried a b
--
--     instance Functor (Curry a) where
--       fmap f (Curried a b) = Curried a (f b)
--
--     newtype Element a = Element (Curry a a)
--
--     Definiere eine Instanz für die Typklasse `Functor`.
--
--  6) Gegeben sind die algebraischen Datentypen:
--
--     data Curry a b = Curried a b
--
--     instance Functor (Curry a) where
--       fmap f (Curried a b) = Curried a (f b)
--
--     newtype Element a b = Element (Curry a b)
--
--     Definiere eine Instanz für die Typklasse `Functor`.
--------------------------------------------------------------------------------
newtype Element1 a = Element1 a deriving (Show, Eq)
instance Functor Element1 where
  fmap = undefined

newtype Element2 a = Element2 (Int, a) deriving (Show, Eq)
instance Functor Element2 where
  fmap = undefined

data Curry a b = Curried a b deriving (Show, Eq)
instance Functor (Curry a) where
  fmap = undefined

newtype Element3 a = Element3 (Curry a a) deriving (Show, Eq)
instance Functor Element3 where
  fmap = undefined

newtype Element4 a = Element4 (Curry a a) deriving (Show, Eq)
instance Functor Element4 where
  fmap = undefined

newtype Element5 a b = Element5 (Curry a b) deriving (Show, Eq)
instance Functor (Element5 a) where
  fmap = undefined

--------------------------------------------------------------------------------
-- Aufgabe 60: Functor-Instanzen für benutzerdefinierte Baumstrukturen und Listen
--  Implementiere Instanzen der Typklasse `Functor` für folgende algebraische
--  Datentypen:
--
--  1) `List a` ist eine rekursive Liste mit Elementen vom Typ `a` oder `Leer`.
--     Definiere eine `Functor`-Instanz für `List`.
--
--  2) `Binaerbaum a` stellt einen binären Baum dar, der entweder ein Blatt (`Blatt`),
--     einen Knoten mit zwei Unterbäumen (`Knoten`), oder leer (`LeerBaum`) sein kann.
--     Definiere eine `Functor`-Instanz für `Binaerbaum`.
--
--  3) `VariadischerBaum a` ist ein Baum mit einer beliebigen Anzahl von Kindknoten.
--     Definiere eine `Functor`-Instanz für `VariadischerBaum`.
--
--  4) `T c n x` ist eine komplexere rekursive Struktur mit mehreren Typparametern.
--     Definiere eine `Functor`-Instanz für `(T c n)`.
--------------------------------------------------------------------------------
data List a = Element a (List a) | Leer deriving (Show, Eq)
instance Functor List where
  fmap = undefined

data Binaerbaum a = Blatt a | Knoten (Binaerbaum a) a (Binaerbaum a) | LeerBaum deriving (Show, Eq)
instance Functor Binaerbaum where
  fmap = undefined

data VariadischerBaum a = Baum a [VariadischerBaum a] deriving (Show, Eq)
instance Functor VariadischerBaum where
  fmap = undefined

data T c n x = K | T (T c n x) x c x deriving (Show, Eq)
instance Functor (T c n) where
  fmap = undefined

--------------------------------------------------------------------------------
-- Aufgabe 71: Typklassen-Instanzen für Dreieck und Grid
--  Implementiere die folgenden Typklassen-Instanzen für die gegebenen Datentypen:
--
--  1) `Dreieck a` ist eine Struktur, die entweder drei Werte des gleichen Typs 
--     enthält oder fehlschlagen kann (`Failing`). Definiere Instanzen für:
--     - `Eq`
--     - `Ord`
--     - `Num`
--     - `Functor`
--     - `Foldable`
--
--  2) `Grid a` ist eine einfache Wrapper-Struktur um eine Liste von Werten. 
--     Definiere Instanzen für:
--     - `Eq`
--     - `Ord`
--     - `Num`
--     - `Functor`
--     - `Foldable`
--------------------------------------------------------------------------------
data Dreieck a = Dreieck a a a | Failing deriving (Show)
instance Eq a => Eq (Dreieck a) where
  (==) = undefined

instance Ord a => Ord (Dreieck a) where
  compare = undefined

instance Num a => Num (Dreieck a) where
  (+) = undefined
  (-) = undefined
  (*) = undefined
  abs = undefined
  signum = undefined
  fromInteger = undefined

instance Functor Dreieck where
  fmap = undefined

instance Foldable Dreieck where
  foldr = undefined

newtype Grid a = M [a] deriving (Show)
instance Eq a => Eq (Grid a) where
  (==) = undefined

instance Ord a => Ord (Grid a) where
  compare = undefined

instance Num a => Num (Grid a) where
  (+) = undefined
  (-) = undefined
  (*) = undefined
  abs = undefined
  signum = undefined
  fromInteger = undefined

instance Functor Grid where
  fmap = undefined

instance Foldable Grid where
  foldr = undefined