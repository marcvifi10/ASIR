Option Explicit

Dim caracter

WScript.StdOut.WriteLine "Entra un car�cter qualsevol: "
caracter = WScript.StdIn.ReadLine

Select case caracter
	case "a"
		WScript.StdOut.WriteLine "�s la a"		

	case "e"
		WScript.StdOut.WriteLine "�s la e"		

	case "i"
		WScript.StdOut.WriteLine "�s la i"		

	case "o"
		WScript.StdOut.WriteLine "�s la o"		

	case "u"
		WScript.StdOut.WriteLine "�s la u"			

	case else
		WScript.StdOut.WriteLine "No �s una vocal"		

End select 

WScript.Quit