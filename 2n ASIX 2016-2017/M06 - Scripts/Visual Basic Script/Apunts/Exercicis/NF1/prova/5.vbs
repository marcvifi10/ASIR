Option Explicit

Dim num, i, primer, segon, suma

WScript.StdOut.WriteLine "Entra la posició que vols saber de la successió de Fibbonaci: "
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
		
		WScript.StdOut.WriteLine "f(" & num & ") = " & suma
	end if
else

WScript.StdOut.WriteLine "f(0)=0"

end if

WScript.Quit
