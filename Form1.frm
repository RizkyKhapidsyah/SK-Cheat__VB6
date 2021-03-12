VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Cheat"
   ClientHeight    =   5370
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7935
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5370
   ScaleWidth      =   7935
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command3 
      Caption         =   "More Cheats"
      Height          =   495
      Left            =   5400
      TabIndex        =   8
      Top             =   840
      Width           =   2055
   End
   Begin VB.CommandButton Command2 
      Caption         =   "EXIT"
      Height          =   375
      Left            =   360
      TabIndex        =   7
      ToolTipText     =   "Just if you want to exit... :("
      Top             =   4680
      Width           =   735
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   315
      Left            =   360
      Locked          =   -1  'True
      TabIndex        =   6
      ToolTipText     =   "Location of the file"
      Top             =   3840
      Width           =   2775
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   360
      TabIndex        =   5
      ToolTipText     =   "Choose a drive"
      Top             =   360
      Width           =   2775
   End
   Begin VB.FileListBox File1 
      Height          =   1455
      Left            =   360
      Pattern         =   "prophecy.exe"
      TabIndex        =   4
      ToolTipText     =   "This shows a Prophecy.exe file"
      Top             =   2280
      Width           =   2775
   End
   Begin VB.DirListBox Dir1 
      Height          =   1440
      Left            =   360
      TabIndex        =   2
      ToolTipText     =   "Choose a folder"
      Top             =   720
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CHEAT"
      Enabled         =   0   'False
      Height          =   735
      Left            =   3480
      TabIndex        =   0
      ToolTipText     =   "CHEAT button"
      Top             =   2880
      Width           =   2655
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Prophecy.exe location:"
      ForeColor       =   &H0000FFFF&
      Height          =   195
      Left            =   360
      TabIndex        =   3
      Top             =   120
      Width           =   1620
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "First locate the ""Prophecy.exe"" and the click on the CHEAT button and there you go!!"
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   3360
      TabIndex        =   1
      Top             =   240
      Width           =   3255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
DoTheCheat
End Sub

Private Sub Command2_Click()
MsgBox "Bay-Bay !!", vbExclamation, "About"
End
End Sub

Private Sub Command3_Click()
Dim Msg
Msg = "Write this codes in Cockpit:" & Chr(10)
Msg = Msg & Chr(10)
Msg = Msg & "Debug mode: dznomite" & Chr(10)
Msg = Msg & "with 'CTRL+I'   god mode" & Chr(10)
Msg = Msg & "with 'CTRL+F12' destroy the target" & Chr(10)
Msg = Msg & "with 'CTRL+FC'  no clipping" & Chr(10)
Msg = Msg & "with 'CTRL+K'   sucide" & Chr(10)
Msg = Msg & Chr(10)
Msg = Msg & "Radio mode: moretunes" & Chr(10)
Msg = Msg & Chr(10)
Msg = Msg & "with 'page up'   next song" & Chr(10)
Msg = Msg & "with 'page down' last song" & Chr(10)
Msg = Msg & "with 'end'       orchester music" & Chr(10)
Msg = Msg & "with 'pos1'      industrial music" & Chr(10)
meg = Msg & Chr(10)

MsgBox Msg

End Sub

Private Sub Command4_Click()
Form3.Visible = True

End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path

End Sub

Private Sub Drive1_Change()
On Error GoTo eror:
Dir1.Path = Drive1.Drive
Exit Sub
eror:
Dim a, b, c, d
a = "Error: " & Err & ". The drive '" & Drive1.Drive & "' is not accasible !!"
b = vbCritical + vbOKOnly
c = "Error"
d = MsgBox(a, b, c)
Drive1.Drive = "C:\"

End Sub

Private Sub File1_Click()
If Right(File1.Path, 1) <> "\" Then
       Text1.Text = File1.Path & "\" & File1.FileName
Else
       Text1.Text = File1.Path & File1.FileName
End If

End Sub

Private Sub Text1_Change()
Command1.Enabled = True

End Sub
