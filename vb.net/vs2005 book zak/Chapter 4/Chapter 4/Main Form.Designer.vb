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
        Me.xPrincipalLabel = New System.Windows.Forms.Label
        Me.xPrincipalTextBox = New System.Windows.Forms.TextBox
        Me.xRateTextBox = New System.Windows.Forms.TextBox
        Me.xTermTextBox = New System.Windows.Forms.TextBox
        Me.xRateLabel = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.xPaymentsLabel = New System.Windows.Forms.Label
        Me.xCalcButton = New System.Windows.Forms.Button
        Me.xExitButton = New System.Windows.Forms.Button
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'xPrincipalLabel
        '
        Me.xPrincipalLabel.AutoSize = True
        Me.xPrincipalLabel.Location = New System.Drawing.Point(12, 29)
        Me.xPrincipalLabel.Name = "xPrincipalLabel"
        Me.xPrincipalLabel.Size = New System.Drawing.Size(50, 13)
        Me.xPrincipalLabel.TabIndex = 0
        Me.xPrincipalLabel.Text = "&Principal:"
        '
        'xPrincipalTextBox
        '
        Me.xPrincipalTextBox.Location = New System.Drawing.Point(15, 55)
        Me.xPrincipalTextBox.Name = "xPrincipalTextBox"
        Me.xPrincipalTextBox.Size = New System.Drawing.Size(100, 20)
        Me.xPrincipalTextBox.TabIndex = 1
        '
        'xRateTextBox
        '
        Me.xRateTextBox.Location = New System.Drawing.Point(139, 55)
        Me.xRateTextBox.Name = "xRateTextBox"
        Me.xRateTextBox.Size = New System.Drawing.Size(100, 20)
        Me.xRateTextBox.TabIndex = 3
        '
        'xTermTextBox
        '
        Me.xTermTextBox.Location = New System.Drawing.Point(263, 55)
        Me.xTermTextBox.Name = "xTermTextBox"
        Me.xTermTextBox.Size = New System.Drawing.Size(100, 20)
        Me.xTermTextBox.TabIndex = 5
        '
        'xRateLabel
        '
        Me.xRateLabel.AutoSize = True
        Me.xRateLabel.Location = New System.Drawing.Point(136, 29)
        Me.xRateLabel.Name = "xRateLabel"
        Me.xRateLabel.Size = New System.Drawing.Size(33, 13)
        Me.xRateLabel.TabIndex = 2
        Me.xRateLabel.Text = "&Rate:"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(260, 29)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(68, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "&Term (years):"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(119, 176)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(90, 13)
        Me.Label4.TabIndex = 3
        Me.Label4.Text = "Monthly payment:"
        '
        'xPaymentsLabel
        '
        Me.xPaymentsLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xPaymentsLabel.Location = New System.Drawing.Point(215, 171)
        Me.xPaymentsLabel.Name = "xPaymentsLabel"
        Me.xPaymentsLabel.Size = New System.Drawing.Size(100, 22)
        Me.xPaymentsLabel.TabIndex = 4
        Me.xPaymentsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'xCalcButton
        '
        Me.xCalcButton.Location = New System.Drawing.Point(99, 226)
        Me.xCalcButton.Name = "xCalcButton"
        Me.xCalcButton.Size = New System.Drawing.Size(171, 23)
        Me.xCalcButton.TabIndex = 1
        Me.xCalcButton.Text = "&Calculate Monthly Payment"
        Me.xCalcButton.UseVisualStyleBackColor = True
        '
        'xExitButton
        '
        Me.xExitButton.Location = New System.Drawing.Point(276, 226)
        Me.xExitButton.Name = "xExitButton"
        Me.xExitButton.Size = New System.Drawing.Size(52, 23)
        Me.xExitButton.TabIndex = 2
        Me.xExitButton.Text = "E&xit"
        Me.xExitButton.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.xPrincipalLabel)
        Me.GroupBox1.Controls.Add(Me.xPrincipalTextBox)
        Me.GroupBox1.Controls.Add(Me.xRateLabel)
        Me.GroupBox1.Controls.Add(Me.xRateTextBox)
        Me.GroupBox1.Controls.Add(Me.xTermTextBox)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Location = New System.Drawing.Point(30, 25)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(375, 115)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(434, 332)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.xExitButton)
        Me.Controls.Add(Me.xCalcButton)
        Me.Controls.Add(Me.xPaymentsLabel)
        Me.Controls.Add(Me.Label4)
        Me.Name = "Form1"
        Me.Text = "Monthly Payment Calculator"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents xPrincipalLabel As System.Windows.Forms.Label
    Friend WithEvents xPrincipalTextBox As System.Windows.Forms.TextBox
    Friend WithEvents xRateTextBox As System.Windows.Forms.TextBox
    Friend WithEvents xTermTextBox As System.Windows.Forms.TextBox
    Friend WithEvents xRateLabel As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents xPaymentsLabel As System.Windows.Forms.Label
    Friend WithEvents xCalcButton As System.Windows.Forms.Button
    Friend WithEvents xExitButton As System.Windows.Forms.Button
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox

End Class
