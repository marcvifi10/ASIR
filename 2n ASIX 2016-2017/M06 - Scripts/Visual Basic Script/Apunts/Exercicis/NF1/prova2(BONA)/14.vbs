Option Explicit

Dim Nu1, Nu2, Op, Res

Function Calcular(Val1,Val2,Oper)
	Select Case (Oper)
		Case "+"
			Calcular = CInt(Val1) + Cint(Val2)
		Case "-"
			Calcular = CInt(Val1) - Cint(Val2)
		Case "*"
			Calcular = CInt(Val1) * Cint(Val2)
		Case "/"
			If (Val2 <> 0) Then
				Calcular = CInt(Val1) / Cint(Val2)
			Else
				Calcular = "Divisió per 0"
			End if
	End Select
End Function

WScript.StdOut.Write "Numero: "
Nu1=WScript.StdIn.Readline

WScript.StdOut.Write "Numero: "
Nu2=WScript.StdIn.Readline

WScript.StdOut.Write "Operacio: "
Op=WScript.StdIn.Readline

Res = Calcular (Nu1, Nu2, Op)

WScript.StdOut.WriteLine "Resultat = " & Res

WScript.Quit