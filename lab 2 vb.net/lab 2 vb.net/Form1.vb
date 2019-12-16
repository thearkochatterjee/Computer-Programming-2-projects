Public Class Form1

    Private Sub cmdexit_Click(sender As Object, e As EventArgs) Handles cmdexit.Click
        End
    End Sub

    Private Sub cmdreset_Click(sender As Object, e As EventArgs) Handles cmdreset.Click
        txtmajor.Clear()
        txtname.Clear()
        txtphone.Clear()
        txtout.Clear()
        rndbwhite.Checked = True
        rndtblack.Checked = True
        picsnow.Visible = False
        picsun.Visible = True
    End Sub

    Private Sub cmddisplay_Click(sender As Object, e As EventArgs) Handles cmddisplay.Click
        txtout.Text = "Name: " + txtname.Text + vbCrLf
        txtout.Text = txtout.Text + "Major: " + txtmajor.Text + vbCrLf
        txtout.Text = txtout.Text + "Phone: " + txtphone.Text
        rtfout.Text = txtout.Text
    End Sub

    Private Sub rndbred_CheckedChanged(sender As Object, e As EventArgs) Handles rndbred.CheckedChanged
        txtout.BackColor = Color.Red
        rtfout.SelectionBackColor = Color.Red
    End Sub

    Private Sub rndbgreen_CheckedChanged(sender As Object, e As EventArgs) Handles rndbgreen.CheckedChanged
        txtout.BackColor = Color.Green
        rtfout.SelectionBackColor = Color.Green
    End Sub

    Private Sub rndbblue_CheckedChanged(sender As Object, e As EventArgs) Handles rndbblue.CheckedChanged
        txtout.BackColor = Color.Blue
        rtfout.SelectionBackColor = Color.Blue
    End Sub

    Private Sub rndbgrey_CheckedChanged(sender As Object, e As EventArgs) Handles rndbgrey.CheckedChanged
        txtout.BackColor = Color.Gray
        rtfout.SelectionBackColor = Color.Gray
    End Sub

    Private Sub rndtblack_CheckedChanged(sender As Object, e As EventArgs) Handles rndtblack.CheckedChanged
        txtout.ForeColor = Color.Black
        rtfout.SelectionColor = Color.Black
    End Sub

    Private Sub rndtwhite_CheckedChanged(sender As Object, e As EventArgs) Handles rndtwhite.CheckedChanged
        txtout.ForeColor = Color.White
        rtfout.SelectionColor = Color.White
    End Sub

    Private Sub rndtred_CheckedChanged(sender As Object, e As EventArgs) Handles rndtred.CheckedChanged
        txtout.ForeColor = Color.Red
        rtfout.SelectionColor = Color.Red
    End Sub

    Private Sub rndbwhite_CheckedChanged(sender As Object, e As EventArgs) Handles rndbwhite.CheckedChanged
        txtout.BackColor = Color.White
        rtfout.SelectionBackColor = Color.White
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        txtmajor.Clear()
        txtname.Clear()
        txtphone.Clear()
        txtout.Clear()
        rndbwhite.Checked = True
        rndtblack.Checked = True
    End Sub

    Private Sub rndtgreen_CheckedChanged(sender As Object, e As EventArgs) Handles rndtgreen.CheckedChanged
        txtout.ForeColor = Color.Green
    End Sub

    Private Sub rndsun_CheckedChanged(sender As Object, e As EventArgs) Handles rndsun.CheckedChanged
        picsun.Visible = True
        picsnow.Visible = False
    End Sub

    Private Sub rndsnow_CheckedChanged(sender As Object, e As EventArgs) Handles rndsnow.CheckedChanged
        picsnow.Visible = True
        picsun.Visible = False
    End Sub
End Class
