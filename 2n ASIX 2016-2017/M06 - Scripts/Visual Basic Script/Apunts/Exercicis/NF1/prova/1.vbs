Option Explicit

Dim temperatura

WScript.StdOut.WriteLine "Entra una temperatura qualsevol: "
temperatura = WScript.StdIn.ReadLine

if (temperatura <= 0) Then
	WScript.StdOut.WriteLine "Gla�at"
else
	if (temperatura > 0 And temperatura <= 10) Then
		WScript.StdOut.WriteLine "Fred"
	else
		if (temperatura > 10 And temperatura <= 20) Then
			WScript.StdOut.WriteLine "Normal"
		else
			if (temperatura > 20 And temperatura <= 30) Then 
				WScript.StdOut.WriteLine "Calor"
			else
				WScript.StdOut.WriteLine "Molta calor" 
			end if
		end if
	end if
end if

WScript.Quit