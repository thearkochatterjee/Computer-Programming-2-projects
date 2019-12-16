Public Class frmscore
    Structure score
        Dim name As String
        Dim s As Long
    End Structure
    Dim scores(9999999) As score
    Dim i As Long
    Dim f As Long
    Dim b As Long
    Dim temp As score

    Private Sub frmscore_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub frmscore_MouseDown(sender As Object, e As MouseEventArgs) Handles Me.MouseDown
        Dim oFile As System.IO.File
        Dim oRead As System.IO.StreamReader
        Dim LineIn As String
        i = 1
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\data\scores.txt")
        While oRead.Peek <> -1
            LineIn = oRead.ReadLine()
            If Mid(LineIn, 1, 1) <> "0" Or Mid(LineIn, 1, 1) <> " " Then
                If i = 1 Then
                    If Len(Trim(LineIn)) <> 0 Then
                        txtscores.Text = LineIn
                        scores(i).name = Mid(LineIn, 1, 3)
                        scores(i).s = Val(Mid(LineIn, 4, Len(LineIn) - 3))
                        lstall.Items.Add(scores(i).name + " / " + scores(i).s.ToString)
                        i = i + 1
                    End If
                Else
                    If Len(Trim(LineIn)) <> 0 Then
                        txtscores.Text = txtscores.Text + vbCrLf + LineIn
                        scores(i).name = Mid(LineIn, 1, 3)
                        scores(i).s = Val(Mid(LineIn, 4, Len(LineIn) - 3))
                        lstall.Items.Add(scores(i).name + " / " + scores(i).s.ToString)
                        i = i + 1
                    End If
                End If
            End If
        End While
        oRead.Close()
        For Me.f = 1 To lstall.Items.Count - 1
            For Me.b = Me.f + 1 To lstall.Items.Count
                If scores(f).s < scores(b).s Then
                    temp = scores(f)
                    scores(f) = scores(b)
                    scores(b) = temp
                End If
            Next
        Next
        For Me.i = 1 To 10
            lsttten.Items.Add(scores(i).name + " / " + scores(i).s.ToString)
        Next
    End Sub

    Private Sub cmdback_Click(sender As Object, e As EventArgs) Handles cmdback.Click
        frmmain.Show()
        Me.Hide()
    End Sub
End Class