Option Explicit

Dim num, i

WScript.StdOut.WriteLine "De quin nombre vols veure la seva taula de multiplicar?"
num = WScript.StdIn.ReadLine 

for i = 0 to 10
	WScript.StdOut.WriteLine num & " x " & i & " = " & (num*i)
next

WScript.Quit