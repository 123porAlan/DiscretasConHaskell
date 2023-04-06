------------------------------------------------------------------------------
----------------------------- Práctica 6 -------------------------------------
------------------------------------------------------------------------------
--------------------------- Clases de tipos ----------------------------------
------------------------------------------------------------------------------

module Practica6 where

x = 10
y = 11
z = [x, y]
f = head


-- --------------------------------------------------------------------
-- Ejercicio 1: Utiliza :t en ghci para inferir los tipos de z y f, 
--              variables al inicio de este documento (este ejercicio 
--              no requiere código).
-- --------------------------------------------------------------------
        
-- --------------------------------------------------------------------
-- Ejercicio 2: Define la función 'snocP' que añade un elemento al
--              final de una lista dada. 
-- --------------------------------------------------------------------

{-tu código va aquí-}
snocP :: [a] -> a -> [a]
snocP xs x = xs ++ [x]
--------------------------------------------------------------------
-- Ejercicio 3: Utiliza :t en ghci para inferir el tipo de los
--              operadores ==, >=, * (este ejercicio no requiere código).
-- --------------------------------------------------------------------


-- --------------------------------------------------------------------
-- Ejercicio 4: Investiga y escribe con tus propias palabras en un 
--              archivo ReadMe.txt, las propiedades de las siguientes 
--              clases de tipo:
--           Show        Enum        Bound        Read
-- 
-- (Este ejercicio no requiere código)
-- --------------------------------------------------------------------


-- --------------------------------------------------------------------
-- Ejercicio 5: Define la función 'n_abs' que regresa el valor
--              absoluto de un número. (Utiliza guardas)
-- --------------------------------------------------------------------

{-tu código va aquí-}
n_abs :: (Ord a, Num a) => a -> a
n_abs x
  | x >= 0    = x
  | otherwise = -x

-- --------------------------------------------------------------------
-- Ejercicio 6: Define la función listasIguales que nos indica si un
--              par de listas son, en efecto, idénticas.
-- --------------------------------------------------------------------

{-tu código va aquí-}

-- --------------------------------------------------------------------
-- Ejercicio 7: Define la función 'n_elem' que indica si un elemento
--              dado pertenece a una lista. (Procura no utilizar la 
--              función elem que ya está definida en el Prelude de 
--              GHCi).
-- --------------------------------------------------------------------
n_elem :: Eq a => a -> [a] -> Bool
n_elem x xs = elem x xs

{-tu código va aquí-}

-- --------------------------------------------------------------------
-- Ejercicio 8: Define la función 'inserta' que coloca un elemento 
--              en su lugar correspondiente dentro de una lista 
--              previamente ordenada de forma ascendente. 
--
--              Ejemplo de una lista en orden ascendente:
--                      [1,2,7,8,55,55,233]
-- --------------------------------------------------------------------\

{-tu código va aquí-}
inserta :: Ord a => a -> [a] -> [a]
inserta x [] = [x]
inserta x (y:ys)
  | x <= y    = x : y : ys
  | otherwise = y : inserta x ys

-- --------------------------------------------------------------------
-- Ejercicio 9: Copia la definición de árbol binario definidos para 
--              cualquier tipo de dato que se encuentra en el archivo 
--              Practica6.pdf 
--
--              Define una función 'numHojas' que cuente el número de 
--              hojas de un árbol dado. 
-- --------------------------------------------------------------------\
data Arbol a = Vacio
             | Nodo (Arbol a) a (Arbol a)
        deriving (Show, Eq)


ej1 :: Arbol Double
ej1 = Nodo ( Nodo Vacio 3.2 Vacio )
     5.9
     ( Nodo ( Nodo Vacio 6.4 Vacio )
     7.6
     ( Nodo Vacio 9.1 Vacio ))

ej2 :: Arbol Char
ej2 = Nodo ( Nodo ( Nodo Vacio 'H' Vacio ) 'S' Vacio )
      'P'
      ( Nodo Vacio 'D' ( Nodo Vacio 'A' Vacio ))

{-tu código va aquí-}
--nome salio este :(
esHoja :: Arbol a -> Bool
esHoja Vacio           = False
esHoja (Nodo Vacio _ Vacio) = True
esHoja _               = False




numHojas :: Arbol a -> Int
numHojas Vacio = 0
numHojas (Nodo izquierda x derecha)
  | esHoja (Nodo izquierda x derecha) = 1
  | otherwise              = numHojas izquierda + numHojas derecha

--Al final si me salio jajaja







