VERSION 5.00
Begin VB.Form frmhg 
   BackColor       =   &H8000000B&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cafeteria-Histogram"
   ClientHeight    =   7305
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   9570
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7305
   ScaleWidth      =   9570
   StartUpPosition =   3  'Windows Default
   Begin VB.HScrollBar hsbzoom 
      Height          =   375
      Left            =   600
      TabIndex        =   16
      Top             =   6240
      Width           =   3495
   End
   Begin VB.TextBox txtzoom 
      Height          =   495
      Left            =   2640
      TabIndex        =   14
      Text            =   "Text1"
      Top             =   5760
      Width           =   1455
   End
   Begin VB.ListBox lsttallies 
      Height          =   2790
      Left            =   240
      TabIndex        =   8
      Top             =   2280
      Width           =   1815
   End
   Begin VB.CommandButton cmdclear 
      Caption         =   "Clear"
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   720
      Width           =   1815
   End
   Begin VB.CommandButton cmdstart 
      Caption         =   "Start"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1815
   End
   Begin VB.PictureBox pic1 
      Height          =   5175
      Left            =   4200
      ScaleHeight     =   5115
      ScaleWidth      =   5115
      TabIndex        =   0
      Top             =   120
      Width           =   5175
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   9
         Left            =   4680
         TabIndex        =   26
         Top             =   900
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   8
         Left            =   4140
         TabIndex        =   25
         Top             =   1140
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   7
         Left            =   3780
         TabIndex        =   24
         Top             =   1380
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   6
         Left            =   3360
         TabIndex        =   23
         Top             =   1620
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   5
         Left            =   2940
         TabIndex        =   22
         Top             =   1800
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   4
         Left            =   2460
         TabIndex        =   13
         Top             =   1800
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   3
         Left            =   1860
         TabIndex        =   12
         Top             =   1740
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   2
         Left            =   1500
         TabIndex        =   11
         Top             =   1740
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   1
         Left            =   780
         TabIndex        =   10
         Top             =   1800
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   0
         Left            =   180
         TabIndex        =   9
         Top             =   1740
         Width           =   270
      End
   End
   Begin VB.Label lbltopic10 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000B&
      Caption         =   "topic 10"
      Height          =   195
      Left            =   8640
      TabIndex        =   21
      Top             =   5640
      Width           =   570
   End
   Begin VB.Label lbltopic9 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000B&
      Caption         =   "topic9"
      Height          =   195
      Left            =   8340
      TabIndex        =   20
      Top             =   5400
      Width           =   435
   End
   Begin VB.Label lbltopic8 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000B&
      Caption         =   "topic8"
      Height          =   195
      Left            =   7740
      TabIndex        =   19
      Top             =   5640
      Width           =   435
   End
   Begin VB.Label lbltopic7 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000B&
      Caption         =   "topic7"
      Height          =   195
      Left            =   7320
      TabIndex        =   18
      Top             =   5340
      Width           =   435
   End
   Begin VB.Label lbltopic6 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000B&
      Caption         =   "topic6"
      Height          =   195
      Left            =   6840
      TabIndex        =   17
      Top             =   5580
      Width           =   435
   End
   Begin VB.Label Label1 
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
      Left            =   600
      TabIndex        =   15
      Top             =   5760
      Width           =   1965
   End
   Begin VB.Label lbltopic5 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000B&
      Caption         =   "topic 5"
      Height          =   195
      Left            =   6360
      TabIndex        =   7
      Top             =   5340
      Width           =   480
   End
   Begin VB.Label lbltopic4 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000B&
      Caption         =   "topic 4"
      Height          =   195
      Left            =   5760
      TabIndex        =   6
      Top             =   5580
      Width           =   480
   End
   Begin VB.Label lbltopic3 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000B&
      Caption         =   "topic 3"
      Height          =   195
      Left            =   5400
      TabIndex        =   5
      Top             =   5340
      Width           =   480
   End
   Begin VB.Label lbltopic2 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000B&
      Caption         =   "topic 2"
      Height          =   195
      Left            =   4980
      TabIndex        =   4
      Top             =   5580
      Width           =   480
   End
   Begin VB.Label lbltopic1 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000B&
      Caption         =   "topic 1"
      Height          =   195
      Left            =   4440
      TabIndex        =   3
      Top             =   5400
      Width           =   480
   End
   Begin VB.Menu mnuhbar 
      Caption         =   "Horizontal Bar Graph"
   End
   Begin VB.Menu mnuvbar 
      Caption         =   "Vertical Bar Graph"
   End
   Begin VB.Menu mnupie 
      Caption         =   "Pie Chart"
   End
   Begin VB.Menu mnuline 
      Caption         =   "Line Graph"
   End
   Begin VB.Menu mnuexit 
      Caption         =   "Exit"
   End
End
Attribute VB_Name = "frmhg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Y As Long
Dim tallies(10) As Long
Dim rankings(9999999) As Long
Dim num As Long
Dim topic1 As String
Dim topic2 As String
Dim topic3 As String
Dim topic4 As String
Dim topic5 As String
Dim sxp(10) As Long
Dim syp(10) As Long
Dim exp(10) As Long
Dim eyp(10) As Long
Dim base As Double
Dim sc As Long
Const topedge = 0.7
Const bottomedge = 0.3
Dim t(10) As String
Dim tnum As Long
Dim ta As Long

Private Sub cmdclear_Click()
lsttallies.Clear
pic1.Cls
txtzoom.Text = ""
hsbzoom.Value = 1
For i = 0 To 9
    lbltally(i).Caption = ""
    lbltally(i).Visible = False
Next i
lbltopic1.Caption = ""
lbltopic2.Caption = ""
lbltopic3.Caption = ""
lbltopic4.Caption = ""
lbltopic5.Caption = ""
lbltopic6.Caption = ""
lbltopic7.Caption = ""
lbltopic8.Caption = ""
lbltopic9.Caption = ""
lbltopic10.Caption = ""
pic1.Cls
For i = 1 To 10
    tallies(i) = 0
    t(i) = ""
Next i
For i = 1 To 9999999
    rankings(i) = 0
Next i
End Sub

Private Sub cmdstart_Click()
tnum = Val(InputBox("How many topics would you like to enter(Max is 10 and Min is 1)?", "How Many Topics", "8"))
For i = 1 To tnum
    t(i) = LCase(Trim(InputBox("What is the topic?", "Topic", Chr(i + 64))))
Next i
lbltopic1.Caption = t(1)
lbltopic2.Caption = t(2)
lbltopic3.Caption = t(3)
lbltopic4.Caption = t(4)
lbltopic5.Caption = t(5)
lbltopic6.Caption = t(6)
lbltopic7.Caption = t(7)
lbltopic8.Caption = t(8)
lbltopic9.Caption = t(9)
lbltopic10.Caption = t(10)
lbltopic1.ForeColor = QBColor(1)
lbltopic2.ForeColor = QBColor(2)
lbltopic3.ForeColor = QBColor(3)
lbltopic4.ForeColor = QBColor(4)
lbltopic5.ForeColor = QBColor(5)
lbltopic6.ForeColor = QBColor(6)
lbltopic7.ForeColor = QBColor(7)
lbltopic8.ForeColor = QBColor(8)
lbltopic9.ForeColor = QBColor(9)
lbltopic10.ForeColor = QBColor(10)
num = Val(Trim(InputBox("How many numbers you you like there to be entered?", "Amount of Numbers", "30")))
sc = num
ta = tnum
txtzoom.Text = sc
hsbzoom.Max = sc + 200
hsbzoom.Value = sc
pic1.Scale (0, sc)-(10, 0)
Randomize
For i = 1 To num
    rankings(i) = Int(Rnd * ta) + 1
    tallies(rankings(i)) = tallies(rankings(i)) + 1
Next i
For i = 1 To ta
    lsttallies.AddItem Str(i) + "-" + Str(tallies(i))
    pic1.Line (i - topedge, 0)-(i + bottomedge, tallies(i)), QBColor(i), BF
    lbltally(i - 1).Top = tallies(i) + 1
    lbltally(i - 1).Visible = True
    lbltally(i - 1).Caption = tallies(i)
Next i
End Sub

Private Sub Form_Load()
hsbzoom.Min = 1
hsbzoom.Max = 10000
hsbzoom.LargeChange = 10
hsbzoom.SmallChange = 1
For i = 1 To 10
    tallies(i) = 0
Next i
End Sub

Private Sub hsbzoom_Change()
txtzoom.Text = hsbzoom.Value
pic1.Cls
sc = Val(Trim(txtzoom.Text))
pic1.Scale (0, sc)-(10, 0)
For i = 1 To 10
    pic1.Line (i - topedge, 0)-(i + bottomedge, tallies(i)), QBColor(i), BF
    lbltally(i - 1).Top = tallies(i) + 1
    lbltally(i - 1).Visible = True
    lbltally(i - 1).Caption = tallies(i)
Next i
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub mnuhbar_Click()
frmhbar.Show
frmhg.Hide
End Sub

Private Sub mnuline_Click()
frmline.Show
frmhg.Hide
MsgBox ("This shows change over time make sure your topic involve change oer time.")
End Sub

Private Sub mnupie_Click()
frmpie.Show
frmhg.Hide
End Sub

Private Sub mnuvbar_Click()
frmvbar.Show
frmhg.Hide
End Sub

Private Sub txtzoom_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    pic1.Cls
    sc = Val(Trim(txtzoom.Text))
    If sc = 0 Or sc < 0 Or sc > 9999999 Then
        MsgBox ("This will not work you cant have zero. Please try again.")
        sc = num + 2
    Else
    pic1.Scale (0, 0)-(sc, 10)
    For i = 1 To 10
        pic1.Line (0, i - topedge)-(tallies(i), i - bottomedge), QBColor(i), BF
    Next i
    End If
End If
End Sub

