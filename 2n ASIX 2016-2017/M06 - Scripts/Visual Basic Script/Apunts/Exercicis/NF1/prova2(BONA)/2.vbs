Option Explicit

Dim caracter

WScript.StdOut.WriteLine "Entra un caràcter qualsevol: "
caracter = WScript.StdIn.ReadLine

Select case caracter
	case "a"
		WScript.StdOut.WriteLine "És la a"		

	case "e"
		WScript.StdOut.WriteLine "És la e"		

	case "i"
		WScript.StdOut.WriteLine "És la i"		

	case "o"
		WScript.StdOut.WriteLine "És la o"		

	case "u"
		WScript.StdOut.WriteLine "És la u"			

	case else
		WScript.StdOut.WriteLine "No és una vocal"		

End select 

WScript.Quit