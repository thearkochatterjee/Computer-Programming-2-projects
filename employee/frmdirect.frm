VERSION 5.00
Begin VB.Form frmdirect 
   BackColor       =   &H0095D2D2&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   7305
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   10995
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7305
   ScaleWidth      =   10995
   StartUpPosition =   3  'Windows Default
   Begin VB.FileListBox fil1 
      BackColor       =   &H0027BCAA&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6165
      Left            =   6120
      TabIndex        =   4
      Top             =   480
      Width           =   4815
   End
   Begin VB.DirListBox Dir1 
      BackColor       =   &H0027BCAA&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6210
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   5895
   End
   Begin VB.DriveListBox drv1 
      BackColor       =   &H0027BCAA&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   10815
   End
   Begin VB.TextBox txtpath 
      BackColor       =   &H0027BCAA&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   780
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   6780
      Width           =   10095
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Path:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   120
      TabIndex        =   0
      Top             =   6780
      Width           =   630
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
Private Sub Dir1_Change()
fil1.path = Dir1.path
End Sub

Private Sub drv1_Change()
Dir1.path = Left(drv1.Drive, 1) & ":\"
End Sub

Private Sub fil1_Click()
fil1 = fil1.path
If Right$(fil1, 1) <> "\" Then fil1 = fil1 & "\"
txtpath.Text = Dir1.path + fil1.FileName
End Sub

Private Sub Form_Load()
fil1.Pattern = "*.dat"
End Sub

Private Sub mnuback_Click()
   On Error GoTo mnuback_Click_Error

path = txtpath.Text
frmdirect.Hide
Open path For Random Access Read As #1 Len = 100
i = 1
Do While Not EOF(1)
Get #1, i, arremploy(i)
i = i + 1
Loop
Close #1
num = i - 2
For i = 1 To num
If arremploy(i).age <> 0 Then
frmemployee.lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + " " + arremploy(i).saltype + " " + Str(arremploy(i).dep)
End If
Next i
frmemployee.lblnume.Caption = "Number of Employees: " + Str(frmemployee.lstem.ListCount)

   On Error GoTo 0
   Exit Sub

mnuback_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnuback_Click of Form frmdirect"
End Sub
