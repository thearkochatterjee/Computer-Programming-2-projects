Public Class frmt10
    Structure s
        Dim name As String
        Dim point As Integer
    End Structure
    Dim scores(9999999) As s
    Dim f As Integer
    Dim b As Integer
    Dim i As Integer
    Dim temp As s

    Private Sub cmdback_Click(sender As Object, e As EventArgs) Handles cmdback.Click
        frm21.Show()
        Me.Hide()
    End Sub

    Private Sub frmt10_Click(sender As Object, e As EventArgs) Handles Me.Click
        For Me.i = 0 To lstnames.Items.Count - 1
            scores(i + 1).name = lstnames.Items(i)
            scores(i + 1).point = lstpoints.Items(i)
        Next
        lstt10.Items.Clear()
        For Me.f = 1 To lstall.Items.Count - 1
            For Me.b = Me.f + 1 To lstall.Items.Count
                If scores(f).point < scores(b).point Then
                    temp = scores(f)
                    scores(f) = scores(b)
                    scores(b) = temp
                End If
            Next
        Next
        For Me.i = 1 To 10
            lstt10.Items.Add(scores(i).name + " - " + scores(i).point.ToString)
        Next
    End Sub

    Private Sub frmt10_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        For Me.i = 0 To lstnames.Items.Count - 1
            scores(i + 1).name = lstnames.Items(i)
            scores(i + 1).point = lstpoints.Items(i)
        Next
    End Sub
End Class