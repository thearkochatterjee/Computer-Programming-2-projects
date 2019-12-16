VERSION 5.00
Begin VB.Form frmpie 
   Caption         =   "Cafeteria Pie Graph"
   ClientHeight    =   7950
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   10305
   LinkTopic       =   "Form2"
   ScaleHeight     =   7950
   ScaleWidth      =   10305
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox lstkey 
      Height          =   1620
      Left            =   2280
      TabIndex        =   19
      Top             =   1920
      Width           =   1455
   End
   Begin VB.ListBox lsttallies 
      Height          =   1815
      Left            =   480
      TabIndex        =   13
      Top             =   1920
      Width           =   1335
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   4800
      TabIndex        =   12
      Top             =   5460
      Width           =   5415
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   5295
      Left            =   4500
      TabIndex        =   11
      Top             =   60
      Width           =   255
   End
   Begin VB.HScrollBar hsbzoom 
      Height          =   315
      Left            =   240
      TabIndex        =   5
      Top             =   4800
      Visible         =   0   'False
      Width           =   3615
   End
   Begin VB.TextBox txtzoom 
      Height          =   495
      Left            =   2400
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   4200
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.CommandButton cmdclear 
      Caption         =   "Clear"
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   720
      Width           =   1575
   End
   Begin VB.CommandButton cmdstart 
      Caption         =   "Start"
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
   Begin VB.PictureBox pic1 
      Height          =   5415
      Left            =   4800
      ScaleHeight     =   5355
      ScaleWidth      =   5355
      TabIndex        =   0
      Top             =   60
      Width           =   5415
      Begin VB.Label lblpie 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "pie"
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
         Left            =   3660
         TabIndex        =   18
         Top             =   3780
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Label lblpie 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "pie"
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
         Left            =   2040
         TabIndex        =   17
         Top             =   3720
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Label lblpie 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "pie"
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
         Left            =   900
         TabIndex        =   16
         Top             =   2460
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Label lblpie 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "pie"
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
         Left            =   2280
         TabIndex        =   15
         Top             =   1020
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Label lblpie 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "pie"
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
         Left            =   4260
         TabIndex        =   14
         Top             =   2160
         Visible         =   0   'False
         Width           =   615
      End
   End
   Begin VB.Label lbltopic10 
      AutoSize        =   -1  'True
      Caption         =   "Topic 10"
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
      Left            =   2640
      TabIndex        =   24
      Top             =   6660
      Width           =   1170
   End
   Begin VB.Label lbltopic9 
      AutoSize        =   -1  'True
      Caption         =   "Topic 9"
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
      Left            =   2700
      TabIndex        =   23
      Top             =   6360
      Width           =   1020
   End
   Begin VB.Label lbltopic8 
      AutoSize        =   -1  'True
      Caption         =   "Topic 8"
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
      Left            =   2700
      TabIndex        =   22
      Top             =   6060
      Width           =   1020
   End
   Begin VB.Label lbltopic7 
      AutoSize        =   -1  'True
      Caption         =   "Topic 7"
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
      Left            =   2760
      TabIndex        =   21
      Top             =   5700
      Width           =   1020
   End
   Begin VB.Label lbltopic6 
      AutoSize        =   -1  'True
      Caption         =   "Topic 6"
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
      Left            =   2700
      TabIndex        =   20
      Top             =   5400
      Width           =   1020
   End
   Begin VB.Label lbltopic5 
      AutoSize        =   -1  'True
      Caption         =   "Topic 5"
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
      Left            =   420
      TabIndex        =   10
      Top             =   6420
      Width           =   1020
   End
   Begin VB.Label lbltopic4 
      AutoSize        =   -1  'True
      Caption         =   "Topic 4"
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
      Left            =   420
      TabIndex        =   9
      Top             =   6180
      Width           =   1020
   End
   Begin VB.Label lbltopic3 
      AutoSize        =   -1  'True
      Caption         =   "Topic 3"
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
      Left            =   420
      TabIndex        =   8
      Top             =   5940
      Width           =   1020
   End
   Begin VB.Label lbltopic2 
      AutoSize        =   -1  'True
      Caption         =   "Topic 2"
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
      Left            =   420
      TabIndex        =   7
      Top             =   5700
      Width           =   1020
   End
   Begin VB.Label lbltopic1 
      AutoSize        =   -1  'True
      Caption         =   "Topic 1"
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
      Left            =   420
      TabIndex        =   6
      Top             =   5460
      Width           =   1020
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
      Left            =   240
      TabIndex        =   3
      Top             =   4320
      Visible         =   0   'False
      Width           =   1965
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
   Begin VB.Menu mnuline 
      Caption         =   "Line Graph"
   End
   Begin VB.Menu mnuexit 
      Caption         =   "Exit"
   End
End
Attribute VB_Name = "frmpie"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim tallies(10) As Long
Dim ranking(9999999) As Long
Dim topic1 As String
Dim topic2 As String
Dim topic3 As String
Dim topic4 As String
Dim topic5 As String
Dim topic6 As String
Dim i As Long
Dim zoom As Long
Dim num As Long
Const Pi As Double = 3.14159265
Dim MyVals(9) As Double
Dim MyColours(9) As Long
Dim tnum As Long
Dim ta As Long
Dim t(10) As String

Private Sub cmdclear_Click()
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
    t(i) = ""
    tallies(i) = 0
Next i
For i = 1 To 9999999
    ranking(i) = 0
Next i
pic1.Cls
lsttallies.Clear
lstkey.Clear
End Sub

Private Sub cmdstart_Click()
tnum = Val(InputBox("How many topics would you like to have?", "Amount of Topic", ""))
If tnum > 10 Or tnum < 1 Then
MsgBox ("You cannot have more than 10 or less than 1!")
tnum = 5
End If
For i = 1 To tnum
    t(i) = LCase(Trim(InputBox("What is the topic?", "Topic", Chr(i + 64))))
Next i
If tnum = 1 Then
lbltopic1.Caption = t(1) + " - 1"
ElseIf tnum = 2 Then
lbltopic1.Caption = t(1) + " - 1"
lbltopic2.Caption = t(2) + " - 2"
ElseIf tnum = 3 Then
lbltopic1.Caption = t(1) + " - 1"
lbltopic2.Caption = t(2) + " - 2"
lbltopic3.Caption = t(3) + " - 3"
ElseIf tnum = 4 Then
lbltopic1.Caption = t(1) + " - 1"
lbltopic2.Caption = t(2) + " - 2"
lbltopic3.Caption = t(3) + " - 3"
lbltopic4.Caption = t(4) + " - 4"
ElseIf tnum = 5 Then
lbltopic1.Caption = t(1) + " - 1"
lbltopic2.Caption = t(2) + " - 2"
lbltopic3.Caption = t(3) + " - 3"
lbltopic4.Caption = t(4) + " - 4"
lbltopic5.Caption = t(5) + " - 5"
ElseIf tnum = 6 Then
lbltopic1.Caption = t(1) + " - 1"
lbltopic2.Caption = t(2) + " - 2"
lbltopic3.Caption = t(3) + " - 3"
lbltopic4.Caption = t(4) + " - 4"
lbltopic5.Caption = t(5) + " - 5"
lbltopic6.Caption = t(6) + " - 6"
ElseIf tnum = 7 Then
lbltopic1.Caption = t(1) + " - 1"
lbltopic2.Caption = t(2) + " - 2"
lbltopic3.Caption = t(3) + " - 3"
lbltopic4.Caption = t(4) + " - 4"
lbltopic5.Caption = t(5) + " - 5"
lbltopic6.Caption = t(6) + " - 6"
lbltopic7.Caption = t(7) + " - 7"
ElseIf tnum = 8 Then
lbltopic1.Caption = t(1) + " - 1"
lbltopic2.Caption = t(2) + " - 2"
lbltopic3.Caption = t(3) + " - 3"
lbltopic4.Caption = t(4) + " - 4"
lbltopic5.Caption = t(5) + " - 5"
lbltopic6.Caption = t(6) + " - 6"
lbltopic7.Caption = t(7) + " - 7"
lbltopic8.Caption = t(8) + " - 8"
ElseIf tnum = 9 Then
lbltopic1.Caption = t(1) + " - 1"
lbltopic2.Caption = t(2) + " - 2"
lbltopic3.Caption = t(3) + " - 3"
lbltopic4.Caption = t(4) + " - 4"
lbltopic5.Caption = t(5) + " - 5"
lbltopic6.Caption = t(6) + " - 6"
lbltopic7.Caption = t(7) + " - 7"
lbltopic8.Caption = t(8) + " - 8"
lbltopic9.Caption = t(9) + " - 9"
ElseIf tnum = 10 Then
lbltopic1.Caption = t(1) + " - 1"
lbltopic2.Caption = t(2) + " - 2"
lbltopic3.Caption = t(3) + " - 3"
lbltopic4.Caption = t(4) + " - 4"
lbltopic5.Caption = t(5) + " - 5"
lbltopic6.Caption = t(6) + " - 6"
lbltopic7.Caption = t(7) + " - 7"
lbltopic8.Caption = t(8) + " - 8"
lbltopic9.Caption = t(9) + " - 9"
lbltopic10.Caption = t(10) + " - 10"
End If
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
num = Val(Trim(InputBox("How many numbers would you like for there to be generated?", "Amount of Numbers", "")))
sc = num
ta = tnum
txtzoom.Text = sc
hsbzoom.Max = sc + 200
hsbzoom.Value = sc
pic1.Scale (0, 0)-(sc, 10)
Randomize
For i = 1 To num
    ranking(i) = Int(Rnd * ta) + 1
    tallies(ranking(i)) = tallies(ranking(i)) + 1
Next i
For i = 1 To ta
    lsttallies.AddItem Str(i) + "-" + Str(tallies(i))
Next i
If tnum = 1 Then
    MyVals(0) = tallies(1)
    MyColours(0) = QBColor(1)
    MyVals(1) = 0.01
    MyColours(1) = QBColor(2)
    MyVals(2) = 0.01
    MyColours(2) = QBColor(3)
    MyVals(3) = 0.01
    MyColours(3) = QBColor(4)
    MyVals(4) = 0.01
    MyColours(4) = QBColor(5)
    MyVals(5) = 0.01
    MyColours(5) = QBColor(6)
    MyVals(6) = 0.01
    MyColours(6) = QBColor(7)
    MyVals(7) = 0.01
    MyColours(7) = QBColor(8)
    MyVals(8) = 0.01
    MyColours(8) = QBColor(9)
    MyVals(9) = 0.01
    MyColours(9) = QBColor(10)
ElseIf tnum = 2 Then
    MyVals(0) = tallies(1)
    MyColours(0) = QBColor(1)
    MyVals(1) = tallies(2)
    MyColours(1) = QBColor(2)
    MyVals(2) = 0.01
    MyColours(2) = QBColor(3)
    MyVals(3) = 0.01
    MyColours(3) = QBColor(4)
    MyVals(4) = 0.01
    MyColours(4) = QBColor(5)
    MyVals(5) = 0.01
    MyColours(5) = QBColor(6)
    MyVals(6) = 0.01
    MyColours(6) = QBColor(7)
    MyVals(7) = 0.01
    MyColours(7) = QBColor(8)
    MyVals(8) = 0.01
    MyColours(8) = QBColor(9)
    MyVals(9) = 0.01
    MyColours(9) = QBColor(10)
ElseIf tnum = 3 Then
    MyVals(0) = tallies(1)
    MyColours(0) = QBColor(1)
    MyVals(1) = tallies(2)
    MyColours(1) = QBColor(2)
    MyVals(2) = tallies(3)
    MyColours(2) = QBColor(3)
    MyVals(3) = 0.01
    MyColours(3) = QBColor(4)
    MyVals(4) = 0.01
    MyColours(4) = QBColor(5)
    MyVals(5) = 0.01
    MyColours(5) = QBColor(6)
    MyVals(6) = 0.01
    MyColours(6) = QBColor(7)
    MyVals(7) = 0.01
    MyColours(7) = QBColor(8)
    MyVals(8) = 0.01
    MyColours(8) = QBColor(9)
    MyVals(9) = 0.01
    MyColours(9) = QBColor(10)
ElseIf tnum = 4 Then
    MyVals(0) = tallies(1)
    MyColours(0) = QBColor(1)
    MyVals(1) = tallies(2)
    MyColours(1) = QBColor(2)
    MyVals(2) = tallies(3)
    MyColours(2) = QBColor(3)
    MyVals(3) = tallies(4)
    MyColours(3) = QBColor(4)
    MyVals(4) = 0.01
    MyColours(4) = QBColor(5)
    MyVals(5) = 0.01
    MyColours(5) = QBColor(6)
    MyVals(6) = 0.01
    MyColours(6) = QBColor(7)
    MyVals(7) = 0.01
    MyColours(7) = QBColor(8)
    MyVals(8) = 0.01
    MyColours(8) = QBColor(9)
    MyVals(9) = 0.01
    MyColours(9) = QBColor(10)
ElseIf tnum = 5 Then
    MyVals(0) = tallies(1)
    MyColours(0) = QBColor(1)
    MyVals(1) = tallies(2)
    MyColours(1) = QBColor(2)
    MyVals(2) = tallies(3)
    MyColours(2) = QBColor(3)
    MyVals(3) = tallies(4)
    MyColours(3) = QBColor(4)
    MyVals(4) = tallies(5)
    MyColours(4) = QBColor(5)
    MyVals(5) = 0.01
    MyColours(5) = QBColor(6)
    MyVals(6) = 0.01
    MyColours(6) = QBColor(7)
    MyVals(7) = 0.01
    MyColours(7) = QBColor(8)
    MyVals(8) = 0.01
    MyColours(8) = QBColor(9)
    MyVals(9) = 0.01
    MyColours(9) = QBColor(10)
ElseIf tnum = 6 Then
    MyVals(0) = tallies(1)
    MyColours(0) = QBColor(1)
    MyVals(1) = tallies(2)
    MyColours(1) = QBColor(2)
    MyVals(2) = tallies(3)
    MyColours(2) = QBColor(3)
    MyVals(3) = tallies(4)
    MyColours(3) = QBColor(4)
    MyVals(4) = tallies(5)
    MyColours(4) = QBColor(5)
    MyVals(5) = tallies(6)
    MyColours(5) = QBColor(6)
    MyVals(6) = 0.01
    MyColours(6) = QBColor(7)
    MyVals(7) = 0.01
    MyColours(7) = QBColor(8)
    MyVals(8) = 0.01
    MyColours(8) = QBColor(9)
    MyVals(9) = 0.01
    MyColours(9) = QBColor(10)
ElseIf tnum = 7 Then
    MyVals(0) = tallies(1)
    MyColours(0) = QBColor(1)
    MyVals(1) = tallies(2)
    MyColours(1) = QBColor(2)
    MyVals(2) = tallies(3)
    MyColours(2) = QBColor(3)
    MyVals(3) = tallies(4)
    MyColours(3) = QBColor(4)
    MyVals(4) = tallies(5)
    MyColours(4) = QBColor(5)
    MyVals(5) = tallies(6)
    MyColours(5) = QBColor(6)
    MyVals(6) = tallies(7)
    MyColours(6) = QBColor(7)
    MyVals(7) = 0.01
    MyColours(7) = QBColor(8)
    MyVals(8) = 0.01
    MyColours(8) = QBColor(9)
    MyVals(9) = 0.01
    MyColours(9) = QBColor(10)
ElseIf tnum = 8 Then
    MyVals(0) = tallies(1)
    MyColours(0) = QBColor(1)
    MyVals(1) = tallies(2)
    MyColours(1) = QBColor(2)
    MyVals(2) = tallies(3)
    MyColours(2) = QBColor(3)
    MyVals(3) = tallies(4)
    MyColours(3) = QBColor(4)
    MyVals(4) = tallies(5)
    MyColours(4) = QBColor(5)
    MyVals(5) = tallies(6)
    MyColours(5) = QBColor(6)
    MyVals(6) = tallies(7)
    MyColours(6) = QBColor(7)
    MyVals(7) = tallies(8)
    MyColours(7) = QBColor(8)
    MyVals(8) = 0.01
    MyColours(8) = QBColor(9)
    MyVals(9) = 0.01
    MyColours(9) = QBColor(10)
ElseIf tnum = 9 Then
    MyVals(0) = tallies(1)
    MyColours(0) = QBColor(1)
    MyVals(1) = tallies(2)
    MyColours(1) = QBColor(2)
    MyVals(2) = tallies(3)
    MyColours(2) = QBColor(3)
    MyVals(3) = tallies(4)
    MyColours(3) = QBColor(4)
    MyVals(4) = tallies(5)
    MyColours(4) = QBColor(5)
    MyVals(5) = tallies(6)
    MyColours(5) = QBColor(6)
    MyVals(6) = tallies(7)
    MyColours(6) = QBColor(7)
    MyVals(7) = tallies(8)
    MyColours(7) = QBColor(8)
    MyVals(8) = tallies(9)
    MyColours(8) = QBColor(9)
    MyVals(9) = 0.01
    MyColours(9) = QBColor(10)
ElseIf tnum = 10 Then
    MyVals(0) = tallies(1)
    MyColours(0) = QBColor(1)
    MyVals(1) = tallies(2)
    MyColours(1) = QBColor(2)
    MyVals(2) = tallies(3)
    MyColours(2) = QBColor(3)
    MyVals(3) = tallies(4)
    MyColours(3) = QBColor(4)
    MyVals(4) = tallies(5)
    MyColours(4) = QBColor(5)
    MyVals(5) = tallies(6)
    MyColours(5) = QBColor(6)
    MyVals(6) = tallies(7)
    MyColours(6) = QBColor(7)
    MyVals(7) = tallies(8)
    MyColours(7) = QBColor(8)
    MyVals(8) = tallies(9)
    MyColours(8) = QBColor(9)
    MyVals(9) = tallies(10)
    MyColours(9) = QBColor(10)
End If
DrawPie pic1, MyVals(), MyColours(), 0.5, 0
End Sub

Private Sub Form_Load()
hsbzoom.Min = 1
hsbzoom.Max = 1000
hsbzoom.Value = zoom
For i = 1 To 10
    tallies(i) = 0.01
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
End Sub

Private Sub hsbzoom_Change()
zoom = hsbzoom.Value
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub mnuhbar_Click()
frmhbar.Show
frmpie.Hide
End Sub

Private Sub mnuhist_Click()
frmhg.Show
frmpie.Hide
End Sub

Private Sub mnuline_Click()
frmline.Show
frmpie.Hide
MsgBox ("This shows change over time make sure your topic involve change oer time.")
End Sub

Private Sub mnuvbar_Click()
frmvbar.Show
frmpie.Hide
End Sub

Private Sub HScroll1_Change()
    DrawPie pic1, MyVals(), MyColours(), VScroll1.Value / 100, HScroll1.Value
End Sub

Private Sub HScroll1_Scroll()
    DrawPie pic1, MyVals(), MyColours(), VScroll1.Value / 100, HScroll1.Value
End Sub

Private Sub VScroll1_Change()
    DrawPie pic1, MyVals(), MyColours(), VScroll1.Value / 100, HScroll1.Value
End Sub

Private Sub VScroll1_Scroll()
    DrawPie pic1, MyVals(), MyColours(), VScroll1.Value / 100, HScroll1.Value
End Sub

Function GetDarkerColour(Colour As Long) As Long
    Dim Red As Long, Green As Long, Blue As Long
    Red = CStr(Colour And &HFF&) - 30
    Green = CStr((Colour And &HFF00&) / 2 ^ 8) - 30
    Blue = CStr((Colour And &HFF0000) / 2 ^ 16) - 30
    
    If Red < 0 Then Red = 0
    If Green < 0 Then Green = 0
    If Blue < 0 Then Blue = 0
    
    GetDarkerColour = RGB(Red, Green, Blue)

End Function

Sub DrawPie(Picbox As PictureBox, Percentage() As Double, Colours() As Long, Optional Aspect As Double = 0.5, Optional rotation As Double = 0)
Dim Count As Integer
Dim Total As Double
Dim SAngle As Double
Dim FAngle As Double
Dim Radius As Single
Dim n As Integer
Dim Strt As Double
Dim Y As Integer

'Get total amount
For Count = 0 To UBound(Percentage)
    Total = Total + Percentage(Count)
Next

'Change each percentage to make sure we have a complete pie
For Count = 0 To UBound(Percentage)
    Percentage(Count) = Percentage(Count) * 100 / Total
Next

    'Used so we can fill in the pieces
    Picbox.FillStyle = vbSolid
    
    'Our rotation must be between 0 and 360
    rotation = rotation Mod 360
    'Convert the rotation to radians
    rotation = 2 * Pi * rotation / 360
    
    'Make sure the scale is pixels or our image will be all wrong
    Picbox.ScaleMode = vbPixels
    'Clear the previous image
    Picbox.Cls
    'Set this so out graph doesn't disapear when the page is refreshed
    Picbox.AutoRedraw = True
    'Calculate the radius we can use
    Radius = IIf(Picbox.ScaleWidth > Picbox.ScaleHeight, Picbox.ScaleHeight / 2, Picbox.ScaleWidth / 2) - 20
    
    'Make it look like a block
    'The loop controls the thickness using the aspect as well to make it look more real
    For Y = (37 - (25 * Aspect)) To 6 Step -1
        Strt = 0
    For n = 0 To UBound(Percentage)
        'Amount Free - block
        'Colour the region
        Picbox.FillColor = GetDarkerColour(Colours(n))
        'Start angle
        If n = 0 Then
            SAngle = -2 * Pi + rotation
        Else
            SAngle = -2 * Pi / (360 / (3.6 * Strt)) + rotation
        End If
        'Finish angle
        FAngle = -2 * Pi / (360 / (3.6 * (Percentage(n) + Strt))) + rotation
        'make them loop back
        If SAngle > 0 Then SAngle = SAngle - 2 * Pi
        If FAngle > 0 Then FAngle = FAngle - 2 * Pi
        
        Picbox.Circle (Radius + 5, Radius + Y), Radius, GetDarkerColour(Colours(n)), SAngle, FAngle, Aspect
        Strt = Strt + Percentage(n)
    Next
Next
 
    'Our starting angle
    Strt = 0
    
For n = 0 To UBound(Percentage)
    'Amount Free - Used to fill in the area
    'Colour the region
    Picbox.FillColor = Colours(n)
    If n = 0 Then
        SAngle = -2 * Pi + rotation
    Else
        SAngle = -2 * Pi / (360 / (3.6 * Strt)) + rotation
    End If
    FAngle = -2 * Pi / (360 / (3.6 * (Percentage(n) + Strt))) + rotation
    If SAngle > 0 Then SAngle = SAngle - 2 * Pi
    If FAngle > 0 Then FAngle = FAngle - 2 * Pi
    Picbox.Circle (Radius + 5, Radius + 5), Radius, Colours(n), SAngle, FAngle, Aspect
    Strt = Strt + Percentage(n)
Next
       
End Sub
