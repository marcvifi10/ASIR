Option Explicit

Dim dades, entrada, sortida, unalletra, comptadorparaules, comptadorvocal, primeralletra, comptadorconsonant

Set entrada = WScript.StdIn
Set sortida = WScript.StdOut

comptadorvocal=0
comptadorconsonant=0
comptadorparaules=0
unalletra=0

Do while not entrada.AtEndOfStream
	comptadorparaules = comptadorparaules + 1
	dades = entrada.ReadLine
	primeralletra=Mid(dades,InStr(dades,",")+1,1)
	if (Len(dades)=1) Then
		unalletra=unalletra+1
	else 
		sortida.WriteLine "T� m�s d'una lletra"
	if (InStr("aeiouAEIOU",primeralletra)>0) Then
		comptadorvocal=comptadorvocal+1
		sortida.WriteLine "El nombre de paraules que comencen per vocal s�n " & comptadorvocal
	else
		comptadorconsonant = comptadorconsonant +1
	end if
Loop

sortida.WriteLine "Resultats: "
sortida.WriteLine "El nombre de paraules s�n " & comptadorparaules
sortida.WriteLine "El nombre de paraules que comencen per consonants s�n " & comptadorconsonant
sortida.WriteLine "El nombre de paraules que comencen per vocals s�n " & comptadorvocal
sortida.WriteLine "El nombre de paraules formades per una sola lletra s�n " & unalletra

WScript.Quit