Option Explicit

Sub Escriu_els_noms

	Dim entrada, sortida, nom, comptador

	Set entrada = WScript.StdIn
	Set sortida = WScript.StdOut

	comptador = 0

	Do while not entrada.AtEndOfStream
		nom = entrada.ReadLine
		comptador = comptador + 1
		sortida.WriteLine Lcase (nom) &  " " & Ucase (nom) & " " & Left(UCase(nom),1) & Right(LCas(nom))) & "( " & Len(nom) & " )"
	Loop

	sortida.WriteLine ""
End Sub

Escriu_els_noms

WScript.Quit	