Option Explicit

Dim secret
Dim numero
Dim intents

intents = 1

Randomize
secret = CInt (Rnd * 10)

WScript.StdOut.WriteLine("Entra un nombre de l'1 al 10")
numero = CInt(WScript.StdIn.ReadLine())


While (numero <> secret) And (intents < 5)
	WScript.StdOut.WriteLine("Torna a intentar-ho")
	numero = CInt(WScript.StdIn.ReadLine())
	intents = intents + 1
Wend

if (intents > 5) Then
	WScript.StdOut.WriteLine "Has excedit el nombre d'intents"
else WScript.StdOut.WriteLine "ERROR"
Endif	

WScript.StdOut.WriteLine "Lhas encertat i has necessitat " & intents & " intents"

WScript.Quit