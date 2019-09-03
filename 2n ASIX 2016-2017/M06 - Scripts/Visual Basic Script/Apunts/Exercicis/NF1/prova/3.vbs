Option Explicit

Dim lletra 

WScript.StdOut.WriteLine "Entra una lletra qualsevol: "
lletra = WScript.StdIn.ReadLine

if (lletra >= "a" And lletra <= "z") Then
	WScript.StdOut.WriteLine "Minúscula."
else
	if (lletra >= "A" And lletra <= "Z") Then
		WScript.StdOut.WriteLine "Majúscula."
	else
		WScript.StdOut.WriteLine "No és una lletra."
	end if
end if

WScript.Quit
