Option Explicit 

Dim seguent, anterior

anterior = 0

Do
	WScript.StdOut.WriteLine "Entra un nombre qualsevol: "
	seguent = WScript.StdIn.ReadLine

	if (seguent < anterior) Then 
		WScript.StdOut.WriteLine "Deceixent"
	else
		if (seguent > anterior) Then 
			WScript.StdOut.WriteLine "Creixent"
		else
			WScript.StdOut.WriteLine "Iguals"
		end if
	end if

	anterior = seguent

Loop while (seguent <> 0)