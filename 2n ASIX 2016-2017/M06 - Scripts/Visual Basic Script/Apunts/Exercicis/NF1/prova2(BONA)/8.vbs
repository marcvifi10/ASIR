Option Explicit

Dim I, Num, Parells

Parells = 0

For I = 1 To 10
	WScript.StdOut.Write "Numero: "
	Num=WScript.StdIn.Readline
	If (Num Mod 2 = 0) Then
		Parells=Parells+1
	End If
Next

Select Case Parells

Case 0
	WScript.StdOut.Write "Cap es parell."

Case 1
	WScript.StdOut.Write "Només un es parell."

Case 2,3,4,5,6,7,8,9,10
	WScript.StdOut.Write "Hi ha " & Parells & " parells."

End Select

WScript.Quit