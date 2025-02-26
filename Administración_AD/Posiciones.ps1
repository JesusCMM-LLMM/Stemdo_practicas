Import-Csv -Path "C:\Posiciones.csv" | ForEach-Object {
 New-ADOrganizationalUnit -Name $_.Posicion -Path $_.Ruta
}

