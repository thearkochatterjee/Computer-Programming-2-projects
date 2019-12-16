<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmlab3
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
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txttitle = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtprice = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtquanity = New System.Windows.Forms.TextBox()
        Me.txtsubtotal = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.txttax = New System.Windows.Forms.TextBox()
        Me.txttotal = New System.Windows.Forms.TextBox()
        Me.cmdfind = New System.Windows.Forms.Button()
        Me.cmdreset = New System.Windows.Forms.Button()
        Me.cmdexit = New System.Windows.Forms.Button()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.txtid = New System.Windows.Forms.TextBox()
        Me.cmdtotals = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(12, 16)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(27, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Title"
        '
        'txttitle
        '
        Me.txttitle.Location = New System.Drawing.Point(88, 9)
        Me.txttitle.Name = "txttitle"
        Me.txttitle.Size = New System.Drawing.Size(184, 20)
        Me.txttitle.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(12, 64)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(31, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Price"
        '
        'txtprice
        '
        Me.txtprice.Location = New System.Drawing.Point(88, 57)
        Me.txtprice.Name = "txtprice"
        Me.txtprice.Size = New System.Drawing.Size(184, 20)
        Me.txtprice.TabIndex = 3
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(12, 90)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(43, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Quanity"
        '
        'txtquanity
        '
        Me.txtquanity.Location = New System.Drawing.Point(88, 83)
        Me.txtquanity.Name = "txtquanity"
        Me.txtquanity.Size = New System.Drawing.Size(184, 20)
        Me.txtquanity.TabIndex = 5
        '
        'txtsubtotal
        '
        Me.txtsubtotal.Location = New System.Drawing.Point(88, 169)
        Me.txtsubtotal.Name = "txtsubtotal"
        Me.txtsubtotal.Size = New System.Drawing.Size(184, 20)
        Me.txtsubtotal.TabIndex = 6
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(12, 176)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(53, 13)
        Me.Label4.TabIndex = 7
        Me.Label4.Text = "Sub Total"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(12, 215)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(25, 13)
        Me.Label5.TabIndex = 8
        Me.Label5.Text = "Tax"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(12, 249)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(70, 13)
        Me.Label6.TabIndex = 9
        Me.Label6.Text = "Overall Total:"
        '
        'txttax
        '
        Me.txttax.Location = New System.Drawing.Point(88, 208)
        Me.txttax.Name = "txttax"
        Me.txttax.Size = New System.Drawing.Size(184, 20)
        Me.txttax.TabIndex = 10
        '
        'txttotal
        '
        Me.txttotal.Location = New System.Drawing.Point(88, 242)
        Me.txttotal.Name = "txttotal"
        Me.txttotal.Size = New System.Drawing.Size(184, 20)
        Me.txttotal.TabIndex = 11
        '
        'cmdfind
        '
        Me.cmdfind.Location = New System.Drawing.Point(12, 124)
        Me.cmdfind.Name = "cmdfind"
        Me.cmdfind.Size = New System.Drawing.Size(70, 23)
        Me.cmdfind.TabIndex = 12
        Me.cmdfind.Text = "Calculate"
        Me.cmdfind.UseVisualStyleBackColor = True
        '
        'cmdreset
        '
        Me.cmdreset.Location = New System.Drawing.Point(88, 124)
        Me.cmdreset.Name = "cmdreset"
        Me.cmdreset.Size = New System.Drawing.Size(54, 23)
        Me.cmdreset.TabIndex = 13
        Me.cmdreset.Text = "Reset"
        Me.cmdreset.UseVisualStyleBackColor = True
        '
        'cmdexit
        '
        Me.cmdexit.Location = New System.Drawing.Point(148, 124)
        Me.cmdexit.Name = "cmdexit"
        Me.cmdexit.Size = New System.Drawing.Size(40, 23)
        Me.cmdexit.TabIndex = 14
        Me.cmdexit.Text = "Exit"
        Me.cmdexit.UseVisualStyleBackColor = True
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(12, 40)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(52, 13)
        Me.Label7.TabIndex = 15
        Me.Label7.Text = "ISBN (ID)"
        '
        'txtid
        '
        Me.txtid.Location = New System.Drawing.Point(88, 33)
        Me.txtid.Name = "txtid"
        Me.txtid.Size = New System.Drawing.Size(184, 20)
        Me.txtid.TabIndex = 16
        '
        'cmdtotals
        '
        Me.cmdtotals.Location = New System.Drawing.Point(194, 124)
        Me.cmdtotals.Name = "cmdtotals"
        Me.cmdtotals.Size = New System.Drawing.Size(75, 23)
        Me.cmdtotals.TabIndex = 17
        Me.cmdtotals.Text = "Totals"
        Me.cmdtotals.UseVisualStyleBackColor = True
        '
        'frmlab3
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.ClientSize = New System.Drawing.Size(283, 270)
        Me.Controls.Add(Me.cmdtotals)
        Me.Controls.Add(Me.txtid)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.cmdexit)
        Me.Controls.Add(Me.cmdreset)
        Me.Controls.Add(Me.cmdfind)
        Me.Controls.Add(Me.txttotal)
        Me.Controls.Add(Me.txttax)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.txtsubtotal)
        Me.Controls.Add(Me.txtquanity)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.txtprice)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.txttitle)
        Me.Controls.Add(Me.Label1)
        Me.Name = "frmlab3"
        Me.Text = "Lab 3"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txttitle As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtprice As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtquanity As System.Windows.Forms.TextBox
    Friend WithEvents txtsubtotal As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents txttax As System.Windows.Forms.TextBox
    Friend WithEvents txttotal As System.Windows.Forms.TextBox
    Friend WithEvents cmdfind As System.Windows.Forms.Button
    Friend WithEvents cmdreset As System.Windows.Forms.Button
    Friend WithEvents cmdexit As System.Windows.Forms.Button
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents txtid As System.Windows.Forms.TextBox
    Friend WithEvents cmdtotals As System.Windows.Forms.Button

End Class
