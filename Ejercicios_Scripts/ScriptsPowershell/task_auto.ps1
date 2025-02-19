#Primera pantalla
Clear-Host
Write-Output ""
Write-Output "*********************************************************"
Write-Output "Este es nuestro primer ejemplo de un script en Powershell"
Write-Output "*********************************************************"
Write-Output ""
Pause

#Segunda pantalla
Clear-Host
Write-Output ""
Write-Output "*********************************************************"
Write-Output "+             1.- Fecha y Hora actuales.                 "
Write-Output "*********************************************************"
Write-Output ""
$fecha = Get-Date -Format "dd/MM/yyyy"
Write-Output ""
Write-Output "Fecha:"
Write-Output "$fecha"
Write-Output ""
$hora = Get-Date -Format "HH:mm"
Write-Output ""
Write-Output "Hora:"
Write-Output "$hora"
Pause

#Tercera pantalla
Clear-Host
Write-Output ""
Write-Output "*********************************************************"
Write-Output "+       2.- Ahora aparece tu nombre de usuario.          "
Write-Output "*********************************************************"
Write-Output ""
Write-Output "Tu eres $env:USERNAME"
Write-Output ""
Pause

#Cuarta pantalla
Clear-Host
Write-Output ""
Write-Output "*********************************************************"
Write-Output "+   3.- Este es el contenido del directorio actual.      "
Write-Output "*********************************************************"
Write-Output ""
Get-ChildItem
Write-Output ""
Write-Output ""
Pause

#Cuarta pantalla
Clear-Host
Write-Output ""
Write-Output "*********************************************************"
Write-Output "+                 Proceso finalizado                     "
Write-Output "*********************************************************"
Write-Output ""
Write-Output ""
Write-Output ""
Pause
Clear-Host