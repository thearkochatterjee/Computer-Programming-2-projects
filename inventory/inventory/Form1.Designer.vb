<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmtech
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
        Me.cmdadd = New System.Windows.Forms.Button()
        Me.cmdsave = New System.Windows.Forms.Button()
        Me.cmdopen = New System.Windows.Forms.Button()
        Me.cmdexit = New System.Windows.Forms.Button()
        Me.rnd13in = New System.Windows.Forms.RadioButton()
        Me.pic1 = New System.Windows.Forms.PictureBox()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.rnd17in = New System.Windows.Forms.RadioButton()
        Me.rnd15in = New System.Windows.Forms.RadioButton()
        Me.txttin = New System.Windows.Forms.TextBox()
        Me.cbotype = New System.Windows.Forms.ComboBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cbobrand = New System.Windows.Forms.ComboBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.chkdrive = New System.Windows.Forms.CheckBox()
        Me.chkfirefox = New System.Windows.Forms.CheckBox()
        Me.chkremind = New System.Windows.Forms.CheckBox()
        Me.chkmusic = New System.Windows.Forms.CheckBox()
        Me.chkchrome = New System.Windows.Forms.CheckBox()
        Me.chkonenote = New System.Windows.Forms.CheckBox()
        Me.chkaudio = New System.Windows.Forms.CheckBox()
        Me.chkminecraft = New System.Windows.Forms.CheckBox()
        Me.chkvideo = New System.Windows.Forms.CheckBox()
        Me.chkexcel = New System.Windows.Forms.CheckBox()
        Me.chkppt = New System.Windows.Forms.CheckBox()
        Me.chkword = New System.Windows.Forms.CheckBox()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.rnd16gb = New System.Windows.Forms.RadioButton()
        Me.rnd12gb = New System.Windows.Forms.RadioButton()
        Me.rnd8gb = New System.Windows.Forms.RadioButton()
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.rnd600ppi = New System.Windows.Forms.RadioButton()
        Me.rnd500ppi = New System.Windows.Forms.RadioButton()
        Me.rnd400ppi = New System.Windows.Forms.RadioButton()
        Me.cmdchange = New System.Windows.Forms.Button()
        Me.lstdata = New System.Windows.Forms.ListBox()
        Me.txtdata = New System.Windows.Forms.TextBox()
        Me.cmdsaveas = New System.Windows.Forms.Button()
        Me.cboage = New System.Windows.Forms.ComboBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.cmddelete = New System.Windows.Forms.Button()
        Me.piccar = New System.Windows.Forms.PictureBox()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.cmdreset = New System.Windows.Forms.Button()
        Me.Label4 = New System.Windows.Forms.Label()
        CType(Me.pic1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        CType(Me.piccar, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'cmdadd
        '
        Me.cmdadd.Location = New System.Drawing.Point(489, 250)
        Me.cmdadd.Name = "cmdadd"
        Me.cmdadd.Size = New System.Drawing.Size(75, 23)
        Me.cmdadd.TabIndex = 0
        Me.cmdadd.Text = "Add"
        Me.cmdadd.UseVisualStyleBackColor = True
        '
        'cmdsave
        '
        Me.cmdsave.Location = New System.Drawing.Point(570, 308)
        Me.cmdsave.Name = "cmdsave"
        Me.cmdsave.Size = New System.Drawing.Size(75, 23)
        Me.cmdsave.TabIndex = 1
        Me.cmdsave.Text = "Save"
        Me.cmdsave.UseVisualStyleBackColor = True
        Me.cmdsave.Visible = False
        '
        'cmdopen
        '
        Me.cmdopen.Location = New System.Drawing.Point(570, 279)
        Me.cmdopen.Name = "cmdopen"
        Me.cmdopen.Size = New System.Drawing.Size(75, 23)
        Me.cmdopen.TabIndex = 2
        Me.cmdopen.Text = "Open"
        Me.cmdopen.UseVisualStyleBackColor = True
        '
        'cmdexit
        '
        Me.cmdexit.Location = New System.Drawing.Point(489, 221)
        Me.cmdexit.Name = "cmdexit"
        Me.cmdexit.Size = New System.Drawing.Size(75, 23)
        Me.cmdexit.TabIndex = 3
        Me.cmdexit.Text = "Exit"
        Me.cmdexit.UseVisualStyleBackColor = True
        '
        'rnd13in
        '
        Me.rnd13in.AutoSize = True
        Me.rnd13in.Location = New System.Drawing.Point(6, 19)
        Me.rnd13in.Name = "rnd13in"
        Me.rnd13in.Size = New System.Drawing.Size(45, 17)
        Me.rnd13in.TabIndex = 4
        Me.rnd13in.TabStop = True
        Me.rnd13in.Text = "13in"
        Me.rnd13in.UseVisualStyleBackColor = True
        '
        'pic1
        '
        Me.pic1.Location = New System.Drawing.Point(271, 164)
        Me.pic1.Name = "pic1"
        Me.pic1.Size = New System.Drawing.Size(159, 102)
        Me.pic1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pic1.TabIndex = 6
        Me.pic1.TabStop = False
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.rnd17in)
        Me.GroupBox1.Controls.Add(Me.rnd15in)
        Me.GroupBox1.Controls.Add(Me.rnd13in)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 55)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(100, 100)
        Me.GroupBox1.TabIndex = 7
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Monitor Size"
        '
        'rnd17in
        '
        Me.rnd17in.AutoSize = True
        Me.rnd17in.Location = New System.Drawing.Point(6, 65)
        Me.rnd17in.Name = "rnd17in"
        Me.rnd17in.Size = New System.Drawing.Size(45, 17)
        Me.rnd17in.TabIndex = 6
        Me.rnd17in.TabStop = True
        Me.rnd17in.Text = "17in"
        Me.rnd17in.UseVisualStyleBackColor = True
        '
        'rnd15in
        '
        Me.rnd15in.AutoSize = True
        Me.rnd15in.Location = New System.Drawing.Point(6, 42)
        Me.rnd15in.Name = "rnd15in"
        Me.rnd15in.Size = New System.Drawing.Size(45, 17)
        Me.rnd15in.TabIndex = 5
        Me.rnd15in.TabStop = True
        Me.rnd15in.Text = "15in"
        Me.rnd15in.UseVisualStyleBackColor = True
        '
        'txttin
        '
        Me.txttin.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txttin.Location = New System.Drawing.Point(271, 279)
        Me.txttin.Name = "txttin"
        Me.txttin.Size = New System.Drawing.Size(187, 22)
        Me.txttin.TabIndex = 8
        '
        'cbotype
        '
        Me.cbotype.FormattingEnabled = True
        Me.cbotype.Location = New System.Drawing.Point(12, 28)
        Me.cbotype.Name = "cbotype"
        Me.cbotype.Size = New System.Drawing.Size(121, 21)
        Me.cbotype.TabIndex = 9
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(12, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(40, 16)
        Me.Label1.TabIndex = 10
        Me.Label1.Text = "Type"
        '
        'cbobrand
        '
        Me.cbobrand.FormattingEnabled = True
        Me.cbobrand.Location = New System.Drawing.Point(139, 28)
        Me.cbobrand.Name = "cbobrand"
        Me.cbobrand.Size = New System.Drawing.Size(121, 21)
        Me.cbobrand.TabIndex = 11
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(136, 9)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(44, 16)
        Me.Label2.TabIndex = 12
        Me.Label2.Text = "Brand"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.chkdrive)
        Me.GroupBox2.Controls.Add(Me.chkfirefox)
        Me.GroupBox2.Controls.Add(Me.chkremind)
        Me.GroupBox2.Controls.Add(Me.chkmusic)
        Me.GroupBox2.Controls.Add(Me.chkchrome)
        Me.GroupBox2.Controls.Add(Me.chkonenote)
        Me.GroupBox2.Controls.Add(Me.chkaudio)
        Me.GroupBox2.Controls.Add(Me.chkminecraft)
        Me.GroupBox2.Controls.Add(Me.chkvideo)
        Me.GroupBox2.Controls.Add(Me.chkexcel)
        Me.GroupBox2.Controls.Add(Me.chkppt)
        Me.GroupBox2.Controls.Add(Me.chkword)
        Me.GroupBox2.Location = New System.Drawing.Point(15, 171)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(214, 160)
        Me.GroupBox2.TabIndex = 13
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Preinstalled Software"
        '
        'chkdrive
        '
        Me.chkdrive.AutoSize = True
        Me.chkdrive.Location = New System.Drawing.Point(86, 131)
        Me.chkdrive.Name = "chkdrive"
        Me.chkdrive.Size = New System.Drawing.Size(88, 17)
        Me.chkdrive.TabIndex = 26
        Me.chkdrive.Text = "Google Drive"
        Me.chkdrive.UseVisualStyleBackColor = True
        '
        'chkfirefox
        '
        Me.chkfirefox.AutoSize = True
        Me.chkfirefox.Location = New System.Drawing.Point(6, 131)
        Me.chkfirefox.Name = "chkfirefox"
        Me.chkfirefox.Size = New System.Drawing.Size(57, 17)
        Me.chkfirefox.TabIndex = 26
        Me.chkfirefox.Text = "Firefox"
        Me.chkfirefox.UseVisualStyleBackColor = True
        '
        'chkremind
        '
        Me.chkremind.AutoSize = True
        Me.chkremind.Location = New System.Drawing.Point(102, 108)
        Me.chkremind.Name = "chkremind"
        Me.chkremind.Size = New System.Drawing.Size(71, 17)
        Me.chkremind.TabIndex = 9
        Me.chkremind.Text = "Reminder"
        Me.chkremind.UseVisualStyleBackColor = True
        '
        'chkmusic
        '
        Me.chkmusic.AutoSize = True
        Me.chkmusic.Location = New System.Drawing.Point(6, 108)
        Me.chkmusic.Name = "chkmusic"
        Me.chkmusic.Size = New System.Drawing.Size(90, 17)
        Me.chkmusic.TabIndex = 8
        Me.chkmusic.Text = "Music PLayer"
        Me.chkmusic.UseVisualStyleBackColor = True
        '
        'chkchrome
        '
        Me.chkchrome.AutoSize = True
        Me.chkchrome.Location = New System.Drawing.Point(91, 85)
        Me.chkchrome.Name = "chkchrome"
        Me.chkchrome.Size = New System.Drawing.Size(62, 17)
        Me.chkchrome.TabIndex = 7
        Me.chkchrome.Text = "Chrome"
        Me.chkchrome.UseVisualStyleBackColor = True
        '
        'chkonenote
        '
        Me.chkonenote.AutoSize = True
        Me.chkonenote.Location = New System.Drawing.Point(91, 62)
        Me.chkonenote.Name = "chkonenote"
        Me.chkonenote.Size = New System.Drawing.Size(69, 17)
        Me.chkonenote.TabIndex = 6
        Me.chkonenote.Text = "OneNote"
        Me.chkonenote.UseVisualStyleBackColor = True
        '
        'chkaudio
        '
        Me.chkaudio.AutoSize = True
        Me.chkaudio.Location = New System.Drawing.Point(91, 39)
        Me.chkaudio.Name = "chkaudio"
        Me.chkaudio.Size = New System.Drawing.Size(83, 17)
        Me.chkaudio.TabIndex = 5
        Me.chkaudio.Text = "Audio Editor"
        Me.chkaudio.UseVisualStyleBackColor = True
        '
        'chkminecraft
        '
        Me.chkminecraft.AutoSize = True
        Me.chkminecraft.Location = New System.Drawing.Point(91, 19)
        Me.chkminecraft.Name = "chkminecraft"
        Me.chkminecraft.Size = New System.Drawing.Size(70, 17)
        Me.chkminecraft.TabIndex = 4
        Me.chkminecraft.Text = "Minecraft"
        Me.chkminecraft.UseVisualStyleBackColor = True
        '
        'chkvideo
        '
        Me.chkvideo.AutoSize = True
        Me.chkvideo.Location = New System.Drawing.Point(6, 85)
        Me.chkvideo.Name = "chkvideo"
        Me.chkvideo.Size = New System.Drawing.Size(83, 17)
        Me.chkvideo.TabIndex = 3
        Me.chkvideo.Text = "Video Editor"
        Me.chkvideo.UseVisualStyleBackColor = True
        '
        'chkexcel
        '
        Me.chkexcel.AutoSize = True
        Me.chkexcel.Location = New System.Drawing.Point(6, 62)
        Me.chkexcel.Name = "chkexcel"
        Me.chkexcel.Size = New System.Drawing.Size(52, 17)
        Me.chkexcel.TabIndex = 2
        Me.chkexcel.Text = "Excel"
        Me.chkexcel.UseVisualStyleBackColor = True
        '
        'chkppt
        '
        Me.chkppt.AutoSize = True
        Me.chkppt.Location = New System.Drawing.Point(6, 39)
        Me.chkppt.Name = "chkppt"
        Me.chkppt.Size = New System.Drawing.Size(79, 17)
        Me.chkppt.TabIndex = 1
        Me.chkppt.Text = "Powerpoint"
        Me.chkppt.UseVisualStyleBackColor = True
        '
        'chkword
        '
        Me.chkword.AutoSize = True
        Me.chkword.Location = New System.Drawing.Point(6, 16)
        Me.chkword.Name = "chkword"
        Me.chkword.Size = New System.Drawing.Size(52, 17)
        Me.chkword.TabIndex = 0
        Me.chkword.Text = "Word"
        Me.chkword.UseVisualStyleBackColor = True
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.rnd16gb)
        Me.GroupBox3.Controls.Add(Me.rnd12gb)
        Me.GroupBox3.Controls.Add(Me.rnd8gb)
        Me.GroupBox3.Location = New System.Drawing.Point(124, 55)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(105, 100)
        Me.GroupBox3.TabIndex = 14
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Amount of RAM"
        '
        'rnd16gb
        '
        Me.rnd16gb.AutoSize = True
        Me.rnd16gb.Location = New System.Drawing.Point(6, 65)
        Me.rnd16gb.Name = "rnd16gb"
        Me.rnd16gb.Size = New System.Drawing.Size(52, 17)
        Me.rnd16gb.TabIndex = 2
        Me.rnd16gb.TabStop = True
        Me.rnd16gb.Text = "16GB"
        Me.rnd16gb.UseVisualStyleBackColor = True
        '
        'rnd12gb
        '
        Me.rnd12gb.AutoSize = True
        Me.rnd12gb.Location = New System.Drawing.Point(6, 42)
        Me.rnd12gb.Name = "rnd12gb"
        Me.rnd12gb.Size = New System.Drawing.Size(52, 17)
        Me.rnd12gb.TabIndex = 1
        Me.rnd12gb.TabStop = True
        Me.rnd12gb.Text = "12GB"
        Me.rnd12gb.UseVisualStyleBackColor = True
        '
        'rnd8gb
        '
        Me.rnd8gb.AutoSize = True
        Me.rnd8gb.Location = New System.Drawing.Point(6, 19)
        Me.rnd8gb.Name = "rnd8gb"
        Me.rnd8gb.Size = New System.Drawing.Size(46, 17)
        Me.rnd8gb.TabIndex = 0
        Me.rnd8gb.TabStop = True
        Me.rnd8gb.Text = "8GB"
        Me.rnd8gb.UseVisualStyleBackColor = True
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.rnd600ppi)
        Me.GroupBox4.Controls.Add(Me.rnd500ppi)
        Me.GroupBox4.Controls.Add(Me.rnd400ppi)
        Me.GroupBox4.Location = New System.Drawing.Point(235, 52)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(184, 100)
        Me.GroupBox4.TabIndex = 15
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Graphics (pixels per square inch)"
        '
        'rnd600ppi
        '
        Me.rnd600ppi.AutoSize = True
        Me.rnd600ppi.Location = New System.Drawing.Point(6, 65)
        Me.rnd600ppi.Name = "rnd600ppi"
        Me.rnd600ppi.Size = New System.Drawing.Size(57, 17)
        Me.rnd600ppi.TabIndex = 18
        Me.rnd600ppi.TabStop = True
        Me.rnd600ppi.Text = "600ppi"
        Me.rnd600ppi.UseVisualStyleBackColor = True
        '
        'rnd500ppi
        '
        Me.rnd500ppi.AutoSize = True
        Me.rnd500ppi.Location = New System.Drawing.Point(6, 42)
        Me.rnd500ppi.Name = "rnd500ppi"
        Me.rnd500ppi.Size = New System.Drawing.Size(57, 17)
        Me.rnd500ppi.TabIndex = 17
        Me.rnd500ppi.TabStop = True
        Me.rnd500ppi.Text = "500ppi"
        Me.rnd500ppi.UseVisualStyleBackColor = True
        '
        'rnd400ppi
        '
        Me.rnd400ppi.AutoSize = True
        Me.rnd400ppi.Location = New System.Drawing.Point(6, 19)
        Me.rnd400ppi.Name = "rnd400ppi"
        Me.rnd400ppi.Size = New System.Drawing.Size(57, 17)
        Me.rnd400ppi.TabIndex = 16
        Me.rnd400ppi.TabStop = True
        Me.rnd400ppi.Text = "400ppi"
        Me.rnd400ppi.UseVisualStyleBackColor = True
        '
        'cmdchange
        '
        Me.cmdchange.Location = New System.Drawing.Point(489, 308)
        Me.cmdchange.Name = "cmdchange"
        Me.cmdchange.Size = New System.Drawing.Size(75, 23)
        Me.cmdchange.TabIndex = 16
        Me.cmdchange.Text = "Change"
        Me.cmdchange.UseVisualStyleBackColor = True
        '
        'lstdata
        '
        Me.lstdata.FormattingEnabled = True
        Me.lstdata.Location = New System.Drawing.Point(480, 25)
        Me.lstdata.Name = "lstdata"
        Me.lstdata.Size = New System.Drawing.Size(165, 173)
        Me.lstdata.TabIndex = 18
        '
        'txtdata
        '
        Me.txtdata.Location = New System.Drawing.Point(266, 323)
        Me.txtdata.Multiline = True
        Me.txtdata.Name = "txtdata"
        Me.txtdata.Size = New System.Drawing.Size(182, 23)
        Me.txtdata.TabIndex = 19
        Me.txtdata.Visible = False
        '
        'cmdsaveas
        '
        Me.cmdsaveas.Location = New System.Drawing.Point(489, 279)
        Me.cmdsaveas.Name = "cmdsaveas"
        Me.cmdsaveas.Size = New System.Drawing.Size(75, 23)
        Me.cmdsaveas.TabIndex = 20
        Me.cmdsaveas.Text = "Save As"
        Me.cmdsaveas.UseVisualStyleBackColor = True
        '
        'cboage
        '
        Me.cboage.FormattingEnabled = True
        Me.cboage.Location = New System.Drawing.Point(266, 28)
        Me.cboage.Name = "cboage"
        Me.cboage.Size = New System.Drawing.Size(121, 21)
        Me.cboage.TabIndex = 21
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(268, 9)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(33, 16)
        Me.Label3.TabIndex = 22
        Me.Label3.Text = "Age"
        '
        'cmddelete
        '
        Me.cmddelete.Location = New System.Drawing.Point(570, 250)
        Me.cmddelete.Name = "cmddelete"
        Me.cmddelete.Size = New System.Drawing.Size(75, 23)
        Me.cmddelete.TabIndex = 23
        Me.cmddelete.Text = "Delete"
        Me.cmddelete.UseVisualStyleBackColor = True
        '
        'piccar
        '
        Me.piccar.Image = Global.inventory.My.Resources.Resources.car
        Me.piccar.Location = New System.Drawing.Point(15, 337)
        Me.piccar.Name = "piccar"
        Me.piccar.Size = New System.Drawing.Size(100, 50)
        Me.piccar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.piccar.TabIndex = 24
        Me.piccar.TabStop = False
        '
        'Timer1
        '
        '
        'cmdreset
        '
        Me.cmdreset.Location = New System.Drawing.Point(570, 221)
        Me.cmdreset.Name = "cmdreset"
        Me.cmdreset.Size = New System.Drawing.Size(75, 23)
        Me.cmdreset.TabIndex = 25
        Me.cmdreset.Text = "Reset"
        Me.cmdreset.UseVisualStyleBackColor = True
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(238, 279)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(28, 13)
        Me.Label4.TabIndex = 26
        Me.Label4.Text = "TIN:"
        '
        'frmtech
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSize = True
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(657, 606)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.cmdreset)
        Me.Controls.Add(Me.piccar)
        Me.Controls.Add(Me.cmddelete)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.cboage)
        Me.Controls.Add(Me.cmdsaveas)
        Me.Controls.Add(Me.txtdata)
        Me.Controls.Add(Me.lstdata)
        Me.Controls.Add(Me.cmdchange)
        Me.Controls.Add(Me.GroupBox4)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.cbobrand)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.cbotype)
        Me.Controls.Add(Me.txttin)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.pic1)
        Me.Controls.Add(Me.cmdexit)
        Me.Controls.Add(Me.cmdopen)
        Me.Controls.Add(Me.cmdsave)
        Me.Controls.Add(Me.cmdadd)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Name = "frmtech"
        Me.Text = "Computer Inventory"
        CType(Me.pic1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox4.PerformLayout()
        CType(Me.piccar, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents cmdadd As System.Windows.Forms.Button
    Friend WithEvents cmdsave As System.Windows.Forms.Button
    Friend WithEvents cmdopen As System.Windows.Forms.Button
    Friend WithEvents cmdexit As System.Windows.Forms.Button
    Friend WithEvents rnd13in As System.Windows.Forms.RadioButton
    Friend WithEvents pic1 As System.Windows.Forms.PictureBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents txttin As System.Windows.Forms.TextBox
    Friend WithEvents cbotype As System.Windows.Forms.ComboBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cbobrand As System.Windows.Forms.ComboBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents rnd17in As System.Windows.Forms.RadioButton
    Friend WithEvents rnd15in As System.Windows.Forms.RadioButton
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents chkppt As System.Windows.Forms.CheckBox
    Friend WithEvents chkword As System.Windows.Forms.CheckBox
    Friend WithEvents chkminecraft As System.Windows.Forms.CheckBox
    Friend WithEvents chkvideo As System.Windows.Forms.CheckBox
    Friend WithEvents chkexcel As System.Windows.Forms.CheckBox
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents rnd16gb As System.Windows.Forms.RadioButton
    Friend WithEvents rnd12gb As System.Windows.Forms.RadioButton
    Friend WithEvents rnd8gb As System.Windows.Forms.RadioButton
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents rnd600ppi As System.Windows.Forms.RadioButton
    Friend WithEvents rnd500ppi As System.Windows.Forms.RadioButton
    Friend WithEvents rnd400ppi As System.Windows.Forms.RadioButton
    Friend WithEvents cmdchange As System.Windows.Forms.Button
    Friend WithEvents chkchrome As System.Windows.Forms.CheckBox
    Friend WithEvents chkonenote As System.Windows.Forms.CheckBox
    Friend WithEvents chkaudio As System.Windows.Forms.CheckBox
    Friend WithEvents lstdata As System.Windows.Forms.ListBox
    Friend WithEvents txtdata As System.Windows.Forms.TextBox
    Friend WithEvents cmdsaveas As System.Windows.Forms.Button
    Friend WithEvents cboage As System.Windows.Forms.ComboBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents cmddelete As System.Windows.Forms.Button
    Friend WithEvents piccar As System.Windows.Forms.PictureBox
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents cmdreset As System.Windows.Forms.Button
    Friend WithEvents chkmusic As System.Windows.Forms.CheckBox
    Friend WithEvents chkremind As System.Windows.Forms.CheckBox
    Friend WithEvents chkfirefox As System.Windows.Forms.CheckBox
    Friend WithEvents chkdrive As System.Windows.Forms.CheckBox
    Friend WithEvents Label4 As System.Windows.Forms.Label

End Class
