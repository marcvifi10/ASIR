Option Explicit

Dim lletra 

WScript.StdOut.WriteLine "Entra una lletra o un caracter qualsevol: "
lletra = WScript.StdIn.ReadLine

Select case lletra

	case "a"
		WScript.StdOut.WriteLine "La a"

	case "e"
		WScript.StdOut.WriteLine "La e"

	case "i"
		WScript.StdOut.WriteLine "La i"

	case "o"
		WScript.StdOut.WriteLine "La o"

	case "u"
		WScript.StdOut.WriteLine "La u"

	case else
		WScript.StdOut.WriteLine "No és una vocal"

End select

WScript.Quit