-- ----------------------------------------------------------------
-- ---------------- Ejercicios sugeridos I ------------------------
-- ----------------------------------------------------------------

module Ejercicios1 where

-- ----------------------------------------------------------------
-- Antes de comenzar, no olvides revisar las pautas para programar 
-- en Haskell que se encuentran en la sección de laboratorio del 
-- classroom.
-- ----------------------------------------------------------------

-- ----------------------------------------------------------------
--                            FECHAS
-- ----------------------------------------------------------------

-- ----------------------------------------------------------------
-- Ejercicio 1: Define la función 'divisible' que toma dos enteros, 
-- digamos x, y e indica si x es divisble por y.  
--
-- (Recuerda que hay operadores que funcionan con Doubles, pero no 
-- con Int's. Por ejemplo, / podía dividir Doubles teníamos que usar
-- `div` para dividir Int's).               
-- ----------------------------------------------------------------

divisible :: Int -> Int -> Bool
divisible x y = rem x y == 0

-- ----------------------------------------------------------------
-- Ejercicio 2: Define la función que dado un año, representado por
-- un entero, regresa True si es bisiesto y False en caso 
-- contrario. 
-- ----------------------------------------------------------------

bisiesto :: Int -> Bool
bisiesto a = (a `mod` 4 == 0) && (a `mod` 100 /= 0 || a `mod` 400 == 0)

-- ----------------------------------------------------------------
-- Ejercicio 3: Completa el tipo de dato Mes con el resto de meses
-- del año y hazlo pertenecer a las clases de tipo Eq y Show. 
-- ----------------------------------------------------------------

data Mes = Enero
         | Febrero
         | Marzo
         | Abril
         | Mayo
         | Junio
         | Julio
         | Agosto
         | Septiembre
         | Octubre
         | Noviembre
         | Diciembre
         deriving (Eq, Show)


-- ----------------------------------------------------------------
-- Ejercicio 4: Define una función que dados un Mes y un año nos 
-- regresa el número de días en dicho mes. Toma en consideración
-- los años bisiestos.
-- ----------------------------------------------------------------
díasDelMes :: Mes -> Int -> Int
díasDelMes Enero _ = 31
díasDelMes Febrero a
  | bisiesto a = 29
  | otherwise = 28
díasDelMes Marzo _ = 31
díasDelMes Abril _ = 30
díasDelMes Mayo _ = 31
díasDelMes Junio _ = 30
díasDelMes Julio _ = 31
díasDelMes Agosto _ = 31
díasDelMes Septiembre _ = 30
díasDelMes Octubre _ = 31
díasDelMes Noviembre _ = 30
díasDelMes Diciembre _ = 31
-- ----------------------------------------------------------------
-- Ejercicio 5: Con el tipo de dato Fecha, definido a continuación, 
-- escribe una función que verifique si una fecha es válida. 
-- ----------------------------------------------------------------

data Fecha = F {dia:: Int, mes:: Mes, anio::Int}


fechaValida :: Fecha -> Bool
fechaValida (F d m a) =
  d > 0 && d <= díasDelMes m a && anioValido a && mesValido m
  where
    anioValido a = a > 0
    mesValido m = case m of
      Enero -> True
      Febrero -> True
      Marzo -> True
      Abril -> True
      Mayo -> True
      Junio -> True
      Julio -> True
      Agosto -> True
      Septiembre -> True
      Octubre -> True
      Noviembre -> True
      Diciembre -> True
      _ -> False


-- ----------------------------------------------------------------
--                    Tarjetas de crédito
-- ----------------------------------------------------------------

-- ----------------------------------------------------------------
-- Ejercicio 1: Escribe la definición de la siguiente función que 
-- toma un entero y regresa su último dígito:
-- ----------------------------------------------------------------

ultimoDigito :: Integer -> Integer
ultimoDigito n = n `mod` 10

-- ----------------------------------------------------------------
-- Ejercicio 2: Define la siguiente función que toma un entero y
-- devuelve el número sin el último dígito. 
-- ----------------------------------------------------------------

sinUltimo :: Integer -> Integer
sinUltimo n = n `div` 10


-- ----------------------------------------------------------------
-- Ejercicio 3: Define la función aDigitos que convierte enteros 
-- positivos en una lista de dígitos. Si recibe un 0 o la valores
-- negativos, debe regresar la lista vacía. 
-- ----------------------------------------------------------------
aDigitos :: Integer -> [Integer]
aDigitos n
  | n <= 0 = []
  | otherwise = map (\x -> read [x] :: Integer) (show n)
-- ----------------------------------------------------------------
-- Ejercicio 4: Define la siguiente función que recibe una lista de 
-- enteros y duplica uno de cada dos números en una lista empezando 
-- por la derecha.
--
-- Necesitaremos funciones auxiliares ¿cuáles serán?
-- ----------------------------------------------------------------
duplicaSegundo :: [Integer] -> [Integer]
duplicaSegundo [] = []
duplicaSegundo [x] = [x]
duplicaSegundo (x:y:xs) = x : y*2 : duplicaSegundo xs


duplicaCadaDos :: [Integer] -> [Integer]
duplicaCadaDos xs = reverse (duplicaSegundo (reverse xs))


-- ----------------------------------------------------------------
-- Ejercicio 5: Define una función que sume todos los dígitos de los
-- números de una lista. 
-- ----------------------------------------------------------------
sumaDigitos :: [Integer] -> Integer
sumaDigitos xs = sum [d | x <- xs, d <- aDigitos x]

-- ----------------------------------------------------------------
-- Ejercicio 6: Define la función que valida si un enter es, en efecto,
-- un número válido de tarjeta de crédito. Usaremos las funciones
-- definidas en los ejercicios anteriores.
-- ----------------------------------------------------------------
valida :: Integer -> Bool
valida n = sumaDigitos (duplicaCadaDos (aDigitos n)) `mod` 10 == 0

