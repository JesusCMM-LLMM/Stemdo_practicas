## 1) Tienes la red 10.0.0.0/8 y necesitas dividirla en subredes que soporten 1000 hosts cada una. ¿Cuantas subredes puedes crear?

Para calcular el número de bits que se necesitan asignar para que cumpla la condición de 1000 hosts por subred, tenemos que buscar "n" que cumpla que 2<sup>n</sup> - 2 >= 1000; en este caso n = 10, ya que 2<sup>10</sup> - 2 = 1022 > 1024.
Entonces de los 32 bits totales para representar la IP, reservamos 8 para la máscara, 10 para los hosts, nos queda 32 - 8 - 10 = 14; por tanto podemos tener 2<sup>14</sup> subredes, que son **16.384.**  

## 2) Tienes la red 172.16.0.0/16. Necesitas crear 20 subredes con el máximo número posible de hosts por subred. ¿Cuantos hosts caben en cada subred?

Vamos a ver cuantos hosts puede tener esta red una vez dividida, para ello calculamos la nueva máscara de las subredes, que vendría dada por (nº bits máscara original + n), siendo n -> 2<sup>n</sup> >= 20, en este caso tendría que ser 5, ya que 2<sup>5</sup> = 32 >= 20. Entonces la nueva máscara sería 16 bits(masc original) + 5bits = 21. Del total de bits (32) restamos 21, nos quedan 11. 
Y el nº de hosts serían 2<sup>11</sup> - 2 = **2046 hosts.** 

## 3) Tienes la red 192.168.1.0/24. Debes dividirla en subredes que puedan soportar 6 hosts utilizables cada una. ¿Cuantas subredes se pueden crear con esa condición? 

Como nos especifica que necesitamos 6 hosts utilizables, debemos asumir que en realidad necesitamos 8; 6 hosts utilizables, 1 para la red, 1 para broadcast. Procedemos entonces como en el primer ejercicio. Buscamos "n" para 2<sup>n</sup> >= 8, esto nos da que n = 3. Entonces de los 32 bits, 24 son de la máscara, 3 de los hosts, nos quedarían 5 bits para las subredes. Calculamos 2<sup>5</sup> = **32 subredes.**

