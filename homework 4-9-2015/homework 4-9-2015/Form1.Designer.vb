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
        Me.cmdbag = New System.Windows.Forms.Button()
        Me.lstdata = New System.Windows.Forms.ListBox()
        Me.SuspendLayout()
        '
        'cmdbag
        '
        Me.cmdbag.Location = New System.Drawing.Point(27, 40)
        Me.cmdbag.Name = "cmdbag"
        Me.cmdbag.Size = New System.Drawing.Size(75, 23)
        Me.cmdbag.TabIndex = 0
        Me.cmdbag.Text = "bag"
        Me.cmdbag.UseVisualStyleBackColor = True
        '
        'lstdata
        '
        Me.lstdata.FormattingEnabled = True
        Me.lstdata.Location = New System.Drawing.Point(171, 40)
        Me.lstdata.Name = "lstdata"
        Me.lstdata.Size = New System.Drawing.Size(120, 147)
        Me.lstdata.TabIndex = 1
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(313, 231)
        Me.Controls.Add(Me.lstdata)
        Me.Controls.Add(Me.cmdbag)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents cmdbag As System.Windows.Forms.Button
    Friend WithEvents lstdata As System.Windows.Forms.ListBox

End Class
