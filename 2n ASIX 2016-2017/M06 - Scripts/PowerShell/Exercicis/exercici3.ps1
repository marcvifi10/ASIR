[int]$numero1=Read-Host 

[int]$numero2=Read-Host 

if ($numero1 % $numero2 -eq 0) {Write-Host "Són divisibles"}
else {Write-Host "No són divisibles"} 
