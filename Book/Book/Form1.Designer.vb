<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmbook
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
        Me.cmdaddr = New System.Windows.Forms.Button()
        Me.lstreaders = New System.Windows.Forms.ListBox()
        Me.cmdopen = New System.Windows.Forms.Button()
        Me.txtreader = New System.Windows.Forms.TextBox()
        Me.lstbook = New System.Windows.Forms.ListBox()
        Me.cmdaddb = New System.Windows.Forms.Button()
        Me.cmdexit = New System.Windows.Forms.Button()
        Me.lstratings = New System.Windows.Forms.ListBox()
        Me.picbook = New System.Windows.Forms.PictureBox()
        Me.lstm1 = New System.Windows.Forms.ListBox()
        Me.lstm2 = New System.Windows.Forms.ListBox()
        Me.lstm3 = New System.Windows.Forms.ListBox()
        Me.lstbr = New System.Windows.Forms.ListBox()
        Me.lstm4 = New System.Windows.Forms.ListBox()
        Me.cmdchange = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtbook = New System.Windows.Forms.TextBox()
        CType(Me.picbook, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'cmdaddr
        '
        Me.cmdaddr.Location = New System.Drawing.Point(12, 12)
        Me.cmdaddr.Name = "cmdaddr"
        Me.cmdaddr.Size = New System.Drawing.Size(75, 23)
        Me.cmdaddr.TabIndex = 0
        Me.cmdaddr.Text = "Add Reader"
        Me.cmdaddr.UseVisualStyleBackColor = True
        '
        'lstreaders
        '
        Me.lstreaders.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.lstreaders.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lstreaders.ForeColor = System.Drawing.Color.Teal
        Me.lstreaders.FormattingEnabled = True
        Me.lstreaders.ItemHeight = 16
        Me.lstreaders.Location = New System.Drawing.Point(12, 41)
        Me.lstreaders.Name = "lstreaders"
        Me.lstreaders.Size = New System.Drawing.Size(120, 132)
        Me.lstreaders.TabIndex = 1
        '
        'cmdopen
        '
        Me.cmdopen.Location = New System.Drawing.Point(93, 12)
        Me.cmdopen.Name = "cmdopen"
        Me.cmdopen.Size = New System.Drawing.Size(65, 23)
        Me.cmdopen.TabIndex = 2
        Me.cmdopen.Text = "Open"
        Me.cmdopen.UseVisualStyleBackColor = True
        '
        'txtreader
        '
        Me.txtreader.Location = New System.Drawing.Point(519, 41)
        Me.txtreader.Multiline = True
        Me.txtreader.Name = "txtreader"
        Me.txtreader.Size = New System.Drawing.Size(80, 97)
        Me.txtreader.TabIndex = 4
        Me.txtreader.Visible = False
        '
        'lstbook
        '
        Me.lstbook.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.lstbook.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lstbook.ForeColor = System.Drawing.Color.Teal
        Me.lstbook.FormattingEnabled = True
        Me.lstbook.ItemHeight = 16
        Me.lstbook.Location = New System.Drawing.Point(12, 194)
        Me.lstbook.Name = "lstbook"
        Me.lstbook.Size = New System.Drawing.Size(884, 68)
        Me.lstbook.TabIndex = 5
        '
        'cmdaddb
        '
        Me.cmdaddb.Location = New System.Drawing.Point(164, 12)
        Me.cmdaddb.Name = "cmdaddb"
        Me.cmdaddb.Size = New System.Drawing.Size(75, 23)
        Me.cmdaddb.TabIndex = 6
        Me.cmdaddb.Text = "Add book"
        Me.cmdaddb.UseVisualStyleBackColor = True
        '
        'cmdexit
        '
        Me.cmdexit.Location = New System.Drawing.Point(245, 12)
        Me.cmdexit.Name = "cmdexit"
        Me.cmdexit.Size = New System.Drawing.Size(75, 23)
        Me.cmdexit.TabIndex = 7
        Me.cmdexit.Text = "Exit"
        Me.cmdexit.UseVisualStyleBackColor = True
        '
        'lstratings
        '
        Me.lstratings.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.lstratings.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lstratings.ForeColor = System.Drawing.Color.Teal
        Me.lstratings.FormattingEnabled = True
        Me.lstratings.ItemHeight = 16
        Me.lstratings.Location = New System.Drawing.Point(138, 41)
        Me.lstratings.Name = "lstratings"
        Me.lstratings.Size = New System.Drawing.Size(375, 132)
        Me.lstratings.TabIndex = 8
        '
        'picbook
        '
        Me.picbook.Location = New System.Drawing.Point(519, 41)
        Me.picbook.Name = "picbook"
        Me.picbook.Size = New System.Drawing.Size(377, 147)
        Me.picbook.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picbook.TabIndex = 9
        Me.picbook.TabStop = False
        '
        'lstm1
        '
        Me.lstm1.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.lstm1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lstm1.ForeColor = System.Drawing.Color.Teal
        Me.lstm1.FormattingEnabled = True
        Me.lstm1.ItemHeight = 16
        Me.lstm1.Location = New System.Drawing.Point(12, 380)
        Me.lstm1.Name = "lstm1"
        Me.lstm1.Size = New System.Drawing.Size(884, 68)
        Me.lstm1.TabIndex = 12
        '
        'lstm2
        '
        Me.lstm2.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.lstm2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lstm2.ForeColor = System.Drawing.Color.Teal
        Me.lstm2.FormattingEnabled = True
        Me.lstm2.ItemHeight = 16
        Me.lstm2.Location = New System.Drawing.Point(12, 455)
        Me.lstm2.Name = "lstm2"
        Me.lstm2.Size = New System.Drawing.Size(884, 68)
        Me.lstm2.TabIndex = 13
        '
        'lstm3
        '
        Me.lstm3.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.lstm3.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lstm3.ForeColor = System.Drawing.Color.Teal
        Me.lstm3.FormattingEnabled = True
        Me.lstm3.ItemHeight = 16
        Me.lstm3.Location = New System.Drawing.Point(12, 530)
        Me.lstm3.Name = "lstm3"
        Me.lstm3.Size = New System.Drawing.Size(884, 68)
        Me.lstm3.TabIndex = 14
        '
        'lstbr
        '
        Me.lstbr.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.lstbr.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lstbr.ForeColor = System.Drawing.Color.Teal
        Me.lstbr.FormattingEnabled = True
        Me.lstbr.ItemHeight = 16
        Me.lstbr.Location = New System.Drawing.Point(12, 269)
        Me.lstbr.Name = "lstbr"
        Me.lstbr.Size = New System.Drawing.Size(884, 68)
        Me.lstbr.TabIndex = 15
        '
        'lstm4
        '
        Me.lstm4.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.lstm4.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lstm4.ForeColor = System.Drawing.Color.Teal
        Me.lstm4.FormattingEnabled = True
        Me.lstm4.ItemHeight = 16
        Me.lstm4.Location = New System.Drawing.Point(12, 605)
        Me.lstm4.Name = "lstm4"
        Me.lstm4.Size = New System.Drawing.Size(884, 68)
        Me.lstm4.TabIndex = 16
        '
        'cmdchange
        '
        Me.cmdchange.Location = New System.Drawing.Point(326, 12)
        Me.cmdchange.Name = "cmdchange"
        Me.cmdchange.Size = New System.Drawing.Size(75, 23)
        Me.cmdchange.TabIndex = 17
        Me.cmdchange.Text = "Change Rating"
        Me.cmdchange.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.Red
        Me.Label1.Location = New System.Drawing.Point(12, 357)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(89, 20)
        Me.Label1.TabIndex = 18
        Me.Label1.Text = "Book Title"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.Color.Red
        Me.Label2.Location = New System.Drawing.Point(134, 357)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(63, 20)
        Me.Label2.TabIndex = 19
        Me.Label2.Text = "Author"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.ForeColor = System.Drawing.Color.Red
        Me.Label3.Location = New System.Drawing.Point(241, 359)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(62, 20)
        Me.Label3.TabIndex = 20
        Me.Label3.Text = "Rating"
        '
        'txtbook
        '
        Me.txtbook.Location = New System.Drawing.Point(608, 41)
        Me.txtbook.Multiline = True
        Me.txtbook.Name = "txtbook"
        Me.txtbook.Size = New System.Drawing.Size(124, 97)
        Me.txtbook.TabIndex = 21
        Me.txtbook.Visible = False
        '
        'frmbook
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.ActiveCaptionText
        Me.ClientSize = New System.Drawing.Size(919, 686)
        Me.Controls.Add(Me.txtbook)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.cmdchange)
        Me.Controls.Add(Me.lstm4)
        Me.Controls.Add(Me.lstbr)
        Me.Controls.Add(Me.lstm3)
        Me.Controls.Add(Me.lstm2)
        Me.Controls.Add(Me.lstm1)
        Me.Controls.Add(Me.picbook)
        Me.Controls.Add(Me.lstratings)
        Me.Controls.Add(Me.cmdexit)
        Me.Controls.Add(Me.cmdaddb)
        Me.Controls.Add(Me.lstbook)
        Me.Controls.Add(Me.txtreader)
        Me.Controls.Add(Me.cmdopen)
        Me.Controls.Add(Me.lstreaders)
        Me.Controls.Add(Me.cmdaddr)
        Me.Name = "frmbook"
        Me.Text = "Book Recomendation"
        CType(Me.picbook, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents cmdaddr As System.Windows.Forms.Button
    Friend WithEvents lstreaders As System.Windows.Forms.ListBox
    Friend WithEvents cmdopen As System.Windows.Forms.Button
    Friend WithEvents txtreader As System.Windows.Forms.TextBox
    Friend WithEvents lstbook As System.Windows.Forms.ListBox
    Friend WithEvents cmdaddb As System.Windows.Forms.Button
    Friend WithEvents cmdexit As System.Windows.Forms.Button
    Friend WithEvents lstratings As System.Windows.Forms.ListBox
    Friend WithEvents picbook As System.Windows.Forms.PictureBox
    Friend WithEvents lstm1 As System.Windows.Forms.ListBox
    Friend WithEvents lstm2 As System.Windows.Forms.ListBox
    Friend WithEvents lstm3 As System.Windows.Forms.ListBox
    Friend WithEvents lstbr As System.Windows.Forms.ListBox
    Friend WithEvents lstm4 As System.Windows.Forms.ListBox
    Friend WithEvents cmdchange As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtbook As System.Windows.Forms.TextBox

End Class
