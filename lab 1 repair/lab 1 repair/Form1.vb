Public Class Form1

    Private Sub txtname_TextChanged(sender As Object, e As EventArgs) Handles txtname.TextChanged

    End Sub

    Private Sub cmdexit_Click(sender As Object, e As EventArgs) Handles cmdexit.Click
        End
    End Sub

    Private Sub cmdperson1_Click(sender As Object, e As EventArgs) Handles cmdperson1.Click
        txtname.Text = "Bob Bobson"
        txtmajor.Text = "Computer Science and Engineering"
    End Sub

    Private Sub cmdperson2_Click(sender As Object, e As EventArgs) Handles cmdperson2.Click
        txtname.Text = "Arko Chatterjee"
        txtmajor.Text = "Machanical Engingeering"
    End Sub

    Private Sub cmdperson3_Click(sender As Object, e As EventArgs) Handles cmdperson3.Click
        txtname.Text = "Dival Banerjee"
        txtmajor.Text = "Computer Science and Engingeering"
    End Sub

    Private Sub cmdreset_Click(sender As Object, e As EventArgs) Handles cmdreset.Click
        txtname.Clear()
        txtmajor.Clear()
    End Sub

    Private Sub cmdprint_Click(sender As Object, e As EventArgs)
        PrintForm1.PrintAction = Printing.PrintAction.PrintToPreview
        PrintForm1.Print()
    End Sub
End Class