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
        Me.lstnames = New System.Windows.Forms.ListBox()
        Me.lstt10 = New System.Windows.Forms.ListBox()
        Me.lstpoints = New System.Windows.Forms.ListBox()
        Me.cmdback = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'lstall
        '
        Me.lstall.BackColor = System.Drawing.Color.Silver
        Me.lstall.FormattingEnabled = True
        Me.lstall.Location = New System.Drawing.Point(12, 69)
        Me.lstall.Name = "lstall"
        Me.lstall.Size = New System.Drawing.Size(120, 225)
        Me.lstall.TabIndex = 0
        '
        'lstnames
        '
        Me.lstnames.BackColor = System.Drawing.Color.Silver
        Me.lstnames.FormattingEnabled = True
        Me.lstnames.Location = New System.Drawing.Point(12, 314)
        Me.lstnames.Name = "lstnames"
        Me.lstnames.Size = New System.Drawing.Size(120, 95)
        Me.lstnames.TabIndex = 1
        Me.lstnames.Visible = False
        '
        'lstt10
        '
        Me.lstt10.BackColor = System.Drawing.Color.Silver
        Me.lstt10.FormattingEnabled = True
        Me.lstt10.Location = New System.Drawing.Point(195, 69)
        Me.lstt10.Name = "lstt10"
        Me.lstt10.Size = New System.Drawing.Size(120, 225)
        Me.lstt10.TabIndex = 2
        '
        'lstpoints
        '
        Me.lstpoints.BackColor = System.Drawing.Color.Silver
        Me.lstpoints.FormattingEnabled = True
        Me.lstpoints.Location = New System.Drawing.Point(195, 314)
        Me.lstpoints.Name = "lstpoints"
        Me.lstpoints.Size = New System.Drawing.Size(120, 95)
        Me.lstpoints.TabIndex = 3
        Me.lstpoints.Visible = False
        '
        'cmdback
        '
        Me.cmdback.Location = New System.Drawing.Point(12, 12)
        Me.cmdback.Name = "cmdback"
        Me.cmdback.Size = New System.Drawing.Size(75, 23)
        Me.cmdback.TabIndex = 4
        Me.cmdback.Text = "Back"
        Me.cmdback.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(33, 38)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(80, 20)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "All Scores"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(228, 38)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(67, 20)
        Me.Label2.TabIndex = 6
        Me.Label2.Text = "Top Ten"
        '
        'frmt10
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSize = True
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.BackColor = System.Drawing.SystemColors.ButtonShadow
        Me.ClientSize = New System.Drawing.Size(456, 421)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.cmdback)
        Me.Controls.Add(Me.lstpoints)
        Me.Controls.Add(Me.lstt10)
        Me.Controls.Add(Me.lstnames)
        Me.Controls.Add(Me.lstall)
        Me.Name = "frmt10"
        Me.Text = "Scores"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lstall As System.Windows.Forms.ListBox
    Friend WithEvents lstnames As System.Windows.Forms.ListBox
    Friend WithEvents lstt10 As System.Windows.Forms.ListBox
    Friend WithEvents lstpoints As System.Windows.Forms.ListBox
    Friend WithEvents cmdback As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
End Class
