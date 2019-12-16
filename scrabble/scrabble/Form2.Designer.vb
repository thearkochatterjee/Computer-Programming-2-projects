<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmt10
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
        Me.lstall = New System.Windows.Forms.ListBox()
        Me.lstt10 = New System.Windows.Forms.ListBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.cmdback = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'lstall
        '
        Me.lstall.BackColor = System.Drawing.SystemColors.ControlDark
        Me.lstall.FormattingEnabled = True
        Me.lstall.Location = New System.Drawing.Point(12, 61)
        Me.lstall.Name = "lstall"
        Me.lstall.Size = New System.Drawing.Size(120, 251)
        Me.lstall.TabIndex = 0
        '
        'lstt10
        '
        Me.lstt10.BackColor = System.Drawing.SystemColors.ControlDark
        Me.lstt10.FormattingEnabled = True
        Me.lstt10.Location = New System.Drawing.Point(138, 61)
        Me.lstt10.Name = "lstt10"
        Me.lstt10.Size = New System.Drawing.Size(120, 251)
        Me.lstt10.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(29, 38)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(90, 20)
        Me.Label1.TabIndex = 4
        Me.Label1.Text = "All Scores"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(156, 38)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(74, 20)
        Me.Label2.TabIndex = 5
        Me.Label2.Text = "Top Ten"
        '
        'cmdback
        '
        Me.cmdback.Location = New System.Drawing.Point(12, 12)
        Me.cmdback.Name = "cmdback"
        Me.cmdback.Size = New System.Drawing.Size(75, 23)
        Me.cmdback.TabIndex = 6
        Me.cmdback.Text = "Back"
        Me.cmdback.UseVisualStyleBackColor = True
        '
        'frmt10
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.ControlDarkDark
        Me.ClientSize = New System.Drawing.Size(273, 329)
        Me.Controls.Add(Me.cmdback)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.lstt10)
        Me.Controls.Add(Me.lstall)
        Me.Name = "frmt10"
        Me.Text = "Scores"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lstall As System.Windows.Forms.ListBox
    Friend WithEvents lstt10 As System.Windows.Forms.ListBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents cmdback As System.Windows.Forms.Button
End Class
