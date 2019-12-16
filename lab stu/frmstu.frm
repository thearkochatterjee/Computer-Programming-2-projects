VERSION 5.00
Begin VB.Form frmstu 
   BackColor       =   &H80000009&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Lab Student"
   ClientHeight    =   5355
   ClientLeft      =   6285
   ClientTop       =   4635
   ClientWidth     =   5805
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5355
   ScaleWidth      =   5805
   Begin VB.ListBox lsttest 
      BackColor       =   &H8000000C&
      Height          =   255
      Left            =   120
      Sorted          =   -1  'True
      TabIndex        =   1
      Top             =   5040
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.ListBox lststu 
      BackColor       =   &H8000000C&
      Height          =   4545
      Left            =   120
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   480
      Width           =   5535
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000C&
      Caption         =   "Age"
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
      Left            =   4920
      TabIndex        =   6
      Top             =   120
      Width           =   630
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000C&
      Caption         =   "Grade"
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
      Left            =   3900
      TabIndex        =   5
      Top             =   120
      Width           =   900
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000C&
      Caption         =   "Last Name"
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
      Left            =   2400
      TabIndex        =   4
      Top             =   120
      Width           =   1440
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000C&
      Caption         =   "First Name"
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
      Left            =   900
      TabIndex        =   3
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000C&
      Caption         =   "GPA"
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
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   705
   End
   Begin VB.Menu mnuadd 
      Caption         =   "Generate"
   End
   Begin VB.Menu mnusave 
      Caption         =   "Save"
   End
   Begin VB.Menu mnuopen 
      Caption         =   "Open"
   End
   Begin VB.Menu mnuclear 
      Caption         =   "Clear"
   End
   Begin VB.Menu mnuexit 
      Caption         =   "Exit"
   End
End
Attribute VB_Name = "frmstu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim agpa(9999999) As Double

Private Sub lststu_Click()
'frmstuid.Show
'frmstuid.lblstart.Enabled = True
End Sub

Private Sub mnuadd_Click()
   On Error GoTo mnuadd_Click_Error

num = Val(InputBox("How many student woud you like to enter?", "Numer of Students", ""))
how = MsgBox("Would you like the computer to generate the students info?", vbYesNo, "How to Generate the Info")
If how = vbYes Then
For n = 1 To num
g = Int(Rnd * 2) + 1
If g = 1 Then
path = "F:\arko\Computer Programming 2 projects\lab stu\MaleNames.txt"
ElseIf g = 2 Then
path = "F:\arko\Computer Programming 2 projects\lab stu\FemaleNames.txt"
End If
Open path For Input As #1
Do While Not EOF(1)
    Line Input #1, word
    If Len(Trim(word)) <> 0 Then
        i = i + 1
        arrfname(i) = word
    End If
Loop
Close #1
Randomize
If g = 2 Then
c = (Int(Rnd * 4275) + 1)
fn(n) = "  Female  " + arrfname(c)
ElseIf g = 1 Then
c = (Int(Rnd * 1220) + 1)
fn(n) = "  Male  " + arrfname(c)
End If
i = 0
path2 = "F:\arko\Computer Programming 2 projects\lab stu\LastNames.txt"
Open path2 For Input As #2
Do While Not EOF(2)
    Line Input #2, word2
    If Len(Trim(word2)) <> 0 Then
        i = i + 1
        arrlname(i) = word2
    End If
Loop
Close #2
Randomize
x = Int(Rnd * 65000) + 1
ln(n) = arrlname(x)
ag(n) = Str(Int(Rnd * 4) + 14)
gp(n) = Str(((Int(Rnd * 300) + 100) / 100))
gr(n) = Str((Int(Rnd * 4) + 9))
lststu.AddItem gp(n) + "  " + fn(n) + "  " + ln(n) + "  " + gr(n) + "  " + ag(n)
arrstus(n).firstname = fn(n)
arrstus(n).gpa = Val(gp(n))
arrstus(n).grade = Val(gr(n))
arrstus(n).lastname = ln(n)
arrstus(n).age = Val(ag(n))
Next n
ElseIf how = vbNo Then
    For i = 1 To num
        arrstus(i).lastname = LCase(Trim(InputBox("What is the last name of the student?", "Last Name", "bobson")))
        arrstus(i).firstname = LCase(Trim(InputBox("What is the first name of the student?", "First Name", "bob")))
        arrstus(i).grade = Val(InputBox("What is their graph level?", "Grade Level", ""))
        arrstus(i).gpa = Val(InputBox("What is their gpa?", "GPA", ""))
        arrstus(i).age = Val(InputBox("What is their age?", "Age", ""))
        lststu.AddItem (Str(arrstus(i).gpa) + "  " + arrstus(i).firstname + "  " + arrstus(i).lastname + "  " + Str(arrstus(i).grade) + "  " + Str(arrstus(i).age))
    Next i
End If
mnusave.Enabled = True

   On Error GoTo 0
   Exit Sub

mnuadd_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnuadd_Click of Form frmstu"
End Sub

Private Sub mnuclear_Click()
lststu.Clear
lsttest.Clear
For i = 1 To 5000
    fn(i) = ""
    ln(i) = ""
Next i
For i = 1 To 9999999
    gp(i) = 0
    ag(i) = 0
    gp(i) = 0
Next i
mnusave.Enabled = True
End Sub

Private Sub mnuexit_Click()
Dim s As String
Dim s2 As String
If mnusave.Enabled = True Then
    s = MsgBox("Do you want to save?", vbYesNo, "Save")
    If s = vbYes Then
        path = InputBox("What is the path?", "Path", "F:\arko\Computer Programming 2 projects\lab stu\final.dat")
        If path = Cancel Then
            frmstu.SetFocus
        End If
        Open path For Random Access Write As #1 Len = 100
        For i = 1 To num
        Put #1, i, arrstus(i)
        Next i
        Close #1
        For i = 1 To num
        lsttest.AddItem Str(arrstus(i).gpa) + "  " + arrstus(i).firstname + "  " + arrstus(i).lastname + "  " + Str(arrstus(i).grade) + "  " + Str(arrstus(i).age)
        Next i
        mnusave.Enabled = False
        s2 = MsgBox("Are you sure you want to exit?", vbYesNo, "are you sure?")
        If s2 = vbYes Then
            End
        Else
            frmstu.SetFocus
        End If
    Else
        End
    End If
Else
    End
End If
End Sub

Private Sub mnuopen_Click()
frmdirect.Show
If mnusave.Enabled = True Then
mnusave.Enabled = False
Else
mnusave.Enabled = True
End If
End Sub

Private Sub mnusave_Click()
path = InputBox("What is the path?", "Path", "F:\arko\Computer Programming 2 projects\lab stu\final.dat")
If path = Cancel Then
    frmstu.SetFocus
End If
Open path For Random Access Write As #1 Len = 100
For i = 1 To num
Put #1, i, arrstus(i)
Next i
Close #1
For i = 1 To num
lsttest.AddItem Str(arrstus(i).gpa) + "  " + arrstus(i).firstname + "  " + arrstus(i).lastname + "  " + Str(arrstus(i).grade) + "  " + Str(arrstus(i).age)
Next i
mnusave.Enabled = False
End Sub
