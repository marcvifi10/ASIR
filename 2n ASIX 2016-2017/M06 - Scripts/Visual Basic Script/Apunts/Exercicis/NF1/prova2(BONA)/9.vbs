Option Explicit

Dim i

WScript.StdOut.WriteLine "======================================="

For i = 1 to 8

	if (i Mod 2 = 0) Then
		WScript.StdOut.WriteLine "O O O O "
	else
		WScript.StdOut.WriteLine " O O O O"
	end if
Next

WScript.Quit