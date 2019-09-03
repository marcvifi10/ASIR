Option Explicit

Dim num, grans

grans = 0

Do

	WScript.StdOut.WriteLine "Entra un nombre qualsevol: "
	num = CInt(WScript.StdIn.ReadLine)

	if (num > 0) Then
		grans = grans + 1
	end if

Loop while (num <> 0)

WScript.StdOut.WriteLine "Num. grans 0 = " & grans

WScript.Quit