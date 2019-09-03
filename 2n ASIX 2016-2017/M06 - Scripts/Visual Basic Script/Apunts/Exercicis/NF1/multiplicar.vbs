Option Explicit

Dim num, i

Sub TaulaMultiplicar(Valor)
For i = 0 to 10 
	WScript.StdOut.WriteLine num & " * " & i " = " & num*i
Next 
End Sub

WScript.StdOut.WriteLine "Entra un nombre qualsevol: "
num = WScript.StdOut.ReadLine
TaulaMultiplicar Num

WScript.Quit 