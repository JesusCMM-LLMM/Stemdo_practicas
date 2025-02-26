# Ejercicios de Administración Windows (PowerShell)  

Aquí pondré el código de cada ejercicio correspondiente. Para ver los archivos ps1 directamente, puedes ir a [este apartado](/Ejercicios_Scripts/ScriptsPowershell) del repositorio.  

## Ejercicio 1: Cmdlet con variables

~~~
$nomb = "Jesus"
$saludo = "bienvenido a Powershell"

Write-Output "Hola $nomb, $saludo" 
~~~

## Ejercicio 2: Cmdlet con argumentos de consola

Se le pasan los argumentos desde el propio PowerShell -> .\saludo2.ps1 Jesus
~~~
Write-Output "Hola $args"
~~~

## Ejercicio 3: Cmdlet con entrada del usuario

~~~
$nomb = Read-Host "Por favor, introduce tu nombre"
$saludo = Read-Host "Por favor, introduce tu saludo"

Write-Output "$saludo $nomb, bienvenido a Powershell" 
~~~

## Ejercicio 4: Operaciones aritméticas

Los valores recogidos están convertidos en datos de tipo int. 
~~~
$num1 = Read-Host "Por favor, introduce el primer numero"
$num2 = Read-Host "Por favor, introduce el segundo numero"

$num1= [Int32]$num1
$num2= [Int32]$num2


Write-Output "Su suma es $($num1 + $num2)"
Write-Output "Su resta es $($num1 - $num2)" 
Write-Output "Su multiplicacion es $($num1 * $num2)" 
Write-Output "Su division es $($num1 / $num2)"
~~~

## Ejercicio 5: Comparación de números

Igual que en el anterior, los datos están convertidos a tipo int. 
~~~
$num1 = Read-Host "Por favor, introduce el primer numero"
$num2 = Read-Host "Por favor, introduce el segundo numero"

$num1= [Int32]$num1
$num2= [Int32]$num2

if ($num1 -eq $num2){
	"$num1 y $num2 son iguales"}
elseif ($num1 -gt $num2){
	"$num1 es mayor que $num2"}
else {"$num1 es menor que $num2"}

~~~

## Ejercicio 6: Bucle con condición

Como aclaración siempre he entendido que el numero 0 no es ni positivo ni negativo, se le considera neutro.  
De otro modo, en lugar de $num -gt 0, se pondría $num -ge 0 para considerar al 0 como positivo. 

~~~
$num = Read-Host "Por favor, introduce un numero positivo"

$num= [Int32]$num

while ($num -gt 0){
	"FAP"
	$num--}
~~~

## Ejercicio 7: Validación y corrección de entrada

He decido convertir el valor recogido en entero para evitar problemas, de hecho fallaba si no lo hacía.  
Tenemos la variable $intentos que se incrementa en 1 cada vez que fallamos, y al salir del bucle se ejecuta un if para saber qué mensaje nos muestra. 
~~~
$intentos = 0

while ($true) {
    $num = Read-Host "Por favor, introduce un numero entre 1 y 100"
    $num = [Int32]$num
		if ($num -ge 1 -and $num -le 100) {
        break 
    } else {
        $intentos++
        Write-Output "El numero $num esta fuera del rango. Intenta de nuevo."
    }
}

if ($intentos -eq 0) {
    Write-Output "¡Bien hecho, campeon!"
} else {
    Write-Output "Tuviste $intentos intentos erroneos."
}
~~~


