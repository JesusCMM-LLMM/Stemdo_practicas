## 1. Creación de Usuarios en Active Directory desde CSV

Con este script he conseguido crear en la unidad organizativa "Jugadores" a todos los usuarios y organizarlos por grupos. 
~~~

 Import-Csv -Path C:\futbolistas.csv | ForEach-Object {
     # Parámetros
     $nombreCompleto = "$($_.FirstName) $($_.LastName)"
     $usuario = $_.Username
     $club = $_.Club
     $ou = $_.ou
     $grupo = "$club"

     # Si el grupo no existe, lo crea (esto lo tuve que buscar en internet)
     if (-not (Get-ADGroup -Filter { Name -eq $grupo } -ErrorAction SilentlyContinue)) {
         New-ADGroup -Name $grupo -GroupScope Global -Path "OU=Jugadores,DC=miequipo,DC=local"
         }

     # Crea usuarios
     New-ADUser -Name $nombreCompleto `
                -SamAccountName $usuario `
                -UserPrincipalName "$usuario@miequipo.local" `
                -Path $ou `
                -AccountPassword (ConvertTo-SecureString -AsPlainText 'Password123' -Force) `
                -Enabled $true `
                -ChangePasswordAtLogon $true

     # Agregar al grupo
     Add-ADGroupMember -Identity $grupo -Members $usuario
 }
~~~

![image](https://github.com/user-attachments/assets/638b6cda-efd1-409c-b706-5ead866bdcad)


## 2. Creación de una estructura de OUs y asignación automática de usuarios



