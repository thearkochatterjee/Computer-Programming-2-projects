VERSION 5.00
Begin VB.Form frmline 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cafeteria-Line Graph"
   ClientHeight    =   6135
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   9120
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6135
   ScaleWidth      =   9120
   StartUpPosition =   3  'Windows Default
   Begin VB.HScrollBar hsbzoom 
      Height          =   495
      Left            =   120
      TabIndex        =   16
      Top             =   2040
      Visible         =   0   'False
      Width           =   2895
   End
   Begin VB.TextBox txtzoom 
      Height          =   495
      Left            =   2160
      TabIndex        =   15
      Text            =   "Text1"
      Top             =   1320
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.ListBox lsttallies 
      Height          =   2205
      Left            =   120
      TabIndex        =   8
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmdclear 
      Caption         =   "Clear"
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   720
      Width           =   1335
   End
   Begin VB.CommandButton cmdstart 
      Caption         =   "Start"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
   Begin VB.PictureBox pic1 
      AutoRedraw      =   -1  'True
      Height          =   5415
      Left            =   3480
      ScaleHeight     =   5355
      ScaleWidth      =   5355
      TabIndex        =   0
      Top             =   60
      Width           =   5415
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   9
         Left            =   4860
         TabIndex        =   26
         Top             =   240
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   8
         Left            =   4320
         TabIndex        =   25
         Top             =   360
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   7
         Left            =   3840
         TabIndex        =   24
         Top             =   480
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   6
         Left            =   3420
         TabIndex        =   23
         Top             =   840
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   5
         Left            =   3060
         TabIndex        =   22
         Top             =   1080
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   4
         Left            =   2520
         TabIndex        =   7
         Top             =   1140
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   3
         Left            =   1740
         TabIndex        =   6
         Top             =   1140
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   2
         Left            =   1320
         TabIndex        =   5
         Top             =   1020
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   1
         Left            =   840
         TabIndex        =   4
         Top             =   960
         Width           =   270
      End
      Begin VB.Label lbltally 
         AutoSize        =   -1  'True
         Caption         =   "tally"
         Height          =   195
         Index           =   0
         Left            =   240
         TabIndex        =   3
         Top             =   900
         Width           =   270
      End
   End
   Begin VB.Label lbltopic10 
      AutoSize        =   -1  'True
      Caption         =   "Topic 10"
      Height          =   195
      Left            =   8460
      TabIndex        =   21
      Top             =   5580
      Width           =   630
   End
   Begin VB.Label lbltopic9 
      AutoSize        =   -1  'True
      Caption         =   "Topic 9"
      Height          =   195
      Left            =   7920
      TabIndex        =   20
      Top             =   5580
      Width           =   540
   End
   Begin VB.Label lbltopic8 
      AutoSize        =   -1  'True
      Caption         =   "Topic 8"
      Height          =   195
      Left            =   7380
      TabIndex        =   19
      Top             =   5580
      Width           =   540
   End
   Begin VB.Label lbltopic7 
      AutoSize        =   -1  'True
      Caption         =   "Topic 7"
      Height          =   195
      Left            =   6840
      TabIndex        =   18
      Top             =   5580
      Width           =   540
   End
   Begin VB.Label lbltopic6 
      AutoSize        =   -1  'True
      Caption         =   "Topic 6"
      Height          =   195
      Left            =   6300
      TabIndex        =   17
      Top             =   5580
      Width           =   540
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
      Left            =   120
      TabIndex        =   14
      Top             =   1440
      Visible         =   0   'False
      Width           =   1965
   End
   Begin VB.Label lbltopic5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Topic 5"
      Height          =   195
      Left            =   5700
      TabIndex        =   13
      Top             =   5580
      Width           =   540
   End
   Begin VB.Label lbltopic4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Topic 4"
      Height          =   195
      Left            =   5160
      TabIndex        =   12
      Top             =   5580
      Width           =   540
   End
   Begin VB.Label lbltopic3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Topic 3"
      Height          =   195
      Left            =   4620
      TabIndex        =   11
      Top             =   5580
      Width           =   540
   End
   Begin VB.Label lbltopic2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Topic 2"
      Height          =   195
      Left            =   4080
      TabIndex        =   10
      Top             =   5580
      Width           =   540
   End
   Begin VB.Label lbltopic1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Topic 1"
      Height          =   195
      Left            =   3540
      TabIndex        =   9
      Top             =   5580
      Width           =   540
   End
   Begin VB.Menu mnuhbar 
      Caption         =   "Horizontal Bar Graph"
   End
   Begin VB.Menu mnuvbar 
      Caption         =   "Vertical Bar Graph"
   End
   Begin VB.Menu mnuhist 
      Caption         =   "Histogram"
   End
   Begin VB.Menu mnupie 
      Caption         =   "Pie Graph"
   End
   Begin VB.Menu mnuexit 
      Caption         =   "Exit"
   End
End
Attribute VB_Name = "frmline"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim topic1 As String
Dim topic2 As String
Dim topic3 As String
Dim topic4 As String
Dim topic5 As String
Dim i As Long
Dim num As Long
Dim sc As Double
Dim ranking(9999999) As Long
Dim tallies(10) As Long
Dim x(10) As Double
Dim Y(10) As Double
Dim tnum As Long
Dim ta As Long
Dim t(10) As String

Private Sub cmdclear_Click()
pic1.Cls
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
For i = 1 To 10
    tallies(i) = 0
    t(i) = ""
    lbltally(i - 1).Caption = ""
Next i
lsttallies.Clear
End Sub

Private Sub cmdstart_Click()
tnum = Val(InputBox("How many topics would you like to have?", "Amount of Topics", ""))
If tnum > 10 Or tnum < 1 Then
MsgBox ("You cannot have more than 10 or less than 1!")
tnum = 5
End If
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
num = Val(Trim(InputBox("How many numbers would you like generated?", "Amount of Numbers", "")))
sc = num
ta = tnum
pic1.Scale (0, sc)-(10, 0)
Randomize
For i = 1 To num
    ranking(i) = Int(Rnd * ta) + 1
    tallies(ranking(i)) = tallies(ranking(i)) + 1
Next i
For i = 1 To ta
    lsttallies.AddItem Str(i) + "-" + Str(tallies(i))
    x(i) = lbltally(i - 1).Left
    lbltally(i - 1).Top = tallies(i) + 1
    Y(i) = tallies(i) + 1
    lbltally(i - 1).Visible = True
    lbltally(i - 1).Caption = tallies(i)
Next i
If ta = 1 Then
pic1.Circle (x(1), Y(1)), 0.25, QBColor(1)
ElseIf ta = 2 Then
pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
ElseIf ta = 3 Then
pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
pic1.Line (x(2), Y(2))-(x(3), Y(3)), QBColor(2)
ElseIf ta = 4 Then
pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
pic1.Line (x(2), Y(2))-(x(3), Y(3)), QBColor(2)
pic1.Line (x(3), Y(3))-(x(4), Y(4)), QBColor(3)
ElseIf ta = 5 Then
pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
pic1.Line (x(2), Y(2))-(x(3), Y(3)), QBColor(2)
pic1.Line (x(3), Y(3))-(x(4), Y(4)), QBColor(3)
pic1.Line (x(4), Y(4))-(x(5), Y(5)), QBColor(4)
ElseIf ta = 6 Then
pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
pic1.Line (x(2), Y(2))-(x(3), Y(3)), QBColor(2)
pic1.Line (x(3), Y(3))-(x(4), Y(4)), QBColor(3)
pic1.Line (x(4), Y(4))-(x(5), Y(5)), QBColor(4)
pic1.Line (x(5), Y(5))-(x(6), Y(6)), QBColor(5)
ElseIf ta = 7 Then
pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
pic1.Line (x(2), Y(2))-(x(3), Y(3)), QBColor(2)
pic1.Line (x(3), Y(3))-(x(4), Y(4)), QBColor(3)
pic1.Line (x(4), Y(4))-(x(5), Y(5)), QBColor(4)
pic1.Line (x(5), Y(5))-(x(6), Y(6)), QBColor(5)
pic1.Line (x(6), Y(6))-(x(7), Y(7)), QBColor(6)
ElseIf ta = 8 Then
pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
pic1.Line (x(2), Y(2))-(x(3), Y(3)), QBColor(2)
pic1.Line (x(3), Y(3))-(x(4), Y(4)), QBColor(3)
pic1.Line (x(4), Y(4))-(x(5), Y(5)), QBColor(4)
pic1.Line (x(5), Y(5))-(x(6), Y(6)), QBColor(5)
pic1.Line (x(6), Y(6))-(x(7), Y(7)), QBColor(6)
pic1.Line (x(7), Y(7))-(x(8), Y(8)), QBColor(7)
ElseIf ta = 9 Then
pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
pic1.Line (x(2), Y(2))-(x(3), Y(3)), QBColor(2)
pic1.Line (x(3), Y(3))-(x(4), Y(4)), QBColor(3)
pic1.Line (x(4), Y(4))-(x(5), Y(5)), QBColor(4)
pic1.Line (x(5), Y(5))-(x(6), Y(6)), QBColor(5)
pic1.Line (x(6), Y(6))-(x(7), Y(7)), QBColor(6)
pic1.Line (x(7), Y(7))-(x(8), Y(8)), QBColor(7)
pic1.Line (x(8), Y(8))-(x(9), Y(9)), QBColor(8)
ElseIf ta = 10 Then
pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
pic1.Line (x(2), Y(2))-(x(3), Y(3)), QBColor(2)
pic1.Line (x(3), Y(3))-(x(4), Y(4)), QBColor(3)
pic1.Line (x(4), Y(4))-(x(5), Y(5)), QBColor(4)
pic1.Line (x(5), Y(5))-(x(6), Y(6)), QBColor(5)
pic1.Line (x(6), Y(6))-(x(7), Y(7)), QBColor(6)
pic1.Line (x(7), Y(7))-(x(8), Y(8)), QBColor(7)
pic1.Line (x(8), Y(8))-(x(9), Y(9)), QBColor(8)
pic1.Line (x(9), Y(9))-(x(10), Y(10)), QBColor(9)
End If
End Sub

Private Sub Form_Load()
hsbzoom.Min = 1
hsbzoom.Max = 1000
sc = 1
End Sub

Private Sub hsbzoom_Change()
pic1.Cls
txtzoom.Text = hsbzoom.Value
'pic1.Scale (0, 0)-(sc, 5)
pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
pic1.Line (x(2), Y(2))-(x(3), Y(3)), QBColor(2)
pic1.Line (x(3), Y(3))-(x(4), Y(4)), QBColor(3)
pic1.Line (x(4), Y(4))-(x(5), Y(5)), QBColor(4)
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub mnuhbar_Click()
frmhbar.Show
frmline.Hide
End Sub

Private Sub mnuhist_Click()
frmhg.Show
frmline.Hide
End Sub

Private Sub mnupie_Click()
frmpie.Show
frmline.Hide
End Sub

Private Sub mnuvbar_Click()
frmvbar.Show
frmline.Hide
End Sub

Private Sub txtzoom_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    pic1.Cls
    sc = Val(Trim(txtzoom.Text))
    If sc = 0 Or sc < 0 Or sc > 9999999 Then
        MsgBox ("This will not work you cant have zero. Please try again.")
        sc = num + 2
    Else
    pic1.Scale (0, 0)-(sc, 5)
    pic1.Line (x(1), Y(1))-(x(2), Y(2)), QBColor(1)
    pic1.Line (x(2), Y(2))-(x(3), Y(3)), QBColor(2)
    pic1.Line (x(3), Y(3))-(x(4), Y(4)), QBColor(3)
    pic1.Line (x(4), Y(4))-(x(5), Y(5)), QBColor(4)
    hsbzoom.Value = Val(Trim(txtzoom.Text))
    End If
End If
End Sub
