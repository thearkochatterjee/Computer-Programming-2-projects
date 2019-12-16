Public Class Form1
    Structure tile
        Dim letter As String
        Dim value As Integer
    End Structure
    Dim i As Integer
    Dim x As Integer
    Dim y As Integer
    Dim amount As Integer
    Dim bag(100) As tile
    Dim temp As tile
    Dim oFile As System.IO.File
    Dim oRead As System.IO.StreamReader
    Dim LineIn As String
    Dim s1 As Integer
    Dim s2 As Integer
    Dim c As Integer
    Dim l As String
    Dim rpos As Integer

    Private Sub cmdbag_Click(sender As Object, e As EventArgs) Handles cmdbag.Click
        y = 1
        s1 = 0
        oRead = oFile.OpenText("F:\arko\Computer Programming 2 projects\scrabblevalues.txt")
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
    End Sub
End Class
