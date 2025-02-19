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

 


