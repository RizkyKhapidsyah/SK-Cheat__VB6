Attribute VB_Name = "Module1"
Sub DoTheCheat()
Dim handle As Integer
Dim charName As String
Dim i As Integer
Dim c As Byte

handle = FreeFile
''Open the file
Open Form1.Text1.Text For Random As #handle Len = 1
''Go the the place your name is stored (hex 93)
Seek #handle, &H422B8
''Write the name in there, a character at a time
charName = "ê"
For i = 1 To Len(charName)
    c = Asc(Mid(charName, i, 1))
    Put #handle, , c
Next i
Two
End Sub
Sub Two()
Dim handle As Integer
Dim charName As String
Dim i As Integer
Dim c As Byte

handle = FreeFile
''Open the file
Open Form1.Text1.Text For Random As #handle Len = 1
''Go the the place your name is stored (hex 93)
Seek #handle, &H65778
''Write the name in there, a character at a time
charName = "ê"
For i = 1 To Len(charName)
    c = Asc(Mid(charName, i, 1))
    Put #handle, , c
Next i
Three
End Sub
Sub Three()
Dim handle As Integer
Dim charName As String
Dim i As Integer
Dim c As Byte

handle = FreeFile
''Open the file
Open Form1.Text1.Text For Random As #handle Len = 1
''Go the the place your name is stored (hex 93)
Seek #handle, &H659C9 + 1
''Write the name in there, a character at a time
charName = "ê"
For i = 1 To Len(charName)
    c = Asc(Mid(charName, i, 1))
    Put #handle, , c
Next i
MsgBox "Done !!!. Have fun playing !!", vbExclamation, "Dino Soft. by Dean 1999"

End
End Sub
