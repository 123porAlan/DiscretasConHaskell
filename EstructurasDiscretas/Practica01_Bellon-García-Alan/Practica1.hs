--Alan Bellon García
-- ------------------ INTRODUCCIÓN A HASKELL ------------------------

-- ------------------------------------------------------------------
-- ----------------------- PRIMER PARTE -----------------------------
-- ------------------------------------------------------------------

{-Soy un comentario-}
--Yo también


-- ------------------------------------------------------------------
-- ------------------ Tipos Básicos: Enteros ------------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 1: Declara tres variables de tipo entero, asegúrate de
--              incluir números positivos y negativos. Puedes usar
--              los nombres que gustes.
-- ------------------------------------------------------------------
x :: Int        -- Ejemplo de declaración de variable
x = 3

y :: Int
y = 15

w :: Int
w = 7

-- ------------------------------------------------------------------
-- Ejercicio 2: Ejecuta las siguientes líneas de código en la consola
--              para saber cuál es el máximo y el mínimo valor que 
--              puede tener un dato del tipo Int en tu computadora. 
--              
--              Captura la pantalla con la ejecución.
-- ------------------------------------------------------------------
minimo, maximo :: Int
minimo = minBound
maximo = maxBound


-- ------------------------------------------------------------------
-- Ejercicio 3: Declara una variable de tipo Integer y defínela como
--              un valor de 30 dígitos.
--
--              Define la variable 'descomunal' como el resultado de
--              elevar dos al cuadrado cuatro veces.
--          
--              Completado el paso anterior ejecuta numDigitos en 
--              la consola. Esta es la longitud del número descomunal.
-- ------------------------------------------------------------------
grandote :: Int
grandote = 123456789012345678901234567890

descomunal :: Integer
descomunal = 2^2^2^2^2

numDigitos :: Int
numDigitos = length (show descomunal)



-- ------------------------------------------------------------------
-- ----- Tipos Básicos: Punto flotante y doblemente preciso ---------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 4: Declara tres variables de tipo Double y tres de tipo
--              Float utilizando punto decimal y notación científica.
-- ------------------------------------------------------------------
variableDouble1 :: Double
variableDouble1 = 9.023e-5

variableDouble2 :: Double
variableDouble2 = 8e5

variableDouble3 :: Double
variableDouble3 = 3.141592653

variableFloat1 :: Float
variableFloat1 = 8.1234

variableFloat2 :: Float
variableFloat2 = 9.56e3

variableFloat3 :: Float
variableFloat3 = 3.12




-- ------------------------------------------------------------------
-- ------------------ Tipos Básicos: Booleanos ----------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 5: Declara un par de variables de tipo Bool, definiendo 
--              una como False y otra como True. 
-- ------------------------------------------------------------------
variableBool :: Bool
variableBool = True

variableBool2 :: Bool
variableBool2 = False


-- ------------------------------------------------------------------
-- -------------- Tipos Básicos: Carácteres Unicode -----------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 6: Declara tres variables del tipo Char. Los valores de
--              estas variables se escriben entre apóstrofes: ' '. 
-- ------------------------------------------------------------------
-- 'Ø' 'ダ'
variableChar :: Char
variableChar = 'o'

variableChar2 :: Char
variableChar2 = 'a'

variableChar3 :: Char
variableChar3 = '5'


-- ------------------------------------------------------------------
-- ----- Cadenas (listas de carácteres con azucar sintáctica) -------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 7: Define un par de variables cuyos valores sean cadenas
--              con enunciados ingeniosos. 
-- ------------------------------------------------------------------
s :: String
s = "La mejor venganza es tu exito"

frace :: String
frace = "Estre tu arte y mi arte prefiero miarte"

-- ------------------------------------------------------------------
-- -------------------------- Operaciones ---------------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- --------------------------- Aritmética ---------------------------
-- ------------------------------------------------------------------
--alt 96 para el acento grave

-- ------------------------------------------------------------------
-- Ejercicio 8: Define seis variables cuyo valor sea el resultado de
--              utilizar cada operador infijo en un par de valores. 
-- ------------------------------------------------------------------
e1 = 3 + 2
e2 = 4 * 6
e3 = 5 / 5
e4 = 10 - 5
e5 = 7 `mod` 3
e6 = 10 -(-2)


-- ------------------------------------------------------------------
-- Ejercicio 9: Declara dos variables cuyo valor sea el cociente de 
--              números enteros. 
-- ------------------------------------------------------------------

cociente = 8 `div` 3
cociente2 = 9 `div` 3
-- ------------------------------------------------------------------
-- ---------------------- Lógica Booleana ---------------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 10: Realiza tres operaciones con los operadores lógicos
--              y define con ellas tres variables. 
-- ------------------------------------------------------------------
a = True
b = False
c = False
a1 = a || b
a2 = a && c
a3 = not c

-- ------------------------------------------------------------------
-- Ejercicio 11: Define tres variables de tipo Bool utilizando los
--               símbolos de comparación. 
-- ------------------------------------------------------------------
vBool1 :: Bool
vBool1 = True == True

vBool2 :: Bool
vBool2 = True /= False

vBool5 :: Bool
vBool5 = False >= False


-- ------------------------------------------------------------------
-- -------------------------- Funciones -----------------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- ----------------- Defininendo funciones básicas ------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 12: Define una función que calcule la suma de los
--               primeros n números enteros. 
--
--               Ejecútala con tres valores distintos en terminal y
--               obten una captura de pantalla con tus resultados.
--
--               Describe de forma detallada la ejecución de la 
--               función cuando su valor de entrada es el 4, haciendo
--               explícita la participación de las cláusulas.  
-- ------------------------------------------------------------------

sumN :: Int -> Int
sumN  0 = 0
sumN n = n + sumN (n-1)

-- ------------------------------------------------------------------
-- Ejercicio 13: Copia la definición de la función foo que se
--               encuentra en el PDF de la práctica. 
--
--               Ejecútala con tres valores distintos en terminal y
--               obten una captura de pantalla con tus resultados.
--
--               Describe de forma detallada la ejecución de la 
--               función cuando su valor de entrada es el 5, haciendo
--               explícita la participación de las guardas.  
-- ------------------------------------------------------------------

foo :: Integer -> Integer
foo n
  | n `mod` 2 == 0 = n `div` 2
  | otherwise      = 3*n



-- ------------------------------------------------------------------
-- Ejercicio 14: Copia la definición de la función foo2 que se
--               encuentra en el PDF de la práctica. 
--
--               Ejecútala con tres valores distintos en terminal y
--               obten una captura de pantalla con tus resultados.
--
--               Responde las preguntas: 
--                  ¿Qué resulta al evaluar foo2 (-3) ?
--                  ¿Qué resulta al evaluar foo2 1 ? 
--                  ¿Qué resulta al evaluar foo2 36 ?
--                  ¿Qué resulta al evaluar foo2 38 ? 
-- ------------------------------------------------------------------

foo2 :: Integer -> Integer
foo2 0 = 16
foo2 1
  | "Haskell" > "java" = 3
  | otherwise          = 4
foo2 n
  | n < 0           = 0
  | n `mod` 17 == 2 = -43
  | otherwise       = n + 3


-- ------------------------------------------------------------------
-- Ejercicio 15: Factoriza la función isEven que aparece en el PDF de
--               la práctica. Es decir, escribe un código más sencillo
--               que funcione igual. 
-- ------------------------------------------------------------------

isEven  n = n `mod` 2 == 0 




