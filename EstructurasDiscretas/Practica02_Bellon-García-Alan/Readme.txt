Ejercicio 6
 - ¿Para qué sirven los dos puntos .. al definir una lista?
 Sirve para indicar que siga una secuencia.
 - Si quiero escribir una lista de Double's ¿Cómo especifico su tipo sintácticamente?
 range :: [Double]

Ejercicio 10
Además escribe en el archivo de texto plano el procedimiento que sigue la
función si se aplica al 5.

Es una función recursiva, lo que significa que se llama a si misma para crear la lista de la siguiente forma:

secuencia 5
5 : secuencia 4
5 : 4 : secuencia 3
5 : 4 : 3 : secuencia 2
5 : 4 : 3 : 2 : secuencias 1
5 : 4 : 3 : 2 : [1]


5 : 4 : 3 : 2 : [1] = [5,4,3,2,1]
