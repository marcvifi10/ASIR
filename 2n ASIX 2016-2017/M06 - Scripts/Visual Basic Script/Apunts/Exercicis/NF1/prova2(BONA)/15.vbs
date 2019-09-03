Option Explicit

Dim Cadena, Resultat

Function ComptarParaules(Cad)
	Dim N, NumEsp
	NumEsp=0
	For N = 1 To Len(Cad)
		If Mid(Cad,N,1)=" " Then
			NumEsp=NumEsp+1
		End If
	Next

	ComptarParaules=NumEsp+1

End Function

WScript.StdOut.Write "Text: "
Cadena=Trim(WScript.StdIn.Readline)

If (Len(Cadena)>1) Then
	Resultat=ComptarParaules(Cadena)
Else
	Resultat=0
End If

WScript.StdOut.WriteLine Resultat & " paraules."

WScript.Quit