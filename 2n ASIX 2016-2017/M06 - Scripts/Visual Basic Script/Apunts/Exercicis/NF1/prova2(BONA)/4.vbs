Option Explicit

Dim num

WScript.StdOut.WriteLine "Entra un nombre qualsevol: "
num = WScript.StdIn.ReadLine

if (num Mod 2 = 0) Then
	WScript.StdOut.WriteLine "�s parell"
else
	WScript.StdOut.WriteLine "�s senar"
end if

WScript.Quit
