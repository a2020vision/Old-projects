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
        Me.xStartBtn = New System.Windows.Forms.Button()
        Me.xCanvas = New System.Windows.Forms.PictureBox()
        Me.thing = New System.Windows.Forms.CheckBox()
        CType(Me.xCanvas, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'xStartBtn
        '
        Me.xStartBtn.Location = New System.Drawing.Point(100, 214)
        Me.xStartBtn.Name = "xStartBtn"
        Me.xStartBtn.Size = New System.Drawing.Size(75, 23)
        Me.xStartBtn.TabIndex = 0
        Me.xStartBtn.Text = "Start Animation"
        Me.xStartBtn.UseVisualStyleBackColor = True
        '
        'xCanvas
        '
        Me.xCanvas.BackColor = System.Drawing.Color.White
        Me.xCanvas.Location = New System.Drawing.Point(26, 19)
        Me.xCanvas.Name = "xCanvas"
        Me.xCanvas.Size = New System.Drawing.Size(246, 165)
        Me.xCanvas.TabIndex = 1
        Me.xCanvas.TabStop = False
        '
        'thing
        '
        Me.thing.AutoSize = True
        Me.thing.Location = New System.Drawing.Point(34, 27)
        Me.thing.Name = "thing"
        Me.thing.Size = New System.Drawing.Size(15, 14)
        Me.thing.TabIndex = 2
        Me.thing.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(284, 262)
        Me.Controls.Add(Me.thing)
        Me.Controls.Add(Me.xCanvas)
        Me.Controls.Add(Me.xStartBtn)
        Me.Name = "Form1"
        Me.Text = "Form1"
        CType(Me.xCanvas, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents xStartBtn As System.Windows.Forms.Button
    Friend WithEvents xCanvas As System.Windows.Forms.PictureBox
    Friend WithEvents thing As System.Windows.Forms.CheckBox

End Class
