VERSION 5.00
Begin VB.Form frmcalc 
   BackColor       =   &H80000012&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Line, Parabola, Circle"
   ClientHeight    =   6735
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   11715
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6735
   ScaleWidth      =   11715
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdclear 
      Caption         =   "clear"
      Height          =   555
      Left            =   240
      TabIndex        =   28
      Top             =   5160
      Width           =   1935
   End
   Begin VB.CommandButton cmdgraph 
      Caption         =   "Graph"
      Height          =   615
      Left            =   240
      TabIndex        =   27
      Top             =   300
      Width           =   1935
   End
   Begin VB.TextBox txty4 
      Height          =   315
      Left            =   4200
      TabIndex        =   22
      Top             =   1620
      Width           =   975
   End
   Begin VB.TextBox txty3 
      Height          =   315
      Left            =   4200
      TabIndex        =   21
      Top             =   1260
      Width           =   975
   End
   Begin VB.TextBox txty2 
      Height          =   315
      Left            =   4200
      TabIndex        =   20
      Top             =   840
      Width           =   975
   End
   Begin VB.TextBox txty1 
      Height          =   315
      Left            =   4200
      TabIndex        =   19
      Top             =   420
      Width           =   975
   End
   Begin VB.TextBox txtx4 
      Height          =   315
      Left            =   2760
      TabIndex        =   18
      Top             =   1620
      Width           =   975
   End
   Begin VB.TextBox txtx3 
      Height          =   315
      Left            =   2760
      TabIndex        =   17
      Top             =   1200
      Width           =   975
   End
   Begin VB.TextBox txtx2 
      Height          =   315
      Left            =   2760
      TabIndex        =   16
      Top             =   840
      Width           =   975
   End
   Begin VB.TextBox txtx1 
      Height          =   315
      Left            =   2760
      TabIndex        =   15
      Top             =   420
      Width           =   975
   End
   Begin VB.CommandButton cmdexit 
      Caption         =   "exit"
      Height          =   555
      Left            =   240
      TabIndex        =   10
      Top             =   4560
      Width           =   1935
   End
   Begin VB.CommandButton cmdpara 
      Caption         =   "Parabola"
      Height          =   615
      Left            =   240
      TabIndex        =   9
      Top             =   3840
      Width           =   1935
   End
   Begin VB.CommandButton cmdrec 
      Caption         =   "Rectangle"
      Height          =   615
      Left            =   240
      TabIndex        =   8
      Top             =   3120
      Width           =   1935
   End
   Begin VB.CommandButton cmdline 
      Caption         =   "Line"
      Height          =   615
      Left            =   240
      TabIndex        =   7
      Top             =   1680
      Width           =   1935
   End
   Begin VB.CommandButton cmdcircle 
      Caption         =   "Circle"
      Height          =   615
      Left            =   240
      TabIndex        =   6
      Top             =   2400
      Width           =   1935
   End
   Begin VB.CommandButton cmdlineseg 
      Caption         =   "Line Segment"
      Height          =   615
      Left            =   240
      TabIndex        =   5
      Top             =   960
      Width           =   1935
   End
   Begin VB.PictureBox pic1 
      AutoRedraw      =   -1  'True
      Height          =   6015
      Left            =   5280
      ScaleHeight     =   5955
      ScaleWidth      =   5955
      TabIndex        =   0
      Top             =   240
      Width           =   6015
      Begin VB.Label lblp4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "p4"
         Height          =   195
         Left            =   2160
         TabIndex        =   4
         Top             =   2400
         Width           =   180
      End
      Begin VB.Label lblp3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "p3"
         Height          =   195
         Left            =   1320
         TabIndex        =   3
         Top             =   1560
         Width           =   180
      End
      Begin VB.Label lblp2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "p2"
         Height          =   195
         Left            =   2280
         TabIndex        =   2
         Top             =   840
         Width           =   180
      End
      Begin VB.Label lblp1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "p1"
         Height          =   195
         Left            =   480
         TabIndex        =   1
         Top             =   480
         Width           =   180
      End
   End
   Begin VB.Label lblpos 
      AutoSize        =   -1  'True
      Caption         =   "Label9"
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
      Left            =   2520
      TabIndex        =   33
      Top             =   4200
      Width           =   960
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "Position"
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
      Left            =   2400
      TabIndex        =   32
      Top             =   3480
      Width           =   1290
   End
   Begin VB.Label lblpi2 
      AutoSize        =   -1  'True
      Caption         =   "(X,Y)"
      Height          =   195
      Left            =   2340
      TabIndex        =   31
      Top             =   3000
      Width           =   345
   End
   Begin VB.Label lblpi1 
      AutoSize        =   -1  'True
      Caption         =   "(X,Y)"
      Height          =   195
      Left            =   2340
      TabIndex        =   30
      Top             =   2580
      Width           =   345
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Points of Intersection"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   300
      Index           =   1
      Left            =   2280
      TabIndex        =   29
      Top             =   2100
      Width           =   2730
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Y4"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   360
      Left            =   3780
      TabIndex        =   26
      Top             =   1620
      Width           =   330
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Y3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   360
      Left            =   3780
      TabIndex        =   25
      Top             =   1200
      Width           =   330
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Y2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   360
      Left            =   3780
      TabIndex        =   24
      Top             =   780
      Width           =   330
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
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
      ForeColor       =   &H8000000E&
      Height          =   360
      Left            =   3780
      TabIndex        =   23
      Top             =   360
      Width           =   330
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "X4"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   360
      Left            =   2340
      TabIndex        =   14
      Top             =   1500
      Width           =   360
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "X2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   360
      Left            =   2340
      TabIndex        =   13
      Top             =   780
      Width           =   360
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "X3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   360
      Left            =   2340
      TabIndex        =   12
      Top             =   1140
      Width           =   360
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
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
      ForeColor       =   &H8000000E&
      Height          =   360
      Index           =   0
      Left            =   2340
      TabIndex        =   11
      Top             =   420
      Width           =   360
   End
End
Attribute VB_Name = "frmcalc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim slope1 As Double
Dim slope2 As Double
Dim inter As Double
Dim inter2 As Double
Dim yli As Double
Dim xli As Double
Dim r1 As Double
Dim r2 As Double
Dim ep1 As Double
Dim ep2 As Double
Dim reset As String
Dim p As Long
Dim flag As Long
Dim x1 As Double
Dim x2 As Double
Dim x3 As Double
Dim x4 As Double
Dim y1 As Double
Dim y2 As Double
Dim y3 As Double
Dim y4 As Double
Dim Lin1Up As Single
Dim Lin1Dwn As Single
Dim Lin2Up As Single
Dim Lin2Dwn As Single
Dim i As Long
Dim c As Double
Dim xp1 As Double
Dim xp2 As Double
Dim yp1 As Double
Dim yp2 As Double
Dim ap As Double
Dim bp As Double
Dim cp As Double
Dim ac As Double
Dim bc As Double
Dim cc As Double
Dim xc1 As Double
Dim xc2 As Double
Dim yc1 As Double
Dim yc2 As Double
Dim rx1 As Double
Dim rx2 As Double
Dim ry1 As Double
Dim ry2 As Double

Private Sub cmdcircle_Click()
flag = 3
End Sub

Private Sub cmdclear_Click()
pic1.Cls
pic1.Line (0, -20)-(0, 20), vbBlack
pic1.Line (-20, 0)-(20, 0), vbBlack
txtx1.Text = ""
txtx2.Text = ""
txtx3.Text = ""
txtx4.Text = ""
txty1.Text = ""
txty2.Text = ""
txty3.Text = ""
txty4.Text = ""
lblp1.Caption = ""
lblp2.Caption = ""
lblp3.Caption = ""
lblp4.Caption = ""
lblpi1.Caption = ""
lblpi2.Caption = ""
lblpos.Caption = ""
rx1 = 0
rx2 = 0
ry1 = 0
ry2 = 0
p = 0
End Sub

Private Sub cmdexit_Click()
End
End Sub

Private Sub cmdgraph_Click()
pic1.Cls
x1 = Val(txtx1.Text)
x2 = Val(txtx2.Text)
x3 = Val(txtx3.Text)
x4 = Val(txtx4.Text)
y1 = Val(txty1.Text)
y2 = Val(txty2.Text)
y3 = Val(txty3.Text)
y4 = Val(txty4.Text)
If flag = 1 Then 'line segment
        lblp1.Caption = x1 & "," & y1
        lblp1.Left = x1
        lblp1.Top = y1
        pic1.Circle (x1, y1), 0.25, vbRed
        pic1.Line (0, -20)-(0, 20), vbBlack
        pic1.Line (-20, 0)-(20, 0), vbBlack
        txtx1.Text = x1
        txty1.Text = y1
        lblp2.Caption = x2 & "," & y2
        lblp2.Left = x2
        lblp2.Top = y2
        pic1.Circle (x2, y2), 0.25, vbRed
        pic1.Line (x1, y1)-(x2, y2), vbBlue
        txtx2.Text = x2
        txty2.Text = y2
        slope1 = (y2 - y1) / (x2 - x1)
        inter = y1 - x1 * ((y2 - y1) / (x2 - x1))
        lblp3.Caption = x3 & "," & y3
        lblp3.Left = x3
        lblp3.Top = y3
        pic1.Circle (x3, y3), 0.25, vbRed
        txtx3.Text = x3
        txty3.Text = y3
        lblp4.Caption = x4 & "," & y4
        lblp4.Left = x4
        lblp4.Top = y4
        pic1.Circle (x4, y4), 0.25, vbRed
        pic1.Line (x3, y3)-(x4, y4), vbBlue
        txtx4.Text = x4
        txty4.Text = y4
        slope2 = (y4 - y3) / (x4 - x3)
        inter2 = y3 - x3 * ((y4 - y3) / (x4 - x3))
        If x1 = x3 And y1 = y3 Then
            lblpi1.Caption = x1 & "," & y1
        ElseIf x1 = x4 And y1 = y4 Then
            lblpi1.Caption = x1 & "," & y1
        ElseIf x2 = x3 And y2 = y3 Then
            lblpi1.Caption = x2 & "," & y2
        ElseIf x2 = x4 And y2 = y4 Then
            lblpi1.Caption = x2 & "," & y2
        Else
            xli = (inter2 - inter) / (slope2 - slope1)
            yli = slope2 * xli1 + yi2
            lblpi1.Caption = xli & "," & yli
        End If
ElseIf flag = 2 Then 'full line
        lblp1.Caption = x1 & "," & y1
        lblp1.Left = x1
        lblp1.Top = y1
        pic1.Circle (x1, y1), 0.25, vbRed
        pic1.Line (0, -20)-(0, 20), vbBlack
        pic1.Line (-20, 0)-(20, 0), vbBlack
        txtx1.Text = x1
        txty1.Text = y1
        lblp2.Caption = x2 & "," & y2
        lblp2.Left = x2
        lblp2.Top = y2
        pic1.Circle (x2, y2), 0.25, vbRed
        pic1.Line (x1, y1)-(x2, y2), vbBlue
        slope1 = (y2 - y1) / (x2 - x1)
        inter = y1 - x1 * ((y2 - y1) / (x2 - x1))
        Lin1Up = (slope1 * 20) + inter
        Lin1Dwn = (slope1 * -20) + inter
        pic1.Line (20, Lin1Up)-(-20, Lin1Dwn), vbBlue
        txtx2.Text = x2
        txty2.Text = y2
        lblp3.Caption = x3 & "," & y3
        lblp3.Left = x3
        lblp3.Top = y3
        pic1.Circle (x3, y3), 0.25, vbRed
        txtx3.Text = x3
        txty3.Text = y3
        lblp4.Caption = x4 & "," & y4
        lblp4.Left = x4
        lblp4.Top = y4
        pic1.Circle (x4, y4), 0.25, vbRed
        pic1.Line (x3, y3)-(x4, y4), vbBlue
        slope2 = (y4 - y3) / (x4 - x3)
        inter2 = y3 - x3 * ((y4 - y3) / (x4 - x3))
        Lin2Up = (slope2 * 20) + inter2
        Lin2Dwn = (slope2 * -20) + inter2
        pic1.Line (20, Lin2Up)-(-20, Lin2Dwn), vbBlue
        If x1 = x3 And y1 = y3 Then
            lblpi1.Caption = x1 & "," & y1
        ElseIf x1 = x4 And y1 = y4 Then
            lblpi1.Caption = x1 & "," & y1
        ElseIf x2 = x3 And y2 = y3 Then
            lblpi1.Caption = x2 & "," & y2
        ElseIf x2 = x4 And y2 = y4 Then
            lblpi1.Caption = x2 & "," & y2
        Else
            xli = (inter2 - inter) / (slope2 - slope1)
            yli = slope2 * xli1 + yi2
            lblpi1.Caption = xli & "," & yli
        End If
        txtx4.Text = x4
        txty4.Text = y4
ElseIf flag = 3 Then 'circle
        lblp1.Caption = x1 & "," & y1
        lblp1.Left = x1
        lblp1.Top = y1
        pic1.Circle (x1, y1), 0.25, vbRed
        pic1.Line (0, -20)-(0, 20), vbBlack
        pic1.Line (-20, 0)-(20, 0), vbBlack
        txtx1.Text = x1
        txty1.Text = y1
        lblp2.Caption = x2 & "," & y2
        lblp2.Left = x2
        lblp2.Top = y2
        pic1.Circle (x2, y2), 0.25, vbRed
        pic1.Line (x1, y1)-(x2, y2), vbBlue
        r1 = (((x2 - x1) ^ 2) + ((y2 - y1) ^ 2)) ^ 0.5
        pic1.Circle (x1, y1), r1, vbGreen
        txtx2.Text = x2
        txty2.Text = y2
        lblp3.Caption = x3 & "," & y3
        lblp3.Left = x3
        lblp3.Top = y3
        pic1.Circle (x3, y3), 0.25, vbRed
        txtx3.Text = x3
        txty3.Text = y3
        lblp4.Caption = x4 & "," & y4
        lblp4.Left = x4
        lblp4.Top = y4
        pic1.Circle (x4, y4), 0.25, vbRed
        pic1.Line (x3, y3)-(x4, y4), vbBlue
        r2 = (((x4 - x3) ^ 2) + ((y4 - y3) ^ 2)) ^ 0.5
        pic1.Circle (x3, y3), r2, vbGreen
        ac = (x1 - x2) / (y2 - y1)
        bc = (1 / (2 * (y2 - y1))) * (r1 ^ 2 - r2 ^ 2 + x2 ^ 2 - x1 ^ 2 + y2 ^ 2 - y1 ^ 2)
        cc = bc - y1
        xc1 = (-bc + (bc ^ 2 - 4 * ac * cc) ^ 0.5) / (2 * ac)
        xc2 = (-bc - (bc ^ 2 - 4 * ac * cc) ^ 0.5) / (2 * ac)
        yc1 = ac * xc1 ^ 2 + bc * xc1 + cc
        yc2 = ac * xc2 ^ 2 + bc * xc2 + cc
        lblpi1.Caption = xc1 & "," & yc1
        lblpi2.Caption = xc2 & "," & yc2
        txtx4.Text = x4
        txty4.Text = y4
ElseIf flag = 4 Then 'rectangle
        lblp1.Caption = x1 & "," & y1
        lblp1.Left = x1
        lblp1.Top = y1
        pic1.Circle (x1, y1), 0.25, vbRed
        pic1.Line (0, -20)-(0, 20), vbBlack
        pic1.Line (-20, 0)-(20, 0), vbBlack
        lblp2.Caption = x2 & "," & y2
        lblp2.Left = x2
        lblp2.Top = y2
        pic1.Circle (x2, y2), 0.25, vbRed
        pic1.Line (x1, y1)-(x2, y2), vbBlue, B
        lblp3.Caption = x3 & "," & y3
        lblp3.Left = x3
        lblp3.Top = y3
        pic1.Circle (x3, y3), 0.25, vbRed
        lblp4.Caption = x4 & "," & y4
        lblp4.Left = x4
        lblp4.Top = y4
        pic1.Circle (x4, y4), 0.25, vbRed
        pic1.Line (x3, y3)-(x4, y4), vbBlue, B
        If x3 < x1 And x3 > x2 Or x3 < x2 And x3 > x1 Then
            If rx1 = 0 Then
                rx1 = x3
            Else
                If rx2 = 0 Then
                    rx2 = x3
                End If
            End If
            If y3 < y1 And y3 > y2 Or y3 < y2 And y3 > y1 Then
                If ry1 = 0 Then
                    ry1 = y3
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y3
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
                
            ElseIf y4 < y1 And y4 > y2 Or y4 < y2 And y4 > y1 Then
                If ry1 = 0 Then
                    ry1 = y4
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y4
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y1 < y3 And y1 > y4 Or y1 < y4 And y1 > y3 Then
                If ry1 = 0 Then
                    ry1 = y1
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y1
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y2 < y3 And y2 > y4 Or y2 < y4 And y2 > y3 Then
                If ry1 = 0 Then
                    ry1 = y2
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y2
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            Else
                MsgBox ("Does not intersect")
            End If
        ElseIf x4 < x1 And x4 > x2 Or x4 < x2 And x4 > x1 Then
            If rx1 = 0 Then
                rx1 = x4
            Else
                If rx2 = 0 Then
                    rx2 = x4
                End If
            End If
            If y3 < y1 And y3 > y2 Or y3 < y2 And y3 > y1 Then
                If ry1 = 0 Then
                    ry1 = y3
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y3
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y4 < y1 And y4 > y2 Or y4 < y2 And y4 > y1 Then
                If ry1 = 0 Then
                    ry1 = y4
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y4
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y1 < y3 And y1 > y4 Or y1 < y4 And y1 > y3 Then
                If ry1 = 0 Then
                    ry1 = y1
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y1
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y2 < y3 And y2 > y4 Or y2 < y4 And y2 > y3 Then
                If ry1 = 0 Then
                    ry1 = y2
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y2
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            Else
                MsgBox ("Does not intersect")
            End If
        ElseIf x1 < x3 And x1 > x4 Or x1 < x4 And x1 > x3 Then
            If rx1 = 0 Then
                rx1 = x1
            Else
                If rx2 = 0 Then
                    rx2 = x1
                End If
            End If
            If y3 < y1 And y3 > y2 Or y3 < y2 And y3 > y1 Then
                If ry1 = 0 Then
                    ry1 = y3
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y3
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y4 < y1 And y4 > y2 Or y4 < y2 And y4 > y1 Then
                If ry1 = 0 Then
                    ry1 = y4
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y4
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y1 < y3 And y1 > y4 Or y1 < y4 And y1 > y3 Then
                If ry1 = 0 Then
                    ry1 = y1
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y1
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y2 < y3 And y2 > y4 Or y2 < y4 And y2 > y3 Then
                If ry1 = 0 Then
                    ry1 = y2
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y2
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            Else
                MsgBox ("Does not intersect")
            End If
        ElseIf x2 < x3 And x2 > x4 Or x2 < x4 And x2 > x3 Then
            If rx1 = 0 Then
                rx1 = x2
            Else
                If rx2 = 0 Then
                    rx2 = x2
                End If
            End If
            If y3 < y1 And y3 > y2 Or y3 < y2 And y3 > y1 Then
                If ry1 = 0 Then
                    ry1 = y3
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y3
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y4 < y1 And y4 > y2 Or y4 < y2 And y4 > y1 Then
                If ry1 = 0 Then
                    ry1 = y4
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y4
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y1 < y3 And y1 > y4 Or y1 < y4 And y1 > y3 Then
                If ry1 = 0 Then
                    ry1 = y1
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y1
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y2 < y3 And y2 > y4 Or y2 < y4 And y2 > y3 Then
                If ry1 = 0 Then
                    ry1 = y2
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y2
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            Else
                MsgBox ("Does not intersect")
            End If
        Else
            MsgBox ("Does not intersect")
        End If
ElseIf flag = 5 Then 'parabola
        lblp1.Caption = x1 & "," & y1
        lblp1.Left = x1
        lblp1.Top = y1
        pic1.Circle (x1, y1), 0.25, vbRed
        pic1.Line (0, -20)-(0, 20), vbBlack
        pic1.Line (-20, 0)-(20, 0), vbBlack
        txtx1.Text = x1
        txty1.Text = y1
        lblp2.Caption = x2 & "," & y2
        lblp2.Left = x2
        lblp2.Top = y2
        pic1.Circle (x2, y2), 0.25, vbRed
        For i = -2000 To 2000
            c = i / 100
            slope1 = ((y2 - y1) / ((x2 - x1) ^ 2))
            ep1 = (slope1 * (c - x1) ^ 2 + y1)
            pic1.Circle (c, ep1), 0.25, vbRed
        Next i
        txtx2.Text = x2
        txty2.Text = y2
        lblp3.Caption = x3 & "," & y3
        lblp3.Left = x3
        lblp3.Top = y3
        pic1.Circle (x3, y3), 0.25, vbRed
        txtx3.Text = x3
        txty3.Text = y3
        lblp4.Caption = x4 & "," & y4
        lblp4.Left = x4
        lblp4.Top = y4
        pic1.Circle (x4, y4), 0.25, vbRed
        For i = -2000 To 2000
            c = i / 100
            slope2 = ((y4 - y3) / ((x4 - x3) ^ 2))
            ep2 = (slope2 * (c - x3) ^ 2 + y3)
            pic1.Circle (c, ep2), 0.25, vbRed
        Next i
        txtx4.Text = x4
        txty4.Text = y4
'        If x1 = x3 And y1 = y3 Then
'            lblpi1.Caption = x1 & "," & y1
'        ElseIf x1 = x4 And y1 = y4 Then
'            lblpi1.Caption = x1 & "," & y1
'        ElseIf x2 = x3 And y2 = y3 Then
'            lblpi1.Caption = x2 & "," & y2
'        ElseIf x2 = x4 And y2 = y4 Then
'            lblpi1.Caption = x2 & "," & y2
'        Else
            ap = slope1 - slope2
            bp = -2 * (slope1 * x1 - slope2 * x3)
            cp = slope1 * x1 ^ 2 + y1 - slope2 * x3 ^ 2 - y3
            xp1 = (-bp + (bp ^ 2 - 4 * ap * cp) ^ 0.5) / (2 * ap)
            xp2 = (-bp - (bp ^ 2 - 4 * ap * cp) ^ 0.5) / (2 * ap)
            yp1 = ap * xp1 ^ 2 + bp * xp1 + cp
            yp2 = ap * xp2 ^ 2 + bp * xp2 + cp
            lblpi1.Caption = xp1 & "," & yp1
            lblpi2.Caption = xp2 & "," & yp2
'        End If
End If

End Sub

Private Sub cmdline_Click()
flag = 2
End Sub

Private Sub cmdlineseg_Click()
flag = 1
End Sub

Private Sub cmdpara_Click()
flag = 5
End Sub

Private Sub cmdrec_Click()
flag = 4
End Sub

Private Sub Form_Load()
p = 0
flag = 1
pic1.Scale (-20, 20)-(20, -20)
End Sub

Private Sub pic1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
   On Error GoTo pic1_MouseDown_Error

p = p + 1
If flag = 1 Then 'line segment
    If p = 1 Then
        x1 = X
        y1 = Y
        lblp1.Caption = x1 & "," & y1
        lblp1.Left = x1
        lblp1.Top = y1
        pic1.Circle (x1, y1), 0.25, vbRed
        pic1.Line (0, -20)-(0, 20), vbBlack
        pic1.Line (-20, 0)-(20, 0), vbBlack
        txtx1.Text = x1
        txty1.Text = y1
    End If
    If p = 2 Then
        x2 = X
        y2 = Y
        lblp2.Caption = x2 & "," & y2
        lblp2.Left = x2
        lblp2.Top = y2
        pic1.Circle (x2, y2), 0.25, vbRed
        pic1.Line (x1, y1)-(x2, y2), vbBlue
        txtx2.Text = x2
        txty2.Text = y2
        slope1 = (y2 - y1) / (x2 - x1)
        inter = y1 - x1 * ((y2 - y1) / (x2 - x1))
    End If
    If p = 3 Then
        x3 = X
        y3 = Y
        lblp3.Caption = x3 & "," & y3
        lblp3.Left = x3
        lblp3.Top = y3
        pic1.Circle (x3, y3), 0.25, vbRed
        txtx3.Text = x3
        txty3.Text = y3
    End If
    If p = 4 Then
        x4 = X
        y4 = Y
        lblp4.Caption = x4 & "," & y4
        lblp4.Left = x4
        lblp4.Top = y4
        pic1.Circle (x4, y4), 0.25, vbRed
        pic1.Line (x3, y3)-(x4, y4), vbBlue
        txtx4.Text = x4
        txty4.Text = y4
        slope2 = (y4 - y3) / (x4 - x3)
        inter2 = y3 - x3 * ((y4 - y3) / (x4 - x3))
        If x1 = x3 And y1 = y3 Then
            lblpi1.Caption = x1 & "," & y1
        ElseIf x1 = x4 And y1 = y4 Then
            lblpi1.Caption = x1 & "," & y1
        ElseIf x2 = x3 And y2 = y3 Then
            lblpi1.Caption = x2 & "," & y2
        ElseIf x2 = x4 And y2 = y4 Then
            lblpi1.Caption = x2 & "," & y2
        Else
            xli = (inter2 - inter) / (slope2 - slope1)
            yli = slope2 * xli1 + yi2
            lblpi1.Caption = xli & "," & yli
        End If
    End If
    If p = 5 Then
        reset = MsgBox("Everything will no reset do you accept?", vbYesNo, "Reset")
        If reset = vbYes Then
            p = 0
            pic1.Cls
            pic1.Line (0, -20)-(0, 20), vbBlack
            pic1.Line (-20, 0)-(20, 0), vbBlack
            lblp1.Caption = ""
            lblp2.Caption = ""
            lblp3.Caption = ""
            lblp4.Caption = ""
            txtx1.Text = ""
            txtx2.Text = ""
            txtx3.Text = ""
            txtx4.Text = ""
            txty1.Text = ""
            txty2.Text = ""
            txty3.Text = ""
            txty4.Text = ""
        Else
            frmcalc.SetFocus
        End If
    End If
ElseIf flag = 2 Then 'full line
    If p = 1 Then
        x1 = X
        y1 = Y
        lblp1.Caption = x1 & "," & y1
        lblp1.Left = x1
        lblp1.Top = y1
        pic1.Circle (x1, y1), 0.25, vbRed
        pic1.Line (0, -20)-(0, 20), vbBlack
        pic1.Line (-20, 0)-(20, 0), vbBlack
        txtx1.Text = x1
        txty1.Text = y1
    End If
    If p = 2 Then
        x2 = X
        y2 = Y
        lblp2.Caption = x2 & "," & y2
        lblp2.Left = x2
        lblp2.Top = y2
        pic1.Circle (x2, y2), 0.25, vbRed
        pic1.Line (x1, y1)-(x2, y2), vbBlue
        slope1 = (y2 - y1) / (x2 - x1)
        inter = y1 - x1 * ((y2 - y1) / (x2 - x1))
        Lin1Up = (slope1 * 20) + inter
        Lin1Dwn = (slope1 * -20) + inter
        pic1.Line (20, Lin1Up)-(-20, Lin1Dwn), vbBlue
        txtx2.Text = x2
        txty2.Text = y2
    End If
    If p = 3 Then
        x3 = X
        y3 = Y
        lblp3.Caption = x3 & "," & y3
        lblp3.Left = x3
        lblp3.Top = y3
        pic1.Circle (x3, y3), 0.25, vbRed
        txtx3.Text = x3
        txty3.Text = y3
    End If
    If p = 4 Then
        x4 = X
        y4 = Y
        lblp4.Caption = x4 & "," & y4
        lblp4.Left = x4
        lblp4.Top = y4
        pic1.Circle (x4, y4), 0.25, vbRed
        pic1.Line (x3, y3)-(x4, y4), vbBlue
        slope2 = (y4 - y3) / (x4 - x3)
        inter2 = y3 - x3 * ((y4 - y3) / (x4 - x3))
        Lin2Up = (slope2 * 20) + inter2
        Lin2Dwn = (slope2 * -20) + inter2
        pic1.Line (20, Lin2Up)-(-20, Lin2Dwn), vbBlue
        If x1 = x3 And y1 = y3 Then
            lblpi1.Caption = x1 & "," & y1
        ElseIf x1 = x4 And y1 = y4 Then
            lblpi1.Caption = x1 & "," & y1
        ElseIf x2 = x3 And y2 = y3 Then
            lblpi1.Caption = x2 & "," & y2
        ElseIf x2 = x4 And y2 = y4 Then
            lblpi1.Caption = x2 & "," & y2
        Else
            xli = (inter2 - inter) / (slope2 - slope1)
            yli = slope2 * xli1 + yi2
            lblpi1.Caption = xli & "," & yli
        End If
        txtx4.Text = x4
        txty4.Text = y4
    End If
    If p = 5 Then
        reset = MsgBox("Everything will no reset do you accept?", vbYesNo, "Reset")
        If reset = vbYes Then
            p = 0
            pic1.Cls
            pic1.Line (0, -20)-(0, 20), vbBlack
            pic1.Line (-20, 0)-(20, 0), vbBlack
            lblp1.Caption = ""
            lblp2.Caption = ""
            lblp3.Caption = ""
            lblp4.Caption = ""
            txtx1.Text = ""
            txtx2.Text = ""
            txtx3.Text = ""
            txtx4.Text = ""
            txty1.Text = ""
            txty2.Text = ""
            txty3.Text = ""
            txty4.Text = ""
        Else
            frmcalc.SetFocus
        End If
    End If
ElseIf flag = 3 Then 'circle
    If p = 1 Then
        x1 = X
        y1 = Y
        lblp1.Caption = x1 & "," & y1
        lblp1.Left = x1
        lblp1.Top = y1
        pic1.Circle (x1, y1), 0.25, vbRed
        pic1.Line (0, -20)-(0, 20), vbBlack
        pic1.Line (-20, 0)-(20, 0), vbBlack
        txtx1.Text = x1
        txty1.Text = y1
    End If
    If p = 2 Then
        x2 = X
        y2 = Y
        lblp2.Caption = x2 & "," & y2
        lblp2.Left = x2
        lblp2.Top = y2
        pic1.Circle (x2, y2), 0.25, vbRed
        pic1.Line (x1, y1)-(x2, y2), vbBlue
        r1 = (((x2 - x1) ^ 2) + ((y2 - y1) ^ 2)) ^ 0.5
        pic1.Circle (x1, y1), r1, vbGreen
        txtx2.Text = x2
        txty2.Text = y2
    End If
    If p = 3 Then
        x3 = X
        y3 = Y
        lblp3.Caption = x3 & "," & y3
        lblp3.Left = x3
        lblp3.Top = y3
        pic1.Circle (x3, y3), 0.25, vbRed
        txtx3.Text = x3
        txty3.Text = y3
    End If
    If p = 4 Then
        x4 = X
        y4 = Y
        lblp4.Caption = x4 & "," & y4
        lblp4.Left = x4
        lblp4.Top = y4
        pic1.Circle (x4, y4), 0.25, vbRed
        pic1.Line (x3, y3)-(x4, y4), vbBlue
        r2 = (((x4 - x3) ^ 2) + ((y4 - y3) ^ 2)) ^ 0.5
        pic1.Circle (x3, y3), r2, vbGreen
        ac = (x1 - x2) / (y2 - y1)
        bc = (1 / (2 * (y2 - y1))) * (r1 ^ 2 - r2 ^ 2 + x2 ^ 2 - x1 ^ 2 + y2 ^ 2 - y1 ^ 2)
        cc = bc - y1
        xc1 = (-bc + (bc ^ 2 - 4 * ac * cc) ^ 0.5) / (2 * ac)
        xc2 = (-bc - (bc ^ 2 - 4 * ac * cc) ^ 0.5) / (2 * ac)
        yc1 = ac * xc1 ^ 2 + bc * xc1 + cc
        yc2 = ac * xc2 ^ 2 + bc * xc2 + cc
        lblpi1.Caption = xc1 & "," & yc1
        lblpi2.Caption = xc2 & "," & yc2
        txtx4.Text = x4
        txty4.Text = y4
    End If
    If p = 5 Then
        reset = MsgBox("Everything will no reset do you accept?", vbYesNo, "Reset")
        If reset = vbYes Then
            p = 0
            pic1.Cls
            pic1.Line (0, -20)-(0, 20), vbBlack
            pic1.Line (-20, 0)-(20, 0), vbBlack
            lblp1.Caption = ""
            lblp2.Caption = ""
            lblp3.Caption = ""
            lblp4.Caption = ""
            txtx1.Text = ""
            txtx2.Text = ""
            txtx3.Text = ""
            txtx4.Text = ""
            txty1.Text = ""
            txty2.Text = ""
            txty3.Text = ""
            txty4.Text = ""
        Else
            frmcalc.SetFocus
        End If
    End If
ElseIf flag = 4 Then 'rectangle
    If p = 1 Then
        x1 = X
        y1 = Y
        lblp1.Caption = x1 & "," & y1
        lblp1.Left = x1
        lblp1.Top = y1
        pic1.Circle (x1, y1), 0.25, vbRed
        pic1.Line (0, -20)-(0, 20), vbBlack
        pic1.Line (-20, 0)-(20, 0), vbBlack
    End If
    If p = 2 Then
        x2 = X
        y2 = Y
        lblp2.Caption = x2 & "," & y2
        lblp2.Left = x2
        lblp2.Top = y2
        pic1.Circle (x2, y2), 0.25, vbRed
        pic1.Line (x1, y1)-(x2, y2), vbBlue, B
    End If
    If p = 3 Then
        x3 = X
        y3 = Y
        lblp3.Caption = x3 & "," & y3
        lblp3.Left = x3
        lblp3.Top = y3
        pic1.Circle (x3, y3), 0.25, vbRed
    End If
    If p = 4 Then
        x4 = X
        y4 = Y
        lblp4.Caption = x4 & "," & y4
        lblp4.Left = x4
        lblp4.Top = y4
        pic1.Circle (x4, y4), 0.25, vbRed
        pic1.Line (x3, y3)-(x4, y4), vbBlue, B
        If x3 < x1 And x3 > x2 Or x3 < x2 And x3 > x1 Then
            If rx1 = 0 Then
                rx1 = x3
            Else
                If rx2 = 0 Then
                    rx2 = x3
                End If
            End If
            If y3 < y1 And y3 > y2 Or y3 < y2 And y3 > y1 Then
                If ry1 = 0 Then
                    ry1 = y3
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y3
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
                
            ElseIf y4 < y1 And y4 > y2 Or y4 < y2 And y4 > y1 Then
                If ry1 = 0 Then
                    ry1 = y4
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y4
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y1 < y3 And y1 > y4 Or y1 < y4 And y1 > y3 Then
                If ry1 = 0 Then
                    ry1 = y1
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y1
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y2 < y3 And y2 > y4 Or y2 < y4 And y2 > y3 Then
                If ry1 = 0 Then
                    ry1 = y2
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y2
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            Else
                MsgBox ("Does not intersect")
            End If
        ElseIf x4 < x1 And x4 > x2 Or x4 < x2 And x4 > x1 Then
            If rx1 = 0 Then
                rx1 = x4
            Else
                If rx2 = 0 Then
                    rx2 = x4
                End If
            End If
            If y3 < y1 And y3 > y2 Or y3 < y2 And y3 > y1 Then
                If ry1 = 0 Then
                    ry1 = y3
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y3
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y4 < y1 And y4 > y2 Or y4 < y2 And y4 > y1 Then
                If ry1 = 0 Then
                    ry1 = y4
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y4
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y1 < y3 And y1 > y4 Or y1 < y4 And y1 > y3 Then
                If ry1 = 0 Then
                    ry1 = y1
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y1
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y2 < y3 And y2 > y4 Or y2 < y4 And y2 > y3 Then
                If ry1 = 0 Then
                    ry1 = y2
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y2
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            Else
                MsgBox ("Does not intersect")
            End If
        ElseIf x1 < x3 And x1 > x4 Or x1 < x4 And x1 > x3 Then
            If rx1 = 0 Then
                rx1 = x1
            Else
                If rx2 = 0 Then
                    rx2 = x1
                End If
            End If
            If y3 < y1 And y3 > y2 Or y3 < y2 And y3 > y1 Then
                If ry1 = 0 Then
                    ry1 = y3
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y3
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y4 < y1 And y4 > y2 Or y4 < y2 And y4 > y1 Then
                If ry1 = 0 Then
                    ry1 = y4
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y4
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y1 < y3 And y1 > y4 Or y1 < y4 And y1 > y3 Then
                If ry1 = 0 Then
                    ry1 = y1
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y1
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y2 < y3 And y2 > y4 Or y2 < y4 And y2 > y3 Then
                If ry1 = 0 Then
                    ry1 = y2
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y2
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            Else
                MsgBox ("Does not intersect")
            End If
        ElseIf x2 < x3 And x2 > x4 Or x2 < x4 And x2 > x3 Then
            If rx1 = 0 Then
                rx1 = x2
            Else
                If rx2 = 0 Then
                    rx2 = x2
                End If
            End If
            If y3 < y1 And y3 > y2 Or y3 < y2 And y3 > y1 Then
                If ry1 = 0 Then
                    ry1 = y3
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y3
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y4 < y1 And y4 > y2 Or y4 < y2 And y4 > y1 Then
                If ry1 = 0 Then
                    ry1 = y4
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y4
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y1 < y3 And y1 > y4 Or y1 < y4 And y1 > y3 Then
                If ry1 = 0 Then
                    ry1 = y1
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y1
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            ElseIf y2 < y3 And y2 > y4 Or y2 < y4 And y2 > y3 Then
                If ry1 = 0 Then
                    ry1 = y2
                    lblpi1.Caption = rx1 & "," & ry1
                Else
                    If ry2 = 0 Then
                        ry2 = y2
                        lblpi2.Caption = rx2 & "," & ry2
                    End If
                End If
            Else
                MsgBox ("Does not intersect")
            End If
        Else
            MsgBox ("Does not intersect")
        End If
    End If
    If p = 5 Then
        reset = MsgBox("Everything will no reset do you accept?", vbYesNo, "Reset")
        If reset = vbYes Then
            p = 0
            pic1.Cls
            pic1.Line (0, -20)-(0, 20), vbBlack
            pic1.Line (-20, 0)-(20, 0), vbBlack
            lblp1.Caption = ""
            lblp2.Caption = ""
            lblp3.Caption = ""
            lblp4.Caption = ""
            txtx1.Text = ""
            txtx2.Text = ""
            txtx3.Text = ""
            txtx4.Text = ""
            txty1.Text = ""
            txty2.Text = ""
            txty3.Text = ""
            txty4.Text = ""
        Else
            frmcalc.SetFocus
        End If
    End If
ElseIf flag = 5 Then 'parabola
    If p = 1 Then
        x1 = X
        y1 = Y
        lblp1.Caption = x1 & "," & y1
        lblp1.Left = x1
        lblp1.Top = y1
        pic1.Circle (x1, y1), 0.25, vbRed
        pic1.Line (0, -20)-(0, 20), vbBlack
        pic1.Line (-20, 0)-(20, 0), vbBlack
        txtx1.Text = x1
        txty1.Text = y1
    End If
    If p = 2 Then
        x2 = X
        y2 = Y
        lblp2.Caption = x2 & "," & y2
        lblp2.Left = x2
        lblp2.Top = y2
        pic1.Circle (x2, y2), 0.25, vbRed
        For i = -2000 To 2000
            c = i / 100
            slope1 = ((y2 - y1) / ((x2 - x1) ^ 2))
            ep1 = (slope1 * (c - x1) ^ 2 + y1)
            pic1.Circle (c, ep1), 0.25, vbRed
        Next i
        txtx2.Text = x2
        txty2.Text = y2
    End If
    If p = 3 Then
        x3 = X
        y3 = Y
        lblp3.Caption = x3 & "," & y3
        lblp3.Left = x3
        lblp3.Top = y3
        pic1.Circle (x3, y3), 0.25, vbRed
        txtx3.Text = x3
        txty3.Text = y3
    End If
    If p = 4 Then
        x4 = X
        y4 = Y
        lblp4.Caption = x4 & "," & y4
        lblp4.Left = x4
        lblp4.Top = y4
        pic1.Circle (x4, y4), 0.25, vbRed
        For i = -2000 To 2000
            c = i / 100
            slope2 = ((y4 - y3) / ((x4 - x3) ^ 2))
            ep2 = (slope2 * (c - x3) ^ 2 + y3)
            pic1.Circle (c, ep2), 0.25, vbRed
        Next i
        txtx4.Text = x4
        txty4.Text = y4
        If x1 = x3 And y1 = y3 Then
            lblpi1.Caption = x1 & "," & y1
        ElseIf x1 = x4 And y1 = y4 Then
            lblpi1.Caption = x1 & "," & y1
        ElseIf x2 = x3 And y2 = y3 Then
            lblpi1.Caption = x2 & "," & y2
        ElseIf x2 = x4 And y2 = y4 Then
            lblpi1.Caption = x2 & "," & y2
        Else
            Dim ap As Single
       Dim bp As Single
       Dim cp As Single
       Dim xp1 As Single
       Dim xp2 As Single
       Dim yp1 As Single
       Dim yp2 As Single
       ap = S1 - S2
          bp = -2 * (S1 * x1 - S2 * x3)
          cp = S1 * x1 ^ 2 + y1 - S2 * x3 ^ 2 - y3
          xp1 = (-bp + (bp ^ 2 - 4 * ap * cp) ^ 0.5) / (2 * ap)

          If Error = False Then
               xp2 = (-bp - (bp ^ 2 - 4 * ap * cp) ^ 0.5) / (2 * ap)
               yp1 = ap * xp1 ^ 2 + bp * xp1 + cp
               yp2 = ap * xp2 ^ 2 + bp * xp2 + cp
               lstInter.AddItem (Str(xp1) & "," & Str(yp1))
               lstInter.AddItem (Str(xp2) & "," & Str(yp2))
           End If
   End If
Exit Sub
ErrorHandler:
   lstInter.Clear
   MsgBox ("No Points of Intersection")
   lstInter.Clear
   Error = True
Resume Next
        End If
        pic1.Circle (xp1, yp1), 0.25, vbCyan
        pic1.Circle (xp2, yp2), 0.25, vbCyan
    End If
    If p = 5 Then
        reset = MsgBox("Everything will no reset do you accept?", vbYesNo, "Reset")
        If reset = vbYes Then
            p = 0
            pic1.Cls
            pic1.Line (0, -20)-(0, 20), vbBlack
            pic1.Line (-20, 0)-(20, 0), vbBlack
            lblp1.Caption = ""
            lblp2.Caption = ""
            lblp3.Caption = ""
            lblp4.Caption = ""
            txtx1.Text = ""
            txtx2.Text = ""
            txtx3.Text = ""
            txtx4.Text = ""
            txty1.Text = ""
            txty2.Text = ""
            txty3.Text = ""
            txty4.Text = ""
        Else
            frmcalc.SetFocus
        End If
    End If
'ElseIf flag = 0 Then
'MsgBox ("You need to choose an option.")
'End If

   On Error GoTo 0
   Exit Sub

pic1_MouseDown_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure pic1_MouseDown of Form frmcalc"
End Sub

Private Sub pic1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lblpos.Caption = X & "," & Y
End Sub

Private Sub txtx1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    txty1.SetFocus
End If
End Sub

Private Sub txtx2_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    txty2.SetFocus
End If
End Sub

Private Sub txtx3_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    txty3.SetFocus
End If
End Sub

Private Sub txtx4_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    txty4.SetFocus
End If
End Sub

Private Sub txty1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    txtx2.SetFocus
End If
End Sub

Private Sub txty2_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    txtx3.SetFocus
End If
End Sub

Private Sub txty3_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    txtx4.SetFocus
End If
End Sub

Private Sub txty4_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    txtes.SetFocus
End If
End Sub
