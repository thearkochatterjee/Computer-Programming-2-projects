Public Class frmmulti
    Dim pc As Integer
    Structure stat
        Dim posl As Double
        Dim post As Double
        Dim attack As Integer
        Dim ch As Integer
        Dim health As Integer
    End Structure
    Dim pstat As stat
    Dim dir As Integer

    Private Sub frmmulti_KeyDown(sender As Object, e As KeyEventArgs) Handles Me.KeyDown
        Timer2.Enabled = False
        Timer1.Enabled = True
        If e.KeyCode = Keys.P Then
            frapause.Visible = True
            Timer1.Enabled = False
            Timer2.Enabled = True
        End If
        If e.KeyCode = Keys.Z Then
            pstat.attack = 1
            If pc = 1 Then
                If pstat.ch = 1 Then
                    picp1.Image = My.Resources.batman_punch
                Else
                    picp1.Image = My.Resources.superman_punch
                End If
                If picp2.Left < picp1.Left + picp1.Width And picp1.Left < picp2.Left + picp2.Width Then
                    If picp2.Top < picp1.Top + picp1.Height And picp1.Top < picp2.Top + picp2.Height Then
                        pstat.health = pstat.health - 10
                    End If
                End If
            Else
                If pstat.ch = 1 Then
                    picp2.Image = My.Resources.batman_punch
                Else
                    picp2.Image = My.Resources.superman_punch
                End If
                If picp1.Left < picp2.Left + picp2.Width And picp2.Left < picp1.Left + picp1.Width Then
                    If picp1.Top < picp2.Top + picp2.Height And picp2.Top < picp1.Top + picp1.Height Then
                        pstat.health = pstat.health - 10
                    End If
                End If
            End If
        ElseIf e.KeyCode = Keys.X Then
            pstat.attack = 2
        ElseIf e.KeyCode = Keys.C Then
            pstat.attack = 3
        End If
        If e.KeyCode = Keys.Up Then

        ElseIf e.KeyCode = Keys.Down Then

        End If
        If e.KeyCode = Keys.Right Then
            If pc = 1 And pstat.ch = 1 Then
                picp1.Image = My.Resources.batman_walk_1
            ElseIf pc = 2 And pstat.ch = 1 Then
                picp2.Image = My.Resources.batman_walk_1
            End If
            Dir = 1
        ElseIf e.KeyCode = Keys.Left Then
            If pc = 1 And pstat.ch = 1 Then
                picp1.Image = My.Resources.batman_walk_2
            ElseIf pc = 2 And pstat.ch = 1 Then
                picp2.Image = My.Resources.batman_walk_2
            End If
            Dir = 2
        End If
        txtplayer.Text = pstat.ch.ToString + vbCrLf + pstat.posl.ToString + vbCrLf + pstat.post.ToString + vbCrLf + pstat.attack.ToString + vbCrLf + pstat.health.ToString
    End Sub

    Private Sub frmmulti_KeyUp(sender As Object, e As KeyEventArgs) Handles Me.KeyUp
        If pstat.ch = 1 Then
            If pc = 1 Then
                If dir = 1 Then
                    picp1.Image = My.Resources.batman_stand_4
                Else
                    picp1.Image = My.Resources.batman_stand_1
                End If
            Else
                If dir = 1 Then
                    picp2.Image = My.Resources.batman_stand_4
                Else
                    picp2.Image = My.Resources.batman_stand_1
                End If
            End If
        Else
            If pc = 1 Then
                If dir = 1 Then
                    picp1.Image = My.Resources.superman_stand_1
                Else
                    picp1.Image = My.Resources.superman_stand_2
                End If
            Else
                If dir = 1 Then
                    picp2.Image = My.Resources.superman_stand_1
                Else
                    picp2.Image = My.Resources.superman_stand_2
                End If
            End If
        End If
        pstat.attack = 0
        txtplayer.Text = pstat.ch.ToString + vbCrLf + pstat.posl.ToString + vbCrLf + pstat.post.ToString + vbCrLf + pstat.attack.ToString + vbCrLf + pstat.health.ToString
    End Sub

    Private Sub frmmulti_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        pstat.health = 100
    End Sub

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
        picp2.Height = Me.Height / 3
        picp2.Width = Me.Width / 5
        picp2.Top = picenvior.Top - picp2.Height
        picp2.Left = Me.Width - picp2.Width - 20
        picp1a.Top = picp1.Top
        picp1a.Left = picp1.Left
        picp1a.Height = picp1.Height / 6
        picp1a.Width = picp1.Width / 3
        picp1.BringToFront()
        picp2a.Top = picp2.Top
        picp2a.Left = picp2.Left
        picp2a.Height = picp2.Height / 6
        picp2a.Width = picp2.Width / 3
        picp2.BringToFront()
    End Sub

    Private Sub picbat_Click(sender As Object, e As EventArgs) Handles picbat.Click
        pc = Val(InputBox("Which player are you?(1 or 2)", "Player choose", "1"))
        pstat.ch = 1
        If pc = 1 Then
            picp1.Image = My.Resources.batman_stand_4
            picp1a.Image = My.Resources.boomerang
            pstat.posl = picp1.Left
            pstat.post = picp1.Top
        Else
            picp2.Image = My.Resources.batman_stand_1
            picp2a.Image = My.Resources.boomerang
            pstat.posl = picp2.Left
            pstat.post = picp2.Top
        End If
        frachar.Visible = False
        txtplayer.Text = pstat.ch.ToString + vbCrLf + pstat.posl.ToString + vbCrLf + pstat.post.ToString + vbCrLf + pstat.attack.ToString + vbCrLf + pstat.health.ToString
    End Sub

    Private Sub picsup_Click(sender As Object, e As EventArgs) Handles picsup.Click
        pc = Val(InputBox("Which player are you?(1 or 2)", "Player choose", "1"))
        pstat.ch = 2
        If pc = 1 Then
            picp1.Image = My.Resources.superman_stand_1
            picp1a.Image = My.Resources.laser
            pstat.posl = picp1.Left
            pstat.post = picp1.Top
        Else
            picp2.Image = My.Resources.superman_stand_2
            picp2a.Image = My.Resources.laser
            pstat.posl = picp2.Left
            pstat.post = picp2.Top
        End If
        frachar.Visible = False
        txtplayer.Text = pstat.ch.ToString + vbCrLf + pstat.posl.ToString + vbCrLf + pstat.post.ToString + vbCrLf + pstat.attack.ToString + vbCrLf + pstat.health.ToString
    End Sub

    Private Sub cmdmain_Click(sender As Object, e As EventArgs) Handles cmdmain.Click
        frmmain.Show()
        Me.Hide()
    End Sub

    Private Sub cmdplay_Click(sender As Object, e As EventArgs) Handles cmdplay.Click
        Timer1.Enabled = True
        Timer2.Enabled = False
        frapause.Visible = False
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        
    End Sub
End Class