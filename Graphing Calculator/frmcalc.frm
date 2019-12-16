VERSION 5.00
Begin VB.Form frmcalc 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   6915
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   10350
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6915
   ScaleWidth      =   10350
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txty2 
      Height          =   375
      Left            =   2280
      TabIndex        =   7
      Text            =   "Text1"
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox txtx2 
      Height          =   495
      Left            =   840
      TabIndex        =   6
      Text            =   "Text1"
      Top             =   960
      Width           =   615
   End
   Begin VB.PictureBox pic1 
      Height          =   6015
      Left            =   3840
      ScaleHeight     =   5955
      ScaleWidth      =   5955
      TabIndex        =   5
      Top             =   360
      Width           =   6015
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Label2"
         Height          =   195
         Left            =   1560
         TabIndex        =   14
         Top             =   1680
         Width           =   480
      End
      Begin VB.Label lblp1 
         AutoSize        =   -1  'True
         Caption         =   "p1"
         Height          =   195
         Left            =   840
         TabIndex        =   13
         Top             =   840
         Width           =   180
      End
   End
   Begin VB.TextBox txty1 
      Height          =   435
      Left            =   2220
      TabIndex        =   3
      Text            =   "txty1"
      Top             =   540
      Width           =   555
   End
   Begin VB.TextBox txtx1 
      Height          =   435
      Left            =   780
      TabIndex        =   1
      Text            =   "txtx1"
      Top             =   480
      Width           =   675
   End
   Begin VB.Label lblline 
      AutoSize        =   -1  'True
      Caption         =   "line"
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
      TabIndex        =   12
      Top             =   4440
      Width           =   870
   End
   Begin VB.Label lblrectangle 
      AutoSize        =   -1  'True
      Caption         =   "rectangle"
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
      TabIndex        =   11
      Top             =   6240
      Width           =   1860
   End
   Begin VB.Label lblcircle 
      AutoSize        =   -1  'True
      Caption         =   "circle"
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
      TabIndex        =   10
      Top             =   5640
      Width           =   1185
   End
   Begin VB.Label lblparabola 
      AutoSize        =   -1  'True
      Caption         =   "Parabola"
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
      TabIndex        =   9
      Top             =   5040
      Width           =   1800
   End
   Begin VB.Label lbllineseg 
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "line segment"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   8
      Top             =   3840
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   "X2"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   960
      Width           =   435
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Y1"
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
      Index           =   1
      Left            =   1860
      TabIndex        =   2
      Top             =   540
      Width           =   330
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "X1"
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
      Index           =   0
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   360
   End
   Begin VB.Menu mnuexit 
      Caption         =   "exit"
   End
End
Attribute VB_Name = "frmcalc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim reset As String
Dim x1 As Double
Dim x2 As Double
Dim x3 As Double
Dim x4 As Double
Dim y1 As Double
Dim y2 As Double
Dim y3 As Double
Dim y4 As Double
Dim p As Long

Private Sub Form_Load()
p = 0
pic1.Scale (-20, 20)-(20, -20)
pic1.Line (-10, 0)-(10, 0), vbBlack
End Sub

Private Sub lblcircle_Click()
lbllineseg.BorderStyle = 0
lblline.BorderStyle = 0
lblparabola.BorderStyle = 0
lblcircle.BorderStyle = 1
lblrectangle.BorderStyle = 0
End Sub

Private Sub lblline_Click()
lbllineseg.BorderStyle = 0
lblline.BorderStyle = 1
lblparabola.BorderStyle = 0
lblcircle.BorderStyle = 0
lblrectangle.BorderStyle = 0
End Sub

Private Sub lbllineseg_Click()
lbllineseg.BorderStyle = 1
lblline.BorderStyle = 0
lblparabola.BorderStyle = 0
lblcircle.BorderStyle = 0
lblrectangle.BorderStyle = 0
End Sub

Private Sub lblparabola_Click()
lbllineseg.BorderStyle = 0
lblline.BorderStyle = 0
lblparabola.BorderStyle = 1
lblcircle.BorderStyle = 0
lblrectangle.BorderStyle = 0
End Sub

Private Sub lblrectangle_Click()
lbllineseg.BorderStyle = 0
lblline.BorderStyle = 0
lblparabola.BorderStyle = 0
lblcircle.BorderStyle = 0
lblrectangle.BorderStyle = 1
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub pic1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
p = p + 1
If p = 1 Then
    x1 = X
    y1 = Y
    pic1.Circle (x1, y1), 0.25, RGB(0, 0, 255)
    lblp1.Left = x1
    lblp1.Top = y1
    lblp1.Caption = x1 & "," & y1
End If
If p = 2 Then
    x2 = X
    y2 = Y
    pic1.Circle (x2, y2), 0.25, RGB(0, 0, 255)
End If
If p = 3 Then
    x3 = X
    y3 = Y
    pic1.Circle (x3, y3), 0.25, RGB(0, 0, 255)
End If
If p = 4 Then
    x4 = X
    y4 = Y
    pic1.Circle (x4, y4), 0.25, RGB(0, 0, 255)
End If
If p = 5 Then
    reset = MsgBox("All work done so far will be erased do you want to continue?", vbOKCancel, "Reset")
    If reset = vbCancel Then
        frmcalc.SetFocus
    ElseIf reset = vbOK Then
        pic1.Cls
        txtx1.Text = ""
        txtx2.Text = ""
        txty1.Text = ""
        txty2.Text = ""
    End If
End If
End Sub
Sub rectangle()

End Sub

Sub parabola()

End Sub

Sub cir()

End Sub

Sub lineseg()

End Sub

Sub fullline()

End Sub

Private Sub pic1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If p = 0 Then
    lblp1.Left = X
    lblp1.Top = Y
    lblp1.Caption = X & "," & Y
End If
If p = 1 Then
    
End If
End Sub
