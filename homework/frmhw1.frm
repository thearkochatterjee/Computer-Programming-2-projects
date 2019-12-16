VERSION 5.00
Begin VB.Form frmhw1 
   Caption         =   "Form1"
   ClientHeight    =   4665
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   10500
   LinkTopic       =   "Form1"
   ScaleHeight     =   4665
   ScaleWidth      =   10500
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox lstbreaks 
      Height          =   1230
      Left            =   420
      TabIndex        =   5
      Top             =   540
      Width           =   1215
   End
   Begin VB.ListBox lstwords 
      Height          =   1815
      Left            =   6360
      TabIndex        =   4
      Top             =   960
      Width           =   2115
   End
   Begin VB.CommandButton cmdbreak 
      Caption         =   "break"
      Height          =   495
      Left            =   1380
      TabIndex        =   1
      Top             =   2460
      Width           =   1035
   End
   Begin VB.TextBox txtinfo 
      Height          =   975
      Left            =   2880
      TabIndex        =   0
      Text            =   "txtinfo"
      Top             =   960
      Width           =   2715
   End
   Begin VB.Label lblnums 
      AutoSize        =   -1  'True
      Caption         =   "nums"
      Height          =   195
      Left            =   3420
      TabIndex        =   3
      Top             =   2820
      Width           =   375
   End
   Begin VB.Label Label 
      Caption         =   "Number of spaces"
      Height          =   555
      Left            =   3420
      TabIndex        =   2
      Top             =   2400
      Width           =   1215
   End
End
Attribute VB_Name = "frmhw1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Long
Dim nums As Long
Dim hl As Long
Dim l As String
Dim numbreak As Long
Dim w1 As String
Dim w2 As String
Dim w3 As String

Private Sub cmdbreak_Click()
hl = Len(txtinfo.Text)
For i = 1 To hl
    l = Mid(txtinfo.Text, i, 1)
    If l = " " Then
        nums = nums + 1
        lstbreaks.AddItem Str(i)
    End If
Next i
lblnums.Caption = nums
w1 = Mid(txtinfo.Text, 1, lstbreaks.List(0))
w2 = Mid(txtinfo.Text, lstbreaks.List(0) + 1, lstbreaks.List(1) - lstbreaks.List(0))
w3 = Mid(txtinfo.Text, lstbreaks.List(1) + 1, Len(txtinfo.Text))
lstwords.AddItem w1
lstwords.AddItem w2
lstwords.AddItem w3
End Sub
