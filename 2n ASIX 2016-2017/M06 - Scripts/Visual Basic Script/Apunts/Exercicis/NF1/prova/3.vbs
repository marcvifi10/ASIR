Option Explicit

Dim lletra 

WScript.StdOut.WriteLine "Entra una lletra qualsevol: "
lletra = WScript.StdIn.ReadLine

if (lletra >= "a" And lletra <= "z") Then
	WScript.StdOut.WriteLine "Min�scula."
else
	if (lletra >= "A" And lletra <= "Z") Then
		WScript.StdOut.WriteLine "Maj�scula."
	else
		WScript.StdOut.WriteLine "No �s una lletra."
	end if
end if

WScript.Quit
