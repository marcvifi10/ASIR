Option Explicit

Dim Val1, Val2, operador, resultat

on error resume next
Function Calcular(Val1, Val2, Oper, resultat)
Select Case operador (operador, resultat)

Case "+"
	WScript.Echo resultat = Val1+Val2

Case "-"
	WScript.StdOut.WriteLine resultat = Val1-Val2

Case "*"
	WScript.StdOut.WriteLine resultat = Val1*Val2

Case "/"
	WScript.StdOut.WriteLine resultat = Val1/Val2

End Select
End Function

WScript.StdOut.WriteLine "Entra un valor: "
Val1 = CInt(WScript.StdIn.ReadLine())

WScript.StdOut.WriteLine "Entra un altre valor: "
Val2 = CInt(WScript.StdIn.ReadLine())

WScript.StdOut.WriteLine "Entra un operador: "
operador = WScript.StdIn.ReadLine()

WScript.StdOut.WriteLine "El resultat és: " & resultat
resultat = CInt(WScript.StdIn.ReadLine())

if err.number<>0 then
	WScript.StdOut.WriteLine err.description
end if

Calcular

WScript.Quit