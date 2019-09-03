4. Construeix un script que rebi un fitxer de text (rutes.txt) per l’entrada estàndar i com arguments sense nom una sèrie d’extensions de fitxer (per exemple: jpg, pdf, doc, etc) i escrigui a un altre fitxer (resultat.txt) aquelles rutes contingudes al primer fitxer (rutes.txt) que tinguin com a extensió de fitxer les indicades com a arguments. Caldrà escriure a un altre fitxer (info.log), aquelles rutes que no continguin un fitxer amb les extensions indicades. Un exemple d’execució de la comanda seria ‘cscript exercici4.vbs rutes.txt jpg doc’, això ens generaria dos fitxers, un amb totes les rutes dels fitxers que tenen les extensions indicades (jpg i doc) i un altre amb les rutes dels fitxers que no pertanyen a les extensions indicades.

c:\fitxer.jpg
c:\fitxer2.jpg
c:\fitxer.doc
c:\alumnes\pere\fotos\andorra.jpg
c:\alumnes\pere\fotos\andorra.gif
c:\alumnes\pere\fotos\resum.pdf
c:\alumnes\pere\fotos\resum-pdf.doc
c:\alumnes\anna\script2.vbs
c:\alumnes\anna\exercici.doc

cscript //nologo exercici4.vbs jpg pdf doc < rutes.txt > valids.txt 2> errors.txt

Option Explicit
Dim cadena, StdIn, StdOut,StdErr, ArgsUnnamed
Set StdIn = Wscript.StdIn
Set StdOut = Wscript.StdOut
Set ArgsUnnamed = Wscript.Arguments.Unnamed
Set StdErr = Wscript.StdErr

Sub tractarExtensio (cadena)
 Do While Not StdIn.AtEndOfStream
     cadena = StdIn.ReadLine
     If LCase(right(cadena,3)) = ArgsUnnamed.Item(0) Or LCase(right(cadena,3)) = ArgsUnnamed.Item(1) Or LCase(right(cadena,3)) = ArgsUnnamed.Item(2) Then
                StdOut.writeline cadena
     Else
         StdErr.writeline cadena
End if
Loop
End sub

if ArgsUnnamed.Count=3 then
    tractarExtensio cadena
else
    StdOut.WriteLine "Error falten arguments"
End if
WScript.Quit