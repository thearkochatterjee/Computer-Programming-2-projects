Public Class Form1
    Dim arrtiles(100) As tile, temp As tile
    Structure tile
        Dim letter As String
        Dim value As String
    End Structure
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim lcount As Integer
        Dim letter As String
        Dim value, rnum As Intege
        Dim i, j, k, lnum As Integer
        i = 0
        lnum = 1
        FileOpen(1, "E:\scrabblevalues2.txt", OpenMode.Input)
        Do While Not EOF(1)
            letter = LineInput(1)
            value = Val(LineInput(1))
            lcount = Val(LineInput(1))
            For j = 1 To lcount
                arrtiles(lnum).letter = letter
                arrtiles(lnum).value = Str(value)
                lnum = lnum + 1
                ListBox1.Items.Add(arrtiles(lnum).letter)
            Next
            i = i + 1
        Loop
        For k = 1 To 100
            Randomize()
            rnum = Int(Rnd() * 100) + 1
            temp = arrtiles(k)
            arrtiles(k) = arrtiles(rnum)
            arrtiles(rnum) = temp
        Next
        FileClose(1)
    End Sub
End Class