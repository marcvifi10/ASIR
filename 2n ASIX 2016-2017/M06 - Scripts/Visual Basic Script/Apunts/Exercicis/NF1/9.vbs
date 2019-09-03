Option Explicit

Dim entrada, sortida, temperatura, mitjana, suma, contador
	
Set entrada = WScript.StdIn
Set sortida = WScript.StdOut

contador = 0
suma = 0
mitjana = 0

Do while not entrada.AtEndOfStream

	temperatura = entrada.ReadLine
	contador = contador + 1
	suma = temperatura + suma
Loop

mitjana = suma / contador

if (temperatura <= 0) Then
	sortida.WriteLine "Glaçat"
else
	if (temperatura > 0 And temperatura <= 10) Then
		sortida.WriteLine "Fa fred" 
	else
		if (temperatura > 10 And temperatura <= 20) Then
			sortida.WriteLine "Normal"
		else
			if (temperatura > 20 And temperatura <= 30) Then
				sortida.WriteLine "Fa calor"
			else
				sortida.WriteLine "Fa molta calor"
			end if
		end if
	end if
end if
	
sortida.WriteLine "La mitjana és: " & mitjana

WScript.Quit