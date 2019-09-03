Option Explicit

Dim lletra

WScript.StdOut.WriteLine "Entra una lletra qualsevol: "
lletra = WScript.StdIn.ReadLine()

Select Case lletra

Case "a"
	WScript.StdOut.WriteLine "La vocal a"
Case "A"
	WScript.StdOut.WriteLine "La vocal a"
Case "e"
	WScript.StdOut.WriteLine "La vocal e"
Case "E"
	WScript.StdOut.WriteLine "La vocal e"
Case "i"
	WScript.StdOut.WriteLine "La vocal i"
Case "I"
	WScript.StdOut.WriteLine "La vocal i"
Case "o"
	WScript.StdOut.WriteLine "La vocal o"
Case "O"
	WScript.StdOut.WriteLine "La vocal o"
Case "u"
	WScript.StdOut.WriteLine "La vocal u"
Case "U"
	WScript.StdOut.WriteLine "La vocal u"
Case Else
	WScript.StdOut.WriteLine "No és una vocal"
End Select

WScript.Quit