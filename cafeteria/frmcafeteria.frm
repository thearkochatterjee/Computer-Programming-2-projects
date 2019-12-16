VERSION 5.00
Begin VB.Form frmhbar 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cafeteria-Horizontal Bar Graph"
   ClientHeight    =   7380
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   11340
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7380
   ScaleWidth      =   11340
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox lstkey 
      Height          =   3375
      Left            =   2100
      TabIndex        =   17
      Top             =   3240
      Width           =   1215
   End
   Begin VB.HScrollBar hsbzoom 
      Height          =   435
      Left            =   8040
      TabIndex        =   6
      Top             =   6360
      Width           =   2715
   End
   Begin VB.TextBox txtzoom 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6660
      TabIndex        =   5
      Text            =   "txtzoom"
      Top             =   6360
      Width           =   1215
   End
   Begin VB.CommandButton cmdclear 
      Caption         =   "Clear"
      Height          =   795
      Left            =   480
      TabIndex        =   3
      Top             =   1260
      Width           =   2535
   End
   Begin VB.CommandButton cmdstart 
      Caption         =   "Start"
      Height          =   855
      Left            =   480
      TabIndex        =   2
      Top             =   360
      Width           =   2535
   End
   Begin VB.PictureBox pic1 
      AutoRedraw      =   -1  'True
      Height          =   5775
      Left            =   5040
      ScaleHeight     =   5715
      ScaleWidth      =   5715
      TabIndex        =   1
      Top             =   360
      Width           =   5775
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "tally"
         Height          =   195
         Index           =   9
         Left            =   840
         TabIndex        =   16
         Top             =   5340
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "tally"
         Height          =   195
         Index           =   8
         Left            =   840
         TabIndex        =   15
         Top             =   4920
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "tally"
         Height          =   195
         Index           =   7
         Left            =   840
         TabIndex        =   14
         Top             =   4380
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "tally"
         Height          =   195
         Index           =   6
         Left            =   900
         TabIndex        =   13
         Top             =   3780
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "tally"
         Height          =   195
         Index           =   5
         Left            =   900
         TabIndex        =   12
         Top             =   3120
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "tally"
         Height          =   195
         Index           =   4
         Left            =   900
         TabIndex        =   11
         Top             =   2580
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "tally"
         Height          =   195
         Index           =   3
         Left            =   900
         TabIndex        =   10
         Top             =   1920
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "tally"
         Height          =   195
         Index           =   2
         Left            =   900
         TabIndex        =   9
         Top             =   1380
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "tally"
         Height          =   195
         Index           =   1
         Left            =   900
         TabIndex        =   8
         Top             =   900
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "tally"
         Height          =   195
         Index           =   0
         Left            =   840
         TabIndex        =   7
         Top             =   360
         Width           =   270
      End
   End
   Begin VB.ListBox lsttallies 
      Height          =   3375
      Left            =   480
      TabIndex        =   0
      Top             =   3240
      Width           =   1395
   End
   Begin VB.Label lbltopic 
      AutoSize        =   -1  'True
      Caption         =   "topic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   9
      Left            =   3960
      TabIndex        =   27
      Top             =   5700
      Width           =   855
   End
   Begin VB.Label lbltopic 
      AutoSize        =   -1  'True
      Caption         =   "topic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   8
      Left            =   3960
      TabIndex        =   26
      Top             =   5100
      Width           =   855
   End
   Begin VB.Label lbltopic 
      AutoSize        =   -1  'True
      Caption         =   "topic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   7
      Left            =   4020
      TabIndex        =   25
      Top             =   4680
      Width           =   855
   End
   Begin VB.Label lbltopic 
      AutoSize        =   -1  'True
      Caption         =   "topic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   6
      Left            =   4020
      TabIndex        =   24
      Top             =   3960
      Width           =   855
   End
   Begin VB.Label lbltopic 
      AutoSize        =   -1  'True
      Caption         =   "topic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   5
      Left            =   4020
      TabIndex        =   23
      Top             =   3480
      Width           =   855
   End
   Begin VB.Label lbltopic 
      AutoSize        =   -1  'True
      Caption         =   "topic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   4
      Left            =   3960
      TabIndex        =   22
      Top             =   2880
      Width           =   855
   End
   Begin VB.Label lbltopic 
      AutoSize        =   -1  'True
      Caption         =   "topic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   3
      Left            =   4020
      TabIndex        =   21
      Top             =   2220
      Width           =   855
   End
   Begin VB.Label lbltopic 
      AutoSize        =   -1  'True
      Caption         =   "topic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   2
      Left            =   4020
      TabIndex        =   20
      Top             =   1740
      Width           =   855
   End
   Begin VB.Label lbltopic 
      AutoSize        =   -1  'True
      Caption         =   "topic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   1
      Left            =   4020
      TabIndex        =   19
      Top             =   1260
      Width           =   855
   End
   Begin VB.Label lbltopic 
      AutoSize        =   -1  'True
      Caption         =   "topic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   0
      Left            =   3960
      TabIndex        =   18
      Top             =   780
      Width           =   855
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Zoom out:"
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
      Left            =   4620
      TabIndex        =   4
      Top             =   6360
      Width           =   1965
   End
   Begin VB.Menu mnuline 
      Caption         =   "Line Graph"
   End
   Begin VB.Menu mnuhistogram 
      Caption         =   "Histogram"
   End
   Begin VB.Menu mnuvbar 
      Caption         =   "Vertical Bar Graph"
   End
   Begin VB.Menu mnupie 
      Caption         =   "Pie Graph"
   End
   Begin VB.Menu mnuexit 
      Caption         =   "Exit"
   End
End
Attribute VB_Name = "frmhbar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ta As Double
Dim Y As Long
Dim tallies(10) As Long
Dim rankings(9999999) As Long
Dim num As Long
Dim topic1 As String
Dim topic2 As String
Dim topic3 As String
Dim topic4 As String
Dim topic5 As String
Dim sxp(5) As Long
Dim syp(5) As Long
Dim exp(5) As Long
Dim eyp(5) As Long
Dim base As Double
Dim sc As Long
Const topedge = 0.7
Const bottomedge = 0.3
Dim t(10) As String
Dim tnum As Long
Dim arrcname(15) As String

Private Sub cmdclear_Click()
lsttallies.Clear
pic1.Cls
txtzoom.Text = ""
hsbzoom.Value = 1
For i = 0 To 9
    lbltally(i).Caption = ""
    lbltally(i).Visible = False
    lbltopic(i).Caption = ""
Next i
pic1.Cls
For i = 1 To 10
    tallies(i) = 0
Next i
For i = 1 To 9999999
    rankings(i) = 0
Next i
lstkey.Clear
End Sub

Private Sub cmdstart_Click()
tnum = Val(InputBox("How many topics would you like there to be?", "Amount of Numbers", "5"))
If tnum > 10 Or tnum < 0 Then
    MsgBox ("You can not do this onlyh up to 10")
    tnum = 5
End If
For i = 1 To tnum
    t(i) = LCase(Trim(InputBox("What is the topic you would like to enter?", "Topic", "")))
Next i
For i = 1 To 10
lbltopic(i - 1).Caption = t(i)
Next i
ta = tnum
num = Val(Trim(InputBox("How many numbers you you like there to be entered?", "Amount of Numbers", "30")))
sc = num
txtzoom.Text = sc
hsbzoom.Max = sc + 200
hsbzoom.Value = sc
pic1.Scale (0, 0)-(sc, 10)
arrcname(1) = "Black"
arrcname(2) = "Blue"
arrcname(3) = "Green"
arrcname(4) = "Cyan"
arrcname(5) = "Red"
arrcname(6) = "Magenta"
arrcname(7) = "Yellow"
arrcname(8) = "White"
arrcname(9) = "Gray"
arrcname(10) = "Light Blue"
arrcname(11) = "Light Green"
arrcname(12) = "Light Cyan"
arrcname(13) = "Light Red"
arrcname(14) = "Light Magenta"
arrcname(15) = "Light Yellow"
For i = 1 To ta
    lstkey.AddItem Str(i) + "-" + t(i) + "-" + arrcname(i)
Next i
Randomize
For i = 1 To num
    rankings(i) = Int(Rnd * ta) + 1
    tallies(rankings(i)) = tallies(rankings(i)) + 1
Next i
For i = 1 To ta
    lsttallies.AddItem Str(i) + "-" + Str(tallies(i))
    pic1.Line (0, i - topedge)-(tallies(i), i - bottomedge), QBColor(i), BF
    lbltally(i - 1).Left = tallies(i) + 1
    lbltally(i - 1).Visible = True
    lbltally(i - 1).Caption = tallies(i)
Next i
End Sub

Private Sub Form_Load()
hsbzoom.Min = 1
hsbzoom.Max = 10000
hsbzoom.LargeChange = 10
hsbzoom.SmallChange = 1
For i = 1 To 5
    tallies(i) = 0
Next i
ta = 1
End Sub

Private Sub hsbzoom_Change()
txtzoom.Text = hsbzoom.Value
pic1.Cls
sc = Val(Trim(txtzoom.Text))
pic1.Scale (0, 0)-(sc, 10)
For i = 1 To ta
    pic1.Line (0, i - topedge)-(tallies(i), i - bottomedge), QBColor(i), BF
    lbltally(i - 1).Left = tallies(i) + 1
    lbltally(i - 1).Visible = True
    lbltally(i - 1).Caption = tallies(i)
Next i
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub mnuhistogram_Click()
frmhg.Show
frmhbar.Hide
End Sub

Private Sub mnuline_Click()
frmline.Show
frmhbar.Hide
MsgBox ("This shows change over time make sure your topic involve change oer time.")
End Sub

Private Sub mnupie_Click()
frmpie.Show
frmhbar.Hide
End Sub

Private Sub mnuvbar_Click()
frmvbar.Show
frmhbar.Hide
End Sub

Private Sub txtzoom_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    pic1.Cls
    sc = Val(Trim(txtzoom.Text))
    If sc = 0 Or sc < 0 Or sc > 9999999 Then
        MsgBox ("This will not work you cant have zero. Please try again.")
        sc = num + 2
    Else
    pic1.Scale (0, 0)-(sc, ta)
    For i = 1 To tnum
        pic1.Line (0, i - topedge)-(tallies(i), i - bottomedge), QBColor(i), BF
    Next i
    End If
End If
End Sub
