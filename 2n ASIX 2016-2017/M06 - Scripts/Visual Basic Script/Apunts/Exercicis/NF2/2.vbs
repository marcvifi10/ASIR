Crear un script que rebi com argument amb nom "P" una paraula y mostri per la sortida 
est�ndard la mateixa en min�scules, maj�scules i amb nom�s la primera lletra en 
maj�scules

Option Explicit

Dim argsNamed
Dim sortida
Dim paraula

Set argsNamed = WScript.Arguments.Named
Set sortida = WScript.StdOut

if argsNamed.Exists("P") Then
	sortida.WriteLine "El valor de l'argument /P �s " & Lcase (argsNamed.Item("P")) &  " " & Ucase (argsNamed.Item("P") & " " & Left(UCase(argsNamed),1) & Right(LCas(argsNamed)))
else
	sortida.WriteLine "ERROR!!!"
end if

WScript.Quit

