Option Explicit

Dim nota

WScript.StdOut.WriteLine "Entra una nota: "
nota = WScript.StdIn.ReadLine

if (nota < 5) Then
	WScript.StdOut.WriteLine "Suspés"
else
	if (nota => 5 And nota =< 6.99) Then
		WScript.StdOut.WriteLine "Aprovat"
	else
		if (nota => 7 And nota =< 8.99) Then 
			WScript.StdOut.WriteLine "Notable"
		else
			if (nota => 9 And nota =< 10) Then
				WScript.StdOut.WriteLine "Excel·lent"
			else 
				WScript.StdOut.WriteLine "Aquesta nota no existeix"
			end if
		end if
	end if
end if

WScript.Quit