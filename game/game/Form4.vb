Public Class frmoptions

    Private Sub cmbscreensize_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbscreensize.SelectedIndexChanged
        If cmbscreensize.Text = "Full Screen" Then
            Me.WindowState = FormWindowState.Maximized
            frmmain.WindowState = FormWindowState.Maximized
            frmmulti.WindowState = FormWindowState.Maximized
            frmscore.WindowState = FormWindowState.Maximized
            frmsingle.WindowState = FormWindowState.Maximized
        ElseIf cmbscreensize.Text = "Normal" Then
            Me.WindowState = FormWindowState.Normal
            frmmain.WindowState = FormWindowState.Normal
            frmmulti.WindowState = FormWindowState.Normal
            frmscore.WindowState = FormWindowState.Normal
            frmsingle.WindowState = FormWindowState.Normal
        End If
    End Sub

    Private Sub cmbsound_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbsound.SelectedIndexChanged
        If cmbsound.Text = "Sound 1" Then
            My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\sound1.wav",
        AudioPlayMode.BackgroundLoop)
        ElseIf cmbsound.Text = "Sound 2" Then
            My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\sound2.wav",
        AudioPlayMode.BackgroundLoop)
        ElseIf cmbsound.Text = "Sound 3" Then
            My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\sound3.wav",
        AudioPlayMode.BackgroundLoop)
        ElseIf cmbsound.Text = "Sound 4" Then
            My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\sound4.wav",
            AudioPlayMode.BackgroundLoop)
        ElseIf cmbsound.Text = "Sound 5" Then
            My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\sound5.wav",
            AudioPlayMode.BackgroundLoop)
        ElseIf cmbsound.Text = "Sound 6" Then
            My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\sound6.wav",
            AudioPlayMode.BackgroundLoop)
        ElseIf cmbsound.Text = "None" Then
            My.Computer.Audio.Stop()
        End If
    End Sub

    Private Sub cmdback_Click(sender As Object, e As EventArgs) Handles cmdback.Click
        frmmain.Show()
        Me.Hide()
    End Sub

    Private Sub frmoptions_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class