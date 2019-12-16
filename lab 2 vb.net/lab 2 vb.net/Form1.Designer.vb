<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Me.txtname = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtmajor = New System.Windows.Forms.TextBox()
        Me.cmdexit = New System.Windows.Forms.Button()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtphone = New System.Windows.Forms.TextBox()
        Me.cmdreset = New System.Windows.Forms.Button()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.txtout = New System.Windows.Forms.TextBox()
        Me.cmddisplay = New System.Windows.Forms.Button()
        Me.rndbred = New System.Windows.Forms.RadioButton()
        Me.rndbgreen = New System.Windows.Forms.RadioButton()
        Me.rndbblue = New System.Windows.Forms.RadioButton()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.rndbwhite = New System.Windows.Forms.RadioButton()
        Me.rndbgrey = New System.Windows.Forms.RadioButton()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.rndtgreen = New System.Windows.Forms.RadioButton()
        Me.rndtred = New System.Windows.Forms.RadioButton()
        Me.rndtwhite = New System.Windows.Forms.RadioButton()
        Me.rndtblack = New System.Windows.Forms.RadioButton()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.rndsnow = New System.Windows.Forms.RadioButton()
        Me.rndsun = New System.Windows.Forms.RadioButton()
        Me.picsnow = New System.Windows.Forms.PictureBox()
        Me.picsun = New System.Windows.Forms.PictureBox()
        Me.rtfout = New System.Windows.Forms.RichTextBox()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        CType(Me.picsnow, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.picsun, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'txtname
        '
        Me.txtname.Location = New System.Drawing.Point(53, 9)
        Me.txtname.Name = "txtname"
        Me.txtname.Size = New System.Drawing.Size(322, 20)
        Me.txtname.TabIndex = 0
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(12, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(35, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Name"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(12, 47)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(33, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Major"
        '
        'txtmajor
        '
        Me.txtmajor.Location = New System.Drawing.Point(51, 47)
        Me.txtmajor.Name = "txtmajor"
        Me.txtmajor.Size = New System.Drawing.Size(324, 20)
        Me.txtmajor.TabIndex = 3
        '
        'cmdexit
        '
        Me.cmdexit.Location = New System.Drawing.Point(391, 6)
        Me.cmdexit.Name = "cmdexit"
        Me.cmdexit.Size = New System.Drawing.Size(75, 23)
        Me.cmdexit.TabIndex = 4
        Me.cmdexit.Text = "Exit"
        Me.cmdexit.UseVisualStyleBackColor = True
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(12, 89)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(38, 13)
        Me.Label3.TabIndex = 5
        Me.Label3.Text = "Phone"
        '
        'txtphone
        '
        Me.txtphone.Location = New System.Drawing.Point(57, 89)
        Me.txtphone.Name = "txtphone"
        Me.txtphone.Size = New System.Drawing.Size(318, 20)
        Me.txtphone.TabIndex = 6
        '
        'cmdreset
        '
        Me.cmdreset.Location = New System.Drawing.Point(391, 37)
        Me.cmdreset.Name = "cmdreset"
        Me.cmdreset.Size = New System.Drawing.Size(75, 23)
        Me.cmdreset.TabIndex = 7
        Me.cmdreset.Text = "Reset"
        Me.cmdreset.UseVisualStyleBackColor = True
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(12, 120)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(42, 13)
        Me.Label4.TabIndex = 8
        Me.Label4.Text = "Results"
        '
        'txtout
        '
        Me.txtout.Location = New System.Drawing.Point(60, 117)
        Me.txtout.Multiline = True
        Me.txtout.Name = "txtout"
        Me.txtout.Size = New System.Drawing.Size(315, 117)
        Me.txtout.TabIndex = 9
        '
        'cmddisplay
        '
        Me.cmddisplay.Location = New System.Drawing.Point(391, 66)
        Me.cmddisplay.Name = "cmddisplay"
        Me.cmddisplay.Size = New System.Drawing.Size(75, 23)
        Me.cmddisplay.TabIndex = 10
        Me.cmddisplay.Text = "Display"
        Me.cmddisplay.UseVisualStyleBackColor = True
        '
        'rndbred
        '
        Me.rndbred.AutoSize = True
        Me.rndbred.Location = New System.Drawing.Point(6, 19)
        Me.rndbred.Name = "rndbred"
        Me.rndbred.Size = New System.Drawing.Size(45, 17)
        Me.rndbred.TabIndex = 11
        Me.rndbred.TabStop = True
        Me.rndbred.Text = "Red"
        Me.rndbred.UseVisualStyleBackColor = True
        '
        'rndbgreen
        '
        Me.rndbgreen.AutoSize = True
        Me.rndbgreen.Location = New System.Drawing.Point(6, 42)
        Me.rndbgreen.Name = "rndbgreen"
        Me.rndbgreen.Size = New System.Drawing.Size(54, 17)
        Me.rndbgreen.TabIndex = 12
        Me.rndbgreen.TabStop = True
        Me.rndbgreen.Text = "Green"
        Me.rndbgreen.UseVisualStyleBackColor = True
        '
        'rndbblue
        '
        Me.rndbblue.AutoSize = True
        Me.rndbblue.Location = New System.Drawing.Point(6, 65)
        Me.rndbblue.Name = "rndbblue"
        Me.rndbblue.Size = New System.Drawing.Size(46, 17)
        Me.rndbblue.TabIndex = 13
        Me.rndbblue.TabStop = True
        Me.rndbblue.Text = "Blue"
        Me.rndbblue.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.GroupBox1.Controls.Add(Me.rndbwhite)
        Me.GroupBox1.Controls.Add(Me.rndbgrey)
        Me.GroupBox1.Controls.Add(Me.rndbred)
        Me.GroupBox1.Controls.Add(Me.rndbblue)
        Me.GroupBox1.Controls.Add(Me.rndbgreen)
        Me.GroupBox1.Location = New System.Drawing.Point(391, 95)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(130, 139)
        Me.GroupBox1.TabIndex = 14
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Background Color"
        '
        'rndbwhite
        '
        Me.rndbwhite.AutoSize = True
        Me.rndbwhite.Location = New System.Drawing.Point(6, 107)
        Me.rndbwhite.Name = "rndbwhite"
        Me.rndbwhite.Size = New System.Drawing.Size(53, 17)
        Me.rndbwhite.TabIndex = 16
        Me.rndbwhite.TabStop = True
        Me.rndbwhite.Text = "White"
        Me.rndbwhite.UseVisualStyleBackColor = True
        '
        'rndbgrey
        '
        Me.rndbgrey.AutoSize = True
        Me.rndbgrey.Location = New System.Drawing.Point(6, 84)
        Me.rndbgrey.Name = "rndbgrey"
        Me.rndbgrey.Size = New System.Drawing.Size(47, 17)
        Me.rndbgrey.TabIndex = 14
        Me.rndbgrey.TabStop = True
        Me.rndbgrey.Text = "Gray"
        Me.rndbgrey.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.rndtgreen)
        Me.GroupBox2.Controls.Add(Me.rndtred)
        Me.GroupBox2.Controls.Add(Me.rndtwhite)
        Me.GroupBox2.Controls.Add(Me.rndtblack)
        Me.GroupBox2.Location = New System.Drawing.Point(391, 240)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(130, 118)
        Me.GroupBox2.TabIndex = 15
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Text Color"
        '
        'rndtgreen
        '
        Me.rndtgreen.AutoSize = True
        Me.rndtgreen.Location = New System.Drawing.Point(6, 88)
        Me.rndtgreen.Name = "rndtgreen"
        Me.rndtgreen.Size = New System.Drawing.Size(52, 17)
        Me.rndtgreen.TabIndex = 18
        Me.rndtgreen.TabStop = True
        Me.rndtgreen.Text = "green"
        Me.rndtgreen.UseVisualStyleBackColor = True
        '
        'rndtred
        '
        Me.rndtred.AutoSize = True
        Me.rndtred.Location = New System.Drawing.Point(6, 65)
        Me.rndtred.Name = "rndtred"
        Me.rndtred.Size = New System.Drawing.Size(40, 17)
        Me.rndtred.TabIndex = 17
        Me.rndtred.TabStop = True
        Me.rndtred.Text = "red"
        Me.rndtred.UseVisualStyleBackColor = True
        '
        'rndtwhite
        '
        Me.rndtwhite.AutoSize = True
        Me.rndtwhite.Location = New System.Drawing.Point(6, 42)
        Me.rndtwhite.Name = "rndtwhite"
        Me.rndtwhite.Size = New System.Drawing.Size(50, 17)
        Me.rndtwhite.TabIndex = 17
        Me.rndtwhite.TabStop = True
        Me.rndtwhite.Text = "white"
        Me.rndtwhite.UseVisualStyleBackColor = True
        '
        'rndtblack
        '
        Me.rndtblack.AutoSize = True
        Me.rndtblack.Location = New System.Drawing.Point(6, 19)
        Me.rndtblack.Name = "rndtblack"
        Me.rndtblack.Size = New System.Drawing.Size(51, 17)
        Me.rndtblack.TabIndex = 16
        Me.rndtblack.TabStop = True
        Me.rndtblack.Text = "black"
        Me.rndtblack.UseVisualStyleBackColor = True
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.rndsnow)
        Me.GroupBox3.Controls.Add(Me.rndsun)
        Me.GroupBox3.Location = New System.Drawing.Point(391, 364)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(130, 76)
        Me.GroupBox3.TabIndex = 16
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Weather"
        '
        'rndsnow
        '
        Me.rndsnow.AutoSize = True
        Me.rndsnow.Location = New System.Drawing.Point(6, 42)
        Me.rndsnow.Name = "rndsnow"
        Me.rndsnow.Size = New System.Drawing.Size(52, 17)
        Me.rndsnow.TabIndex = 1
        Me.rndsnow.TabStop = True
        Me.rndsnow.Text = "Snow"
        Me.rndsnow.UseVisualStyleBackColor = True
        '
        'rndsun
        '
        Me.rndsun.AutoSize = True
        Me.rndsun.Location = New System.Drawing.Point(6, 19)
        Me.rndsun.Name = "rndsun"
        Me.rndsun.Size = New System.Drawing.Size(44, 17)
        Me.rndsun.TabIndex = 0
        Me.rndsun.TabStop = True
        Me.rndsun.Text = "Sun"
        Me.rndsun.UseVisualStyleBackColor = True
        '
        'picsnow
        '
        Me.picsnow.Image = Global.lab_2_vb.net.My.Resources.Resources.snow
        Me.picsnow.InitialImage = CType(resources.GetObject("picsnow.InitialImage"), System.Drawing.Image)
        Me.picsnow.Location = New System.Drawing.Point(527, 9)
        Me.picsnow.Name = "picsnow"
        Me.picsnow.Size = New System.Drawing.Size(135, 131)
        Me.picsnow.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picsnow.TabIndex = 18
        Me.picsnow.TabStop = False
        Me.picsnow.Visible = False
        '
        'picsun
        '
        Me.picsun.Image = Global.lab_2_vb.net.My.Resources.Resources.sun
        Me.picsun.InitialImage = CType(resources.GetObject("picsun.InitialImage"), System.Drawing.Image)
        Me.picsun.Location = New System.Drawing.Point(527, 9)
        Me.picsun.Name = "picsun"
        Me.picsun.Size = New System.Drawing.Size(135, 131)
        Me.picsun.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picsun.TabIndex = 17
        Me.picsun.TabStop = False
        '
        'rtfout
        '
        Me.rtfout.Location = New System.Drawing.Point(60, 240)
        Me.rtfout.Name = "rtfout"
        Me.rtfout.Size = New System.Drawing.Size(315, 118)
        Me.rtfout.TabIndex = 20
        Me.rtfout.Text = ""
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSize = True
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.ClientSize = New System.Drawing.Size(764, 672)
        Me.Controls.Add(Me.rtfout)
        Me.Controls.Add(Me.picsnow)
        Me.Controls.Add(Me.picsun)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.cmddisplay)
        Me.Controls.Add(Me.txtout)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.cmdreset)
        Me.Controls.Add(Me.txtphone)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.cmdexit)
        Me.Controls.Add(Me.txtmajor)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.txtname)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        CType(Me.picsnow, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.picsun, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents txtname As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtmajor As System.Windows.Forms.TextBox
    Friend WithEvents cmdexit As System.Windows.Forms.Button
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtphone As System.Windows.Forms.TextBox
    Friend WithEvents cmdreset As System.Windows.Forms.Button
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtout As System.Windows.Forms.TextBox
    Friend WithEvents cmddisplay As System.Windows.Forms.Button
    Friend WithEvents rndbred As System.Windows.Forms.RadioButton
    Friend WithEvents rndbgreen As System.Windows.Forms.RadioButton
    Friend WithEvents rndbblue As System.Windows.Forms.RadioButton
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents rndbgrey As System.Windows.Forms.RadioButton
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents rndtred As System.Windows.Forms.RadioButton
    Friend WithEvents rndtwhite As System.Windows.Forms.RadioButton
    Friend WithEvents rndtblack As System.Windows.Forms.RadioButton
    Friend WithEvents rndbwhite As System.Windows.Forms.RadioButton
    Friend WithEvents rndtgreen As System.Windows.Forms.RadioButton
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents rndsnow As System.Windows.Forms.RadioButton
    Friend WithEvents rndsun As System.Windows.Forms.RadioButton
    Friend WithEvents picsun As System.Windows.Forms.PictureBox
    Friend WithEvents picsnow As System.Windows.Forms.PictureBox
    Friend WithEvents rtfout As System.Windows.Forms.RichTextBox

End Class
