Option Explicit

Dim valor

Do 	

	WScript.StdOut.WriteLine "Entra un valor qualsevol"
	valor = CInt(WScript.StdIn.ReadLine)

Loop while (valor < 0)

WScript.Quit