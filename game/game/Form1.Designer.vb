<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmmain
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
        Me.cmdsingle = New System.Windows.Forms.Button()
        Me.cmdmulti = New System.Windows.Forms.Button()
        Me.cmdoptions = New System.Windows.Forms.Button()
        Me.cmdscore = New System.Windows.Forms.Button()
        Me.cmdquit = New System.Windows.Forms.Button()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.pic1 = New System.Windows.Forms.PictureBox()
        Me.cmdplayt = New System.Windows.Forms.Button()
        Me.pict = New System.Windows.Forms.PictureBox()
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        CType(Me.pic1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pict, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'cmdsingle
        '
        Me.cmdsingle.Location = New System.Drawing.Point(12, 253)
        Me.cmdsingle.Name = "cmdsingle"
        Me.cmdsingle.Size = New System.Drawing.Size(75, 23)
        Me.cmdsingle.TabIndex = 0
        Me.cmdsingle.Text = "Single"
        Me.cmdsingle.UseVisualStyleBackColor = True
        '
        'cmdmulti
        '
        Me.cmdmulti.Location = New System.Drawing.Point(12, 282)
        Me.cmdmulti.Name = "cmdmulti"
        Me.cmdmulti.Size = New System.Drawing.Size(75, 23)
        Me.cmdmulti.TabIndex = 2
        Me.cmdmulti.Text = "Multi"
        Me.cmdmulti.UseVisualStyleBackColor = True
        Me.cmdmulti.Visible = False
        '
        'cmdoptions
        '
        Me.cmdoptions.Location = New System.Drawing.Point(12, 311)
        Me.cmdoptions.Name = "cmdoptions"
        Me.cmdoptions.Size = New System.Drawing.Size(75, 23)
        Me.cmdoptions.TabIndex = 3
        Me.cmdoptions.Text = "Options"
        Me.cmdoptions.UseVisualStyleBackColor = True
        '
        'cmdscore
        '
        Me.cmdscore.Location = New System.Drawing.Point(12, 340)
        Me.cmdscore.Name = "cmdscore"
        Me.cmdscore.Size = New System.Drawing.Size(75, 23)
        Me.cmdscore.TabIndex = 4
        Me.cmdscore.Text = "Score"
        Me.cmdscore.UseVisualStyleBackColor = True
        '
        'cmdquit
        '
        Me.cmdquit.Location = New System.Drawing.Point(12, 369)
        Me.cmdquit.Name = "cmdquit"
        Me.cmdquit.Size = New System.Drawing.Size(75, 23)
        Me.cmdquit.TabIndex = 5
        Me.cmdquit.Text = "Quit"
        Me.cmdquit.UseVisualStyleBackColor = True
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 10
        '
        'pic1
        '
        Me.pic1.Image = Global.game.My.Resources.Resources.main
        Me.pic1.Location = New System.Drawing.Point(258, 50)
        Me.pic1.Name = "pic1"
        Me.pic1.Size = New System.Drawing.Size(262, 185)
        Me.pic1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pic1.TabIndex = 1
        Me.pic1.TabStop = False
        '
        'cmdplayt
        '
        Me.cmdplayt.Location = New System.Drawing.Point(12, 224)
        Me.cmdplayt.Name = "cmdplayt"
        Me.cmdplayt.Size = New System.Drawing.Size(75, 23)
        Me.cmdplayt.TabIndex = 6
        Me.cmdplayt.Text = "Play"
        Me.cmdplayt.UseVisualStyleBackColor = True
        '
        'pict
        '
        Me.pict.Location = New System.Drawing.Point(527, -1)
        Me.pict.Name = "pict"
        Me.pict.Size = New System.Drawing.Size(100, 50)
        Me.pict.TabIndex = 7
        Me.pict.TabStop = False
        '
        'Timer2
        '
        Me.Timer2.Interval = 200
        '
        'frmmain
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.ActiveBorder
        Me.ClientSize = New System.Drawing.Size(622, 404)
        Me.Controls.Add(Me.pict)
        Me.Controls.Add(Me.cmdplayt)
        Me.Controls.Add(Me.cmdquit)
        Me.Controls.Add(Me.cmdscore)
        Me.Controls.Add(Me.cmdoptions)
        Me.Controls.Add(Me.cmdmulti)
        Me.Controls.Add(Me.pic1)
        Me.Controls.Add(Me.cmdsingle)
        Me.Name = "frmmain"
        Me.Text = "Batman vs Superman"
        CType(Me.pic1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pict, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents cmdsingle As System.Windows.Forms.Button
    Friend WithEvents pic1 As System.Windows.Forms.PictureBox
    Friend WithEvents cmdmulti As System.Windows.Forms.Button
    Friend WithEvents cmdoptions As System.Windows.Forms.Button
    Friend WithEvents cmdscore As System.Windows.Forms.Button
    Friend WithEvents cmdquit As System.Windows.Forms.Button
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents cmdplayt As System.Windows.Forms.Button
    Friend WithEvents pict As System.Windows.Forms.PictureBox
    Friend WithEvents Timer2 As System.Windows.Forms.Timer

End Class
