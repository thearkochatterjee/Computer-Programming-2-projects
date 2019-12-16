VERSION 5.00
Begin VB.Form frmtimescore 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Time Scores"
   ClientHeight    =   5205
   ClientLeft      =   4305
   ClientTop       =   3480
   ClientWidth     =   6555
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5205
   ScaleWidth      =   6555
   Begin VB.Timer Timers 
      Interval        =   100
      Left            =   1680
      Top             =   480
   End
   Begin VB.Timer Timer 
      Interval        =   10
      Left            =   1020
      Top             =   420
   End
   Begin VB.ListBox lsttop10 
      Height          =   3375
      Left            =   3240
      Sorted          =   -1  'True
      TabIndex        =   1
      Top             =   1200
      Width           =   2175
   End
   Begin VB.ListBox lstallscores 
      Height          =   3375
      Left            =   840
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   1200
      Width           =   1815
   End
   Begin VB.Menu mnuback 
      Caption         =   "Back"
   End
   Begin VB.Menu mnuexit 
      Caption         =   "Exit"
   End
End
Attribute VB_Name = "frmtimescore"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim path As String

Private Sub mnuback_Click()
frmhangman.Show
frmtimescore.Hide
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub Timer_Timer()
lstallscores.Clear
strfn = "scores"
path = "E:\arko\Computer Programming 2 projects\Hangman\scores.txt"
Open path For Input As #1
Dim i As Long
Dim strline As String
For i = 1 To 999999999
    If EOF(1) Then
        Exit For
    End If
    Line Input #1, strline
    If Len(strline) <> 0 Then
        lstallscores.AddItem strline
    End If
Next i
Close #1
Timer.Enabled = False
End Sub
