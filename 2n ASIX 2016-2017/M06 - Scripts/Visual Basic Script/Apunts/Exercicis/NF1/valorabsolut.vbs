Option Explicit

Dim Num, Res

Sub Absolut(Valor)
	Res=Abs(Valor)
	WScript.StdOut.WriteLine "Absolut: " & Res
End Sub

WScript.StdOut.Write "Numero: "
Num = WScript.StdIn.ReadLine
Absolut Num

WScript.Quit