## 1. Creación de Usuarios en Active Directory desde CSV

Con este script he conseguido crear la unidad organizativa "Jugadores" y todos los usuarios y organizarlos por grupos. 
El script en ps1 está [aquí](/Administración%20AD/Futbolistas.ps1)

~~~
# Definir la ruta de la Unidad Organizativa (OU)
$ouPath = "OU=Jugadores,DC=miequipo,DC=local"

# Verificar si la OU ya existe antes de crearla (me ha ayudado vicky). Si no existe se crea

     if (-not (Get-ADOrganizationalUnit -Filter "DistinguishedName -eq '$ouPath'" -ErrorAction SilentlyContinue)) {
     New-ADOrganizationalUnit -Name "Jugadores" -Path "DC=miequipo,DC=local"
     }


Import-Csv -Path C:\futbolistas.csv | ForEach-Object {  #ForEach-Object hace que se cree un usuario para cada fila del archivo CSV

# Aquí defino los parámetros que van a tener los usuarios (los futbolistas) y uso variables para entenderlo mejor.
#También establezo que el campo "club" va a ser el que actúe como grupo

     $nombreCompleto = "$($_.FirstName) $($_.LastName)"
     $usuario = $_.Username
     $club = $_.Club
     $ou = $_.ou
     $grupo = "$club"

# Si el grupo no existe, lo crea, similar a lo hecho con la OU

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

# Por último, agregar cada usuario al grupo correspondiente

     Add-ADGroupMember -Identity $grupo -Members $usuario
}

~~~

![image](https://github.com/user-attachments/assets/638b6cda-efd1-409c-b706-5ead866bdcad)


## 2. Creación de una estructura de OUs y asignación automática de usuarios

Estos son los scripts. Yo personalmente he creado los CSVs por separado, pero podría hacerse con un mismo CSV. Básicamente importamos el CSV y usamos el "ForEach-Object" para crear las unidades organizativas basándonos en el nombre/posición (una columna) y la ruta (otra columna). 
~~~
Import-Csv -Path "C:\ligas.csv" | ForEach-Object {
 New-ADOrganizationalUnit -Name $_.Nombre -Path $_.Ruta
}
~~~

~~~
Import-Csv -Path "C:\Posiciones.csv" | ForEach-Object {
 New-ADOrganizationalUnit -Name $_.Posicion -Path $_.Ruta
}
~~~

![image](https://github.com/user-attachments/assets/6c9a878d-b1d4-4d29-9da2-22aeabbd882a)




