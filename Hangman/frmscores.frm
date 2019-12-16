VERSION 5.00
Begin VB.Form frmscores 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Scores"
   ClientHeight    =   6585
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   8385
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6585
   ScaleWidth      =   8385
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timert10 
      Interval        =   10
      Left            =   7140
      Top             =   1920
   End
   Begin VB.Timer Timers 
      Interval        =   100
      Left            =   6960
      Top             =   840
   End
   Begin VB.Timer Timero 
      Interval        =   10
      Left            =   6600
      Top             =   420
   End
   Begin VB.ListBox lstall 
      Height          =   3960
      Left            =   720
      Sorted          =   -1  'True
      TabIndex        =   4
      Top             =   780
      Width           =   2175
   End
   Begin VB.ListBox lstt10 
      Height          =   3960
      Left            =   3420
      TabIndex        =   3
      Top             =   840
      Width           =   2355
   End
   Begin VB.TextBox txtscores 
      Height          =   4035
      Left            =   6000
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Text            =   "frmscores.frx":0000
      Top             =   2040
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Top Ten"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Index           =   2
      Left            =   3360
      TabIndex        =   7
      Top             =   180
      Width           =   2190
   End
   Begin VB.Label lblswn 
      AutoSize        =   -1  'True
      Height          =   195
      Left            =   2820
      TabIndex        =   6
      Top             =   240
      Visible         =   0   'False
      Width           =   45
   End
   Begin VB.Label lblpath 
      Caption         =   "path"
      Height          =   435
      Left            =   7380
      TabIndex        =   5
      Top             =   -60
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "All Scores"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Index           =   1
      Left            =   480
      TabIndex        =   2
      Top             =   120
      Width           =   2595
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Top Ten"
      Height          =   195
      Index           =   0
      Left            =   5700
      TabIndex        =   1
      Top             =   360
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Menu mnuback 
      Caption         =   "Back"
   End
   Begin VB.Menu mnuexit 
      Caption         =   "Exit"
   End
End
Attribute VB_Name = "frmscores"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim path As String
Dim arrt10(10) As Double
Dim num As Double
Dim s As Long

Private Sub Form_Activate()
path = "F:\arko\Computer Programming 2 projects\Hangman\scores.txt"
Open path For Input As #1
Dim filesize As Integer
filesize = LOF(1)
txtscores = Input(filesize, #1)
Close #1
If frmhangman.lblwin.Caption = "You Win" Then
txtscores.Text = txtscores.Text + vbCrLf + lblswn.Caption
Else
txtscores.Text = txtscores.Text
End If
If frmhangman.lblwin.Caption = "You Win" Then
lstall.AddItem lblswn.Caption
End If
End Sub

Private Sub mnuback_Click()
frmhangman.Show
frmscores.Hide
'End
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub Timero_Timer()
lstall.Clear
strfn = "scores"
path = "F:\arko\Computer Programming 2 projects\Hangman\scores.txt"
Open path For Input As #1
Dim i As Long
Dim strline As String
For i = 1 To 999999999
    If EOF(1) Then
        Exit For
    End If
    Line Input #1, strline
    strline = Trim(strline)
    If Len(strline) <> 0 Then
        lstall.AddItem strline
    End If
Next i
Close #1
Timero.Enabled = False
End Sub

Private Sub Timers_Timer()
path = "F:\arko\Computer Programming 2 projects\Hangman\scores.txt"
Open path For Output As #1
Print #1, txtscores
Close #1
End Sub

Private Sub Timert10_Timer()
num = lstall.ListCount - 1
lstt10.Clear
lstt10.AddItem (lstall.List(num))
lstt10.AddItem (lstall.List(num - 1))
lstt10.AddItem (lstall.List(num - 2))
lstt10.AddItem (lstall.List(num - 3))
lstt10.AddItem (lstall.List(num - 4))
lstt10.AddItem (lstall.List(num - 5))
lstt10.AddItem (lstall.List(num - 6))
lstt10.AddItem (lstall.List(num - 7))
lstt10.AddItem (lstall.List(num - 8))
lstt10.AddItem (lstall.List(num - 9))
End Sub
