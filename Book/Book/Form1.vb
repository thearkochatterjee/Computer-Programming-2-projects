Public Class frmbook
    Structure book
        Dim title As String
        Dim author As String
        Dim score As Double
    End Structure
    Dim arrbook(100) As book
    Dim m1book(100) As book
    Dim temp As book
    Structure reader
        Dim name As String
        Dim ratings() As Long
    End Structure
    Dim person(100) As reader
    Dim i As Long, x As Long, y As Long
    Dim s1 As Long, s2 As Long
    Dim linenum As Integer
    Dim numr As Long, numb As Long, numpr As Long
    Dim p As String
    Dim sc As Long
    Dim avg As Double
    Dim hrsf As Double
    Dim poshr As Double
    Dim f As Long, b As Long
    Dim t As String, a As String
    Dim ssc As Double, fsc As Double
    Dim msp As reader
    Dim sug(100) As book
    Dim m3m(100) As Double
    Dim m3r(100) As book
    Dim popb(100) As book
    Dim ch As String
    Dim rnum As Long

    Private Sub cmdopen_Click(sender As Object, e As EventArgs) Handles cmdopen.Click
        Dim oFile As System.IO.File
        Dim oRead As System.IO.StreamReader
        Dim LineIn As String
        For Me.i = 1 To 100
            ReDim person(i).ratings(100)
        Next
        i = 1
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\bookrecdata\books.txt")
        While oRead.Peek <> -1
            LineIn = oRead.ReadLine()
            If Mid(LineIn, 1, 1) <> "0" Or Mid(LineIn, 1, 1) <> " " Then
                If i = 1 Then
                    If Len(Trim(LineIn)) <> 0 Then
                        txtreader.Text = LineIn
                        s1 = 0
                        For Me.x = 1 To Len(LineIn)
                            If Mid(LineIn, x, 1) = "," Then
                                s1 = x
                            End If
                        Next
                        arrbook(i).author = UCase(Trim(Mid(LineIn, 1, s1 - 1)))
                        arrbook(i).title = UCase(Trim(Mid(LineIn, s1 + 1, Len(LineIn) - s1)))
                        lstbook.Items.Add(arrbook(i).title + " - " + arrbook(i).author)
                        i = i + 1
                    End If
                Else
                    If Len(Trim(LineIn)) <> 0 Then
                        txtreader.Text = txtreader.Text + vbCrLf + LineIn
                        s1 = 0
                        For Me.x = 1 To Len(LineIn)
                            If Mid(LineIn, x, 1) = "," Then
                                s1 = x
                            End If
                        Next
                        arrbook(i).author = UCase(Trim(Mid(LineIn, 1, s1 - 1)))
                        arrbook(i).title = UCase(Trim(Mid(LineIn, s1 + 1, Len(LineIn) - s1)))
                        lstbook.Items.Add(arrbook(i).title + " - " + arrbook(i).author)
                        i = i + 1
                    End If
                End If
            End If
        End While
        oRead.Close()
        i = 1
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\bookrecdata\readerratings.txt")
        While oRead.Peek <> -1
            LineIn = oRead.ReadLine()
            If i = 1 Then
                If Len(Trim(LineIn)) <> 0 Then
                    txtreader.Text = LineIn
                    person(i).name = Trim(UCase(LineIn))
                End If
            Else
                If Len(Trim(LineIn)) <> 0 Then
                    txtreader.Text = txtreader.Text + vbCrLf + LineIn
                    person(i).name = Trim(UCase(LineIn))
                End If
            End If
            y = 1
            LineIn = oRead.ReadLine()
            If Len(Trim(LineIn)) <> 0 Then
                txtreader.Text = txtreader.Text + vbCrLf + LineIn
                For Me.x = 1 To Len(LineIn)
                    If Mid(LineIn, x, 1) = " " Then
                        person(i).ratings(y) = Val(p)
                        y = y + 1
                        p = ""
                    Else
                        p = p + Mid(LineIn, x, 1)
                    End If
                Next
                i = i + 1
            End If
        End While
        oRead.Close()
        numr = i - 1
        numb = y - 1
        For Me.i = 1 To numr
            lstreaders.Items.Add(person(i).name)
        Next
        For Me.i = 1 To numb
            avg = 0
            numpr = numr
            For Me.x = 1 To numr
                If person(x).ratings(i) <> 0 Then
                    avg = avg + person(x).ratings(i)
                Else
                    numpr = numpr - 1
                End If
            Next
            arrbook(i).score = avg / numpr
            m1book(i) = arrbook(i)
        Next
        For Me.f = 1 To numb - 1
            For Me.b = f + 1 To numb
                If m1book(f).score < m1book(b).score Then
                    temp = m1book(f)
                    m1book(f) = m1book(b)
                    m1book(b) = temp
                End If
            Next
        Next
        For Me.i = 1 To numb
            lstm1.Items.Add(m1book(i).title + " / " + m1book(i).author + " / " + m1book(i).score.ToString)
        Next

    End Sub

    Private Sub cmdexit_Click(sender As Object, e As EventArgs) Handles cmdexit.Click
        Dim oFile As System.IO.File
        Dim oWrite As System.IO.StreamWriter
        oWrite = oFile.CreateText("E:\arko\Computer Programming 2 projects\bookrecdata\readerratings.txt")
        oWrite.WriteLine(txtreader.Text)
        oWrite.Close()
        End
    End Sub

    Private Sub lstreaders_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lstreaders.SelectedIndexChanged
        lstratings.Items.Clear()
        lstm2.Items.Clear()
        lstm3.Items.Clear()
        lstm4.Items.Clear()
        For Me.i = 1 To numb
            lstratings.Items.Add(person(lstreaders.SelectedIndex + 1).ratings(i).ToString + " / " + arrbook(i).title + " / " + arrbook(i).author)
        Next
        fsc = 0
        ssc = 0
        For Me.i = 1 To numr
            ssc = 0
            If i <> lstreaders.SelectedIndex + 1 Then
                For Me.x = 1 To numb
                    ssc = ssc + person(i).ratings(x) * person(lstreaders.SelectedIndex + 1).ratings(x)
                Next
                If ssc > fsc Then
                    fsc = ssc
                    msp.name = person(i).name
                    msp.ratings = person(i).ratings
                End If
            End If
            m3m(i) = ssc
        Next
        MsgBox("The most similar reader is: " + msp.name + vbCrLf + "With a score oE: " + fsc.ToString)
        For Me.i = 1 To numb
            If person(lstreaders.SelectedIndex + 1).ratings(i) = 0 And msp.ratings(i) <> 0 Then
                sug(x).title = arrbook(i).title
                sug(x).author = arrbook(i).author
                sug(x).score = msp.ratings(i)
                x = x + 1
            End If
        Next
        x = x - 1
        For Me.f = 1 To x - 1
            For Me.b = f + 1 To x
                If sug(f).score < sug(b).score Then
                    temp = sug(f)
                    sug(f) = sug(b)
                    sug(b) = temp
                End If
            Next
        Next
        For Me.i = 1 To x
            If sug(i).title <> "" Then
                lstm2.Items.Add(sug(i).title + " / " + sug(i).author + " / " + sug(i).score.ToString)
            End If
        Next
        For Me.i = 1 To numb
            m3r(i) = arrbook(i)
        Next
        For Me.i = 1 To numr
            m3r(i).score = 0
        Next
        For Me.i = 1 To numr
            For Me.x = 1 To numb
                If person(lstreaders.SelectedIndex + 1).ratings(x) = 0 Then
                    m3r(x).score = m3r(x).score + m3m(i) * person(i).ratings(x)
                End If
            Next
        Next
        For Me.f = 1 To numr - 1
            For Me.b = f + 1 To numr
                If m3r(f).score < m3r(b).score Then
                    temp = m3r(f)
                    m3r(f) = m3r(b)
                    m3r(b) = temp
                End If
            Next
        Next
        For Me.i = 1 To numr
            If m3r(i).title <> "" Then
                lstm3.Items.Add(m3r(i).title + " / " + m3r(i).author + " / " + m3r(i).score.ToString)
            End If
        Next
        For Me.i = 1 To numb
            popb(i).title = arrbook(i).title
            popb(i).author = arrbook(i).author
        Next
        For Me.i = 1 To numb
            For Me.x = 1 To numr
                If person(x).ratings(i) > 0 And person(lstreaders.SelectedIndex + 1).ratings(i) = 0 Then
                    popb(i).score = popb(i).score + 1
                End If
            Next
        Next
        For Me.f = 1 To numb - 1
            For Me.b = f + 1 To numb
                If popb(f).score < popb(b).score Then
                    temp = popb(f)
                    popb(f) = popb(b)
                    popb(b) = temp
                End If
            Next
        Next
        For Me.i = 1 To numb
            lstm4.Items.Add(popb(i).title + " / " + popb(i).author + " / " + popb(i).score.ToString)
        Next
    End Sub

    Private Sub lstbook_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lstbook.SelectedIndexChanged
        If lstbook.SelectedIndex > 54 Then
            picbook.Load("E:\arko\Computer Programming 2 projects\bookrecdata\new book.jpg")
        Else
            picbook.Load("E:\arko\Computer Programming 2 projects\bookrecdata\" + arrbook(lstbook.SelectedIndex + 1).title + ".jpg")
        End If
        lstbr.Items.Clear()
        For Me.i = 1 To numr
            lstbr.Items.Add(person(i).name + " / " + person(i).ratings(lstbook.SelectedIndex + 1).ToString)
        Next
    End Sub

    Private Sub cmdaddb_Click(sender As Object, e As EventArgs) Handles cmdaddb.Click
        numb = numb + 1
        t = Trim(UCase(InputBox("What is the title of the book?", "Book Title", "")))
        a = Trim(UCase(InputBox("Who is the author of this book?", "Author", "")))
        arrbook(numb).title = t
        arrbook(numb).author = a
        For Me.i = 1 To numr
            person(i).ratings(numb) = Val(InputBox("What is the rating that " + person(i).name + " gives for " + arrbook(numb).title + "(5-really good,3 - good,1 - ok,0 - didn't read it,-1 - some what bad,-3 - bad,-5 - really bad)", "Rating", "0"))
        Next
        lstbook.Items.Add(arrbook(numb).title + " / " + arrbook(numb).author)
    End Sub

    Private Sub lstm4_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lstm4.SelectedIndexChanged
        picbook.Load("E:\arko\Computer Programming 2 projects\bookrecdata\" + popb(lstm4.SelectedIndex + 1).title + ".jpg")
    End Sub

    Private Sub cmdaddr_Click(sender As Object, e As EventArgs) Handles cmdaddr.Click
        numr = numr + 1
        person(numr).name = UCase(Trim(InputBox("What is your name?", "Name", "")))
        ch = MsgBox("Do you want to entire in the data manualy?", vbYesNoCancel, "Enter Data")
        If ch = vbYes Then
            For Me.i = 1 To numb
                person(numr).ratings(i) = Val(InputBox("What do you rate " + vbCrLf + arrbook(i).title + " By: " + arrbook(i).author + vbCrLf + "(5-really good,3 - good,1 - ok,0 - didn't read it,-1 - some what bad,-3 - bad,-5 - really bad)", "Rating", "0"))
            Next
        ElseIf ch = vbNo Then
            For Me.i = 1 To numb
                Randomize()
                rnum = Int(Rnd() * 7) + 1
                If rnum = 1 Then
                    person(numr).ratings(i) = 5
                ElseIf rnum = 2 Then
                    person(numr).ratings(i) = 3
                ElseIf rnum = 3 Then
                    person(numr).ratings(i) = 1
                ElseIf rnum = 4 Then
                    person(numr).ratings(i) = 0
                ElseIf rnum = 5 Then
                    person(numr).ratings(i) = -1
                ElseIf rnum = 6 Then
                    person(numr).ratings(i) = -3
                ElseIf rnum = 7 Then
                    person(numr).ratings(i) = -5
                End If
            Next
        End If
        lstreaders.Items.Add(person(numr).name)
        txtreader.Clear()
        For Me.i = 1 To numr
            If i = 1 Then
                txtreader.Text = person(i).name + vbCrLf
                For Me.x = 1 To numb
                    txtreader.Text = txtreader.Text + person(i).ratings(x).ToString + " "
                Next
            Else
                txtreader.Text = txtreader.Text + vbCrLf + person(i).name + vbCrLf
                For Me.x = 1 To numb
                    txtreader.Text = txtreader.Text + person(i).ratings(x).ToString + " "
                Next
            End If
        Next
    End Sub

    Private Sub cmdchange_Click(sender As Object, e As EventArgs) Handles cmdchange.Click
        person(lstreaders.SelectedIndex + 1).name = Trim(UCase(InputBox("What would you like the name to be?", "Name", "Arko")))
        person(lstreaders.SelectedIndex + 1).ratings(lstratings.SelectedIndex + 1) = Val(InputBox("What would you like to change the rating of this book to?", "Rating", "0"))
        lstreaders.Items.Clear()
        For Me.i = 1 To numr
            lstreaders.Items.Add(person(i).name)
        Next
        lstratings.Items.Clear()
        For Me.i = 1 To numb - 1
            'lstratings.Items.Add(person(lstreaders.SelectedIndex + 1).ratings(i))
        Next
        txtreader.Clear()
        For Me.i = 1 To numr
            If i = 1 Then
                txtreader.Text = person(i).name + vbCrLf
                For Me.x = 1 To numb
                    txtreader.Text = txtreader.Text + person(i).ratings(x).ToString + " "
                Next
            Else
                txtreader.Text = txtreader.Text + vbCrLf + person(i).name + vbCrLf
                For Me.x = 1 To numb
                    txtreader.Text = txtreader.Text + person(i).ratings(x).ToString + " "
                Next
            End If
        Next
    End Sub

    Private Sub lstm3_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lstm3.SelectedIndexChanged
        picbook.Load("E:\arko\Computer Programming 2 projects\bookrecdata\" + m3r(lstm3.SelectedIndex + 1).title + ".jpg")
    End Sub

    Private Sub lstm2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lstm2.SelectedIndexChanged
        picbook.Load("E:\arko\Computer Programming 2 projects\bookrecdata\" + sug(lstm2.SelectedIndex + 1).title + ".jpg")
    End Sub

    Private Sub lstm1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lstm1.SelectedIndexChanged
        picbook.Load("E:\arko\Computer Programming 2 projects\bookrecdata\" + m1book(lstm1.SelectedIndex + 1).title + ".jpg")
    End Sub
End Class
