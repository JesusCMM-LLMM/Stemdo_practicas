$num1 = Read-Host "Por favor, introduce el primer numero"
$num2 = Read-Host "Por favor, introduce el segundo numero"

$num1= [Int32]$num1
$num2= [Int32]$num2


Write-Output "Su suma es $($num1 + $num2)"
Write-Output "Su resta es $($num1 - $num2)" 
Write-Output "Su multiplicacion es $($num1 * $num2)" 
Write-Output "Su division es $($num1 / $num2)"

