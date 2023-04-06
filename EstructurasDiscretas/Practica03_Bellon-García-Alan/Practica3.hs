-- ------------------------ RECURSIÓN -------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 1: Transcribe la definición de factorial y modifíca el 
--              caso recursivo con una guarda para evitar que reciba 
--              argumentos negativos. 
-- 
--              También añade un caso base para el 0.
-- ------------------------------------------------------------------

factorial :: Int -> Int
factorial 0 = 0 -- c. base 0
factorial 1 = 1 -- c. base 1
factorial n
  | n < 0 = error "No hay factorial para números negativos" 
  | otherwise = n * factorial (n-1) -- c. recursivo


-- ------------------------------------------------------------------
-- Ejercicio 2: Define una función que devuelva el n-esimo elemento 
--              de la sucesión fibonacci. Procura evitar que se cicle 
--              con números negativos añadiendo algún mecanismo de 
--              seguridad.
-- ------------------------------------------------------------------


fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n
   | n < 0 = error "fibonacci no está definido para valores negativos"
   | otherwise = fibonacci (n-1) + fibonacci (n-2)

-- ------------------------------------------------------------------
-- Ejercicio 3: Define recursivamente la operación de "potencia" 
--              utilizando multiplicación, análogamente a como 
--              utilizamos la suma en en el ejemplo anterior para 
--              definir la multiplicación.
-- ------------------------------------------------------------------



potencia :: Int -> Int -> Int
potencia m 0 = 1                        -- c. base
potencia m n = m  * (potencia m (n -1)) -- c. recursivo

-- ------------------------------------------------------------------
-- Ejercicio 4: Escribe una función que calcule de manera recursiva 
--              el MCD de dos enteros positivos.
-- ------------------------------------------------------------------


euclides :: Int -> Int -> Int
euclides a b
  | b == 0 = a
  | otherwise = euclides b (a `mod` b)

-- ------------------------------------------------------------------
-- --------------------- Recursión con listas -----------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 5: Define una función que decida si todas las variables 
--              lógicas de una lista son verdaderas.
-- ------------------------------------------------------------------

miAnd :: [Bool] -> Bool
miAnd [] = True
miAnd (x:xs) = x && miAnd xs
-- ------------------------------------------------------------------
-- Ejercicio 6: Ahora, suponiendo que tenemos una lista de listas 
--              cuyos elementos son únicamente enteros, definamos una 
--              función que concatene las listas interiores.
-- -------------------------------------  -----------------------------

concatenar :: [[Int]] -> [Int]
concatenar [] = []
concatenar (x:xs) = x ++ concatenar xs
-- ------------------------------------------------------------------
-- Ejercicio 7: Define una función que devuelva el último elemento 
--              de una lista.
-- ------------------------------------------------------------------


ultimo :: [a] -> a
ultimo [x] = x
ultimo (_:xs) = ultimo xs


-- ------------------------------------------------------------------
-- Ejercicio 8: Define una función que tome dos listas ordenadas 
--              ascendentemente y las combine en otra lista que, a 
--              su vez, esté ordenada ascendentemente.
-- ------------------------------------------------------------------
merge :: [Int] -> [Int] -> [Int]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
  | x <= y    = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys


-- ------------------------------------------------------------------
-- -------------------- Recursión con cadenas -----------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 9: Define una función que quite los espacios de una 
--              cadena dada
-- ------------------------------------------------------------------

sinEspacios :: String -> String
sinEspacios [] = []
sinEspacios (x:xs)
  | x == ' '  = sinEspacios xs
  | otherwise = x : sinEspacios xs
  

-- ------------------------------------------------------------------
-- Ejercicio 10: Define una función que retire todas las ocurrencias 
--              de un caracter dado en una cadena.
-- ------------------------------------------------------------------

sinChar :: String -> Char -> String
sinChar [] _ = []
sinChar (x:xs) c
  | x == c    = sinChar xs c
  | otherwise = x : sinChar xs c
