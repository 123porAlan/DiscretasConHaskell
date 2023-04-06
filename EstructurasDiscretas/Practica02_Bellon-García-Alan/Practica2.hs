-- ------------------ INTRODUCCIÓN A HASKELL ------------------------

-- ------------------------------------------------------------------
-- ---------------------- SEGUNDA PARTE -----------------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- ----------------- Tipos Compuestos: Pares ------------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 1: Escribe tres ejemplos de pares compuestos por tipos
--              básicos distintos. 
-- ------------------------------------------------------------------


{-Podemos utilizarlos dentro de una funcion como patrones con los
cuales se encuentren correspondencias: -}

parUno :: (Int, Char)
parUno = (12, 'g')

parDos :: (String, Int)
parDos = ("Hola", 23)

parTres :: (Double, Char)
parTres = (2.3, 'l')

-- ------------------------------------------------------------------
-- Ejercicio 2: Escribe una función que tome un par de números reales 
--              y suponiendo que son las coordenadas de un punto,  
--              devuelva el cuadrante al que dicho punto pertenecería. 
--              Utiliza guardas en tu definición.
-- ------------------------------------------------------------------

cuadrante :: (Double, Double) -> Int
cuadrante (x,y)
            |(x < 0) && (y < 0) = 3
            |(x > 0) && (y > 0) = 1
            |(x < 0) && (y > 0) = 2
            |(x > 0) && (y < 0) = 4


-- ------------------------------------------------------------------
-- Ejercicio 3: Escribe una función llamada modulo que calcule el
--              módulo de un vector en R2.
--
--              En esta ocasión te toca escribir la función sin ayuda.
-- ------------------------------------------------------------------
modulo :: (Double, Double) -> Double
modulo (a,b) = sqrt(a^2 + b^2)
-- ------------------------------------------------------------------
-- Ejercicio 4: Escribe una función que tome tres enteros y devuelva 
--              su suma. Recuerda comenzar escribiendo la firma de 
--              tipo de la función seguida de su definición.
-- ------------------------------------------------------------------
suma :: Int -> Int -> Int -> Int
suma a b c = a + b + c


-- ------------------------------------------------------------------
-- Ejercicio 5: Escribe una función que calcule la media de cinco 
--              números reales dados.
-- ------------------------------------------------------------------
media :: Double -> Double -> Double -> Double -> Double -> Double
media a b c d e = (a + b + c + d + e)/5

-- ------------------------------------------------------------------
-- ---------------- Tipos Compuestos: Listas ------------------------
-- ------------------------------------------------------------------


-- ------------------------------------------------------------------
-- Ejercicio 6: Transcribe del documento PDF el código con las listas
--              propuestas, ejecútalo en términal y guarda una captura.
--               
--              Responde en un archivo de texto plano las siguientes 
--              preguntas observando el código que escribiste:}
--
--              - ¿Para qué sirven los dos puntos .. al definir una 
--                lista? 
--
--              - Si quiero escribir una lista de Double's ¿Cómo 
--                especifico su tipo sintácticamente?
-- ------------------------------------------------------------------
nums, range, range2 :: [Int]
nums = [1, 2, 3, 19]
range = [1..100]
range2 = [2, 4..100]


-- ------------------------------------------------------------------
-- Ejercicio 7: Escribe cuatro cadenas (listas de caracteres) 
--              utilizando la sintaxis de los corchetes [] para dos 
--              de ellas y la sintaxis de las comillas "" para las 
--              otras dos.
-- ------------------------------------------------------------------
cadenaUno, cadenaDos, cadenaTres, cadenaCuatro :: String
cadenaUno = ['A', 'l', 'a', 'n']
cadenaDos = ['C', 'a', 'r', 'r', 'o']
cadenaTres = "Calculadora"
cadenaCuatro = "Libreta"



-- ------------------------------------------------------------------
-- ------------------- ConstrucadenaUnoendo listas --------------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 8: Escribe tres listas de mas de tres elementos 
--              utilizando el operador cons cadenaUno el tipo de dato que 
--              gustes.
-- ------------------------------------------------------------------
lista = 1:2:3:4:5:[]
lista2 = 2.5:3.4322:234.33:234.3:[]
lista3 = "Juan":"Pepe":"Melissa":"Carla":[]
-- ------------------------------------------------------------------
-- Ejercicio 9: Escribe la versión de las listas definidas en el 
--              ejercicio anterior pero ahora sin utilizar el 
--              operador cons los dos puntitos ":". 
--
--              Utiliza identificadores distintos para que no hacadenaUnoa 
--              error al compilar.}
-- ------------------------------------------------------------------
listita :: [Int]
listita = [1,2,3,4,5]

listita2 :: [Double]
listita2 = [2.5, 3.4322, 234.33, 234.3]

listital3 :: [String]
listital3 = ["Juan", "Pepe", "Melissa", "Carla"]


-- ------------------------------------------------------------------
-- ------------ Funciones recursivas con listas ---------------------
-- ------------------------------------------------------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Ejercicio 10: Transcribe la función del secuencia cadenaUno ejecútala con 
--               tres valores distintos, guarda una captura de 
--               pantalla con tus ejecuciones. Además escribe en el 
--               archivo de texto plano el procedimiento que sigue la 
--               función si se aplica al 5.
-- ------------------------------------------------------------------
secuencia :: Integer -> [ Integer ]
secuencia 1 = [1]
secuencia n = n : secuencia (n - 1)

-- ------------------------------------------------------------------
-- Ejercicio 11:  Transcribe la función longitudLista que aparece en el 
--                PDF cadenaUno ejecútala con tres listas distintas de longitud 
--                0, 3 cadenaUno 100. No olvides tomar captura de pantalla a tu 
--                trabajo.
-- ------------------------------------------------------------------

longitudLista :: [ Integer ] -> Integer
longitudLista [] = 0
longitudLista ( x:xs ) = 1 + longitudLista xs

-- ------------------------------------------------------------------
-- Ejercicio 12: Escribe una función que reciba una lista de enteros cadenaUno 
--               los sume de dos en dos.
-- ------------------------------------------------------------------


sumaCadaDos :: [Int] -> [Int]
sumaCadaDos [] = []
sumaCadaDos (x:y:xs) = (x+y):sumaCadaDos xs
