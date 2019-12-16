Public Class frmt10
    Structure score
        Dim name As String
        Dim score As Long
    End Structure
    Dim arrs(9999999) As score
    Dim i As Long
    Dim num As Long
    Dim f As Long, b As Long
    Dim temps As score

    Private Sub frmt10_Click(sender As Object, e As EventArgs) Handles Me.Click
        For Me.i = 1 To lstall.Items.Count
            arrs(i).name = Mid(lstall.Items(i - 1), 1, 3)
            arrs(i).score = Val(Mid(lstall.Items(i - 1), 4, Len(lstall.Items(i - 1)) - 3))
        Next
        For f = 1 To lstall.Items.Count - 1
            For b = f + 1 To lstall.Items.Count
                If arrs(f).score < arrs(b).score Then
                    temps = arrs(f)
                    arrs(f) = arrs(b)
                    arrs(b) = temps
                End If
            Next b
        Next f
        lstt10.Items.Clear()
        For Me.i = 1 To 10
            lstt10.Items.Add(arrs(i).name.ToString + " " + arrs(i).score.ToString)
        Next
    End Sub

    Private Sub cmdback_Click(sender As Object, e As EventArgs) Handles cmdback.Click
        frmscrabble.Show()
        For Me.i = 1 To lstall.Items.Count
            If i = 1 Then
                frmscrabble.txtscores.Text = lstall.Items(i - 1)
            Else
                frmscrabble.txtscores.Text = frmscrabble.txtscores.Text + vbCrLf + lstall.Items(i - 1)
            End If
        Next
        Me.Hide()
    End Sub
End Class