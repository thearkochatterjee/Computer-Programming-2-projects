Public Class frmsingle
    Dim psx As Double
    Dim psy As Double
    Dim bsx As Double
    Dim bsy As Double
    Dim pasx As Double
    Dim pasy As Double
    Dim basx As Double
    Dim basy As Double
    Dim ch As Integer
    Dim dir As Integer
    Dim ra As Integer
    Dim pa As Integer
    Dim botst As Integer
    Dim up As Integer
    Dim bh As Integer
    Dim ph As Integer
    Dim pname As String

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        picenvior.Top = Me.Height - (Me.Height / 5)
        picenvior.Left = 0
        picenvior.Height = Me.Height - picenvior.Top
        picenvior.Width = Me.Width
        picenvior.SendToBack()
        frachar.Top = 10
        frachar.Left = 10
        frachar.BringToFront()
        frachar.Height = Me.Height - 60
        frachar.Width = Me.Width - 40
        picbat.Height = frachar.Height - 30
        picbat.Width = (frachar.Width / 2) - 40
        picsup.Left = picbat.Left + picbat.Width + 40
        picsup.Height = frachar.Height - 30
        picsup.Width = (frachar.Width - picsup.Left) - 40
        picp1.Height = Me.Height / 3
        picp1.Width = Me.Width / 5
        picp1.Top = picenvior.Top - picp1.Height
        picp1.Left = 20
        picbot.Height = Me.Height / 3
        picbot.Width = Me.Width / 5
        picbot.Top = picenvior.Top - picbot.Height
        picbot.Left = Me.Width - picbot.Width - 20
        picp1a.Top = picp1.Top
        picp1a.Left = picp1.Left
        picp1a.Height = picp1.Height / 6
        picp1a.Width = picp1.Width / 3
        picp1.BringToFront()
        picbota.Top = picbot.Top
        picbota.Left = picbot.Left
        picbota.Height = picbot.Height / 6
        picbota.Width = picbot.Width / 3
        picbot.BringToFront()
    End Sub

    Private Sub cmdmain_Click(sender As Object, e As EventArgs) Handles cmdmain.Click
        Me.Hide()
        frmmain.Show()
    End Sub

    Private Sub picbat_Click(sender As Object, e As EventArgs) Handles picbat.Click
        picp1.Image = My.Resources.batman_stand_4
        picp1a.Image = My.Resources.boomerang
        picbot.Image = My.Resources.superman_stand_2
        picbota.Image = My.Resources.laser
        ch = 1
        ph = 200
        bh = 200
        pgbbot.Maximum = 200
        pgbbot.Minimum = 0
        pgbp1.Minimum = 200
        pgbp1.Minimum = 0
        pgbbot.Value = bh
        pgbp1.Value = ph
        MsgBox("Fight!!!")
        lblbh.Text = "Bot Health: " + bh.ToString
        lblph.Text = "Your Health: " + ph.ToString
        frachar.Visible = False
    End Sub

    Private Sub picsup_Click(sender As Object, e As EventArgs) Handles picsup.Click
        picp1.Image = My.Resources.superman_stand_1
        picp1a.Image = My.Resources.laser
        picbot.Image = My.Resources.batman_stand_1
        picbot.Image = My.Resources.boomerang
        ch = 2
        ph = 200
        bh = 200
        pgbbot.Maximum = 200
        pgbbot.Minimum = 0
        pgbp1.Minimum = 200
        pgbp1.Minimum = 0
        pgbbot.Value = bh
        pgbp1.Value = ph
        MsgBox("Fight!!!")
        lblbh.Text = "Bot Health: " + bh.ToString
        lblph.Text = "Your Health: " + ph.ToString
        frachar.Visible = False
    End Sub

    Private Sub frmsingle_KeyDown(sender As Object, e As KeyEventArgs) Handles Me.KeyDown
        Timer1.Enabled = True
        Timer2.Enabled = False
        If e.KeyCode = Keys.P Then
            frapause.Visible = True
            Timer1.Enabled = False
            Timer2.Enabled = True
        End If
        If e.KeyCode = Keys.Up Then
            psy = -10
            If ch = 1 Then
                up = 1
            End If
        ElseIf e.KeyCode = Keys.Down Then
            If ch <> 1 Then
                psy = 10
            End If
        End If
        If e.KeyCode = Keys.Right Then
            psx = 10
            dir = 1
            If ch = 1 Then
                picp1.Image = My.Resources.batman_walk_1
            Else
                picp1.Image = My.Resources.superman_walk_1
            End If
        ElseIf e.KeyCode = Keys.Left Then
            psx = -10
            dir = 2
            If ch = 1 Then
                picp1.Image = My.Resources.batman_walk_2
            Else
                picp1.Image = My.Resources.superman_walk_2
            End If
        End If
        If e.KeyCode = Keys.Z Then
            pa = 1
            If ch = 1 Then
                If dir = 1 Then
                    picp1.Image = My.Resources.batman_punch
                Else
                    picp1.Image = My.Resources.batman_punch_2
                End If
            Else
                If dir = 1 Then
                    picp1.Image = My.Resources.superman_punch
                Else
                    picp1.Image = My.Resources.superman_punch_2
                End If
            End If
        ElseIf e.KeyCode = Keys.X Then
            pa = 2
            picp1a.Left = picp1.Left
            picp1a.Top = picp1.Top
            If ch = 1 Then
                If dir = 1 Then
                    picp1.Image = My.Resources.batman_throw_1
                Else
                    picp1.Image = My.Resources.batman_throw_2
                End If
                picp1a.Image = My.Resources.boomerang
            Else
                If dir = 1 Then
                    picp1.Image = My.Resources.laser_vision
                Else
                    picp1.Image = My.Resources.laser_vision_2
                End If
                picp1a.Image = My.Resources.laser
            End If
        ElseIf e.KeyCode = Keys.C Then
            pa = 3
            picp1a.Left = picp1.Left
            picp1a.Top = picp1.Top
            If ch = 1 Then
                If dir = 1 Then
                    picp1.Image = My.Resources.batman_throw_1
                Else
                    picp1.Image = My.Resources.batman_throw_2
                End If
                picp1a.Image = My.Resources.kryptonite
            Else
                If dir = 1 Then
                    picp1.Image = My.Resources.superman_lifting
                    picp1a.Image = My.Resources.missile_1
                Else
                    picp1.Image = My.Resources.superman_lifting_2
                    picp1a.Image = My.Resources.missile_2
                End If
            End If
        End If
    End Sub

    Private Sub frmsingle_KeyUp(sender As Object, e As KeyEventArgs) Handles Me.KeyUp
        psx = 0
        If up <> 1 Then
            psy = 0
        End If
        If ch = 1 Then
            If dir = 1 Then
                picp1.Image = My.Resources.batman_stand_4
            Else
                picp1.Image = My.Resources.batman_stand_1
            End If
        Else
            If dir = 1 Then
                picp1.Image = My.Resources.superman_stand_1
            Else
                picp1.Image = My.Resources.superman_stand_2
            End If
        End If
    End Sub

    Private Sub frmsingle_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        botst = 1
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        picp1.Top = picp1.Top + psy
        picp1.Left = picp1.Left + psx
        If picp1.Left < 0 Then
            psx = 10
            If ch = 1 Then
                picp1.Image = My.Resources.batman_walk_1
            Else
                picp1.Image = My.Resources.superman_walk_1
            End If
        ElseIf picp1.Left > Me.Height Then
            psx = -10
            If ch = 1 Then
                picp1.Image = My.Resources.batman_walk_2
            Else
                picp1.Image = My.Resources.superman_walk_2
            End If
        End If
        If up = 1 Then
            If picp1.Top < Me.Height / 4 Then
                psy = 10
            End If
            If picp1.Top + picp1.Height > picenvior.Top Or picp1.Top + picp1.Height = picenvior.Top Then
                psy = 0
            End If
        End If
        If picp1.Left < picbot.Left - picbot.Width + 10 Then
            bsx = -10
            If ch = 1 Then
                picbot.Image = My.Resources.superman_walk_2
            Else
                picbot.Image = My.Resources.batman_walk_2
            End If
        ElseIf picp1.Left + picp1.Width > picbot.Left Then
            bsx = 10
            dir = 1
            If ch = 1 Then
                picbot.Image = My.Resources.superman_walk_1
            Else
                picbot.Image = My.Resources.batman_walk_1
            End If
        End If
        If picbot.Left < picp1.Left + picp1.Width And picp1.Left < picbot.Left + picbot.Width Then
            If picbot.Top < picp1.Top + picp1.Height And picp1.Top < picbot.Top + picbot.Height Then
                If pa <> 0 Then
                    Timer5.Enabled = True
                    Timer3.Enabled = False
                    ra = 0
                    If pa = 1 Then
                        If bh > 10 Then
                            bh = bh - 10
                        Else
                            bh = 0
                        End If
                        picbot.Left = Me.Width - picbot.Width
                        pgbbot.Value = bh
                    End If
                ElseIf pa = 0 Then
                    If botst <> 0 Then
                        Timer3.Enabled = True
                        picbota.Top = picbot.Top
                        If ra = 1 Then
                            If ch = 1 Then
                                If dir = 1 Then
                                    picbot.Image = My.Resources.superman_punch_2
                                Else
                                    picbot.Image = My.Resources.superman_punch
                                End If
                            Else
                                If dir = 1 Then
                                    picbot.Image = My.Resources.batman_punch_2
                                Else
                                    picbot.Image = My.Resources.batman_punch
                                End If
                            End If
                            If ph > 0 Then
                                ph = ph - 10
                            End If
                            picp1.Left = 0
                            picbot.Left = Me.Width / 2
                        ElseIf ra = 2 Then
                            Timer4.Enabled = True
                            If ch = 1 Then
                                If dir = 1 Then
                                    picbot.Image = My.Resources.laser_vision_2
                                Else
                                    picbot.Image = My.Resources.laser_vision
                                End If
                                picbota.Image = My.Resources.laser
                            Else
                                If dir = 1 Then
                                    picbot.Image = My.Resources.batman_throw_2
                                Else
                                    picbot.Image = My.Resources.batman_throw_1
                                End If
                                picbota.Image = My.Resources.boomerang
                            End If
                            picbot.Left = Me.Width - picbot.Width
                            picbota.Left = picbot.Left
                            picbot.Visible = True
                            botst = 0
                        ElseIf ra = 3 Then
                            Timer4.Enabled = True
                            If ch = 1 Then
                                If dir = 1 Then
                                    picbot.Image = My.Resources.superman_lifting_2
                                    picbota.Image = My.Resources.missile_2
                                Else
                                    picbot.Image = My.Resources.superman_lifting
                                    picbota.Image = My.Resources.missile_1
                                End If
                                picbot.Left = Me.Width - picbot.Width
                                picbot.Top = (Me.Height - picenvior.Height) - picbot.Height * 1.5
                                picbota.Top = picbot.Top
                                picbota.Left = picbot.Left
                            Else
                                If dir = 1 Then
                                    picbot.Image = My.Resources.batman_throw_2
                                Else
                                    picbot.Image = My.Resources.batman_throw_1
                                End If
                                picbota.Image = My.Resources.kryptonite
                                picbot.Left = Me.Width - picbot.Width
                                picbota.Top = picbot.Top
                                picbota.Left = picbot.Left
                            End If
                            picbota.Visible = True
                            botst = 0
                        End If
                        If ra <> 0 Then
                            Timer3.Enabled = False
                        End If
                    End If
                    End If
                End If
            End If
            If Timer4.Enabled = False Then
                picbota.Top = picbot.Top
                picbota.Left = picbot.Left
            End If
            If ph > 0 Or ph = 0 Or bh > 0 Or bh = 0 Then
                pgbp1.Value = ph
                pgbbot.Value = bh
            End If
            lblbh.Text = "Bot Health: " + bh.ToString
            lblph.Text = "Your Health: " + ph.ToString
            If botst <> 0 Then
                picbot.Top = picbot.Top + bsy
                picbot.Left = picbot.Left + bsx
            End If
    End Sub

    Private Sub cmdoptions_Click(sender As Object, e As EventArgs) Handles cmdoptions.Click
        Me.Hide()
        frmoptions.Show()
        Timer1.Enabled = False
        Timer2.Enabled = True
    End Sub

    Private Sub cmdplay_Click(sender As Object, e As EventArgs) Handles cmdplay.Click
        frapause.Visible = False
        Timer1.Enabled = True
        Timer2.Enabled = False
        Timer3.Enabled = False
        Timer4.Enabled = False
        Timer5.Enabled = True
        Timerd.Enabled = True
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        Randomize()
        ra = Int(Rnd() * 3) + 1
        basx = 0
        basy = 0
    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick
        If ra = 2 Then
            If picp1.Left < picbot.Left Then
                basx = -10
            ElseIf picp1.Left > picbot.Left Then
                basx = 10
            End If
            picbota.Left = picbota.Left + basx
            picbota.Visible = True
            If ch = 1 Then
                picbota.Image = My.Resources.laser
            Else
                picbota.Image = My.Resources.boomerang
            End If
            picbota.Top = picbot.Top
            If picbota.Left < picp1.Left + picp1.Width And picp1.Left < picbota.Left + picbota.Width Then
                If picbota.Top < picp1.Top + picp1.Height And picp1.Top < picbota.Top + picbota.Height Then
                    ra = 0
                    basx = 0
                    picbota.Image = My.Resources.boom
                    picbota.Height = picp1.Height
                    picbota.Width = picp1.Width
                    botst = 1
                    My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\explosion.wav",
        AudioPlayMode.Background)
                    Timer2.Enabled = True
                    Timer1.Enabled = False
                    If ph > 15 Then
                        ph = ph - 15
                    Else
                        ph = 0
                    End If
                    pgbp1.Value = ph
                    Timer4.Enabled = False
                End If
            End If
        ElseIf ra = 3 Then
            picbota.Visible = True
            If ch = 1 Then
                picbota.Image = My.Resources.missile_2
                basx = basx - 1
            Else
                picbota.Image = My.Resources.kryptonite
                If dir = 1 Then
                    basx = basx - 1
                Else
                    basx = basx + 1
                End If
            End If
            basy = -(Math.Tan(45) - ((2 * ((basx) ^ 2)) / (2 * (100) * (Math.Cos(45) ^ 2))))
            picbota.Left = picbota.Left + basx
            picbota.Top = picbota.Top + basy
            If picbota.Left < picp1.Left + picp1.Width And picp1.Left < picbota.Left + picbota.Width Then
                If picbota.Top < picp1.Top + picp1.Height And picp1.Top < picbota.Top + picbota.Height Then
                    ra = 0
                    basx = 0
                    picbota.Image = My.Resources.boom
                    picbota.Height = picp1.Height
                    picbota.Width = picp1.Width
                    botst = 1
                    My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\explosion.wav",
        AudioPlayMode.Background)
                    Timer2.Enabled = True
                    Timer1.Enabled = False
                    If ph > 20 Then
                        ph = ph - 20
                    Else
                        ph = 0
                    End If
                    pgbp1.Value = ph
                    Timer4.Enabled = False
                End If
            End If
        End If
        If picbota.Left > Me.Width Or picbota.Left < 0 Or picbota.Top < 0 Or picbota.Top > Me.Height Then
            basx = 0
            basy = 0
            picbota.Left = picbot.Left
            picbota.Top = picbot.Top
        End If
    End Sub

    Private Sub Timerd_Tick(sender As Object, e As EventArgs) Handles Timerd.Tick
        If ph = 0 And bh <> 0 Then
            Timerd.Enabled = False
            MsgBox("GAME OVER!!!" + vbCrLf + "You Lose")
        ElseIf bh = 0 And ph <> 0 Then
            Timerd.Enabled = False
            MsgBox("YOU WIN!!!")
            Timer1.Enabled = False
            Timer2.Enabled = True
            ph = 200
            bh = 200
            pgbbot.Value = bh
            pgbp1.Value = ph
            frachar.Visible = True
            Do While Len(pname) <> 3
                pname = UCase(Trim(InputBox("What is your name? (it must include 3 characters)", "Name", "ACE")))
            Loop
            frmscore.txtscores.Text = frmscore.txtscores.Text + vbCrLf + pname + " " + ph.ToString
            Dim oFile As System.IO.File
            Dim oWrite As System.IO.StreamWriter
            oWrite = oFile.CreateText("E:\arko\Computer Programming 2 projects\data\scores.txt")
            oWrite.WriteLine(frmscore.txtscores.Text)
            oWrite.Close()
        End If
    End Sub

    Private Sub Timer5_Tick(sender As Object, e As EventArgs) Handles Timer5.Tick
        If pa = 2 Then
            If picbot.Left < picp1.Left Then
                pasx = -10
            ElseIf picbot.Left > picp1.Left Then
                pasx = 10
            End If
            picp1a.Left = picp1a.Left + pasx
            picp1a.Visible = True
            If ch = 1 Then
                picp1a.Image = My.Resources.boomerang
            Else
                picp1a.Image = My.Resources.laser
            End If
            picp1a.Top = picp1.Top
            If picp1a.Left < picbot.Left + picbot.Width And picbot.Left < picp1a.Left + picp1a.Width Then
                If picp1a.Top < picbot.Top + picbot.Height And picbot.Top < picp1a.Top + picp1a.Height Then
                    pa = 0
                    pasx = 0
                    picp1a.Image = My.Resources.boom
                    picp1a.Height = picbot.Height
                    picp1a.Width = picbot.Width
                    botst = 1
                    My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\explosion.wav",
        AudioPlayMode.Background)
                    Timer2.Enabled = True
                    Timer1.Enabled = False
                    If bh > 15 Then
                        bh = bh - 15
                    Else
                        bh = 0
                    End If
                    pgbbot.Value = bh
                    Timer4.Enabled = False
                End If
            End If
        ElseIf pa = 3 Then
            picp1a.Visible = True
            If ch = 1 Then
                picp1a.Image = My.Resources.kryptonite
                pasx = pasx + 1
            Else
                picp1a.Image = My.Resources.missile_1
                If dir = 1 Then
                    pasx = pasx + 1
                Else
                    pasx = pasx - 1
                End If
            End If
            pasy = -(Math.Tan(45) - ((2 * ((basx) ^ 2)) / (2 * (100) * (Math.Cos(45) ^ 2))))
            picp1a.Left = picp1a.Left + pasx
            picp1a.Top = picp1a.Top + pasy
            If picp1a.Left < picbot.Left + picbot.Width And picbot.Left < picp1a.Left + picp1a.Width Then
                If picp1a.Top < picbot.Top + picbot.Height And picbot.Top < picp1a.Top + picp1a.Height Then
                    pa = 0
                    pasx = 0
                    picp1a.Image = My.Resources.boom
                    picp1a.Height = picbot.Height
                    picp1a.Width = picbot.Width
                    botst = 1
                    My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\data\explosion.wav",
        AudioPlayMode.Background)
                    Timer2.Enabled = True
                    Timer1.Enabled = False
                    If bh > 20 Then
                        bh = bh - 20
                    Else
                        bh = 0
                    End If
                    pgbbot.Value = ph
                    Timer4.Enabled = False
                End If
            End If
        End If
        If picp1a.Left > Me.Width Or picp1a.Left < 0 Or picp1a.Top < 0 Or picp1a.Top > Me.Height Then
            pasx = 0
            pasy = 0
            picp1a.Left = picp1.Left
            picp1a.Top = picp1.Top
            pa = 0
        End If
    End Sub
End Class