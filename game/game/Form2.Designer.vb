<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmmulti
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
        Me.frachar = New System.Windows.Forms.GroupBox()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.txtplayer = New System.Windows.Forms.TextBox()
        Me.picenvior = New System.Windows.Forms.PictureBox()
        Me.picp2 = New System.Windows.Forms.PictureBox()
        Me.picp1 = New System.Windows.Forms.PictureBox()
        Me.picsup = New System.Windows.Forms.PictureBox()
        Me.picbat = New System.Windows.Forms.PictureBox()
        Me.cmdplay = New System.Windows.Forms.Button()
        Me.cmdmain = New System.Windows.Forms.Button()
        Me.picp1a = New System.Windows.Forms.PictureBox()
        Me.picp2a = New System.Windows.Forms.PictureBox()
        Me.frapause.SuspendLayout()
        Me.frachar.SuspendLayout()
        CType(Me.picenvior, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picp2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picp1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picsup, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picbat, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picp1a, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picp2a, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'frapause
        '
        Me.frapause.BackColor = System.Drawing.Color.Gray
        Me.frapause.Controls.Add(Me.cmdmain)
        Me.frapause.Controls.Add(Me.cmdplay)
        Me.frapause.Location = New System.Drawing.Point(461, 12)
        Me.frapause.Name = "frapause"
        Me.frapause.Size = New System.Drawing.Size(200, 100)
        Me.frapause.TabIndex = 0
        Me.frapause.TabStop = False
        Me.frapause.Text = "Pause"
        Me.frapause.Visible = False
        '
        'frachar
        '
        Me.frachar.BackColor = System.Drawing.Color.Gray
        Me.frachar.Controls.Add(Me.picsup)
        Me.frachar.Controls.Add(Me.picbat)
        Me.frachar.Location = New System.Drawing.Point(408, 118)
        Me.frachar.Name = "frachar"
        Me.frachar.Size = New System.Drawing.Size(253, 100)
        Me.frachar.TabIndex = 1
        Me.frachar.TabStop = False
        Me.frachar.Text = "Choose Character"
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        '
        'Timer2
        '
        Me.Timer2.Enabled = True
        '
        'txtplayer
        '
        Me.txtplayer.Location = New System.Drawing.Point(172, 12)
        Me.txtplayer.Multiline = True
        Me.txtplayer.Name = "txtplayer"
        Me.txtplayer.Size = New System.Drawing.Size(136, 60)
        Me.txtplayer.TabIndex = 4
        Me.txtplayer.Visible = False
        '
        'picenvior
        '
        Me.picenvior.Image = Global.game.My.Resources.Resources.enviorment
        Me.picenvior.Location = New System.Drawing.Point(158, 374)
        Me.picenvior.Name = "picenvior"
        Me.picenvior.Size = New System.Drawing.Size(100, 50)
        Me.picenvior.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picenvior.TabIndex = 5
        Me.picenvior.TabStop = False
        '
        'picp2
        '
        Me.picp2.Location = New System.Drawing.Point(282, 96)
        Me.picp2.Name = "picp2"
        Me.picp2.Size = New System.Drawing.Size(100, 50)
        Me.picp2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picp2.TabIndex = 3
        Me.picp2.TabStop = False
        '
        'picp1
        '
        Me.picp1.Location = New System.Drawing.Point(30, 75)
        Me.picp1.Name = "picp1"
        Me.picp1.Size = New System.Drawing.Size(100, 50)
        Me.picp1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picp1.TabIndex = 2
        Me.picp1.TabStop = False
        '
        'picsup
        '
        Me.picsup.Image = Global.game.My.Resources.Resources.superman
        Me.picsup.Location = New System.Drawing.Point(112, 19)
        Me.picsup.Name = "picsup"
        Me.picsup.Size = New System.Drawing.Size(100, 50)
        Me.picsup.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picsup.TabIndex = 5
        Me.picsup.TabStop = False
        '
        'picbat
        '
        Me.picbat.Image = Global.game.My.Resources.Resources.batman
        Me.picbat.Location = New System.Drawing.Point(6, 19)
        Me.picbat.Name = "picbat"
        Me.picbat.Size = New System.Drawing.Size(100, 50)
        Me.picbat.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picbat.TabIndex = 4
        Me.picbat.TabStop = False
        '
        'cmdplay
        '
        Me.cmdplay.Location = New System.Drawing.Point(3, 16)
        Me.cmdplay.Name = "cmdplay"
        Me.cmdplay.Size = New System.Drawing.Size(75, 23)
        Me.cmdplay.TabIndex = 0
        Me.cmdplay.Text = "Play"
        Me.cmdplay.UseVisualStyleBackColor = True
        '
        'cmdmain
        '
        Me.cmdmain.Location = New System.Drawing.Point(3, 45)
        Me.cmdmain.Name = "cmdmain"
        Me.cmdmain.Size = New System.Drawing.Size(75, 23)
        Me.cmdmain.TabIndex = 1
        Me.cmdmain.Text = "Main Menu"
        Me.cmdmain.UseVisualStyleBackColor = True
        '
        'picp1a
        '
        Me.picp1a.Location = New System.Drawing.Point(240, 214)
        Me.picp1a.Name = "picp1a"
        Me.picp1a.Size = New System.Drawing.Size(100, 50)
        Me.picp1a.TabIndex = 6
        Me.picp1a.TabStop = False
        '
        'picp2a
        '
        Me.picp2a.Location = New System.Drawing.Point(123, 191)
        Me.picp2a.Name = "picp2a"
        Me.picp2a.Size = New System.Drawing.Size(100, 50)
        Me.picp2a.TabIndex = 7
        Me.picp2a.TabStop = False
        '
        'frmmulti
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(673, 436)
        Me.Controls.Add(Me.picp2a)
        Me.Controls.Add(Me.picp1a)
        Me.Controls.Add(Me.picenvior)
        Me.Controls.Add(Me.txtplayer)
        Me.Controls.Add(Me.picp2)
        Me.Controls.Add(Me.picp1)
        Me.Controls.Add(Me.frachar)
        Me.Controls.Add(Me.frapause)
        Me.Name = "frmmulti"
        Me.Text = "Multi-Player"
        Me.frapause.ResumeLayout(False)
        Me.frachar.ResumeLayout(False)
        CType(Me.picenvior, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picp2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picp1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picsup, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picbat, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picp1a, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picp2a, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents frapause As System.Windows.Forms.GroupBox
    Friend WithEvents frachar As System.Windows.Forms.GroupBox
    Friend WithEvents picsup As System.Windows.Forms.PictureBox
    Friend WithEvents picbat As System.Windows.Forms.PictureBox
    Friend WithEvents picp1 As System.Windows.Forms.PictureBox
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents Timer2 As System.Windows.Forms.Timer
    Friend WithEvents picp2 As System.Windows.Forms.PictureBox
    Friend WithEvents txtplayer As System.Windows.Forms.TextBox
    Friend WithEvents picenvior As System.Windows.Forms.PictureBox
    Friend WithEvents cmdmain As System.Windows.Forms.Button
    Friend WithEvents cmdplay As System.Windows.Forms.Button
    Friend WithEvents picp1a As System.Windows.Forms.PictureBox
    Friend WithEvents picp2a As System.Windows.Forms.PictureBox
End Class
