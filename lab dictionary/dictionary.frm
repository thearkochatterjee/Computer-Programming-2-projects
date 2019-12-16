VERSION 5.00
Begin VB.Form frmdictionary 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Dictionary"
   ClientHeight    =   5415
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   6060
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5415
   ScaleWidth      =   6060
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdexit 
      Caption         =   "Exit"
      Height          =   375
      Left            =   2640
      TabIndex        =   11
      Top             =   2280
      Width           =   855
   End
   Begin VB.ListBox lstaword 
      Height          =   2595
      Left            =   3600
      TabIndex        =   10
      Top             =   2280
      Width           =   1815
   End
   Begin VB.CommandButton cmdsearchamount 
      Caption         =   "Search Amount"
      Height          =   495
      Left            =   2640
      TabIndex        =   9
      Top             =   1020
      Width           =   855
   End
   Begin VB.CommandButton cmdsearch 
      Caption         =   "search"
      Height          =   435
      Left            =   2700
      TabIndex        =   8
      Top             =   420
      Width           =   855
   End
   Begin VB.TextBox txtamount 
      Height          =   315
      Left            =   3720
      TabIndex        =   5
      Top             =   1200
      Width           =   1575
   End
   Begin VB.CommandButton cmdopen 
      Caption         =   "open"
      Height          =   555
      Left            =   2640
      TabIndex        =   3
      Top             =   1620
      Width           =   855
   End
   Begin VB.ListBox lstwords 
      Height          =   4740
      Left            =   420
      TabIndex        =   2
      Top             =   300
      Width           =   2115
   End
   Begin VB.TextBox txtsearch 
      Height          =   315
      Left            =   3660
      TabIndex        =   1
      Top             =   540
      Width           =   1635
   End
   Begin VB.Label lblmax 
      AutoSize        =   -1  'True
      Caption         =   "max"
      Height          =   195
      Left            =   3780
      TabIndex        =   7
      Top             =   1920
      Width           =   285
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Max Amount of Letters"
      Height          =   195
      Index           =   2
      Left            =   3720
      TabIndex        =   6
      Top             =   1620
      Width           =   1590
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "search by amount of letters"
      Height          =   195
      Index           =   1
      Left            =   3720
      TabIndex        =   4
      Top             =   900
      Width           =   1905
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Search"
      Height          =   195
      Index           =   0
      Left            =   3660
      TabIndex        =   0
      Top             =   300
      Width           =   510
   End
End
Attribute VB_Name = "frmdictionary"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim search As String
Dim path As String
Dim i As Long
Dim arrwords(60000) As String
Dim strline As String
Dim longest As Long
Dim lword As String

Private Sub cmdexit_Click()
End
End Sub

Private Sub cmdopen_Click()
path = "F:\arko\Computer Programming 2 projects\data\dictionary.txt"
Open path For Input As #1
i = 0
longest = 0
Do While Not EOF(1)
    Line Input #1, strline
    If Len(Trim(strline)) <> 0 Then
        i = i + 1
        arrwords(i) = strline
    End If
    lstwords.AddItem arrwords(i)
    If Len(strline) > longest Then
        longest = Len(strline)
        lword = strline
    End If
Loop
lblmax.Caption = lword & "   " & longest
Close #1
End Sub

Private Sub cmdsearch_Click()
i = 0
lstaword.Clear
For i = 0 To 58113
    If LCase(Trim(lstwords.List(i))) = LCase(Trim(txtsearch.Text)) Then
        lstwords.SetFocus
        lstwords.ListIndex = i
        Exit For
    End If
Next i
End Sub

Private Sub cmdsearchamount_Click()
Dim a As Long
a = Val(txtamount.Text)
lstaword.Clear
i = 0
For i = 0 To 60000
    If Len(arrwords(i)) = a Then
        lstaword.AddItem arrwords(i)
    End If
Next i
End Sub

Private Sub lstwords_Click()
txtsearch.Text = lstwords.List(lstwords.ListIndex)
txtamount.Text = Len(lstwords.List(lstwords.ListIndex))
End Sub
