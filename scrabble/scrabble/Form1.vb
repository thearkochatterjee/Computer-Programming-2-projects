Public Class frmscrabble
    Structure scores
        Dim name As String
        Dim score As Long
    End Structure
    Dim arrs(9999999) As scores
    Structure tile
        Dim letter As String
        Dim value As Long
    End Structure
    Dim i As Long, x As Long, y As Long
    Dim amount As Long
    Dim bag(100) As tile
    Dim temp As tile
    Dim utile(14) As tile
    Dim wtile(14) As tile
    Dim oFile As System.IO.File
    Dim oRead As System.IO.StreamReader
    Dim LineIn As String
    Dim s1 As Long, s2 As Long
    Dim c As Long, p As Long, chcont As Long, u As Long, chcont2 As Long
    Dim l As String
    Dim rpos As Long
    Dim arrletter(7) As PictureBox
    Dim arrword(14) As PictureBox
    Dim newpic As New PictureBox
    Dim arrcword(100000) As String
    Dim arrcword2(100000) As String
    Dim swapped As Long
    Dim tempc As String
    Dim wordsf As String
    Dim score As Long
    Dim plpos As Long
    Dim time As Long
    Dim dif As String
    Dim pname As String
    Dim change As String
    Dim newnum As Long
    Dim rcpos As Long
    Dim rctype As Long

    Sub gcreate()
        Randomize()
        rcpos = Int(Rnd() * 14) + 1
        Randomize()
        rctype = Int(Rnd() * 4) + 1
        For Me.i = 1 To 14
            arrword(i).BackColor = Nothing
        Next
        If rctype = 1 Then
            arrword(rcpos).BackColor = Color.Red
        ElseIf rctype = 2 Then
            arrword(rcpos).BackColor = Color.Orange
        ElseIf rctype = 3 Then
            arrword(rcpos).BackColor = Color.Blue
        ElseIf rctype = 4 Then
            arrword(rcpos).BackColor = Color.Green
        End If
    End Sub

    Sub gcheck()
        If rctype = 1 Then
            If Len(wordsf) > rcpos Or Len(wordsf) = rcpos Then
                MsgBox("You get Double Word score")
                For Me.i = 1 To Len(wordsf)
                    utile(i).value = utile(i).value * 2
                Next
            End If
        ElseIf rctype = 2 Then
            If Len(wordsf) > rcpos Or Len(wordsf) = rcpos Then
                MsgBox("You get Triple Word score")
                For Me.i = 1 To Len(wordsf)
                    utile(i).value = utile(i).value * 2
                Next
            End If
        ElseIf rctype = 3 Then
            If Len(wordsf) > rcpos Or Len(wordsf) = rcpos Then
                MsgBox("You get Double Letter score")
                utile(rcpos).value = utile(rcpos).value * 2
            End If
        ElseIf rctype = 4 Then
            If Len(wordsf) > rcpos Or Len(wordsf) = rcpos Then
                MsgBox("You get Triple Letter score")
                utile(rcpos).value = utile(rcpos).value * 3
            End If
        End If
    End Sub

    Sub word()
        arrword(1) = picw1
        arrword(2) = picw2
        arrword(3) = picw3
        arrword(4) = picw4
        arrword(5) = picw5
        arrword(6) = picw6
        arrword(7) = picw7
        arrword(8) = picw8
        arrword(9) = picw9
        arrword(10) = picw10
        arrword(11) = picw11
        arrword(12) = picw12
        arrword(13) = picw13
        arrword(14) = picw14
    End Sub

    Sub pletter()
        arrletter(1) = picl1
        arrletter(2) = picl2
        arrletter(3) = picl3
        arrletter(4) = picl4
        arrletter(5) = picl5
        arrletter(6) = picl6
        arrletter(7) = picl7
    End Sub

    Private Sub cmdstart_Click(sender As Object, e As EventArgs) Handles cmdstart.Click
        y = 1
        s1 = 0
        Do While Len(Trim(pname)) <> 3
            pname = UCase(Trim(InputBox("What is your name?(Cannot be longer than 3 characters)", "Name", "AAA")))
        Loop
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\scrabblevalues.txt")
        For Me.i = 1 To 26
            LineIn = oRead.ReadLine()
            For Me.c = 1 To Len(LineIn)
                If s1 = 0 Then
                    If Mid(LineIn, c, 1) = " " Then
                        s1 = c
                    End If
                Else
                    If Mid(LineIn, c, 1) = " " Then
                        s2 = c
                    End If
                End If
            Next
            amount = Val(Mid(LineIn, s2 + 1, Len(LineIn) - s2))
            For Me.x = 1 To amount
                bag(y).letter = Mid(LineIn, 1, 1)
                bag(y).value = Val(Mid(LineIn, s1, s2 - s1))
                y = y + 1
            Next
        Next
        For Me.i = 1 To 2
            bag(y).letter = " "
            bag(y).value = 0
            y = y + 1
        Next
        oRead.Close()
        y = y - 1
        For Me.i = 1 To y
            Randomize()
            rpos = Int(Rnd() * y) + 1
            temp = bag(i)
            bag(i) = bag(rpos)
            bag(rpos) = temp
            lstdata.Items.Add(bag(i).letter + " - " + bag(i).value.ToString)
        Next
        For Me.i = 1 To 7
            arrletter(i).Load("E:\arko\Computer Programming 2 projects\scrabbletiles\tile" + bag(i).letter.ToString + ".jpg")
            arrletter(i).Cursor = Cursors.Hand
        Next
        For Me.i = 1 To 14
            arrword(i).Image = Nothing
            u = 0
        Next
        lstdata.Items.Clear()
        For Me.i = 1 To y
            lstdata.Items.Add(bag(i).letter + " - " + bag(i).value.ToString)
        Next
        gcreate()
        Timer1.Enabled = True
        cmdstart.Enabled = False
        cmdcheck.Enabled = True
        cmdnew.Enabled = True
    End Sub

    Private Sub frmscrabble_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        pletter()
        word()
        Me.Top = 0
        Me.Left = 0
        time = 60
        Dim oFile As System.IO.File
        Dim oRead As System.IO.StreamReader
        Dim LineIn As String
        i = 1
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\scrabble scores.txt")
        While oRead.Peek <> -1
            LineIn = oRead.ReadLine()
            If i = 1 Then
                If Len(Trim(LineIn)) <> 0 Then
                    arrs(i).name = Mid(LineIn, 1, 3)
                    arrs(i).score = Val(Mid(LineIn, 4, Len(LineIn) - 3))
                    txtscores.Text = arrs(i).name.ToString + " " + arrs(i).score.ToString
                    frmt10.lstall.Items.Add(arrs(i).name + " " + arrs(i).score.ToString)
                    i = i + 1
                End If
            Else
                If Len(Trim(LineIn)) <> 0 Then
                    arrs(i).name = Mid(LineIn, 1, 3)
                    arrs(i).score = Val(Mid(LineIn, 4, Len(LineIn) - 3))
                    txtscores.Text = txtscores.Text + vbCrLf + arrs(i).name.ToString + " " + arrs(i).score.ToString
                    frmt10.lstall.Items.Add(arrs(i).name + " " + arrs(i).score.ToString)
                    i = i + 1
                End If
            End If
        End While
        oRead.Close()
        newnum = i
    End Sub

    Private Sub cmdquit_Click(sender As Object, e As EventArgs) Handles cmdquit.Click
        Dim oFile As System.IO.File
        Dim oWrite As System.IO.StreamWriter
        oWrite = oFile.CreateText("E:\arko\Computer Programming 2 projects\scrabble scores.txt")
        oWrite.WriteLine(txtscores.Text)
        oWrite.Close()
        End
    End Sub

    Private Sub cmdcheck_Click(sender As Object, e As EventArgs) Handles cmdcheck.Click
        Dim oFile As System.IO.File
        Dim oRead As System.IO.StreamReader
        Dim LineIn As String
        i = 1
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\data\dictionary.txt")
        While oRead.Peek <> -1
            LineIn = oRead.ReadLine()
            If i = 1 Then
                If Len(Trim(LineIn)) <> 0 Then
                    arrcword(i) = LineIn
                    i = i + 1
                End If
            Else
                If Len(Trim(LineIn)) <> 0 Then
                    arrcword(i) = LineIn
                    i = i + 1
                End If
            End If
        End While
        oRead.Close()
        chcont = i
        i = 1
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\data\scrabble words.txt")
        While oRead.Peek <> -1
            LineIn = oRead.ReadLine()
            If i = 1 Then
                If Len(Trim(LineIn)) <> 0 Then
                    arrcword2(i) = LineIn
                    i = i + 1
                End If
            Else
                If Len(Trim(LineIn)) <> 0 Then
                    arrcword2(i) = LineIn
                    i = i + 1
                End If
            End If
        End While
        oRead.Close()
        chcont2 = i
        Dim si As String
        Dim pos As Long
        Dim low As Long
        Dim high As Long
        Dim md As Long
        si = LCase(Trim(wordsf))
        pos = 0
        low = 1
        high = chcont
        Do While low <= high
            md = Int((low + high) / 2)
            If si > arrcword(md) Then
                low = md + 1
            ElseIf si < arrcword(md) Then
                high = md - 1
            Else
                pos = md
                Exit Do
            End If
        Loop
        low = 1
        high = chcont2
        Do While low <= high
            md = Int((low + high) / 2)
            If si > arrcword2(md) Then
                low = md + 1
            ElseIf si < arrcword2(md) Then
                high = md - 1
            Else
                pos = md
                Exit Do
            End If
        Loop
        If pos = 0 Then
            MsgBox("This is not a word!")
        Else
            gcheck()
            For Me.i = 1 To Len(wordsf)
                score = score + utile(i).value
            Next
            lblscore.Text = score.ToString
        End If
        y = 1
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\scrabblevalues.txt")
        For Me.i = 1 To 26
            LineIn = oRead.ReadLine()
            For Me.c = 1 To Len(LineIn)
                If s1 = 0 Then
                    If Mid(LineIn, c, 1) = " " Then
                        s1 = c
                    End If
                Else
                    If Mid(LineIn, c, 1) = " " Then
                        s2 = c
                    End If
                End If
            Next
            amount = Val(Mid(LineIn, s2 + 1, Len(LineIn) - s2))
            For Me.x = 1 To amount
                bag(y).letter = Mid(LineIn, 1, 1)
                bag(y).value = Val(Mid(LineIn, s1, s2 - s1))
                y = y + 1
            Next
        Next
        For Me.i = 1 To 2
            bag(y).letter = " "
            bag(y).value = 0
            y = y + 1
        Next
        oRead.Close()
        y = y - 1
        For Me.i = 1 To y
            Randomize()
            rpos = Int(Rnd() * y) + 1
            temp = bag(i)
            bag(i) = bag(rpos)
            bag(rpos) = temp
            lstdata.Items.Add(bag(i).letter + " - " + bag(i).value.ToString)
        Next
        For Me.i = 1 To 7
            arrletter(i).Load("E:\arko\Computer Programming 2 projects\scrabbletiles\tile" + bag(i).letter.ToString + ".jpg")
            arrletter(i).Cursor = Cursors.Hand
        Next
        For Me.i = 1 To 14
            arrword(i).Image = Nothing
            u = 0
        Next
        lstdata.Items.Clear()
        For Me.i = 1 To y
            lstdata.Items.Add(bag(i).letter + " - " + bag(i).value.ToString)
        Next
        change = ""
        gcreate()
    End Sub

    Sub picletter()
        u = u + 1
        utile(u) = bag(plpos)
        If utile(u).letter = " " Then
            Do While Len(change) <> 1
                change = LCase(Trim(InputBox("What letter would you like?", "Letter", "A")))
            Loop
            For Me.i = 1 To 100
                If LCase(Trim(bag(i).letter)) = change Then
                    utile(u) = bag(i)
                    Exit For
                End If
            Next
        End If
        arrword(u).Load("E:\arko\Computer Programming 2 projects\scrabbletiles\tile" + utile(u).letter + ".jpg")
        wordsf = ""
        For Me.i = 1 To u
            wordsf = wordsf + utile(i).letter
        Next
        arrletter(plpos).Load("E:\arko\Computer Programming 2 projects\scrabbletiles\tile" + bag(7 + u).letter + ".jpg")
        bag(plpos) = bag(7 + u)
    End Sub

    Private Sub picl1_Click(sender As Object, e As EventArgs) Handles picl1.Click
        plpos = 1
        picletter()
    End Sub

    Private Sub picl2_Click(sender As Object, e As EventArgs) Handles picl2.Click
        plpos = 2
        picletter()
    End Sub

    Private Sub picl3_Click(sender As Object, e As EventArgs) Handles picl3.Click
        plpos = 3
        picletter()
    End Sub

    Private Sub picl4_Click(sender As Object, e As EventArgs) Handles picl4.Click
        plpos = 4
        picletter()
    End Sub

    Private Sub picl5_Click(sender As Object, e As EventArgs) Handles picl5.Click
        plpos = 5
        picletter()
    End Sub

    Private Sub picl6_Click(sender As Object, e As EventArgs) Handles picl6.Click
        plpos = 6
        picletter()
    End Sub

    Private Sub picl7_Click(sender As Object, e As EventArgs) Handles picl7.Click
        plpos = 7
        picletter()
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        time = time - 1
        lbltime.Text = "Time " + time.ToString
        If time = 0 Then
            Timer1.Enabled = False
            cmdcheck.Enabled = False
            cmdnew.Enabled = False
            cmdstart.Enabled = True
            time = 60
            frmt10.lstall.Items.Add(pname.ToString + " " + score.ToString)
            MsgBox("Game Over")
        End If
    End Sub

    Private Sub cmdscores_Click(sender As Object, e As EventArgs) Handles cmdscores.Click
        Me.Hide()
        frmt10.Show()
    End Sub

    Private Sub cmdnew_Click(sender As Object, e As EventArgs) Handles cmdnew.Click
        For Me.i = 1 To y
            Randomize()
            rpos = Int(Rnd() * y) + 1
            temp = bag(i)
            bag(i) = bag(rpos)
            bag(rpos) = temp
            lstdata.Items.Add(bag(i).letter + " - " + bag(i).value.ToString)
        Next
        For Me.i = 1 To 7
            arrletter(i).Load("E:\arko\Computer Programming 2 projects\scrabbletiles\tile" + bag(i).letter.ToString + ".jpg")
            arrletter(i).Cursor = Cursors.Hand
        Next
        For Me.i = 1 To 14
            arrword(i).Image = Nothing
            u = 0
        Next
        lstdata.Items.Clear()
        For Me.i = 1 To y
            lstdata.Items.Add(bag(i).letter + " - " + bag(i).value.ToString)
        Next
    End Sub
End Class
