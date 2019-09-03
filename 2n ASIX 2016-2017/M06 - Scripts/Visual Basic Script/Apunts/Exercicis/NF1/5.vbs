Option Explicit

Dim cadena, resultat, n

Function ComptarParaules(Cad)
	Dim n, NumEsp
	
	NumEsp=0

	For N = 1 To Len(Cad)
		If Mid(Cad,n,1)=" " Then
			NumEsp=NumEsp+1
		End If
	Next

	ComptarParaules=NumEsp+1
End Function

Function ComptarVocals(Cad)
	Dim n, NumVoc

	NumVoc = 0

	For n = 1 to Len(Cad)
		If (Lcase(Mid(Cad,n,1))="a" Or Lcase(Mid(Cad,n,1))="e" Or Lcase(Mid(Cad,n,1))="i" Or Lcase(Mid(Cad,n,1))="o" Or Lcase(Mid(Cad,n,1))="u") Then
			NumVoc=NumVoc+1
		End If
	Next

	ComptarVocals = NumVoc

End Function

WScript.StdOut.WriteLine "Frase: "
cadena = Trim(WScript.StdIn.Readline)

if (ComptarParaules(cadena) = 1) Then
	WScript.StdOut.WriteLine "Només s'ha entrat una sola paraula"
else

	Resultat = Lcase(Mid(ComptarVocals(cadena),n,2))

	WScript.StdOut.WriteLine Resultat & " vocals, té la segona paraula."

end if

WScript.Quit