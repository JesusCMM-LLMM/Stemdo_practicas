## 1) Tienes la red 10.0.0.0/8 y necesitas dividirla en subredes que soporten 1000 hosts cada una. ¿Cuantas subredes puedes crear?

Para calcular el número de bits que se necesitan asignar para que cumpla la condición de 1000 hosts por subred, tenemos que buscar "n" que cumpla que 2^n - 2 > 1000; en este caso n = 10, ya que 2^10 - 2 = 1022 > 1024.
Entonces de los 32 bits totales para representar la IP, reservamos 8 para la máscara, 10 para los hosts, nos queda 32 - 8 - 10 = 14; por tanto podemos tener 2^14 subredes, que son 16.384.  

## 2) Tienes la red 172.16.0.0/16. Necesitas crear 20 subredes con el máximo número posible de hosts por subred. ¿Cuantos hosts caben en cada subred?
## 3) Tienes la red 192.168.1.0/24. Debes dividirla en subredes que puedan soportar 6 hosts utilizables cada una. ¿Cuantas subredes se pueden crear con esa condición?
