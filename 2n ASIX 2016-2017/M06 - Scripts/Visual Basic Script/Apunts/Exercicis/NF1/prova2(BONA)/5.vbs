Option Explicit

Dim i, num, suma, primer, segon

WScript.StdOut.WriteLine "Nombre = "
num = WScript.StdIn.ReadLine

if (num > 0) Then
	if (num < 2) Then
		WScript.StdOut.WriteLine "f(1)=1"
	else
		primer = 0
		segon = 1
		for i = 2 to num
			suma = primer + segon
			primer = segon
			segon = suma
		next
		WScript "f( " & num & ") = " & suma
	end if
else
	WScript.StdOut.WriteLine "f(0)=0" 
end if

WScript.Quit