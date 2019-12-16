VERSION 5.00
Begin VB.Form frmsortnsearch 
   BackColor       =   &H8000000A&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Sort and Search"
   ClientHeight    =   8250
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   15720
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8250
   ScaleWidth      =   15720
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox lstsearch 
      Height          =   2400
      Left            =   11040
      TabIndex        =   19
      Top             =   5400
      Width           =   4335
   End
   Begin VB.ListBox lststu 
      Height          =   3960
      Left            =   11160
      TabIndex        =   11
      Top             =   900
      Width           =   4035
   End
   Begin VB.ListBox lstcomb 
      Height          =   4740
      Left            =   8520
      TabIndex        =   3
      Top             =   840
      Width           =   2415
   End
   Begin VB.ListBox lstbubble 
      Height          =   4740
      Left            =   5880
      TabIndex        =   2
      Top             =   840
      Width           =   2415
   End
   Begin VB.ListBox lstexchange 
      Height          =   4740
      Left            =   3240
      TabIndex        =   1
      Top             =   840
      Width           =   2415
   End
   Begin VB.ListBox lstorgin 
      Height          =   5715
      Left            =   180
      TabIndex        =   0
      Top             =   1020
      Width           =   2415
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Student Search"
      Height          =   195
      Index           =   6
      Left            =   11160
      TabIndex        =   18
      Top             =   5040
      Width           =   1110
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "gpa"
      Height          =   195
      Index           =   5
      Left            =   14160
      TabIndex        =   17
      Top             =   360
      Width           =   270
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "grade"
      Height          =   195
      Index           =   4
      Left            =   13440
      TabIndex        =   16
      Top             =   360
      Width           =   405
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "age"
      Height          =   195
      Index           =   3
      Left            =   12840
      TabIndex        =   15
      Top             =   360
      Width           =   270
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Last"
      Height          =   195
      Index           =   2
      Left            =   12120
      TabIndex        =   14
      Top             =   360
      Width           =   300
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "First"
      Height          =   195
      Index           =   1
      Left            =   11280
      TabIndex        =   13
      Top             =   360
      Width           =   285
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      Caption         =   "Students"
      Height          =   195
      Index           =   0
      Left            =   11400
      TabIndex        =   12
      Top             =   120
      Width           =   630
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Caption         =   "Comb"
      Height          =   555
      Left            =   8970
      TabIndex        =   10
      Top             =   5760
      Width           =   1035
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "Bubble"
      Height          =   495
      Left            =   6480
      TabIndex        =   9
      Top             =   5760
      Width           =   975
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Exchange"
      Height          =   495
      Left            =   3840
      TabIndex        =   8
      Top             =   5760
      Width           =   975
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "ORIGINAL DATA"
      Height          =   495
      Left            =   300
      TabIndex        =   7
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label lbltimec 
      AutoSize        =   -1  'True
      BackColor       =   &H000000C0&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   8640
      TabIndex        =   6
      Top             =   600
      Width           =   45
   End
   Begin VB.Label lbltimeb 
      AutoSize        =   -1  'True
      BackColor       =   &H000000C0&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   5880
      TabIndex        =   5
      Top             =   360
      Width           =   45
   End
   Begin VB.Label lbltimeex 
      AutoSize        =   -1  'True
      BackColor       =   &H000000C0&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   3120
      TabIndex        =   4
      Top             =   120
      Width           =   45
   End
   Begin VB.Menu mnugen 
      Caption         =   "Fill"
   End
   Begin VB.Menu mnusort 
      Caption         =   "Sort"
      Begin VB.Menu mnufname 
         Caption         =   "First Name"
         Begin VB.Menu mnufnameatoz 
            Caption         =   "A to Z"
         End
         Begin VB.Menu mnufnameztoa 
            Caption         =   "Z to A"
         End
      End
      Begin VB.Menu mnulname 
         Caption         =   "Last Name"
         Begin VB.Menu mnulnameatoz 
            Caption         =   "A to Z"
         End
         Begin VB.Menu mnulnameztoa 
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
      Begin VB.Menu mnugrade 
         Caption         =   "Grade"
         Begin VB.Menu mnugltoh 
            Caption         =   "Low to high"
         End
         Begin VB.Menu mnughtol 
            Caption         =   "High to Low"
         End
      End
      Begin VB.Menu mnugpa 
         Caption         =   "GPA"
         Begin VB.Menu mnugpaltoh 
            Caption         =   "Low to High"
         End
         Begin VB.Menu mnugpahtol 
            Caption         =   "High to Low"
         End
      End
   End
   Begin VB.Menu mnusearch 
      Caption         =   "Search"
      Begin VB.Menu mnusearchnum 
         Caption         =   "By Number"
      End
      Begin VB.Menu mnusearchword 
         Caption         =   "By Word"
      End
      Begin VB.Menu mnustu 
         Caption         =   "Students"
      End
   End
   Begin VB.Menu mnuexit 
      Caption         =   "Exit"
   End
End
Attribute VB_Name = "frmsortnsearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Long, strline As String, arrwords(5000) As String, arrnums(60000) As Long, originalwords(5000) As String, originalnums(60000) As Long
Dim num As Integer, rword(58112) As String, wordnum As Long, word As String


Private Sub cmdend_Click()
End
End Sub

Private Sub mnububblenums_Click()
lstbubble.Clear
Dim start As Double
Dim finish As Double
Dim j As Integer
Dim k As Integer
Dim temp As Integer
Dim swapped As Integer
For i = 1 To num
    arrnums(i) = originalnums(i)
Next i
start = Timer
    k = num
Do
    swapped = False
    For j = 1 To k - 1
        If arrnums(j) > arrnums(j + 1) Then
        temp = arrnums(j)
        arrnums(j) = arrnums(j + 1)
        arrnums(j + 1) = temp
        swapped = True
    End If
Next j
k = k - 1
Loop Until Not swapped
finish = Timer - start
lbltimeb = finish
Dim x As Integer
For x = 1 To num
    lstbubble.AddItem arrnums(x)
Next x

End Sub

Private Sub mnububblewords_Click()
lstbubble.Clear
Dim start As Double
Dim finish As Double
Dim j As Integer
Dim k As Integer
Dim temp As String
Dim swapped As Integer
For i = 1 To num
    arrwords(i) = originalwords(i)
Next i
start = Timer
    k = num
Do
    swapped = False
    For j = 1 To k - 1
        If arrwords(j) > arrwords(j + 1) Then
        temp = arrwords(j)
        arrwords(j) = arrwords(j + 1)
        arrwords(j + 1) = temp
        swapped = True
    End If
Next j
k = k - 1
Loop Until Not swapped
finish = Timer - start
lbltimeb = finish
Dim x As Integer
For x = 1 To num
    lstbubble.AddItem arrwords(x)
Next x


End Sub

Private Sub mnucombnums_Click()
lstcomb.Clear
Dim j As Integer
Const shrink = 1.3
Dim start As Double
Dim finish As Double
Dim gap As Single
Dim temp As Single
Dim swapped As Integer
For i = 1 To num
    arrnums(i) = originalnums(i)
Next i
start = Timer
gap = num
Do
    gap = Int(gap / shrink)
    If gap < 1 Then gap = 1
        swapped = False
    For j = 1 To num - gap
        If arrnums(j) > arrnums(j + gap) Then
            temp = arrnums(j)
            arrnums(j) = arrnums(j + gap)
            arrnums(j + gap) = temp
            swapped = True
        End If
    Next j
Loop Until Not swapped And gap = 1
finish = Timer - start
lbltimec = finish
Dim x As Integer
For x = 1 To num
    lstcomb.AddItem arrnums(x)
Next x
End Sub

Private Sub mnucombwords_Click()
lstcomb.Clear
Dim j As Integer
Const shrink = 1.3
Dim start As Double
Dim finish As Double
Dim gap As Single
Dim temp As String
Dim swapped As Integer
For i = 1 To num
    arrwords(i) = originalwords(i)
Next i
start = Timer
gap = num
Do
    gap = Int(gap / shrink)
    If gap < 1 Then gap = 1
        swapped = False
    For j = 1 To num - gap
        If arrwords(j) > arrwords(j + gap) Then
            temp = arrwords(j)
            arrwords(j) = arrwords(j + gap)
            arrwords(j + gap) = temp
            swapped = True
        End If
    Next j
Loop Until Not swapped And gap = 1
finish = Timer - start
lbltimec = elapsed
Dim x As Integer
For x = 1 To num
    lstcomb.AddItem arrwords(x)
Next x

End Sub

Private Sub mnuexchangenumbers_Click()
lstexchange.Clear
Dim start As Double
Dim finish As Double
Dim front As Integer
Dim back As Integer
Dim temp As Integer
For i = 1 To num
    arrnums(i) = originalnums(i)
Next i
start = Timer
For front = 1 To num - 1
    For back = front + 1 To num
        If arrnums(front) > arrnums(back) Then
            temp = arrnums(front)
            arrnums(front) = arrnums(back)
            arrnums(back) = temp
        End If
    Next back
Next front
finish = Timer - start
lbltimeex.Caption = finish
Dim x As Integer
For x = 1 To num
    lstexchange.AddItem Str(arrnums(x))
Next x
End Sub

Private Sub mnuexchangewords_Click()
lstexchange.Clear
Dim start As Double
Dim finish As Double
Dim front As Integer
Dim back As Integer
Dim temp As String
For i = 1 To num
    arrwords(i) = originalwords(i)
Next i
start = Timer
For front = 1 To num - 1
    For back = front + 1 To num
        If arrwords(front) > arrwords(back) Then
            temp = arrwords(front)
            arrwords(front) = arrwords(back)
            arrwords(back) = temp
        End If
    Next back
Next front
finish = Timer - start
lbltimeex.Caption = finish
Dim x As Integer
For x = 1 To num
    lstexchange.AddItem arrwords(x)
Next x
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub mnufnameatoz_Click()
snum = lststu.ListCount
For f = 1 To lststu.ListCount - 1
    For b = f + 1 To lststu.ListCount
    If arrstu(f).fname > arrstu(b).fname Then
        temp = arrstu(f)
        arrstu(f) = arrstu(b)
        arrstu(b) = temp
    End If
    Next b
Next f
lststu.Clear
For i = 1 To snum
    lststu.AddItem arrstu(i).fname + " " + arrstu(i).lname + " " + Str(arrstu(i).age) + " " + Str(arrstu(i).grade) + " " + Str(arrstu(i).gpa)
Next i
End Sub

Private Sub mnufnameztoa_Click()
snum = lststu.ListCount
For f = 1 To lststu.ListCount - 1
    For b = f + 1 To lststu.ListCount
    If arrstu(f).fname < arrstu(b).fname Then
        temp = arrstu(f)
        arrstu(f) = arrstu(b)
        arrstu(b) = temp
    End If
    Next b
Next f
lststu.Clear
For i = 1 To snum
    lststu.AddItem arrstu(i).fname + " " + arrstu(i).lname + " " + Str(arrstu(i).age) + " " + Str(arrstu(i).grade) + " " + Str(arrstu(i).gpa)
Next i
End Sub

Private Sub mnugen_Click()
Dim start, finish As Double
path = "F:\arko\Computer Programming 2 projects\data\dictionary.txt"
op1 = LCase(Trim(InputBox("What data would you like to Import?(int,str,both)", "Data mport", "")))
op2 = MsgBox("Would you like to sort your data in from least to greatest?", vbYesNoCancel, "How to Sort the Data")
num = Val(InputBox("How many numbers would you like to import?", "Amount of Numbers", "10"))
lstorgin.Clear
lstexchange.Clear
lstcomb.Clear
lstbubble.Clear
lststu.Clear
If op2 = vbYes Then
    If op1 = "both" Then
        min = Val(InputBox("What is the lowest number you would like there to be?", "Min", "1"))
        max = Val(InputBox("What is the highest number you would like there to be?", "Max", "100"))
        Open path For Input As #1
            i = 0
            Do While Not EOF(1)
                Line Input #1, strline
                If Len(Trim(strline)) <> 0 Then
                    i = i + 1
                    arrinput(i) = strline
                End If
            Loop
        Close #1
        sc = 0
        ic = 0
        For n = 1 To num
            r = Int(Rnd * 2) + 1
            If r = 1 Then
                sc = sc + 1
            ElseIf r = 2 Then
                ic = ic + 1
            End If
        Next n
        For n = 1 To ic
            arrint(n) = Int(Rnd * (max - min + 1)) + min
            arreint(n) = arrint(n)
            arrbint(n) = arrint(n)
            arrcint(n) = arrint(n)
            lstorgin.AddItem arrint(n)
        Next n
        For n = 1 To sc
            rnum = Int(Rnd * i) + 1
            arrstr(n) = arrinput(rnum)
            arrestr(n) = arrstr(n)
            arrbstr(n) = arrstr(n)
            arrcstr(n) = arrstr(n)
            lstorgin.AddItem arrstr(n)
        Next n
    ElseIf op1 = "int" Then
        min = Val(InputBox("What is the lowest number you would like there to be?", "Min", "1"))
        max = Val(InputBox("What is the highest number you would like there to be?", "Max", "100"))
        If min > max Then
            MsgBox ("This cannot work!")
        Else
            For i = 1 To num
                arrint(i) = Int(Rnd * (max - min + 1)) + min
                arreint(i) = arrint(i)
                arrbint(i) = arrint(i)
                arrcint(i) = arrint(i)
                arrnums(i) = arrint(i)
                lstorgin.AddItem arrint(i)
            Next i
        End If
    ElseIf op1 = "str" Then
        Open path For Input As #1
            i = 0
            Do While Not EOF(1)
                Line Input #1, strline
                If Len(Trim(strline)) <> 0 Then
                    i = i + 1
                    arrinput(i) = strline
                End If
            Loop
        Close #1
        lstorgin.Clear
        For n = 1 To num
            rnum = Int(Rnd * i) + 1
            arrstr(n) = arrinput(rnum)
            arrestr(n) = arrstr(n)
            arrbstr(n) = arrstr(n)
            arrcstr(n) = arrstr(n)
            arrwords(n) = arrstr(n)
            lstorgin.AddItem arrstr(n)
        Next n
    End If
    
    'exchange
    
    start = Timer
    If op1 = "both" Then
        For f = 1 To sc - 1
            For b = f + 1 To sc
                If arrestr(f) > arrestr(b) Then
                    tempes = arrestr(f)
                    arrestr(f) = arrestr(b)
                    arrestr(b) = tempes
                End If
            Next b
        Next f
        For f = 1 To ic - 1
            For b = f + 1 To ic
                If arreint(f) > arreint(b) Then
                    tempei = arreint(f)
                    arreint(f) = arreint(b)
                    arreint(b) = tempei
                End If
            Next b
        Next f
        For i = 1 To ic
            lstexchange.AddItem arreint(i)
        Next i
        For i = 1 To sc
            lstexchange.AddItem arrestr(i)
        Next i
    ElseIf op1 = "int" Then
        For f = 1 To num - 1
            For b = f + 1 To num
                If arreint(f) > arreint(b) Then
                    tempei = arreint(f)
                    arreint(f) = arreint(b)
                    arreint(b) = tempei
                End If
            Next b
        Next f
        lstexchange.Clear
        For i = 1 To num
            arrnums(i) = arreint(i)
            lstexchange.AddItem arreint(i)
        Next i
    ElseIf op1 = "str" Then
        For f = 1 To num - 1
            For b = f + 1 To num
                If arrestr(f) > arrestr(b) Then
                    tempes = arrestr(f)
                    arrestr(f) = arrestr(b)
                    arrestr(b) = tempes
                End If
            Next b
        Next f
        lstexchange.Clear
        For i = 1 To num
            arrwords(i) = arrestr(i)
            lstexchange.AddItem arrestr(i)
        Next i
    End If
    finish = Timer
    duration = finish - start
    lbltimeex.Caption = "Time Taken: " + Str(duration) + "ms"
    
    'comb
    start = Timer
    If op1 = "int" Then
    gap = num
    Do
        gap = Int(gap / 1.3)
        If gap < 1 Then gap = 1
            swapped = False
        For j = 1 To num - gap
            If arrcint(j) > arrcint(j + gap) Then
                tempci = arrcint(j)
                arrcint(j) = arrcint(j + gap)
                arrcint(j + gap) = tempci
                swapped = True
            End If
        Next j
    Loop Until Not swapped And gap = 1
    For x = 1 To num
        lstcomb.AddItem arrcint(x)
    Next x
    ElseIf op1 = "str" Then
    gap = num
    Do
        gap = Int(gap / 1.3)
        If gap < 1 Then gap = 1
            swapped = False
        For j = 1 To num - gap
            If arrcstr(j) > arrcstr(j + gap) Then
                tempcs = arrcstr(j)
                arrcstr(j) = arrcstr(j + gap)
                arrcstr(j + gap) = tempcs
                swapped = True
            End If
        Next j
    Loop Until Not swapped And gap = 1
    For x = 1 To num
        lstcomb.AddItem arrcstr(x)
    Next x
    ElseIf op1 = "both" Then
    gap = num
    Do
        gap = Int(gap / 1.3)
        If gap < 1 Then gap = 1
            swapped = False
        For j = 1 To num - gap
            If arrcint(j) > arrcint(j + gap) Then
                tempci = arrcint(j)
                arrcint(j) = arrcint(j + gap)
                arrcint(j + gap) = tempci
                swapped = True
            End If
        Next j
    Loop Until Not swapped And gap = 1
    gap = num
    Do
        gap = Int(gap / shrink)
        If gap < 1 Then gap = 1
            swapped = False
        For j = 1 To num - gap
            If arrcstr(j) > arrcstr(j + gap) Then
                tempcs = arrcstr(j)
                arrcstr(j) = arrcstr(j + gap)
                arrcstr(j + gap) = tempcs
                swapped = True
            End If
        Next j
    Loop Until Not swapped And gap = 1
    For x = 1 To num
        lstcomb.AddItem arrcint(x)
    Next x
    For x = 1 To num
        lstcomb.AddItem arrcstr(x)
    Next x
    End If
    finish = Timer
    duration = finish - start
    lbltimec.Caption = "Time Taken: " + Str(duration) + "ms"
    
    'bubble
    
    start = Timer
    If op1 = "int" Then
    i = num
    Do
        swapped = False
        For j = 1 To i - 1
            If arrbint(j) > arrbint(j + 1) Then
                tempbi = arrbint(j)
                arrbint(j) = arrbint(j + 1)
                arrbint(j + 1) = tempbi
                swapped = True
            End If
        Next j
        i = i - 1
    Loop Until Not swapped
    For i = 1 To num
        lstbubble.AddItem arrbint(i)
    Next i
    ElseIf op1 = "str" Then
    i = num
    Do
        swapped = False
        For j = 1 To i - 1
            If arrbstr(j) > arrbstr(j + 1) Then
                tempbs = arrbstr(j)
                arrbstr(j) = arrbstr(j + 1)
                arrbstr(j + 1) = tempbs
                swapped = True
            End If
        Next j
        i = i - 1
    Loop Until Not swapped
    For i = 1 To num
        lstbubble.AddItem arrbstr(i)
    Next i
    ElseIf op1 = "both" Then
    i = num
    Do
        swapped = False
        For j = 1 To i - 1
            If arrbint(j) > arrbint(j + 1) Then
                tempbi = arrbint(j)
                arrbint(j) = arrbint(j + 1)
                arrbint(j + 1) = tempbi
                swapped = True
            End If
        Next j
        i = i - 1
    Loop Until Not swapped
    i = num
    Do
        swapped = False
        For j = 1 To i - 1
            If arrbstr(j) > arrbstr(j + 1) Then
                tempbs = arrbstr(j)
                arrbstr(j) = arrbstr(j + 1)
                arrbstr(j + 1) = tempbs
                swapped = True
            End If
        Next j
        i = i - 1
    Loop Until Not swapped
    For i = 1 To num
        lstbubble.AddItem arrbint(i)
    Next i
    For i = 1 To num
        lstbubble.AddItem arrbstr(i)
    Next i
    End If
    finish = Timer
    duration = finish - start
    lbltimeb.Caption = "Time Taken: " + Str(duration) + "ms"
    
    'user defined array
    
    rnum = Int(Rnd * 2) + 1
    If rnum = 1 Then
        path2 = "F:\arko\Computer Programming 2 projects\data\MaleNames.txt"
    ElseIf rnum = 2 Then
        path2 = "F:\arko\Computer Programming 2 projects\data\FemaleNames.txt"
    End If
    Open path2 For Input As #1
        i = 0
        Do While Not EOF(1)
            Line Input #1, strline
            If Len(Trim(strline)) <> 0 Then
                i = i + 1
                arrinput(i) = strline
            End If
        Loop
    Close #1
    For n = 1 To num
        rnum = Int(Rnd * i) + 1
        arrstu(n).fname = arrinput(rnum)
    Next n
    path2 = "F:\arko\Computer Programming 2 projects\data\LastNames.txt"
    Open path2 For Input As #1
        i = 0
        Do While Not EOF(1)
            Line Input #1, strline
            If Len(Trim(strline)) <> 0 Then
                i = i + 1
                arrinput(i) = strline
            End If
        Loop
    Close #1
    For n = 1 To num
        rnum = Int(Rnd * i) + 1
        arrstu(n).lname = arrinput(rnum)
        arrstu(n).age = Int(Rnd * 14) + 4
        arrstu(n).gpa = (Int(Rnd * 400) + 100) / 100
        arrstu(n).grade = Int(Rnd * 12) + 1
        lststu.AddItem arrstu(n).fname + " " + arrstu(n).lname + " " + Str(arrstu(n).age) + " " + Str(arrstu(n).grade) + " " + Str(arrstu(n).gpa)
    Next n
ElseIf op2 = vbNo Then
    If op1 = "both" Then
        min = Val(InputBox("What is the lowest number you would like there to be?", "Min", "1"))
        max = Val(InputBox("What is the highest number you would like there to be?", "Max", "100"))
        Open path For Input As #1
            i = 0
            Do While Not EOF(1)
                Line Input #1, strline
                If Len(Trim(strline)) <> 0 Then
                    i = i + 1
                    arrinput(i) = strline
                End If
            Loop
        Close #1
        sc = 0
        ic = 0
        For n = 1 To num
            r = Int(Rnd * 2) + 1
            If r = 1 Then
                sc = sc + 1
            ElseIf r = 2 Then
                ic = ic + 1
            End If
        Next n
        For n = 1 To ic
            arrint(n) = Int(Rnd * (max - min + 1)) + min
            arreint(n) = arrint(n)
            arrbint(n) = arrint(n)
            arrcint(n) = arrint(n)
            lstorgin.AddItem arrint(n)
        Next n
        For n = 1 To sc
            rnum = Int(Rnd * i) + 1
            arrstr(n) = arrinput(rnum)
            arrestr(n) = arrstr(n)
            arrbstr(n) = arrstr(n)
            arrcstr(n) = arrstr(n)
            lstorgin.AddItem arrstr(n)
        Next n
    ElseIf op1 = "int" Then
        min = Val(InputBox("What is the lowest number you would like there to be?", "Min", "1"))
        max = Val(InputBox("What is the highest number you would like there to be?", "Max", "100"))
        If min > max Then
            MsgBox ("This cannot work!")
        Else
            For i = 1 To num
                arrint(i) = Int(Rnd * (max - min + 1)) + min
                arreint(i) = arrint(i)
                arrbint(i) = arrint(i)
                arrcint(i) = arrint(i)
                arrnums(i) = arrint(i)
                lstorgin.AddItem arrint(i)
            Next i
        End If
    ElseIf op1 = "str" Then
        Open path For Input As #1
            i = 0
            Do While Not EOF(1)
                Line Input #1, strline
                If Len(Trim(strline)) <> 0 Then
                    i = i + 1
                    arrinput(i) = strline
                End If
            Loop
        Close #1
        lstorgin.Clear
        For n = 1 To num
            rnum = Int(Rnd * i) + 1
            arrstr(n) = arrinput(rnum)
            arrestr(n) = arrstr(n)
            arrbstr(n) = arrstr(n)
            arrcstr(n) = arrstr(n)
            arrwords(n) = arrstr(n)
            lstorgin.AddItem arrstr(n)
        Next n
    End If
    
    'exchange
    
    start = Timer
    If op1 = "both" Then
        For f = 1 To sc - 1
            For b = f + 1 To sc
                If arrestr(f) < arrestr(b) Then
                    tempes = arrestr(f)
                    arrestr(f) = arrestr(b)
                    arrestr(b) = tempes
                End If
            Next b
        Next f
        For f = 1 To ic - 1
            For b = f + 1 To ic
                If arreint(f) < arreint(b) Then
                    tempei = arreint(f)
                    arreint(f) = arreint(b)
                    arreint(b) = tempei
                End If
            Next b
        Next f
        For i = 1 To ic
            lstexchange.AddItem arreint(i)
        Next i
        For i = 1 To sc
            lstexchange.AddItem arrestr(i)
        Next i
    ElseIf op1 = "int" Then
        For f = 1 To num - 1
            For b = f + 1 To num
                If arreint(f) < arreint(b) Then
                    tempei = arreint(f)
                    arreint(f) = arreint(b)
                    arreint(b) = tempei
                End If
            Next b
        Next f
        lstexchange.Clear
        For i = 1 To num
            arrnums(i) = arreint(i)
            lstexchange.AddItem arreint(i)
        Next i
    ElseIf op1 = "str" Then
        For f = 1 To num - 1
            For b = f + 1 To num
                If arrestr(f) < arrestr(b) Then
                    tempes = arrestr(f)
                    arrestr(f) = arrestr(b)
                    arrestr(b) = tempes
                End If
            Next b
        Next f
        lstexchange.Clear
        For i = 1 To num
            arrwords(i) = arrestr(i)
            lstexchange.AddItem arrestr(i)
        Next i
    End If
    finish = Timer
    duration = finish - start
    lbltimeex.Caption = "Time Taken: " + Str(duration)
    
    'comb
    start = Timer
    If op1 = "int" Then
    gap = num
    Do
        gap = Int(gap / 1.3)
        If gap < 1 Then gap = 1
            swapped = False
        For j = 1 To num - gap
            If arrcint(j) < arrcint(j + gap) Then
                tempci = arrcint(j)
                arrcint(j) = arrcint(j + gap)
                arrcint(j + gap) = tempci
                swapped = True
            End If
        Next j
    Loop Until Not swapped And gap = 1
    For x = 1 To num
        lstcomb.AddItem arrcint(x)
    Next x
    ElseIf op1 = "str" Then
    gap = num
    Do
        gap = Int(gap / 1.3)
        If gap < 1 Then gap = 1
            swapped = False
        For j = 1 To num - gap
            If arrcstr(j) < arrcstr(j + gap) Then
                tempcs = arrcstr(j)
                arrcstr(j) = arrcstr(j + gap)
                arrcstr(j + gap) = tempcs
                swapped = True
            End If
        Next j
    Loop Until Not swapped And gap = 1
    For x = 1 To num
        lstcomb.AddItem arrcstr(x)
    Next x
    ElseIf op1 = "both" Then
    gap = num
    Do
        gap = Int(gap / 1.3)
        If gap < 1 Then gap = 1
            swapped = False
        For j = 1 To num - gap
            If arrcint(j) < arrcint(j + gap) Then
                tempci = arrcint(j)
                arrcint(j) = arrcint(j + gap)
                arrcint(j + gap) = tempci
                swapped = True
            End If
        Next j
    Loop Until Not swapped And gap = 1
    gap = num
    Do
        gap = Int(gap / shrink)
        If gap < 1 Then gap = 1
            swapped = False
        For j = 1 To num - gap
            If arrcstr(j) < arrcstr(j + gap) Then
                tempcs = arrcstr(j)
                arrcstr(j) = arrcstr(j + gap)
                arrcstr(j + gap) = tempcs
                swapped = True
            End If
        Next j
    Loop Until Not swapped And gap = 1
    For x = 1 To num
        lstcomb.AddItem arrcint(x)
    Next x
    For x = 1 To num
        lstcomb.AddItem arrcstr(x)
    Next x
    End If
    finish = Timer
    duration = finish - start
    lbltimec.Caption = "Time Taken: " + Str(duration)
    
    'bubble
    
    start = Timer
    If op1 = "int" Then
    i = num
    Do
        swapped = False
        For j = 1 To i - 1
            If arrbint(j) < arrbint(j + 1) Then
                tempbi = arrbint(j)
                arrbint(j) = arrbint(j + 1)
                arrbint(j + 1) = tempbi
                swapped = True
            End If
        Next j
        i = i - 1
    Loop Until Not swapped
    For i = 1 To num
        lstbubble.AddItem arrbint(i)
    Next i
    ElseIf op1 = "str" Then
    i = num
    Do
        swapped = False
        For j = 1 To i - 1
            If arrbstr(j) < arrbstr(j + 1) Then
                tempbs = arrbstr(j)
                arrbstr(j) = arrbstr(j + 1)
                arrbstr(j + 1) = tempbs
                swapped = True
            End If
        Next j
        i = i - 1
    Loop Until Not swapped
    For i = 1 To num
        lstbubble.AddItem arrbstr(i)
    Next i
    ElseIf op1 = "both" Then
    i = num
    Do
        swapped = False
        For j = 1 To i - 1
            If arrbint(j) < arrbint(j + 1) Then
                tempbi = arrbint(j)
                arrbint(j) = arrbint(j + 1)
                arrbint(j + 1) = tempbi
                swapped = True
            End If
        Next j
        i = i - 1
    Loop Until Not swapped
    i = num
    Do
        swapped = False
        For j = 1 To i - 1
            If arrbstr(j) < arrbstr(j + 1) Then
                tempbs = arrbstr(j)
                arrbstr(j) = arrbstr(j + 1)
                arrbstr(j + 1) = tempbs
                swapped = True
            End If
        Next j
        i = i - 1
    Loop Until Not swapped
    For i = 1 To num
        lstbubble.AddItem arrbint(i)
    Next i
    For i = 1 To num
        lstbubble.AddItem arrbstr(i)
    Next i
    End If
    finish = Timer
    duration = finish - start
    lbltimeb.Caption = "Time Taken: " + Str(duration)
    
    'user defined array
    
    rnum = Int(Rnd * 2) + 1
    If rnum = 1 Then
        path2 = "F:\arko\Computer Programming 2 projects\data\MaleNames.txt"
    ElseIf rnum = 2 Then
        path2 = "F:\arko\Computer Programming 2 projects\data\FemaleNames.txt"
    End If
    Open path2 For Input As #1
        i = 0
        Do While Not EOF(1)
            Line Input #1, strline
            If Len(Trim(strline)) <> 0 Then
                i = i + 1
                arrinput(i) = strline
            End If
        Loop
    Close #1
    For n = 1 To num
        rnum = Int(Rnd * i) + 1
        arrstu(n).fname = arrinput(rnum)
    Next n
    path2 = "F:\arko\Computer Programming 2 projects\data\LastNames.txt"
    Open path2 For Input As #1
        i = 0
        Do While Not EOF(1)
            Line Input #1, strline
            If Len(Trim(strline)) <> 0 Then
                i = i + 1
                arrinput(i) = strline
            End If
        Loop
    Close #1
    For n = 1 To num
        rnum = Int(Rnd * i) + 1
        arrstu(n).lname = arrinput(rnum)
        arrstu(n).age = Int(Rnd * 14) + 4
        arrstu(n).gpa = (Int(Rnd * 400) + 100) / 100
        arrstu(n).grade = Int(Rnd * 12) + 1
        lststu.AddItem arrstu(n).fname + " " + arrstu(n).lname + " " + Str(arrstu(n).age) + " " + Str(arrstu(n).grade) + " " + Str(arrstu(n).gpa)
    Next n
Else
    frmsort.SetFocus
End If
End Sub

Private Sub mnughtol_Click()
snum = lststu.ListCount
For f = 1 To lststu.ListCount - 1
    For b = f + 1 To lststu.ListCount
    If arrstu(f).grade < arrstu(b).grade Then
        temp = arrstu(f)
        arrstu(f) = arrstu(b)
        arrstu(b) = temp
    End If
    Next b
Next f
lststu.Clear
For i = 1 To snum
    lststu.AddItem arrstu(i).fname + " " + arrstu(i).lname + " " + Str(arrstu(i).age) + " " + Str(arrstu(i).grade) + " " + Str(arrstu(i).gpa)
Next i
End Sub

Private Sub mnugltoh_Click()
snum = lststu.ListCount
For f = 1 To lststu.ListCount - 1
    For b = f + 1 To lststu.ListCount
    If arrstu(f).grade > arrstu(b).grade Then
        temp = arrstu(f)
        arrstu(f) = arrstu(b)
        arrstu(b) = temp
    End If
    Next b
Next f
lststu.Clear
For i = 1 To snum
    lststu.AddItem arrstu(i).fname + " " + arrstu(i).lname + " " + Str(arrstu(i).age) + " " + Str(arrstu(i).grade) + " " + Str(arrstu(i).gpa)
Next i
End Sub

Private Sub mnugpahtol_Click()
snum = lststu.ListCount
For f = 1 To lststu.ListCount - 1
    For b = f + 1 To lststu.ListCount
    If arrstu(f).gpa < arrstu(b).gpa Then
        temp = arrstu(f)
        arrstu(f) = arrstu(b)
        arrstu(b) = temp
    End If
    Next b
Next f
lststu.Clear
For i = 1 To snum
    lststu.AddItem arrstu(i).fname + " " + arrstu(i).lname + " " + Str(arrstu(i).age) + " " + Str(arrstu(i).grade) + " " + Str(arrstu(i).gpa)
Next i
End Sub

Private Sub mnugpaltoh_Click()
snum = lststu.ListCount
For f = 1 To lststu.ListCount - 1
    For b = f + 1 To lststu.ListCount
    If arrstu(f).gpa > arrstu(b).gpa Then
        temp = arrstu(f)
        arrstu(f) = arrstu(b)
        arrstu(b) = temp
    End If
    Next b
Next f
lststu.Clear
For i = 1 To snum
    lststu.AddItem arrstu(i).fname + " " + arrstu(i).lname + " " + Str(arrstu(i).age) + " " + Str(arrstu(i).grade) + " " + Str(arrstu(i).gpa)
Next i
End Sub

Private Sub mnulnameatoz_Click()
snum = lststu.ListCount
For f = 1 To lststu.ListCount - 1
    For b = f + 1 To lststu.ListCount
    If arrstu(f).lname > arrstu(b).lname Then
        temp = arrstu(f)
        arrstu(f) = arrstu(b)
        arrstu(b) = temp
    End If
    Next b
Next f
lststu.Clear
For i = 1 To snum
    lststu.AddItem arrstu(i).fname + " " + arrstu(i).lname + " " + Str(arrstu(i).age) + " " + Str(arrstu(i).grade) + " " + Str(arrstu(i).gpa)
Next i
End Sub

Private Sub mnulnameztoa_Click()
snum = lststu.ListCount
For f = 1 To lststu.ListCount - 1
    For b = f + 1 To lststu.ListCount
    If arrstu(f).lname < arrstu(b).lname Then
        temp = arrstu(f)
        arrstu(f) = arrstu(b)
        arrstu(b) = temp
    End If
    Next b
Next f
lststu.Clear
For i = 1 To snum
    lststu.AddItem arrstu(i).fname + " " + arrstu(i).lname + " " + Str(arrstu(i).age) + " " + Str(arrstu(i).grade) + " " + Str(arrstu(i).gpa)
Next i
End Sub

Private Sub mnuotoy_Click()
snum = lststu.ListCount
For f = 1 To lststu.ListCount - 1
    For b = f + 1 To lststu.ListCount
    If arrstu(f).age < arrstu(b).age Then
        temp = arrstu(f)
        arrstu(f) = arrstu(b)
        arrstu(b) = temp
    End If
    Next b
Next f
lststu.Clear
For i = 1 To snum
    lststu.AddItem arrstu(i).fname + " " + arrstu(i).lname + " " + Str(arrstu(i).age) + " " + Str(arrstu(i).grade) + " " + Str(arrstu(i).gpa)
Next i
End Sub

Private Sub mnusearchnum_Click()
'List5.Clear
'List5.Visible = True
Dim si As String
Dim pos As Integer
Dim low As Integer
Dim high As Integer
Dim md As Integer
si = Val(InputBox("Enter number", "Number", "0"))
md = 0
pos = 0
low = 1
high = num
If op2 = vbYes Then
Do While low <= high
    md = Int((low + high) / 2)
    If si > arrnums(md) Then
        low = md + 1
    ElseIf si < arrnums(md) Then
        high = md - 1
    Else
        pos = md
        Exit Do
    End If
Loop
If pos = 0 Then
    MsgBox "Search Item Doesn't Exist"
Else
    MsgBox "Exits at position:" + " " + Str(pos)
    lstexchange.ListIndex = pos - 1
    lstcomb.ListIndex = pos - 1
    lstbubble.ListIndex = pos - 1
End If
ElseIf op2 = vbNo Then
Do While low <= high
    md = Int((low + high) / 2)
    If si > arrnums(md) Then
        high = md + 1
    ElseIf si < arrnums(md) Then
        low = md - 1
    Else
        pos = md
        Exit Do
    End If
Loop
If pos = 0 Then
    MsgBox "Search Item Doesn't Exist"
Else
    MsgBox "Exits at position:" + " " + Str(pos)
    lstexchange.ListIndex = pos - 1
    lstcomb.ListIndex = pos - 1
    lstbubble.ListIndex = pos - 1
End If
End If
End Sub

Private Sub mnusearchword_Click()
Dim si As String
Dim pos As Integer
Dim low As Integer
Dim high As Integer
Dim md As Integer
si = (InputBox("Enter word", "Word", "something"))
pos = 0
low = 1
high = num
Do While low <= high
    md = Int((low + high) / 2)
    If si > arrwords(md) Then
        low = md + 1
    ElseIf si < arrwords(md) Then
        high = md - 1
    Else
        pos = md
        Exit Do
    End If
Loop
If pos = 0 Then
    MsgBox "Search Item Doesn't Exist"
Else
    MsgBox "Exits at position:" + " " + Str(pos)
    lstexchange.ListIndex = pos - 1
    lstcomb.ListIndex = pos - 1
    lstbubble.ListIndex = pos - 1
End If
End Sub

Private Sub mnustu_Click()
Dim searchsub As String
Dim search As String
searchsub = LCase(Trim(InputBox("What would you like to search by?", "Search Subject", "")))
search = LCase(Trim(InputBox("What do you want to search for?", "Search", "")))
lstsearch.Clear
For i = 0 To lststu.ListCount
    If searchsub = "age" Then
        If Val(search) = arrstu(i).age Then
            lstsearch.AddItem lststu.List(i - 1)
        End If
    ElseIf searchsub = "first name" Then
        If search = LCase(Trim(arrstu(i).fname)) Then
            lstsearch.AddItem lststu.List(i - 1)
        End If
    ElseIf searchsub = "last name" Then
        If search = LCase(Trim(arrstu(i).lname)) Then
            lstsearch.AddItem lststu.List(i - 1)
        End If
    ElseIf searchsub = "grade" Then
        If search = LCase(Trim(arrstu(i).grade)) Then
            lstsearch.AddItem lststu.List(i - 1)
        End If
    ElseIf searchsub = "gpa" Then
        If Val(search) = arrstu(i).gpa Then
            lstsearch.AddItem lststu.List(i - 1)
        End If
    End If
Next i
End Sub

Private Sub mnuytoo_Click()
snum = lststu.ListCount
For f = 1 To lststu.ListCount - 1
    For b = f + 1 To lststu.ListCount
    If arrstu(f).age > arrstu(b).age Then
        temp = arrstu(f)
        arrstu(f) = arrstu(b)
        arrstu(b) = temp
    End If
    Next b
Next f
lststu.Clear
For i = 1 To snum
    lststu.AddItem arrstu(i).fname + " " + arrstu(i).lname + " " + Str(arrstu(i).age) + " " + Str(arrstu(i).grade) + " " + Str(arrstu(i).gpa)
Next i
End Sub
