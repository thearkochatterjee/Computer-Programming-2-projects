VERSION 5.00
Begin VB.Form frmemployee 
   BackColor       =   &H80000006&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Employee"
   ClientHeight    =   8895
   ClientLeft      =   3660
   ClientTop       =   4305
   ClientWidth     =   12345
   BeginProperty Font 
      Name            =   "Times New Roman"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8895
   ScaleWidth      =   12345
   Begin VB.ListBox lstsearch 
      BackColor       =   &H80000000&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2085
      Left            =   60
      TabIndex        =   1
      Top             =   6420
      Width           =   12135
   End
   Begin VB.ListBox lstem 
      BackColor       =   &H80000000&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4785
      Left            =   60
      TabIndex        =   0
      Top             =   900
      Width           =   12135
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "All Employees"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   120
      TabIndex        =   12
      Top             =   120
      Width           =   1740
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Search Results"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   7
      Left            =   120
      TabIndex        =   11
      Top             =   6060
      Width           =   1830
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Amount of Dependets"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   6
      Left            =   7800
      TabIndex        =   10
      Top             =   540
      Width           =   2625
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Salery Type"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   5
      Left            =   6120
      TabIndex        =   9
      Top             =   540
      Width           =   1470
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Gender"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   4
      Left            =   3240
      TabIndex        =   8
      Top             =   540
      Width           =   915
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Salery"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   3
      Left            =   5160
      TabIndex        =   7
      Top             =   540
      Width           =   780
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Age"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   2
      Left            =   4500
      TabIndex        =   6
      Top             =   540
      Width           =   480
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Last Name"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   1
      Left            =   1740
      TabIndex        =   5
      Top             =   540
      Width           =   1335
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "First Name"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   0
      Left            =   180
      TabIndex        =   4
      Top             =   540
      Width           =   1380
   End
   Begin VB.Label lblnumse 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Number of Employees:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   60
      TabIndex        =   3
      Top             =   8460
      Width           =   2775
   End
   Begin VB.Label lblnume 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Number of Employees:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   60
      TabIndex        =   2
      Top             =   5700
      Width           =   2775
   End
   Begin VB.Menu mnufile 
      Caption         =   "File"
      Begin VB.Menu mnuadd 
         Caption         =   "Add"
      End
      Begin VB.Menu mnuremove 
         Caption         =   "Remove"
      End
      Begin VB.Menu mnusearch 
         Caption         =   "Search"
      End
      Begin VB.Menu mnuopen 
         Caption         =   "Open"
      End
      Begin VB.Menu mnuregsave 
         Caption         =   "Save"
      End
      Begin VB.Menu mnusave 
         Caption         =   "Save As"
      End
      Begin VB.Menu mnuclear 
         Caption         =   "Clear"
      End
      Begin VB.Menu mnuexit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnusort 
      Caption         =   "Sort"
      Begin VB.Menu mnualpha 
         Caption         =   "Alphbetical by First Name"
         Begin VB.Menu mnuatozfname 
            Caption         =   "A to Z"
         End
         Begin VB.Menu mnuztoafname 
            Caption         =   "Z to A"
         End
      End
      Begin VB.Menu mnualphalname 
         Caption         =   "Alphabetical by Last Name"
         Begin VB.Menu mnuatozlname 
            Caption         =   "A to Z"
         End
         Begin VB.Menu mnuztoalname 
            Caption         =   "Z to A"
         End
      End
      Begin VB.Menu mnuage 
         Caption         =   "Age"
         Begin VB.Menu mnuytoo 
            Caption         =   "Young to Old"
         End
         Begin VB.Menu mnuotoy 
            Caption         =   "Old to Young"
         End
      End
      Begin VB.Menu mnusal 
         Caption         =   "Salery"
         Begin VB.Menu mnultoh 
            Caption         =   "Low to High"
         End
         Begin VB.Menu mnuhtol 
            Caption         =   "High to Low"
         End
      End
      Begin VB.Menu mnudepend 
         Caption         =   "Dependets"
         Begin VB.Menu mnultohd 
            Caption         =   "Low to High Amount of Dependes"
         End
         Begin VB.Menu mnuhtold 
            Caption         =   "High to Low Amount of Dependes"
         End
      End
   End
End
Attribute VB_Name = "frmemployee"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
mnusave.Enabled = False
mnuregsave.Enabled = False
path = ""
delflag = 0
num = 0
num2 = 0
End Sub

Private Sub lstem_Click()
   On Error GoTo lstem_Click_Error

mnusave.Enabled = True
mnuregsave.Enabled = True
If delflag = 0 Then
    frmprofile.Show
    pos = lstem.ListIndex + 1
    page = lstem.ListIndex + 1
    rpic = 1
    Randomize
    rpic = Int(Rnd * 4) + 1
    If rpic = 1 Then
        frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person1.jpg")
    ElseIf rpic = 2 Then
        frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person2.jpg")
    ElseIf rpic = 3 Then
        frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person3.jpg")
    ElseIf rpic = 4 Then
        frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person4.jpg")
    End If
    frmprofile.txtage = arremploy(lstem.ListIndex + 1).age
    frmprofile.txtfname = arremploy(lstem.ListIndex + 1).firstname
    frmprofile.txtgen = arremploy(lstem.ListIndex + 1).gender
    frmprofile.txtlname = arremploy(lstem.ListIndex + 1).lastname
    frmprofile.txtsalery = arremploy(lstem.ListIndex + 1).salery
ElseIf delflag = 1 Then
    delc = MsgBox("Are you sure you would like to delete" + arremploy(lstem.ListIndex + 1).firstname + " " + arremploy(lstem.ListIndex + 1).lastname + "?", vbYesNo, "Delete")
    If delc = vbYes Then
        oa = lstem.ListCount - 1
        num = num + num2 - 1
        num2 = 0
        For i = lstem.ListIndex + 1 To lstem.ListCount
            arremploy(i).age = arremploy(i + 1).age
            arremploy(i).firstname = arremploy(i + 1).firstname
            arremploy(i).gender = arremploy(i + 1).gender
            arremploy(i).lastname = arremploy(i + 1).lastname
            arremploy(i).salery = arremploy(i + 1).salery
            arremploy(i).dep = arremploy(i + 1).dep
            arremploy(i).saltype = arremploy(i + 1).saltype
        Next i
        lstem.Clear
        For i = 1 To oa
            lstem.AddItem arremploy(i).firstname + " " + arremploy(i).lastname + " " + Str(arremploy(i).age) + " " + arremploy(i).gender + " " + Str(arremploy(i).salery) + " " + arremploy(i).saltype + " " + Str(arremploy(i).dep)
        Next i
    Else
        delflag = 0
    End If
End If
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)

   On Error GoTo 0
   Exit Sub

lstem_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lstem_Click of Form frmemployee"
End Sub

Private Sub lstsearch_Click()
   On Error GoTo lstsearch_Click_Error

mnusave.Enabled = True
mnuregsave.Enabled = True
For i = 0 To lstem.ListCount
    If LCase(Trim(lstem.List(i))) = LCase(Trim(lstsearch.List(lstsearch.ListIndex))) Then
        pos2 = i
    End If
Next i
lblnumse.Caption = "Number of Employees: " + Str(lstsearch.ListCount)
lstem.ListIndex = pos2

   On Error GoTo 0
   Exit Sub

lstsearch_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lstsearch_Click of Form frmemployee"
End Sub

Private Sub mnuadd_Click()
mnusave.Enabled = True
mnuregsave.Enabled = True
op1 = MsgBox("Would you like to create the list of employees?", vbYesNo, "How to create data")
If num = 0 And num2 = 0 Then
    num = Val(InputBox("How many employees would you like to put in?", "Import", ""))
    If num = vbCancel Then
        frmemployee.SetFocus
    Else
        If op1 = vbNo Then
            For n = 1 To num
                g = Int(Rnd * 2) + 1
                If g = 1 Then
                    path = "F:\arko\Computer Programming 2 projects\data\MaleNames.txt"
                    gen(n) = "Male"
                ElseIf g = 2 Then
                    path = "F:\arko\Computer Programming 2 projects\data\FemaleNames.txt"
                    gen(n) = "Female"
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
                    fn(n) = arrfname(c)
                ElseIf g = 1 Then
                    c = (Int(Rnd * 1220) + 1)
                    fn(n) = arrfname(c)
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
                ag(n) = Str(Int(Rnd * 48) + 18)
                sal(n) = Str((Int(Rnd * 10000) + 100) / 100)
                dep(n) = Str(Int(Rnd * 5) + 1)
                stc(n) = Str(Int(Rnd * 4) + 1)
                If stc(n) = 1 Then
                    st(n) = "daily"
                ElseIf stc(n) = 2 Then
                    st(n) = "weekly"
                ElseIf stc(n) = 3 Then
                    st(n) = "monthly"
                ElseIf stc(n) = 4 Then
                    st(n) = "yearly"
                End If
                lstem.AddItem fn(n) + "  " + ln(n) + "  " + gen(n) + "  " + ag(n) + "  " + sal(n) + "  " + st(n) + "  " + dep(n)
                arremploy(n).firstname = fn(n)
                arremploy(n).lastname = ln(n)
                arremploy(n).age = ag(n)
                arremploy(n).gender = gen(n)
                arremploy(n).salery = sal(n)
                arremploy(n).dep = dep(n)
                arremploy(n).saltype = st(n)
            Next n
        ElseIf op1 = vbYes Then
            For i = 1 To num
                arremploy(i).firstname = Trim(InputBox("What is the employee's first name?", "First Name", "Bob"))
                arremploy(i).lastname = Trim(InputBox("What is their last name?", "Last Name", "Bobson"))
                arremploy(i).gender = Trim(InputBox("What is their gender?", "Gender", ""))
                arremploy(i).salery = Val(InputBox("What is thier salery?", "Salery", ""))
                arremploy(i).saltype = LCase(Trim(InputBox("What is their Salery Type(daily, weekly, monthly, yearly)?", "Salery Type", "weekly")))
                arremploy(i).dep = Val(InputBox("What is the Number of dependents that this person has?", "Number of Dependents", "2"))
                arremploy(i).age = Val(InputBox("What is their age?", "Age", "29"))
                lstem.AddItem arremploy(i).firstname + " " + arremploy(i).lastname + " " + arremploy(i).gender + " " + Str(arremploy(i).age) + " " + Str(arremploy(i).salery) + " " + arremploy(i).saltype + " " + Str(arremploy(i).dep)
            Next i
        End If
    End If
ElseIf num <> 0 Then
    num2 = Val(InputBox("How many employees would you like to put in?", "Import", ""))
    If num2 = vbCancel Then
        frmemployee.SetFocus
    Else
        If op1 = vbNo Then
            For n = num + 1 To num + num2
                g = Int(Rnd * 2) + 1
                If g = 1 Then
                    path = "F:\arko\Computer Programming 2 projects\data\MaleNames.txt"
                    gen(n) = "Male"
                ElseIf g = 2 Then
                    path = "F:\arko\Computer Programming 2 projects\data\FemaleNames.txt"
                    gen(n) = "Female"
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
                    fn(n) = arrfname(c)
                ElseIf g = 1 Then
                    c = (Int(Rnd * 1220) + 1)
                    fn(n) = arrfname(c)
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
                ag(n) = Str(Int(Rnd * 48) + 18)
                sal(n) = Str((Int(Rnd * 10000) + 100) / 100)
                dep(n) = Str(Int(Rnd * 5) + 1)
                stc(n) = Str(Int(Rnd * 4) + 1)
                If stc(n) = 1 Then
                    st(n) = "daily"
                ElseIf stc(n) = 2 Then
                    st(n) = "weekly"
                ElseIf stc(n) = 3 Then
                    st(n) = "monthly"
                ElseIf stc(n) = 4 Then
                    st(n) = "yearly"
                End If
                lstem.AddItem fn(n) + "  " + ln(n) + "  " + gen(n) + "  " + ag(n) + "  " + sal(n) + "  " + st(n) + "  " + dep(n)
                arremploy(n).firstname = fn(n)
                arremploy(n).lastname = ln(n)
                arremploy(n).age = ag(n)
                arremploy(n).gender = gen(n)
                arremploy(n).salery = sal(n)
                arremploy(n).dep = dep(n)
                arremploy(n).saltype = st(n)
            Next n
        ElseIf op1 = vbYes Then
            For i = num + 1 To num + num2
                arremploy(i).firstname = UCase(Trim(InputBox("What is the employee's first name?", "First Name", "Bob")))
                arremploy(i).lastname = UCase(Trim(InputBox("What is their last name?", "Last Name", "Bobson")))
                arremploy(i).gender = Trim(InputBox("What is their gender?", "Gender", ""))
                arremploy(i).salery = Val(InputBox("What is thier salery?", "Salery", ""))
                arremploy(i).saltype = LCase(Trim(InputBox("What is their Salery Type(daily, weekly, monthly, yearly)?", "Salery Type", "weekly")))
                arremploy(i).dep = Val(InputBox("What is the Number of dependents that this person has?", "Number of Dependents", "2"))
                arremploy(i).age = Val(InputBox("What is their age?", "Age", "29"))
                lstem.AddItem arremploy(i).firstname + " " + arremploy(i).lastname + " " + arremploy(i).gender + " " + Str(arremploy(i).age) + " " + Str(arremploy(i).salery) + " " + arremploy(i).saltype + " " + Str(arremploy(i).dep)
            Next i
        End If
    End If
Else
    num = num + num2
    num2 = Val(InputBox("How many employees would you like to put in?", "Import", ""))
    If num2 = vbCancel Then
        frmemployee.SetFocus
    Else
        If op1 = vbNo Then
            For n = num + 1 To num + num2
                g = Int(Rnd * 2) + 1
                If g = 1 Then
                    path = "F:\arko\Computer Programming 2 projects\data\MaleNames.txt"
                    gen(n) = "Male"
                ElseIf g = 2 Then
                    path = "F:\arko\Computer Programming 2 projects\data\FemaleNames.txt"
                    gen(n) = "Female"
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
                    fn(n) = arrfname(c)
                ElseIf g = 1 Then
                    c = (Int(Rnd * 1220) + 1)
                    fn(n) = arrfname(c)
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
                ag(n) = Str(Int(Rnd * 48) + 18)
                sal(n) = Str((Int(Rnd * 10000) + 100) / 100)
                dep(n) = Str(Int(Rnd * 5) + 1)
                stc(n) = Str(Int(Rnd * 4) + 1)
                If stc(n) = 1 Then
                    st(n) = "daily"
                ElseIf stc(n) = 2 Then
                    st(n) = "weekly"
                ElseIf stc(n) = 3 Then
                    st(n) = "monthly"
                ElseIf stc(n) = 4 Then
                    st(n) = "yearly"
                End If
                lstem.AddItem fn(n) + "  " + ln(n) + "  " + gen(n) + "  " + ag(n) + "  " + sal(n) + "  " + st(n) + "  " + dep(n)
                arremploy(n).firstname = fn(n)
                arremploy(n).lastname = ln(n)
                arremploy(n).age = ag(n)
                arremploy(n).gender = gen(n)
                arremploy(n).salery = sal(n)
                arremploy(n).dep = dep(n)
                arremploy(n).saltype = st(n)
            Next n
        ElseIf op1 = vbYes Then
            For i = num + 1 To num + num2
                arremploy(i).firstname = UCase(Trim(InputBox("What is the employee's first name?", "First Name", "Bob")))
                arremploy(i).lastname = UCase(Trim(InputBox("What is their last name?", "Last Name", "Bobson")))
                arremploy(i).gender = Trim(InputBox("What is their gender?", "Gender", ""))
                arremploy(i).salery = Val(InputBox("What is thier salery?", "Salery", ""))
                arremploy(i).saltype = LCase(Trim(InputBox("What is their Salery Type(daily, weekly, monthly, yearly)?", "Salery Type", "weekly")))
                arremploy(i).dep = Val(InputBox("What is the Number of dependents that this person has?", "Number of Dependents", "2"))
                arremploy(i).age = Val(InputBox("What is their age?", "Age", "29"))
                lstem.AddItem arremploy(i).firstname + " " + arremploy(i).lastname + " " + arremploy(i).gender + " " + Str(arremploy(i).age) + " " + Str(arremploy(i).salery) + " " + arremploy(i).saltype + " " + Str(arremploy(i).dep)
            Next i
        End If
    End If
End If
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

Private Sub mnuatozfname_Click()
snum = lstem.ListCount
For f = 1 To lstem.ListCount - 1
    For b = f + 1 To lstem.ListCount
    If arremploy(f).firstname > arremploy(b).firstname Then
        temp = arremploy(f)
        arremploy(f) = arremploy(b)
        arremploy(b) = temp
    End If
    Next b
Next f
lstem.Clear
For i = 1 To snum
    lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + "  " + arremploy(i).saltype + "  " + Str(arremploy(i).dep)
Next i
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

Private Sub mnuatozlname_Click()
snum = lstem.ListCount
For f = 1 To lstem.ListCount - 1
    For b = f + 1 To lstem.ListCount
    If arremploy(f).lastname > arremploy(b).lastname Then
        temp = arremploy(f)
        arremploy(f) = arremploy(b)
        arremploy(b) = temp
    End If
    Next b
Next f
lstem.Clear
For i = 1 To snum
    lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + "  " + arremploy(i).saltype + "  " + Str(arremploy(i).dep)
Next i
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

Private Sub mnuclear_Click()
If mnusave.Enabled = True Then
    op2 = MsgBox("Are you sure you want to clear all data?", vbYesNo, "Clear")
    If op2 = vbYes Then
        lstsearch.Clear
        lstem.Clear
        For i = 0 To 1000000
            arremploy(i).age = 0
            arremploy(i).dep = 0
            arremploy(i).firstname = ""
            arremploy(i).gender = ""
            arremploy(i).lastname = ""
            arremploy(i).salery = 0
            arremploy(i).saltype = ""
        Next i
        num = 0
        num2 = 0
        deflag = 0
        path = ""
    Else
        frmemployee.SetFocus
    End If
Else
lstsearch.Clear
lstem.Clear
For i = 0 To 1000000
    arremploy(i).age = 0
    arremploy(i).dep = 0
    arremploy(i).firstname = ""
    arremploy(i).gender = ""
    arremploy(i).lastname = ""
    arremploy(i).salery = 0
    arremploy(i).saltype = ""
Next i
num = 0
num2 = 0
delflag = 0
path = ""
End If
End Sub

Private Sub mnuexit_Click()
If mnusave.Enabled = True Then
    s = MsgBox("Would you like to save?", vbYesNo, "Save")
    If s = vbYes Then
        path = Trim(InputBox("What is the path?", "Path", ""))
        Open path For Random Access Write As #1 Len = 100
        For i = 1 To num
            Put #1, i, arremploy(i)
        Next i
        Close #1
        mnusave.Enabled = False
        mnuregsave.Enabled = False
        s2 = MsgBox("Are you sure you want to exit?", vbYesNo, "Exit")
        If s2 = vbes Then
            End
        Else
            frmemployee.SetFocus
        End If
    Else
        End
    End If
Else
    End
End If
End Sub

Private Sub mnuhtol_Click()
snum = lstem.ListCount
For f = 1 To lstem.ListCount - 1
    For b = f + 1 To lstem.ListCount
    If arremploy(f).salery < arremploy(b).salery Then
        temp = arremploy(f)
        arremploy(f) = arremploy(b)
        arremploy(b) = temp
    End If
    Next b
Next f
lstem.Clear
For i = 1 To snum
    lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + "  " + arremploy(i).saltype + "  " + Str(arremploy(i).dep)
Next i
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

Private Sub mnuhtold_Click()
snum = lstem.ListCount
For f = 1 To lstem.ListCount - 1
    For b = f + 1 To lstem.ListCount
    If arremploy(f).dep < arremploy(b).dep Then
        temp = arremploy(f)
        arremploy(f) = arremploy(b)
        arremploy(b) = temp
    End If
    Next b
Next f
lstem.Clear
For i = 1 To snum
    lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + "  " + arremploy(i).saltype + "  " + Str(arremploy(i).dep)
Next i
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

Private Sub mnultoh_Click()
snum = lstem.ListCount
For f = 1 To lstem.ListCount - 1
For b = f + 1 To lstem.ListCount
If arremploy(f).salery > arremploy(b).salery Then
temp = arremploy(f)
arremploy(f) = arremploy(b)
arremploy(b) = temp
End If
Next b
Next f
lstem.Clear
For i = 1 To snum
lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + "  " + arremploy(i).saltype + "  " + Str(arremploy(i).dep)
Next i
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

Private Sub mnultohd_Click()
snum = lstem.ListCount
For f = 1 To lstem.ListCount - 1
For b = f + 1 To lstem.ListCount
If arremploy(f).dep > arremploy(b).dep Then
temp = arremploy(f)
arremploy(f) = arremploy(b)
arremploy(b) = temp
End If
Next b
Next f
lstem.Clear
For i = 1 To snum
lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + "  " + arremploy(i).saltype + "  " + Str(arremploy(i).dep)
Next i
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

Private Sub mnuopen_Click()
frmdirect.Show
mnusave.Enabled = True
mnuregsave.Enabled = True
End Sub

Private Sub mnuotoy_Click()
snum = lstem.ListCount
For f = 1 To lstem.ListCount - 1
For b = f + 1 To lstem.ListCount
If arremploy(f).age < arremploy(b).age Then
temp = arremploy(f)
arremploy(f) = arremploy(b)
arremploy(b) = temp
End If
Next b
Next f
lstem.Clear
For i = 1 To snum
lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + "  " + arremploy(i).saltype + "  " + Str(arremploy(i).dep)
Next i
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

Private Sub mnuregsave_Click()
   On Error GoTo mnuregsave_Click_Error

If path = "" Then
    MsgBox ("Need Path")
Else
Open path For Random Access Write As #1 Len = 100
For i = 1 To lstem.ListCount + 1
Put #1, i, arremploy(i)
Next i
Close #1
mnusave.Enabled = False
mnuregsave.Enabled = False
End If

   On Error GoTo 0
   Exit Sub

mnuregsave_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnuregsave_Click of Form frmemployee"
End Sub

Private Sub mnuremove_Click()
MsgBox ("Now what ever you click on in the list will be removed.")
delflag = 1
End Sub

Private Sub mnusave_Click()
   On Error GoTo mnusave_Click_Error

path = InputBox("What is the path?", "Path", "F:\arko\Computer Programming 2 projects\employee\final.dat")
If path = Cancel Then
    frmemployee.SetFocus
End If
Open path For Random Access Write As #1 Len = 100
For i = 1 To num + num2 + 1
Put #1, i, arremploy(i)
Next i
Close #1
mnusave.Enabled = False
mnuregsave.Enabled = False

   On Error GoTo 0
   Exit Sub

mnusave_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnusave_Click of Form frmemployee"
End Sub

Private Sub mnusearch_Click()
searchsub = LCase(Trim(InputBox("What would you like to search by?", "Search Subject", "")))
search = LCase(Trim(InputBox("What do you want to search for?", "Search", "")))
lstsearch.Clear
For i = 0 To lstem.ListCount
    If searchsub = "age" Then
        If Val(search) = arremploy(i).age Then
            lstsearch.AddItem lstem.List(i - 1)
        End If
    ElseIf searchsub = "first name" Then
        If search = LCase(Trim(arremploy(i).firstname)) Then
            lstsearch.AddItem lstem.List(i - 1)
        End If
    ElseIf searchsub = "last name" Then
        If search = LCase(Trim(arremploy(i).lastname)) Then
            lstsearch.AddItem lstem.List(i - 1)
        End If
    ElseIf searchsub = "gender" Then
        If search = LCase(Trim(arremploy(i).gender)) Then
            lstsearch.AddItem lstem.List(i - 1)
        End If
    ElseIf searchsub = "salery" Then
        If Val(search) = arremploy(i).salery Then
            lstsearch.AddItem lstem.List(i - 1)
        End If
    End If
Next i
lblnumse.Caption = "Number of Employees: " + Str(lstsearch.ListCount)
End Sub

Private Sub mnuytoo_Click()
snum = lstem.ListCount
For f = 1 To lstem.ListCount - 1
For b = f + 1 To lstem.ListCount
If arremploy(f).age > arremploy(b).age Then
temp = arremploy(f)
arremploy(f) = arremploy(b)
arremploy(b) = temp
End If
Next b
Next f
lstem.Clear
For i = 1 To snum
lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + "  " + arremploy(i).saltype + "  " + Str(arremploy(i).dep)
Next i
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

Private Sub mnuztoafname_Click()
snum = lstem.ListCount
For f = 1 To lstem.ListCount - 1
For b = f + 1 To lstem.ListCount
If arremploy(f).firstname < arremploy(b).firstname Then
temp = arremploy(f)
arremploy(f) = arremploy(b)
arremploy(b) = temp
End If
Next b
Next f
lstem.Clear
For i = 1 To snum
lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + "  " + arremploy(i).saltype + "  " + Str(arremploy(i).dep)
Next i
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

Private Sub mnuztoalname_Click()
snum = lstem.ListCount
For f = 1 To lstem.ListCount - 1
For b = f + 1 To lstem.ListCount
If arremploy(f).lastname < arremploy(b).lastname Then
temp = arremploy(f)
arremploy(f) = arremploy(b)
arremploy(b) = temp
End If
Next b
Next f
lstem.Clear
For i = 1 To snum
lstem.AddItem arremploy(i).firstname + "  " + arremploy(i).lastname + "  " + arremploy(i).gender + "  " + Str(arremploy(i).age) + "  " + Str(arremploy(i).salery) + "  " + arremploy(i).saltype + "  " + Str(arremploy(i).dep)
Next i
lblnume.Caption = "Number of Employees: " + Str(lstem.ListCount)
End Sub

