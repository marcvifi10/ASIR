Option Explicit

Dim num, resultat

WScript.StdOut.WriteLine "Entra un num qualsevol: "
num = WScript.StdIn.ReadLine

Sub Absolut(valor)
	resultat = Abs(valor)
	WScript.StdOut.WriteLine resultat
End sub

Absolut num

WScript.Quit