
'Crear un script que al rebre per l�entrada est�ndar un fitxer de text (s�ha emprar 
alumnes.txt) que cont� noms de persones (nom, primer cognom, segon cognom) mostri per 
la sortida est�ndard les persones que el seu primer cognom comen�a per vocal. Al 
final del llistat caldr� mostrar en una sola l�nia el n�mero de persones que el seu 
primer cognom comen�a per vocal i el n�mero total de persones.'

Option Explicit

Dim entrada, sortida, nom, cognom1, cognom2, comptadortotal, comptadorvocal, nomcomplert, primeralletra

Set entrada = WScript.StdIn
Set sortida = WScript.StdOut

comptadortotal=0
comptadorvocal=0

Do while not entrada.AtEndOfStream
	comptadortotal=comptadortotal + 1
	nomcomplert = entrada.ReadLine
	primeralletra=Mid(nomcomplert,InStr(nomcomplert,",")+1,1)
	if(InStr("aeiouAEIOU",primeralletra)>0) Then
		comptadorvocal=comptadorvocal+1
		sortida.WriteLine nomcomplert
	End if
Loop

sortida.WriteLine
sortida.WriteLine comptadorvocal
sortida.WriteLine comptadortotal
WScript.Quit	