Option Explicit

Dim paraula1, paraula2, argsensenom, entrada, sortida

Set entrada = WScript.StdIn
Set sortida = WScript.StdOut
Set argsensenom = WScript.Arguments.Unnamed

paraula1 = argsensenom.Item(0)
paraula2 = argsensenom.Item(0)

if (paraula1 <> paraula2) Then
	sortida.WriteLine "S�n iguals"
	else
		if (paraula1 = paraula2) Then
			sortida.WriteLine "S�n diferents"
		else 
			sortida.WriteLine "ERROR!!!"
		end if
end if

WScript.Quit