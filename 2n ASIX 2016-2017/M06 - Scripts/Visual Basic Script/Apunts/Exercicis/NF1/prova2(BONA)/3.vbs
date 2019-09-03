Option Explicit

Dim caracter

WScript.StdOut.WriteLine "Entra un caràcter qualsevol: "
caracter = WScript.StdIn.ReadLine 

if (caracter >= "a" And caracter <= "z") Then
	WScript.StdOut.WriteLine "És minúscula"
else
	if (caracter >= "A" And caracter <= "Z") Then
		WScript.StdOut.WriteLine "És majúscula"
	else
		WScript.StdOut.WriteLine "No és una lletra"
	end if
end if

WScript.Quit
