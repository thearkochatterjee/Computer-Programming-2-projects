<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmsingle
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.frapause = New System.Windows.Forms.GroupBox()
        Me.cmdoptions = New System.Windows.Forms.Button()
        Me.cmdmain = New System.Windows.Forms.Button()
        Me.cmdplay = New System.Windows.Forms.Button()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.frachar = New System.Windows.Forms.GroupBox()
        Me.lblph = New System.Windows.Forms.Label()
        Me.lblbh = New System.Windows.Forms.Label()
        Me.pgbp1 = New System.Windows.Forms.ProgressBar()
        Me.pgbbot = New System.Windows.Forms.ProgressBar()
        Me.Timer3 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer4 = New System.Windows.Forms.Timer(Me.components)
        Me.picenvior = New System.Windows.Forms.PictureBox()
        Me.picbota = New System.Windows.Forms.PictureBox()
        Me.picp1a = New System.Windows.Forms.PictureBox()
        Me.picsup = New System.Windows.Forms.PictureBox()
        Me.picbat = New System.Windows.Forms.PictureBox()
        Me.picbot = New System.Windows.Forms.PictureBox()
        Me.picp1 = New System.Windows.Forms.PictureBox()
        Me.Timerd = New System.Windows.Forms.Timer(Me.components)
        Me.Timer5 = New System.Windows.Forms.Timer(Me.components)
        Me.frapause.SuspendLayout()
        Me.frachar.SuspendLayout()
        CType(Me.picenvior, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picbota, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picp1a, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picsup, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picbat, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picbot, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picp1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'frapause
        '
        Me.frapause.BackColor = System.Drawing.Color.Gray
        Me.frapause.Controls.Add(Me.cmdoptions)
        Me.frapause.Controls.Add(Me.cmdmain)
        Me.frapause.Controls.Add(Me.cmdplay)
        Me.frapause.Location = New System.Drawing.Point(249, 196)
        Me.frapause.Name = "frapause"
        Me.frapause.Size = New System.Drawing.Size(418, 117)
        Me.frapause.TabIndex = 1
        Me.frapause.TabStop = False
        Me.frapause.Text = "Pause"
        Me.frapause.Visible = False
        '
        'cmdoptions
        '
        Me.cmdoptions.Location = New System.Drawing.Point(87, 19)
        Me.cmdoptions.Name = "cmdoptions"
        Me.cmdoptions.Size = New System.Drawing.Size(75, 23)
        Me.cmdoptions.TabIndex = 2
        Me.cmdoptions.Text = "Options"
        Me.cmdoptions.UseVisualStyleBackColor = True
        '
        'cmdmain
        '
        Me.cmdmain.Location = New System.Drawing.Point(6, 52)
        Me.cmdmain.Name = "cmdmain"
        Me.cmdmain.Size = New System.Drawing.Size(75, 23)
        Me.cmdmain.TabIndex = 1
        Me.cmdmain.Text = "Main Menu"
        Me.cmdmain.UseVisualStyleBackColor = True
        '
        'cmdplay
        '
        Me.cmdplay.Location = New System.Drawing.Point(6, 23)
        Me.cmdplay.Name = "cmdplay"
        Me.cmdplay.Size = New System.Drawing.Size(75, 23)
        Me.cmdplay.TabIndex = 0
        Me.cmdplay.Text = "Play"
        Me.cmdplay.UseVisualStyleBackColor = True
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        '
        'Timer2
        '
        Me.Timer2.Enabled = True
        '
        'frachar
        '
        Me.frachar.BackColor = System.Drawing.Color.Gray
        Me.frachar.Controls.Add(Me.picsup)
        Me.frachar.Controls.Add(Me.picbat)
        Me.frachar.Location = New System.Drawing.Point(173, 65)
        Me.frachar.Name = "frachar"
        Me.frachar.Size = New System.Drawing.Size(418, 117)
        Me.frachar.TabIndex = 3
        Me.frachar.TabStop = False
        Me.frachar.Text = "Choose Character"
        '
        'lblph
        '
        Me.lblph.AutoSize = True
        Me.lblph.BackColor = System.Drawing.Color.Gray
        Me.lblph.Location = New System.Drawing.Point(9, 9)
        Me.lblph.Name = "lblph"
        Me.lblph.Size = New System.Drawing.Size(70, 13)
        Me.lblph.TabIndex = 7
        Me.lblph.Text = "Player Health"
        '
        'lblbh
        '
        Me.lblbh.AutoSize = True
        Me.lblbh.BackColor = System.Drawing.Color.Gray
        Me.lblbh.Location = New System.Drawing.Point(458, 9)
        Me.lblbh.Name = "lblbh"
        Me.lblbh.Size = New System.Drawing.Size(57, 13)
        Me.lblbh.TabIndex = 8
        Me.lblbh.Text = "Bot Health"
        '
        'pgbp1
        '
        Me.pgbp1.Location = New System.Drawing.Point(12, 25)
        Me.pgbp1.Name = "pgbp1"
        Me.pgbp1.Size = New System.Drawing.Size(267, 23)
        Me.pgbp1.TabIndex = 9
        '
        'pgbbot
        '
        Me.pgbbot.Location = New System.Drawing.Point(461, 25)
        Me.pgbbot.Name = "pgbbot"
        Me.pgbbot.Size = New System.Drawing.Size(260, 23)
        Me.pgbbot.TabIndex = 10
        '
        'Timer3
        '
        '
        'Timer4
        '
        '
        'picenvior
        '
        Me.picenvior.Image = Global.game.My.Resources.Resources.enviorment
        Me.picenvior.Location = New System.Drawing.Point(173, 327)
        Me.picenvior.Name = "picenvior"
        Me.picenvior.Size = New System.Drawing.Size(100, 50)
        Me.picenvior.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picenvior.TabIndex = 6
        Me.picenvior.TabStop = False
        '
        'picbota
        '
        Me.picbota.Location = New System.Drawing.Point(501, 319)
        Me.picbota.Name = "picbota"
        Me.picbota.Size = New System.Drawing.Size(100, 50)
        Me.picbota.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picbota.TabIndex = 5
        Me.picbota.TabStop = False
        Me.picbota.Visible = False
        '
        'picp1a
        '
        Me.picp1a.Location = New System.Drawing.Point(123, 188)
        Me.picp1a.Name = "picp1a"
        Me.picp1a.Size = New System.Drawing.Size(100, 50)
        Me.picp1a.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picp1a.TabIndex = 4
        Me.picp1a.TabStop = False
        '
        'picsup
        '
        Me.picsup.Image = Global.game.My.Resources.Resources.superman
        Me.picsup.Location = New System.Drawing.Point(312, 19)
        Me.picsup.Name = "picsup"
        Me.picsup.Size = New System.Drawing.Size(100, 50)
        Me.picsup.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picsup.TabIndex = 2
        Me.picsup.TabStop = False
        '
        'picbat
        '
        Me.picbat.Image = Global.game.My.Resources.Resources.batman
        Me.picbat.Location = New System.Drawing.Point(6, 19)
        Me.picbat.Name = "picbat"
        Me.picbat.Size = New System.Drawing.Size(100, 50)
        Me.picbat.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picbat.TabIndex = 1
        Me.picbat.TabStop = False
        '
        'picbot
        '
        Me.picbot.Location = New System.Drawing.Point(352, 319)
        Me.picbot.Name = "picbot"
        Me.picbot.Size = New System.Drawing.Size(100, 50)
        Me.picbot.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picbot.TabIndex = 2
        Me.picbot.TabStop = False
        '
        'picp1
        '
        Me.picp1.Location = New System.Drawing.Point(17, 188)
        Me.picp1.Name = "picp1"
        Me.picp1.Size = New System.Drawing.Size(100, 50)
        Me.picp1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picp1.TabIndex = 0
        Me.picp1.TabStop = False
        '
        'Timerd
        '
        Me.Timerd.Enabled = True
        Me.Timerd.Interval = 10
        '
        'Timer5
        '
        Me.Timer5.Enabled = True
        Me.Timer5.Interval = 50
        '
        'frmsingle
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(733, 442)
        Me.Controls.Add(Me.pgbbot)
        Me.Controls.Add(Me.pgbp1)
        Me.Controls.Add(Me.lblbh)
        Me.Controls.Add(Me.lblph)
        Me.Controls.Add(Me.picenvior)
        Me.Controls.Add(Me.picbota)
        Me.Controls.Add(Me.picp1a)
        Me.Controls.Add(Me.frachar)
        Me.Controls.Add(Me.picbot)
        Me.Controls.Add(Me.frapause)
        Me.Controls.Add(Me.picp1)
        Me.Name = "frmsingle"
        Me.Text = "Single Player"
        Me.frapause.ResumeLayout(False)
        Me.frachar.ResumeLayout(False)
        CType(Me.picenvior, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picbota, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picp1a, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picsup, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picbat, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picbot, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picp1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents picp1 As System.Windows.Forms.PictureBox
    Friend WithEvents frapause As System.Windows.Forms.GroupBox
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents Timer2 As System.Windows.Forms.Timer
    Friend WithEvents picbot As System.Windows.Forms.PictureBox
    Friend WithEvents frachar As System.Windows.Forms.GroupBox
    Friend WithEvents picp1a As System.Windows.Forms.PictureBox
    Friend WithEvents picbota As System.Windows.Forms.PictureBox
    Friend WithEvents picenvior As System.Windows.Forms.PictureBox
    Friend WithEvents picsup As System.Windows.Forms.PictureBox
    Friend WithEvents picbat As System.Windows.Forms.PictureBox
    Friend WithEvents cmdmain As System.Windows.Forms.Button
    Friend WithEvents cmdplay As System.Windows.Forms.Button
    Friend WithEvents cmdoptions As System.Windows.Forms.Button
    Friend WithEvents lblph As System.Windows.Forms.Label
    Friend WithEvents lblbh As System.Windows.Forms.Label
    Friend WithEvents pgbp1 As System.Windows.Forms.ProgressBar
    Friend WithEvents pgbbot As System.Windows.Forms.ProgressBar
    Friend WithEvents Timer3 As System.Windows.Forms.Timer
    Friend WithEvents Timer4 As System.Windows.Forms.Timer
    Friend WithEvents Timerd As System.Windows.Forms.Timer
    Friend WithEvents Timer5 As System.Windows.Forms.Timer
End Class
