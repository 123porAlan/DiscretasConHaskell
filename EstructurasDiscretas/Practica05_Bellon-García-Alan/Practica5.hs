-- --------------- Tipos de datos recursivos ------------------------


-- ------------------------------------------------------------------
-- Ejercicio 1: Transcribe la definición del tipo de dato Nat que se
--              encuentra en el pdf de la práctica y declara 
--              variables para el 8, el 4 y el 2. 
--
--              Ej:
--                 tres :: Nat
--                 tres = Suc (Suc (Suc Cero))  
-- ------------------------------------------------------------------
{-Tu código va aquí-}
data Nat = Cero
         | Suc Nat
     deriving (Eq, Show)

dos :: Nat
dos = Suc (Suc Cero)

cuatro :: Nat
cuatro = Suc (Suc (Suc (Suc Cero)))

ocho :: Nat
ocho = Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc Cero)))))))

-- ------------------------------------------------------------------
-- Ejercicio 2: Define una función cuya firma de tipo sea 
--                
--                aNatural :: Int -> Nat
--
--              que convierta un entero positivo (Int) a un natural
--              (Nat), como los acabamos de definir. En caso de que
--              el dato de entrada sea un número negativo la función
--              debe devolver Cero.
-- ------------------------------------------------------------------

{-Tu código va aquí-}
aNatural :: Int -> Nat
aNatural n
  | n < 0     = Cero  -- Si el número es negativo, devolvemos Cero
  | n == 0    = Cero  -- Si el número es cero, devolvemos Cero
  | otherwise = Suc (aNatural (n - 1)) -- Si el número es positivo, aplicamos la recursión usando el sucesor de aNatural (n-1)



-- ------------------------------------------------------------------
-- Ejercicio 3: Es hora de definir la función inversa a la anterior:
--                
--                aEntero :: Nat -> Int
--
--              que convierta un natural (Nat) a un entero (Int). 
-- ------------------------------------------------------------------

{-Tu código va aquí-}
aEntero :: Nat -> Int
aEntero Cero     = 0 --Caso base, si el argumento es cero, devolvemos 0
aEntero (Suc n)  = 1 + aEntero n --Si es argumento es Suc n, sumamos 1 al resultado de aplicar aEntero a n

-- ------------------------------------------------------------------
-- Ejercicio 4: Definamos la operación suma para nuestro tipo Nat: 
--                
--                sumaNat :: Nat -> Nat -> Nat
--
--              ADVERTENCIA: No vale usar las funciones anteriores
--                           en este ejercico.  
-- ------------------------------------------------------------------

{-Tu código va aquí-}

sumaNat :: Nat -> Nat -> Nat
sumaNat Cero     n = n       -- si el primer argumento es Cero, el resultado es el segundo argumento
sumaNat (Suc m)  n = Suc (sumaNat m n) -- si el primer argumento es Suc m, sumamos 1 al resultado de la suma de m y n

-- ------------------------------------------------------------------
-- Ejercicio 5: Definamos la operación multiplicación para naturales:
--                
--              ADVERTENCIA: No vale usar las funciones anteriores
--                           en este ejercico.  
-- ------------------------------------------------------------------

{-Tu código va aquí-}
multNat :: Nat -> Nat -> Nat
multNat Cero     _ = Cero     -- si el primer argumento es Cero, el resultado es Cero
multNat (Suc m)  n = sumaNat n (multNat m n) -- si el primer argumento es Suc m, sumamos n al resultado de la multiplicación de m y n


-- ------------------------------------------------------------------
-- Ejercicio 6: Transcribe la definición del tipo Arbol que se 
--              encuentra en el pdf y define tres variables de este
--              tipo con al menos cuatro nodos. 
--
--              Dibuja los árboles que estes representando en código
--              y adjunta las imagenes a tu entrega. 
-- ------------------------------------------------------------------

{-Tu código va aquí-}
data Arbol = Vacio
           | Nodo Arbol Int Arbol
     deriving (Show, Eq)

eje1 :: Arbol
eje1 = Nodo (Nodo (Nodo (Nodo Vacio 7  Vacio) 3 Vacio) 4 Vacio)
       11
       ( Nodo Vacio 9 ( Nodo Vacio 5 ( Nodo Vacio 6 ( Nodo Vacio 10 Vacio))))


eje2 :: Arbol
eje2 = Nodo (Nodo (Nodo (Nodo Vacio 1  Vacio) 2 Vacio) 3 Vacio)
       22
       (Nodo (Nodo (Nodo (Nodo (Nodo Vacio 3  Vacio) 4 Vacio) 11 Vacio) 23 Vacio)
       12
       ( Nodo Vacio 33 Vacio))

eje3 :: Arbol
eje3 = Nodo (Nodo (Nodo (Nodo Vacio 3  Vacio) 1 Vacio) 2 Vacio)
       23
       ( Nodo Vacio 13 (Nodo Vacio 4 (Nodo Vacio 6 Vacio)))




-- ------------------------------------------------------------------
-- Ejercicio 7: Vamos a definir la función
--
--                  ocurre :: Int -> Arbol -> Bool
--
--              que devuelve verdadero si el entero dado está en el
--              árbol.
-- ------------------------------------------------------------------

{-Tu código va aquí-}
ocurre :: Arbol -> Int -> Bool
ocurre Vacio _ = False                    -- caso base: el elemento no está presente en un árbol vacío
ocurre (Nodo izq raiz der) x
    | x == raiz = True                    -- si el elemento buscado es igual a la raíz, está presente
    | x < raiz  = ocurre izq x            -- si es menor que la raíz, buscamos en el subárbol izquierdo
    | otherwise = ocurre der x            -- si es mayor que la raíz, buscamos en el subárbol derecho
