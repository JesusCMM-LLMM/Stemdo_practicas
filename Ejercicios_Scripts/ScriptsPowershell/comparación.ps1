$num1 = Read-Host "Por favor, introduce el primer numero"
$num2 = Read-Host "Por favor, introduce el segundo numero"

$num1= [Int32]$num1
$num2= [Int32]$num2

if ($num1 -eq $num2){
	"$num1 y $num2 son iguales"}
elseif ($num1 -gt $num2){
	"$num1 es mayor que $num2"}
else {"$num1 es menor que $num2"}

 


