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
        Me.DelBtn = New System.Windows.Forms.Button()
        Me.LightBtn = New System.Windows.Forms.Button()
        Me.DarkBtn = New System.Windows.Forms.Button()
        Me.uninst = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'DelBtn
        '
        Me.DelBtn.Location = New System.Drawing.Point(270, 12)
        Me.DelBtn.Name = "DelBtn"
        Me.DelBtn.Size = New System.Drawing.Size(113, 75)
        Me.DelBtn.TabIndex = 2
        Me.DelBtn.Text = "Reset (Delete)"
        Me.DelBtn.UseVisualStyleBackColor = True
        '
        'LightBtn
        '
        Me.LightBtn.Location = New System.Drawing.Point(12, 12)
        Me.LightBtn.Name = "LightBtn"
        Me.LightBtn.Size = New System.Drawing.Size(113, 75)
        Me.LightBtn.TabIndex = 3
        Me.LightBtn.Text = "Light"
        Me.LightBtn.UseVisualStyleBackColor = True
        '
        'DarkBtn
        '
        Me.DarkBtn.Location = New System.Drawing.Point(140, 12)
        Me.DarkBtn.Name = "DarkBtn"
        Me.DarkBtn.Size = New System.Drawing.Size(113, 75)
        Me.DarkBtn.TabIndex = 4
        Me.DarkBtn.Text = "Dark"
        Me.DarkBtn.UseVisualStyleBackColor = True
        '
        'uninst
        '
        Me.uninst.Location = New System.Drawing.Point(400, 12)
        Me.uninst.Name = "uninst"
        Me.uninst.Size = New System.Drawing.Size(113, 75)
        Me.uninst.TabIndex = 5
        Me.uninst.Text = "Uninstall"
        Me.uninst.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.uninst)
        Me.Controls.Add(Me.DarkBtn)
        Me.Controls.Add(Me.LightBtn)
        Me.Controls.Add(Me.DelBtn)
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Theme Changer"
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents DelBtn As Button
    Friend WithEvents LightBtn As Button
    Friend WithEvents DarkBtn As Button
    Friend WithEvents uninst As Button
End Class
