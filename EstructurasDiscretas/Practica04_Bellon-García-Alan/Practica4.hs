
------------------------------------------------------------------------------
----------------------------- Práctica 4 -------------------------------------
------------------------------------------------------------------------------
--------------------------- Tipos de dato ------------------------------------
------------------------------------------------------------------------------
module Practica4 where


-- --------------------------------------------------------------------
-- --TIPOS DE DATO NUMÉRICOS-----
-- --------------------------------------------------------------------

-- --------------------------------------------------------------------
-- Ejercicio 1: Define el tipo de dato "Cosa"
-- --------------------------------------------------------------------

data Cosa = Soda 
 | Barco 
 | Jabon 
 | Repollo
 | Rascacielos 
 | Taquito
 deriving Show 
{-Aquí va tu código-}
      

-- --------------------------------------------------------------------
-- Ejercicio 2: Define tres variables del tipo "Cosa"
-- --------------------------------------------------------------------

x :: Cosa
x = Soda 

y :: Cosa
y = Taquito

n :: Cosa 
n = Rascacielos 
{-Aquí va tu código-}
  
-- --------------------------------------------------------------------
-- Ejercicio 3: Modifica el tipo "Cosa" para que se pueda imprimir
-- --------------------------------------------------------------------
{- Añade la línea que indica este ejercicio al código del ejercicio 1 de
esta sección. -}

-- --------------------------------------------------------------------
-- Ejercicio 4: Define la función esGrande :: Cosa -> Bool
-- Considera que la Soda, el Jabón, el Repollo y el Taquito son cosas
-- pequeñas mientras que el Rascacielos y el Barco son cosas grandes. 
--
-- (Reto: Es posible definirla en cuatro lineas de código)
-- --------------------------------------------------------------------
esGrande :: Cosa -> Bool
esGrande Soda = False
esGrande Barco = True
esGrande Jabon = False
esGrande Repollo = False
esGrande Rascacielos = True
esGrande Taquito = False


{-Aquí va tu código-}

-- --------------------------------------------------------------------
-- Ejercicio 5: Define el tipo de dato Alcaldía como sinónimo del tipo
-- String y define tres variables del tipo Alcaldía. 
--
-- Finalmente define un sinónimo para el tipo Int que se llame Edad. 
-- --------------------------------------------------------------------
type Alcaldia = String

z , cy , tl :: Alcaldia
z = "Iztapalapa"
cy = "Coyoacán"
tl = "Tlahuac"

{-Aquí va tu código-}

type Edad = Int 

type Cuenta = Int


-- --------------------------------------------------------------------
-- --TIPOS DE DATO ALGEBRÁICOS-----
-- --------------------------------------------------------------------

-- --------------------------------------------------------------------
-- Ejercicio 1: Define el tipo de dato Persona y declara 3 variables 
--              de tipo Persona
-- --------------------------------------------------------------------
data Persona = Persona String Edad Cosa Alcaldia
             | Estudiante String Edad Cosa Alcaldia Cuenta
 deriving Show

f :: Persona 
f = Persona "Melissa" 21 Taquito cy 

bn :: Persona 
bn = Persona "Maria" 20 Barco z 

mp :: Persona 
mp = Persona "Merlina" 21 Rascacielos tl

{-Aquí va tu código-}

-- --------------------------------------------------------------------
-- Ejercicio 2: Define funciones que devuelvan cada atributo 
--              [a] nombre :: Persona -> String
--              [b] edad :: Persona -> Edad
--              [c] cosaFav :: Persona -> Cosa
--              [d] alcaldia :: Persona -> Alcaldia
-- --------------------------------------------------------------------
edad :: Persona -> Edad
edad ( Persona _ a _ _) = a
edad ( Estudiante _ a _ _ _) = a

nombre :: Persona -> String
nombre (Persona b _ _ _) = b
nombre (Estudiante b _ _ _ _) = b

cosaFav :: Persona -> Cosa 
cosaFav (Persona _ _ r _) = r
cosaFav (Estudiante _ _ r _ _) = r

alcaldia :: Persona -> Alcaldia 
alcaldia ( Persona _ _ _ i) = i
alcaldia ( Estudiante _ _ _ i _ ) = i
{-Aquí va tu código-}

-- --------------------------------------------------------------------
-- Ejercicio 3: Añade un constructor Estudiante al tipo de dato Persona
--              con un atributo extra para el número de cuenta. 
-- --------------------------------------------------------------------
-- Añade la línea que indica este ejercicio al código del ejercicio 1 de
-- esta sección
-- --------------------------------------------------------------------
-- Ejercicio 4: Define dos variables de tipo Estudiante y una
--              función que devuelva el número de cuenta:
-- 
--              numeroCuenta :: Persona -> Int
-- --------------------------------------------------------------------
juanito :: Persona
juanito = Estudiante "Juanito" 30 Barco z 3456476

pepe :: Persona
pepe = Estudiante "Pepe" 21 Rascacielos cy 8065432

numeroCuenta :: Persona -> Int
numeroCuenta (Estudiante _ _ _ _ a) = a
numeroCuenta (Persona a _ _ _) = 0

{-Aquí va tu código-}

-- --------------------------------------------------------------------
-- --Correspondencia de Patrones-----
-- --------------------------------------------------------------------


-- --------------------------------------------------------------------
-- Ejercicio 1: Modifica las funciones nombre, edad, cosaFav y alcaldia
--              que definimos en el ejercicio 2 de la sección anterior 
--              para que puedan recibir datos definidos con el constructor 
--              Estudiante.
-- --------------------------------------------------------------------
-- Añade las modificaciones que indica este ejercicio al código del
-- ejercicio 2 de la sección anterior.
-- --------------------------------------------------------------------
-- Ejercicio 2: Modifica la función numeroCuenta para que regrese un 0
--              en caso de que la persona en cuestión no sea un Estudiante
-- --------------------------------------------------------------------
-- Añade las modificaciones que indica este ejercicio al código del
-- ejercicio 4 de la sección anterior.
-- --------------------------------------------------------------------
-- Ejercicio 3: Define la función presentación :: Persona -> String
--              que regresa una cadena con el nombre y la alcaldía de
--              la persona en cuestión
-- --------------------------------------------------------------------
   
{-Aquí va tu código-}

-- --------------------------------------------------------------------
-- Ejercicio 4: Define la función favorito :: Persona -> String que 
--              regresa una frase distinta si a la persona en cuestión
--              le gusta la soda o el taquito. 
-- --------------------------------------------------------------------

{-Aquí va tu código-}
favorito :: Persona -> String
favorito ( Persona n _ Taquito _) = n ++ ", vamos por tacos"
favorito ( Persona n _ Soda _) = n ++ ", mejor toma agua "
favorito ( Estudiante a _ Repollo _ _) = "¿Que te gusta?"
favorito ( Persona n _ Repollo _) = n ++ ", uff que rico, tu si le sabes bro"
favorito _ = "No se que recomendarte"
-- --------------------------------------------------------------------
-- Ejercicio 5: Añade cláusulas a la función del ejercicio anterior para
--              que se ejecute adecuadamente sin importar la cosa      
--              favorita de la persona en cuestión, imprimiendo alguna 
--              frase en pantalla. 
-- --------------------------------------------------------------------
-- Agrega las modificaciones que indica este ejercicio al código de la
-- función "favorito"   
