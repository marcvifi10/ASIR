Option Explicit

Dim entrada, sortida, num1, num2, operacio, argsambnom

Set argsambnom = WScript.Arguments.Named
Set entrada = WScript.StdIn
Set sortida = WScript.StdOut

num1 = CInt(argsambnom.Item("X"))
num2 = CInt(argsambnom.Item("Y"))
operacio = argsambnom.Item("O")

if (operacio="S") Then
	sortida.WriteLine num1+num2
elseif (operacio="R") Then
	sortida.WriteLine num1-num2
elseif (operacio="M") Then
	sortida.WriteLine num1*num2
elseif (operacio="D") Then
	sortida.WriteLine num1/num2
else
	sortida.WriteLine "ERROR"
end if

WScript.Quit