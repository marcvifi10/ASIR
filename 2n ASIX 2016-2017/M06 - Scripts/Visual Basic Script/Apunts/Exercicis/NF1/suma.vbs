Option Explicit 

Dim retValue, num1, num2, num3

WScript.StdOut.WriteLine "Entra un nombre: "
num1 = CInt(WScript.StdIn.ReadLine) 

WScript.StdOut.WriteLine "Entra un altre nombre: "
num2 = CInt(WScript.StdIn.ReadLine)

WScript.StdOut.WriteLine "Entra l'últim nombre: "
num3 = CInt(WScript.StdIn.ReadLine)

Function ShowSum(num1, num2, num3)
	Dim suma
	
	suma = num1 + num2 + num3

	ShowSum = suma
End Function

retValue = ShowSum(num1, num2, num3)
WScript.StdOut.WriteLine "La suma dels tres nombres és: " & retValue

WScript.Quit
