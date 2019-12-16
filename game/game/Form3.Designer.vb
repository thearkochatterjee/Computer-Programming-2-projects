<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmscore
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
        Me.lsttten = New System.Windows.Forms.ListBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.lstall = New System.Windows.Forms.ListBox()
        Me.txtscores = New System.Windows.Forms.TextBox()
        Me.cmdback = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(12, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(74, 20)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Top Ten"
        '
        'lsttten
        '
        Me.lsttten.FormattingEnabled = True
        Me.lsttten.Location = New System.Drawing.Point(12, 32)
        Me.lsttten.Name = "lsttten"
        Me.lsttten.Size = New System.Drawing.Size(120, 173)
        Me.lsttten.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(135, 9)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(90, 20)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "All Scores"
        '
        'lstall
        '
        Me.lstall.FormattingEnabled = True
        Me.lstall.Location = New System.Drawing.Point(138, 32)
        Me.lstall.Name = "lstall"
        Me.lstall.Size = New System.Drawing.Size(120, 173)
        Me.lstall.TabIndex = 3
        '
        'txtscores
        '
        Me.txtscores.Location = New System.Drawing.Point(139, 211)
        Me.txtscores.Multiline = True
        Me.txtscores.Name = "txtscores"
        Me.txtscores.Size = New System.Drawing.Size(120, 61)
        Me.txtscores.TabIndex = 4
        Me.txtscores.Visible = False
        '
        'cmdback
        '
        Me.cmdback.Location = New System.Drawing.Point(12, 211)
        Me.cmdback.Name = "cmdback"
        Me.cmdback.Size = New System.Drawing.Size(75, 23)
        Me.cmdback.TabIndex = 5
        Me.cmdback.Text = "Back"
        Me.cmdback.UseVisualStyleBackColor = True
        '
        'frmscore
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSize = True
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.ClientSize = New System.Drawing.Size(280, 294)
        Me.Controls.Add(Me.cmdback)
        Me.Controls.Add(Me.txtscores)
        Me.Controls.Add(Me.lstall)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.lsttten)
        Me.Controls.Add(Me.Label1)
        Me.Name = "frmscore"
        Me.Text = "Scores"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents lsttten As System.Windows.Forms.ListBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents lstall As System.Windows.Forms.ListBox
    Friend WithEvents txtscores As System.Windows.Forms.TextBox
    Friend WithEvents cmdback As System.Windows.Forms.Button
End Class
