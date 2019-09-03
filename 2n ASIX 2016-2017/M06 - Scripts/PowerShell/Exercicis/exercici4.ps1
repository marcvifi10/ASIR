[int]$numero1=Read-Host 
[int]$numero2=Read-Host 

if ($numero1 -gt $numero2) {Write-Host "El primer nombre és més gran que el segon"}elseif ($numero1 -lt $numero2) {Write-Host "El primer nombre és més petit que el segon"}
elseif ($numero1 -eq $numero2) {Write-Host "Els dos nombres són iguals"}
else {"Hi ha hagut algun error!!!"} 