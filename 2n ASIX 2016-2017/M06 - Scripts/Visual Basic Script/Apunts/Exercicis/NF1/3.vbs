Option Explicit

Dim num, petit, gran, suma, mitjana, nombres_entrats

petit = 0
gran = 0
suma = 0
mitjana = 0
nombres_entrats = 0

Do
	WScript.StdOut.WriteLine "Entra un nombre qualsevol: "
	num = WScript.StdIn.ReadLine 

	nombres_entrats = nombres_entrats + 1
	suma = suma + num
	mitjana = suma / nombres_entrats
	
	if (num < petit) Then 
		petit = num
	End if

	if (num > gran) Then 
		gran = num
	End if
	
WScript.StdOut.WriteLine "El més petit és: " & petit
WScript.StdOut.WriteLine "El més gran és: " & gran
WScript.StdOut.WriteLine "La suma de tots el nombres és: " & suma 
WScript.StdOut.WriteLine "La mitjana dels nombres és: " & mitjana

Loop While (num <> 0)

WScript.Quit