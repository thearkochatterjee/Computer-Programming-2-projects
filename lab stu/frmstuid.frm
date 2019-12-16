VERSION 5.00
Begin VB.Form frmstuid 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   5805
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   8025
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5805
   ScaleWidth      =   8025
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   5280
      Top             =   2760
   End
   Begin VB.Label lblstart 
      Caption         =   "Label1"
      Height          =   495
      Left            =   5160
      TabIndex        =   0
      Top             =   840
      Width           =   975
   End
   Begin VB.Image imgmouth 
      Height          =   375
      Left            =   600
      Top             =   2520
      Width           =   2775
   End
   Begin VB.Image imgnose 
      Height          =   855
      Left            =   1560
      Top             =   1560
      Width           =   735
   End
   Begin VB.Image imgeye2 
      Height          =   735
      Left            =   2400
      Top             =   720
      Width           =   855
   End
   Begin VB.Image imgeye1 
      Height          =   735
      Left            =   600
      Top             =   720
      Width           =   855
   End
   Begin VB.Image imghead 
      Height          =   2535
      Left            =   360
      Top             =   480
      Width           =   3255
   End
   Begin VB.Image imghair 
      Height          =   3255
      Left            =   240
      Top             =   120
      Width           =   3615
   End
   Begin VB.Menu mnuback 
      Caption         =   "Back"
   End
End
Attribute VB_Name = "frmstuid"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuback_Click()
frmstu.Show
frmstuid.Hide
lblstart.Enabled = False
End Sub

Private Sub Timer1_Timer()
If lblstart.Enabled = True Then
Dim hp As String
Dim ep As String
Dim mp As String
Dim np As String
Dim rnh As Long
Dim rne As Long
Dim rnm As Long
Dim rnn As Long
rnh = Int(Rnd * 4) + 1
rne = Int(Rnd * 4) + 1
rnm = Int(Rnd * 4) + 1
rnn = Int(Rnd * 4) + 1
'If rnh = 1 Then
'hp
'ElseIf rnh = 2 Then
'hp
'ElseIf rnh = 3 Then
'hp
'ElseIf rnn = 4 Then
'hp
'End If
'If rne = 1 Then
'ep
'ElseIf rne = 2 Then
'ep
'ElseIf rne = 3 Then
'ep
'ElseIf rne = 4 Then
'ep
'End If
'If rnm = 1 Then
'mp
'ElseIf rnm = 2 Then
'mp
'ElseIf rnm = 3 Then
'mp
'ElseIf rnm = 4 Then
'mp
'End If
'If rnn = 1 Then
'np
'ElseIf rnn = 2 Then
'np
'ElseIf rnn = 3 Then
'np
'ElseIf rnn = 4 Then
'np
'End If
imghair.Picture = LoadPicture(hp)
imghair.Stretch = True
imgeye1.Picture = LoadPicture(ep)
imgeye1.Stretch = True
imgeye2.Picture = LoadPicture(ep)
imgeye2.Stretch = True
imgnose.Picture = LoadPicture(np)
imgnose.Stretch = True
imgmouth.Picture = LoadPicture(mp)
imgmouth.Stretch = True
lblstart.Enabled = False
End If
End Sub
