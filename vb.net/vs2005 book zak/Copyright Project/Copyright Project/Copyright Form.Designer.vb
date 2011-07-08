<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class CopyrightForm
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Me.xAuthorLabel = New System.Windows.Forms.Label
        Me.xYearLabel = New System.Windows.Forms.Label
        Me.xLogoPictureBox = New System.Windows.Forms.PictureBox
        Me.xExitTimer = New System.Windows.Forms.Timer(Me.components)
        CType(Me.xLogoPictureBox, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'xAuthorLabel
        '
        Me.xAuthorLabel.AutoSize = True
        Me.xAuthorLabel.Font = New System.Drawing.Font("Tahoma", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xAuthorLabel.Location = New System.Drawing.Point(102, 225)
        Me.xAuthorLabel.Name = "xAuthorLabel"
        Me.xAuthorLabel.Size = New System.Drawing.Size(155, 19)
        Me.xAuthorLabel.TabIndex = 0
        Me.xAuthorLabel.Text = "Written By Nick Leep"
        '
        'xYearLabel
        '
        Me.xYearLabel.AutoSize = True
        Me.xYearLabel.Font = New System.Drawing.Font("Tahoma", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xYearLabel.Location = New System.Drawing.Point(102, 250)
        Me.xYearLabel.Name = "xYearLabel"
        Me.xYearLabel.Size = New System.Drawing.Size(156, 19)
        Me.xYearLabel.TabIndex = 1
        Me.xYearLabel.Text = "Copyright Year 2010"
        '
        'xLogoPictureBox
        '
        Me.xLogoPictureBox.Image = Global.Copyright_Project.My.Resources.Resources.interactive_logo
        Me.xLogoPictureBox.Location = New System.Drawing.Point(8, 10)
        Me.xLogoPictureBox.Name = "xLogoPictureBox"
        Me.xLogoPictureBox.Size = New System.Drawing.Size(342, 198)
        Me.xLogoPictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.xLogoPictureBox.TabIndex = 2
        Me.xLogoPictureBox.TabStop = False
        '
        'xExitTimer
        '
        Me.xExitTimer.Enabled = True
        Me.xExitTimer.Interval = 8000
        '
        'CopyrightForm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(360, 286)
        Me.ControlBox = False
        Me.Controls.Add(Me.xLogoPictureBox)
        Me.Controls.Add(Me.xYearLabel)
        Me.Controls.Add(Me.xAuthorLabel)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Name = "CopyrightForm"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        CType(Me.xLogoPictureBox, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents xAuthorLabel As System.Windows.Forms.Label
    Friend WithEvents xYearLabel As System.Windows.Forms.Label
    Friend WithEvents xLogoPictureBox As System.Windows.Forms.PictureBox
    Friend WithEvents xExitTimer As System.Windows.Forms.Timer

End Class
