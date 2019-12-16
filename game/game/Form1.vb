Public Class frmmain
    Dim pname As String
    Dim i As Long
    Dim t As Long
    Dim tn As String

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        pic1.Left = 0
        pic1.Top = 0
        pic1.Height = Me.Height
        pic1.Width = Me.Width
        pic1.SendToBack()
        cmdsingle.Top = cmdmulti.Top - 29
        cmdmulti.Top = cmdoptions.Top - 29
        cmdoptions.Top = cmdscore.Top - 29
        cmdscore.Top = cmdquit.Top - 29
        cmdquit.Top = Me.Height - 70
    End Sub

    Private Sub cmdquit_Click(sender As Object, e As EventArgs) Handles cmdquit.Click
        End
    End Sub

    Private Sub cmdmulti_Click(sender As Object, e As EventArgs) Handles cmdmulti.Click
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
                        frmscore.txtscores.Text = LineIn
                        i = i + 1
                    End If
                Else
                    If Len(Trim(LineIn)) <> 0 Then
                        frmscore.txtscores.Text = frmscore.txtscores.Text + vbCrLf + LineIn
                        i = i + 1
                    End If
                End If
            End If
        End While
        oRead.Close()
        frmscore.txtscores.Text = frmscore.txtscores.Text + vbCrLf + pname
        frmmulti.Show()
        Me.Hide()
    End Sub

    Private Sub cmdsingle_Click(sender As Object, e As EventArgs) Handles cmdsingle.Click
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
                        frmscore.txtscores.Text = LineIn
                        i = i + 1
                    End If
                Else
                    If Len(Trim(LineIn)) <> 0 Then
                        frmscore.txtscores.Text = frmscore.txtscores.Text + vbCrLf + LineIn
                        i = i + 1
                    End If
                End If
            End If
        End While
        oRead.Close()
        frmscore.txtscores.Text = frmscore.txtscores.Text + vbCrLf + pname
        frmsingle.Show()
        Me.Hide()
    End Sub

    Private Sub cmdoptions_Click(sender As Object, e As EventArgs) Handles cmdoptions.Click
        frmoptions.Show()
        Me.Hide()
    End Sub

    Private Sub cmdscore_Click(sender As Object, e As EventArgs) Handles cmdscore.Click
        frmscore.Show()
        Me.Hide()
    End Sub

    Private Sub frmmain_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\sound6.wav",
            AudioPlayMode.BackgroundLoop)
    End Sub

    Private Sub cmdplayt_Click(sender As Object, e As EventArgs) Handles cmdplayt.Click
        MsgBox("The trailer you are about to see is the same one found on youtube.com for this movie.")
        t = 0
        Timer2.Enabled = True
        My.Computer.Audio.Stop()
        My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\Batman v Superman.wav",
            AudioPlayMode.Background)
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        t = t + 1
        If t < 10 Then
            tn = "00" + t.ToString
        ElseIf t < 100 Then
            tn = "0" + t.ToString
        ElseIf t > 99 Then
            tn = t.ToString
        End If
        pict.BringToFront()
        pict.Top = 0
        pict.Left = 0
        pict.Width = Me.Width
        pict.Height = Me.Height
        pict.Visible = True
        pict.Load("E:\arko\Computer Programming 2 projects\data\Batman v Superman\frame-00" + tn + ".jpg")
        If t = 668 Then
            Timer2.Enabled = False
            pict.Image = Nothing
            pict.SendToBack()
            pic1.Image = My.Resources.main
            pic1.Visible = True
            pic1.BringToFront()
            My.Computer.Audio.Stop()
        End If
    End Sub

    Private Sub pict_Click(sender As Object, e As EventArgs) Handles pict.Click
        Timer2.Enabled = False
        pict.Image = Nothing
        pict.SendToBack()
        pict.Visible = False
        pic1.Image = My.Resources.main
        pic1.Visible = True
        pic1.BringToFront()
        My.Computer.Audio.Stop()
    End Sub
End Class
