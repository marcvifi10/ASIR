Option Explicit

Dim num, i

WScript.StdOut.WriteLine "Les taules de multiplicar són: "

For num = 0 To 99 Step 2
	For i = 0 To 10
		WScript.StdOut.WriteLine num & " x " & i & " = " & (num*i)
	Next
Next

WScript.Quit