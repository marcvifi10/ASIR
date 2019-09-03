Option Explicit

Dim Valor, Parells

Parells=0

Do
	WScript.StdOut.Write "Numero: "
	Valor=CInt(WScript.StdIn.Readline)

	If (Valor Mod 2 = 0) Then
		If (Valor <> 0 ) Then
			Parells=Parells+1
		End If
	End If

Loop While (Valor<>0)

WScript.StdOut.WriteLine "Num. parells = " & Parells

WScript.Quit