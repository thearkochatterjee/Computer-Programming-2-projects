VERSION 5.00
Begin VB.Form frmhangman 
   BackColor       =   &H00FFFF00&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Hangman"
   ClientHeight    =   4695
   ClientLeft      =   3825
   ClientTop       =   4470
   ClientWidth     =   9585
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4695
   ScaleWidth      =   9585
   Begin VB.Timer Timerover 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   3120
      Top             =   1080
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   2640
      Top             =   1080
   End
   Begin VB.Label lbldc 
      Caption         =   "dc"
      Enabled         =   0   'False
      Height          =   255
      Left            =   6360
      TabIndex        =   33
      Top             =   4320
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Image imgleg1 
      Height          =   855
      Left            =   6900
      Picture         =   "frmhangman.frx":0000
      Stretch         =   -1  'True
      Top             =   2880
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Image imgfleg1 
      Height          =   1035
      Left            =   6900
      Picture         =   "frmhangman.frx":0CFE
      Stretch         =   -1  'True
      Top             =   2160
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.Image imgfleg2 
      Height          =   1035
      Left            =   7320
      Picture         =   "frmhangman.frx":1EA3
      Stretch         =   -1  'True
      Top             =   2160
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Image imgfarm2 
      Height          =   915
      Left            =   7800
      Picture         =   "frmhangman.frx":2E3F
      Stretch         =   -1  'True
      Top             =   1500
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Image imgfarm1 
      Height          =   975
      Left            =   6480
      Picture         =   "frmhangman.frx":3D7A
      Stretch         =   -1  'True
      Top             =   1500
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Image imgfbody 
      Height          =   675
      Left            =   6960
      Picture         =   "frmhangman.frx":4BD9
      Stretch         =   -1  'True
      Top             =   1500
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Image imgfhead 
      Height          =   615
      Left            =   6960
      Picture         =   "frmhangman.frx":5C38
      Stretch         =   -1  'True
      Top             =   900
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblname 
      AutoSize        =   -1  'True
      Caption         =   "AAA"
      Height          =   195
      Left            =   2640
      TabIndex        =   32
      Top             =   720
      Visible         =   0   'False
      Width           =   315
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "Z"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   25
      Left            =   3720
      TabIndex        =   31
      Top             =   3480
      Width           =   210
   End
   Begin VB.Label lblword 
      AutoSize        =   -1  'True
      Caption         =   "----"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   480
      TabIndex        =   30
      Top             =   1680
      Width           =   600
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Time Left:"
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
      Left            =   360
      TabIndex        =   29
      Top             =   120
      Width           =   1980
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   24
      Left            =   3420
      TabIndex        =   28
      Top             =   3480
      Width           =   240
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   23
      Left            =   3120
      TabIndex        =   27
      Top             =   3480
      Width           =   255
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "W"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   22
      Left            =   2760
      TabIndex        =   26
      Top             =   3480
      Width           =   330
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "V"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   21
      Left            =   2400
      TabIndex        =   25
      Top             =   3480
      Width           =   225
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "U"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   20
      Left            =   2100
      TabIndex        =   24
      Top             =   3480
      Width           =   255
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "T"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   19
      Left            =   1860
      TabIndex        =   23
      Top             =   3480
      Width           =   240
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "S"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   18
      Left            =   1620
      TabIndex        =   22
      Top             =   3480
      Width           =   240
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   17
      Left            =   1320
      TabIndex        =   21
      Top             =   3480
      Width           =   255
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "Q"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   16
      Left            =   1020
      TabIndex        =   20
      Top             =   3480
      Width           =   285
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "P"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   15
      Left            =   780
      TabIndex        =   19
      Top             =   3480
      Width           =   240
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   14
      Left            =   480
      TabIndex        =   18
      Top             =   3480
      Width           =   285
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "N"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   13
      Left            =   3660
      TabIndex        =   17
      Top             =   3120
      Width           =   270
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "M"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   12
      Left            =   3360
      TabIndex        =   16
      Top             =   3120
      Width           =   300
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "L"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   11
      Left            =   3120
      TabIndex        =   15
      Top             =   3120
      Width           =   195
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "K"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   10
      Left            =   2880
      TabIndex        =   14
      Top             =   3120
      Width           =   240
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "J"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   9
      Left            =   2640
      TabIndex        =   13
      Top             =   3120
      Width           =   180
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   8
      Left            =   2400
      TabIndex        =   12
      Top             =   3120
      Width           =   90
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "H"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   7
      Left            =   2160
      TabIndex        =   11
      Top             =   3120
      Width           =   255
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "G"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   6
      Left            =   1920
      TabIndex        =   10
      Top             =   3120
      Width           =   270
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "F"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   5
      Left            =   1680
      TabIndex        =   9
      Top             =   3120
      Width           =   225
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "E"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   4
      Left            =   1440
      TabIndex        =   8
      Top             =   3120
      Width           =   240
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "D"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   3
      Left            =   1200
      TabIndex        =   7
      Top             =   3120
      Width           =   255
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   2
      Left            =   960
      TabIndex        =   6
      Top             =   3120
      Width           =   255
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "B"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   1
      Left            =   720
      TabIndex        =   5
      Top             =   3120
      Width           =   240
   End
   Begin VB.Label lblletter 
      AutoSize        =   -1  'True
      Caption         =   "A"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   0
      Left            =   480
      TabIndex        =   4
      Top             =   3120
      Width           =   225
   End
   Begin VB.Image imgleg2 
      Height          =   855
      Left            =   7500
      Picture         =   "frmhangman.frx":6611
      Stretch         =   -1  'True
      Top             =   2820
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Image imgarm2 
      Height          =   1215
      Left            =   7620
      Picture         =   "frmhangman.frx":7348
      Stretch         =   -1  'True
      Top             =   1680
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Image imgarm1 
      Height          =   1230
      Left            =   6120
      Picture         =   "frmhangman.frx":9410
      Stretch         =   -1  'True
      Top             =   1740
      Visible         =   0   'False
      Width           =   1110
   End
   Begin VB.Image imgbody 
      Height          =   495
      Left            =   6900
      Picture         =   "frmhangman.frx":B55B
      Stretch         =   -1  'True
      Top             =   2340
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image imghead 
      Height          =   1515
      Left            =   6720
      Picture         =   "frmhangman.frx":C788
      Stretch         =   -1  'True
      Top             =   900
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.Image imgover 
      Height          =   975
      Left            =   3720
      Stretch         =   -1  'True
      Top             =   960
      Width           =   1095
   End
   Begin VB.Label lbllives 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lives:"
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
      Left            =   4560
      TabIndex        =   3
      Top             =   240
      Width           =   1245
   End
   Begin VB.Label lbl1 
      AutoSize        =   -1  'True
      Caption         =   "Label2"
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
      TabIndex        =   2
      Top             =   960
      Visible         =   0   'False
      Width           =   1410
   End
   Begin VB.Label lblwin 
      AutoSize        =   -1  'True
      Caption         =   "Labelover"
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
      Left            =   3000
      TabIndex        =   1
      Top             =   2220
      Visible         =   0   'False
      Width           =   2505
   End
   Begin VB.Label lbltime 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "1000"
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
      Left            =   2280
      TabIndex        =   0
      Top             =   120
      Width           =   840
   End
   Begin VB.Line Line 
      Index           =   2
      X1              =   9420
      X2              =   9420
      Y1              =   480
      Y2              =   4560
   End
   Begin VB.Line Line 
      Index           =   1
      X1              =   7260
      X2              =   9420
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Line Line 
      Index           =   0
      X1              =   7260
      X2              =   7260
      Y1              =   960
      Y2              =   480
   End
   Begin VB.Image Image1 
      Height          =   4695
      Left            =   0
      Picture         =   "frmhangman.frx":11DA9
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6015
   End
   Begin VB.Menu mnustart 
      Caption         =   "Start"
   End
   Begin VB.Menu mnuagain 
      Caption         =   "reset"
   End
   Begin VB.Menu mnuscore 
      Caption         =   "scores"
   End
   Begin VB.Menu mnuexit 
      Caption         =   "Exit"
   End
   Begin VB.Menu mnudc 
      Caption         =   "DC"
   End
End
Attribute VB_Name = "frmhangman"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim arraywords(60000) As String
Dim arrayletters(22) As String
Dim arraywsf(22) As String
Dim letter As String
Dim i As Long, c As Long, p As Integer, l As Integer
Dim word As String
Dim number As Long
Dim wsf As String
Dim player As String
Dim all As Long
Dim reset As Long
Dim dcnum As Long
Dim rpath As String
Private Declare Function PlaySound Lib "winmm.dll" Alias "PlaySoundA" _
(ByVal lpszName As String, ByVal hModule As Long, _
ByVal dwFlags As Long) As Long

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 65 Then

ElseIf KeyCode = 66 Then

ElseIf KeyCode = 67 Then

ElseIf KeyCode = 68 Then

ElseIf KeyCode = 69 Then

ElseIf KeyCode = 70 Then

ElseIf KeyCode = 71 Then

ElseIf KeyCode = 72 Then

ElseIf KeyCode = 73 Then

ElseIf KeyCode = 74 Then

ElseIf KeyCode = 75 Then

ElseIf KeyCode = 76 Then

ElseIf KeyCode = 77 Then

ElseIf KeyCode = 78 Then

ElseIf KeyCode = 79 Then

ElseIf KeyCode = 80 Then

ElseIf KeyCode = 81 Then

ElseIf KeyCode = 82 Then

ElseIf KeyCode = 83 Then

ElseIf KeyCode = 84 Then

ElseIf KeyCode = 85 Then

ElseIf KeyCode = 86 Then

ElseIf KeyCode = 87 Then

ElseIf KeyCode = 88 Then

ElseIf KeyCode = 89 Then

ElseIf KeyCode = 90 Then

End If
End Sub

Private Sub Form_Load()
rpath = "F:\arko\Computer Programming 2 projects\data\dictionary.txt"
dcnum = 58112
lbldc.Enabled = False
End Sub

Private Sub lblletter_Click(Index As Integer)
Retval = PlaySound("F:\arko\Computer Programming 2 projects\Hangman\explosion.WAV", 0, 1)
letter = LCase(lblletter(Index).Caption)
wsf = ""
For i = 1 To Len(word)
     If letter = arrayletters(i) Then
        arraywsf(i) = letter + " "
        lblletter(Index).Enabled = False
    End If
    If letter <> arrayletters(i) Then
        lblletter(Index).Enabled = False
        l = l + 1
    End If
wsf = wsf + arraywsf(i)
lblword = wsf
Next i
If l = Len(word) And p = 0 Then
If lbldc.Enabled = False Then
imghead.Visible = True
Else
imgfhead.Visible = True
End If
l = 0
p = p + 1
lbllives.Caption = "Lives:5"
End If

If l = Len(word) And p = 1 Then
If lbldc.Enabled = False Then
imgbody.Visible = True
Else
imgfbody.Visible = True
End If
l = 0
p = p + 1
lbllives.Caption = "Lives:4"
End If

If l = Len(word) And p = 2 Then
If lbldc.Enabled = False Then
imgarm1.Visible = True
Else
imgfarm1.Visible = True
End If
l = 0
p = p + 1
lbllives.Caption = "Lives:3"
End If

If l = Len(word) And p = 3 Then
If lbldc.Enabled = False Then
imgarm2.Visible = True
Else
imgarm1.Visible = True
End If
l = 0
p = p + 1
lbllives.Caption = "Lives:2"
End If

If l = Len(word) And p = 4 Then
If lbldc.Enabled = False Then
imgleg1.Visible = True
Else
imgfleg1.Visible = True
End If
l = 0
p = p + 1
lbllives.Caption = "Lives:1"
End If

If l = Len(word) And p = 5 Then
If lbldc.Enabled = False Then
imgleg2.Visible = True
Else
imgfleg2.Visible = True
End If
l = 0
p = p + 1
lbllives.Caption = "Lives:0"
Timer1.Enabled = False
Timerover.Enabled = True
lblwin.Caption = "You lose"
lbl1.Visible = True
lblwin.Visible = True
imgover.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\Hangman\lose.gif")
lbltime.Caption = ""
lblname.Caption = ""
End If
l = 0
If wsf = word Then
Timer1.Enabled = False
lblwin.Visible = True
Timerover.Enabled = True
lblwin.Caption = "You Win"
imgover.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\Hangman\win.gif")
End If
End Sub

Private Sub mnuagain_Click()
mnustart.Enabled = True
lbllives.Caption = "Lives:6"
lbl1.Visible = False
lbltime.Caption = 0
lblword.Caption = "-------"
imghead.Visible = False
imgbody.Visible = False
imgarm1.Visible = False
imgarm2.Visible = False
imgleg1.Visible = False
imgleg2.Visible = False
lblwin.Caption = "lblover"
lblwin.Visible = False
imgover.Visible = False
lblletter(0).Enabled = True
lblletter(1).Enabled = True
lblletter(2).Enabled = True
lblletter(3).Enabled = True
lblletter(4).Enabled = True
lblletter(5).Enabled = True
lblletter(6).Enabled = True
lblletter(7).Enabled = True
lblletter(8).Enabled = True
lblletter(9).Enabled = True
lblletter(10).Enabled = True
lblletter(11).Enabled = True
lblletter(12).Enabled = True
lblletter(13).Enabled = True
lblletter(14).Enabled = True
lblletter(15).Enabled = True
lblletter(16).Enabled = True
lblletter(17).Enabled = True
lblletter(18).Enabled = True
lblletter(19).Enabled = True
lblletter(20).Enabled = True
lblletter(21).Enabled = True
lblletter(22).Enabled = True
lblletter(23).Enabled = True
lblletter(24).Enabled = True
lblletter(25).Enabled = True
End Sub

Private Sub mnudc_Click()
rpath = "F:\arko\Computer Programming 2 projects\data\dc.txt"
dcnum = 45
Image1.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\Hangman\Batman.jpg")
lbldc.Enabled = True
lbltime.ForeColor = RGB(255, 255, 255)
Label1.ForeColor = RGB(255, 255, 255)
lbllives.ForeColor = RGB(255, 255, 255)
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub mnuscore_Click()
frmscores.Show
frmhangman.Hide
frmscores.lblswn.Caption = lbltime.Caption + "   " + lblname.Caption
End Sub

Private Sub mnustart_Click()
Do While Len(player) <> 3
player = UCase(Trim(InputBox("Enter in name (must be 3 characters):", "player", "AAA")))
If Len(player) > 3 Then
    MsgBox ("You did not put in a correct name! Try Again")
End If
Loop
lbllives.Caption = "Lives:6"
lblname.Caption = player
i = 0
path = rpath
Open path For Input As #1
Do While Not EOF(1)
    Line Input #1, word
    If Len(Trim(word)) <> 0 Then
        i = i + 1
        arraywords(i) = word
    End If
Loop
Close #1
Randomize
c = (Int(Rnd * dcnum) + 1)
word = arraywords(c)
lbl1.Caption = word
wsf = ""
For i = 1 To Len(word)
    arrayletters(i) = Mid(word, i, 1)
    arraywsf(i) = " _ "
    wsf = wsf + arraywsf(i)
Next i
lblword = wsf
mnustart.Enabled = False
End Sub

Private Sub Timer1_Timer()
If mnustart.Enabled = False Then
    lbltime.Caption = lbltime.Caption - 1
End If
If lbltime.Caption = 0 Then
    lblwin.Caption = "You lose"
    lbl1.Visible = True
    imghead.Visible = True
    imgbody.Visible = True
    imgarm1.Visible = True
    imgarm2.Visible = True
    imgleg1.Visible = True
    imgleg2.Visible = True
    lblwin.Visible = True
    imgover.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\Hangman\lose.gif")
    imgover.Visible = True
    lbllives.Caption = "Lives:0"
    Timer1.Enabled = False
    Timerover.Enabled = True
End If
End Sub

Private Sub Timerover_Timer()
Dim m As Long
m = Second(Now) Mod 4
If m = 0 Then
    lblwin.ForeColor = RGB(0, 0, 0)
ElseIf m = 1 Then
    lblwin.ForeColor = RGB(255, 0, 0)
ElseIf m = 2 Then
    lblwin.ForeColor = RGB(0, 255, 0)
ElseIf m = 3 Then
    lblwin.ForeColor = RGB(0, 0, 255)
End If
End Sub
