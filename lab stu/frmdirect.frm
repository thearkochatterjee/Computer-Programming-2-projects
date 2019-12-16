VERSION 5.00
Begin VB.Form frmdirect 
   BackColor       =   &H80000011&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Directory"
   ClientHeight    =   6660
   ClientLeft      =   4800
   ClientTop       =   3315
   ClientWidth     =   9075
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6660
   ScaleWidth      =   9075
   Begin VB.TextBox txtpath 
      BackColor       =   &H80000010&
      Height          =   375
      Left            =   1440
      TabIndex        =   5
      Text            =   "txtpath"
      Top             =   5820
      Width           =   7395
   End
   Begin VB.FileListBox fil1 
      BackColor       =   &H80000010&
      Height          =   4770
      Left            =   4560
      TabIndex        =   2
      Top             =   480
      Width           =   4215
   End
   Begin VB.DirListBox Dir1 
      BackColor       =   &H80000010&
      Height          =   4815
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   4275
   End
   Begin VB.DriveListBox drv1 
      BackColor       =   &H80000010&
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Top             =   60
      Width           =   2175
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Path:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   180
      TabIndex        =   4
      Top             =   5760
      Width           =   1110
   End
   Begin VB.Label lbltype 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Type"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   240
      TabIndex        =   3
      Top             =   5400
      Visible         =   0   'False
      Width           =   720
   End
   Begin VB.Menu mnuback 
      Caption         =   "Back"
   End
End
Attribute VB_Name = "frmdirect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Dir1_Change()
fil1.path = Dir1.path
End Sub

Private Sub drv1_Change()
Dir1.path = Left(drv1.Drive, 1) & ":\"
End Sub

Private Sub fil1_Click()
fil1 = fil1.path
If Right$(fil1, 1) <> "\" Then fil1 = fil1 & "\"
lbltype.Caption = Dir1.path + fil1.FileName
txtpath.Text = lbltype.Caption
End Sub

Private Sub Form_Load()
fil1.Pattern = "*.dat"
End Sub

Private Sub mnuback_Click()
path = txtpath.Text
frmdirect.Hide
Open path For Random Access Read As #1 Len = 100
i = 1
Do While Not EOF(1)
Get #1, i, arrstus(i)
i = i + 1
Loop
Close #1
num = i - 2
For i = 1 To num
frmstu.lststu.AddItem Str(Format((arrstus(i).gpa), "fixed")) + "  " + arrstus(i).firstname + "  " + arrstus(i).lastname + "  " + Str(Int(Format((arrstus(i).grade), "fixed"))) + "  " + Str(Int(Format((arrstus(i).age), "fixed")))
Next i
End Sub
