Option Explicit

Dim I, Gran, Num

Gran = 0

For I = 1 To 10

	WScript.StdOut.Write "Numero: "
	Num=WScript.StdIn.Readline

	If (CInt(Num)>CInt(Gran)) Then

	Gran = Num
	
	End If
Next

WScript.StdOut.WriteLine "Gran: " & Gran

WScript.Quit