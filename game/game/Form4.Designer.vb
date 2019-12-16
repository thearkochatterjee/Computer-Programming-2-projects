<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmoptions
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
        Me.cmbsound = New System.Windows.Forms.ComboBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.cmbscreensize = New System.Windows.Forms.ComboBox()
        Me.cmdback = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'cmbsound
        '
        Me.cmbsound.FormattingEnabled = True
        Me.cmbsound.Items.AddRange(New Object() {"None", "Sound 1", "Sound 2", "Sound 3", "Sound 4", "Sound 5", "Sound 6"})
        Me.cmbsound.Location = New System.Drawing.Point(12, 24)
        Me.cmbsound.Name = "cmbsound"
        Me.cmbsound.Size = New System.Drawing.Size(121, 21)
        Me.cmbsound.TabIndex = 0
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.SystemColors.ControlDark
        Me.Label1.Location = New System.Drawing.Point(8, 8)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(38, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Sound"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.SystemColors.ControlDark
        Me.Label2.Location = New System.Drawing.Point(12, 48)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(64, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Screen Size"
        '
        'cmbscreensize
        '
        Me.cmbscreensize.FormattingEnabled = True
        Me.cmbscreensize.Items.AddRange(New Object() {"Full Screen", "Normal"})
        Me.cmbscreensize.Location = New System.Drawing.Point(11, 64)
        Me.cmbscreensize.Name = "cmbscreensize"
        Me.cmbscreensize.Size = New System.Drawing.Size(121, 21)
        Me.cmbscreensize.TabIndex = 3
        '
        'cmdback
        '
        Me.cmdback.Location = New System.Drawing.Point(12, 91)
        Me.cmdback.Name = "cmdback"
        Me.cmdback.Size = New System.Drawing.Size(75, 23)
        Me.cmdback.TabIndex = 4
        Me.cmdback.Text = "Back"
        Me.cmdback.UseVisualStyleBackColor = True
        '
        'frmoptions
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.ControlDarkDark
        Me.ClientSize = New System.Drawing.Size(177, 125)
        Me.Controls.Add(Me.cmdback)
        Me.Controls.Add(Me.cmbscreensize)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.cmbsound)
        Me.Name = "frmoptions"
        Me.Text = "Options"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents cmbsound As System.Windows.Forms.ComboBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents cmbscreensize As System.Windows.Forms.ComboBox
    Friend WithEvents cmdback As System.Windows.Forms.Button
End Class
