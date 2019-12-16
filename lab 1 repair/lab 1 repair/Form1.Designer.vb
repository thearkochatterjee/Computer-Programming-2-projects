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
        Me.txtname = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtmajor = New System.Windows.Forms.TextBox()
        Me.cmdperson1 = New System.Windows.Forms.Button()
        Me.cmdperson2 = New System.Windows.Forms.Button()
        Me.cmdperson3 = New System.Windows.Forms.Button()
        Me.cmdreset = New System.Windows.Forms.Button()
        Me.cmdexit = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'txtname
        '
        Me.txtname.Location = New System.Drawing.Point(53, 12)
        Me.txtname.Name = "txtname"
        Me.txtname.Size = New System.Drawing.Size(272, 20)
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
        Me.Label2.Location = New System.Drawing.Point(12, 61)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(33, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Major"
        '
        'txtmajor
        '
        Me.txtmajor.Location = New System.Drawing.Point(51, 58)
        Me.txtmajor.Name = "txtmajor"
        Me.txtmajor.Size = New System.Drawing.Size(274, 20)
        Me.txtmajor.TabIndex = 3
        '
        'cmdperson1
        '
        Me.cmdperson1.Location = New System.Drawing.Point(12, 84)
        Me.cmdperson1.Name = "cmdperson1"
        Me.cmdperson1.Size = New System.Drawing.Size(95, 23)
        Me.cmdperson1.TabIndex = 4
        Me.cmdperson1.Text = "Display person 1"
        Me.cmdperson1.UseVisualStyleBackColor = True
        '
        'cmdperson2
        '
        Me.cmdperson2.Location = New System.Drawing.Point(113, 84)
        Me.cmdperson2.Name = "cmdperson2"
        Me.cmdperson2.Size = New System.Drawing.Size(95, 23)
        Me.cmdperson2.TabIndex = 5
        Me.cmdperson2.Text = "Display person 2"
        Me.cmdperson2.UseVisualStyleBackColor = True
        '
        'cmdperson3
        '
        Me.cmdperson3.Location = New System.Drawing.Point(214, 84)
        Me.cmdperson3.Name = "cmdperson3"
        Me.cmdperson3.Size = New System.Drawing.Size(95, 23)
        Me.cmdperson3.TabIndex = 6
        Me.cmdperson3.Text = "Display Person 3"
        Me.cmdperson3.UseVisualStyleBackColor = True
        '
        'cmdreset
        '
        Me.cmdreset.Location = New System.Drawing.Point(12, 113)
        Me.cmdreset.Name = "cmdreset"
        Me.cmdreset.Size = New System.Drawing.Size(95, 23)
        Me.cmdreset.TabIndex = 7
        Me.cmdreset.Text = "Reset"
        Me.cmdreset.UseVisualStyleBackColor = True
        '
        'cmdexit
        '
        Me.cmdexit.Location = New System.Drawing.Point(113, 113)
        Me.cmdexit.Name = "cmdexit"
        Me.cmdexit.Size = New System.Drawing.Size(95, 23)
        Me.cmdexit.TabIndex = 8
        Me.cmdexit.Text = "Exit"
        Me.cmdexit.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSize = True
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.ClientSize = New System.Drawing.Size(652, 546)
        Me.Controls.Add(Me.cmdexit)
        Me.Controls.Add(Me.cmdreset)
        Me.Controls.Add(Me.cmdperson3)
        Me.Controls.Add(Me.cmdperson2)
        Me.Controls.Add(Me.cmdperson1)
        Me.Controls.Add(Me.txtmajor)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.txtname)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents txtname As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtmajor As System.Windows.Forms.TextBox
    Friend WithEvents cmdperson1 As System.Windows.Forms.Button
    Friend WithEvents cmdperson2 As System.Windows.Forms.Button
    Friend WithEvents cmdperson3 As System.Windows.Forms.Button
    Friend WithEvents cmdreset As System.Windows.Forms.Button
    Friend WithEvents cmdexit As System.Windows.Forms.Button

End Class
