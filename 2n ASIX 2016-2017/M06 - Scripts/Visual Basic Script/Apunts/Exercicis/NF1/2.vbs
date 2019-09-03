Option Explicit

Dim cadena, resultat

Function Reves(Cad)
	Dim nom, cognom1, cognom2

	WScript.StdOut.WriteLine "Entra un nom: "
	nom = WScript.StdIn.ReadLine

	WScript.StdOut.WriteLine "Entra el primer cognom: "
	cognom1 = WScript.StdIn.ReadLine
	
	WScript.StdOut.WriteLine "Entra el segon cognom: "
	cognom2 = WScript.StdIn.ReadLine

	WScript.StdOut.WriteLine cognom2 & " " & cognom1 & " " & nom
End Function

resultat = Reves(cadena) 

WScript.Quit