Option Explicit

Dim caracter

WScript.StdOut.WriteLine "Entra un car�cter qualsevol: "
caracter = WScript.StdIn.ReadLine 

if (caracter >= "a" And caracter <= "z") Then
	WScript.StdOut.WriteLine "�s min�scula"
else
	if (caracter >= "A" And caracter <= "Z") Then
		WScript.StdOut.WriteLine "�s maj�scula"
	else
		WScript.StdOut.WriteLine "No �s una lletra"
	end if
end if

WScript.Quit
