Import-Csv -Path "C:\ligas.csv" | ForEach-Object {
 New-ADOrganizationalUnit -Name $_.Nombre -Path $_.Ruta
}

$originalGroupName = "Real Madrid"
$ouPath = "OU=RealMadrid,OU=LaLiga,OU=Liga,DC=miequipo,DC=local"

$originalGroup = Get-ADGroup -Identity $originalGroupName
$members = Get-ADGroupMember -Identity $originalGroup

$newGroupName = "Real Madrid"
New-ADGroup -Name $newGroupName -GroupScope Global -Path $ouPath 

foreach ($member in $members) {
    Add-ADGroupMember -Identity $newGroupName -Members $member
}
