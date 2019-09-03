Option Explicit

Dim practiques, teoria, mitjana

WScript.StdOut.WriteLine "Entra la nota de les practiques: "
practiques = CInt(WScript.StdIn.ReadLine())

WScript.StdOut.WriteLine "Entra la nota de la teoria: "
teoria = CInt(WScript.StdIn.ReadLine())

mitjana = (teoria + practiques) / 2

if (practiques < 3 OR teoria < 3) Then
	WScript.StdOut.WriteLine "Esta suspès automàticament, perque la seva mitjana aritmètica es inferior a 3."
Else 
	if (mitjana =< 0 And mitjana < 5) Then
		WScript.StdOut.WriteLine "Suspés"
		Else
		if (mitjana >= 5 And mitjana < 7) Then
			WScript.StdOut.WriteLine "Aprovat"
			Else
			if (mitjana >= 7 And mitjana < 9) Then
				WScript.StdOut.WriteLine "Notable"
				Else 
				if (mitjana >= 9 And mitjana < 10) Then 
					WScript.StdOut.WriteLine "Excel·lent"
				Else
					if (mitjana = 10) Then
						WScript.StdOut.WriteLine "Matrícula d'honor" 
					Else
						WScript.StdOut.WriteLine "Nota no vàlida"
					End if
				End if	
			End if
		End if
	End if
End if

WScript.Quit