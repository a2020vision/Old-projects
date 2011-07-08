<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class MainForm
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
        Me.Label1 = New System.Windows.Forms.Label
        Me.xLengthTextBox = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.xWidthTextBox = New System.Windows.Forms.TextBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.xPriceTextBox = New System.Windows.Forms.TextBox
        Me.Label4 = New System.Windows.Forms.Label
        Me.xTotalPriceLabel = New System.Windows.Forms.Label
        Me.xCalcButton = New System.Windows.Forms.Button
        Me.xExitButton = New System.Windows.Forms.Button
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(9, 24)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(70, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "&Length (feet):"
        '
        'xLengthTextBox
        '
        Me.xLengthTextBox.Location = New System.Drawing.Point(12, 40)
        Me.xLengthTextBox.Name = "xLengthTextBox"
        Me.xLengthTextBox.Size = New System.Drawing.Size(67, 20)
        Me.xLengthTextBox.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(82, 24)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(65, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "&Width (feet):"
        '
        'xWidthTextBox
        '
        Me.xWidthTextBox.Location = New System.Drawing.Point(85, 40)
        Me.xWidthTextBox.Name = "xWidthTextBox"
        Me.xWidthTextBox.Size = New System.Drawing.Size(62, 20)
        Me.xWidthTextBox.TabIndex = 3
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(153, 24)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(119, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "&Sod price (square yard):"
        '
        'xPriceTextBox
        '
        Me.xPriceTextBox.Location = New System.Drawing.Point(156, 40)
        Me.xPriceTextBox.Name = "xPriceTextBox"
        Me.xPriceTextBox.Size = New System.Drawing.Size(100, 20)
        Me.xPriceTextBox.TabIndex = 5
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(9, 97)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(60, 13)
        Me.Label4.TabIndex = 6
        Me.Label4.Text = "Total price:"
        '
        'xTotalPriceLabel
        '
        Me.xTotalPriceLabel.AutoSize = True
        Me.xTotalPriceLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xTotalPriceLabel.Location = New System.Drawing.Point(12, 110)
        Me.xTotalPriceLabel.MinimumSize = New System.Drawing.Size(80, 20)
        Me.xTotalPriceLabel.Name = "xTotalPriceLabel"
        Me.xTotalPriceLabel.Size = New System.Drawing.Size(80, 20)
        Me.xTotalPriceLabel.TabIndex = 7
        Me.xTotalPriceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'xCalcButton
        '
        Me.xCalcButton.Location = New System.Drawing.Point(113, 110)
        Me.xCalcButton.Name = "xCalcButton"
        Me.xCalcButton.Size = New System.Drawing.Size(75, 23)
        Me.xCalcButton.TabIndex = 8
        Me.xCalcButton.Text = "&Calculate Total Price"
        Me.xCalcButton.UseVisualStyleBackColor = True
        '
        'xExitButton
        '
        Me.xExitButton.Location = New System.Drawing.Point(194, 110)
        Me.xExitButton.Name = "xExitButton"
        Me.xExitButton.Size = New System.Drawing.Size(75, 23)
        Me.xExitButton.TabIndex = 9
        Me.xExitButton.Text = "E&xit"
        Me.xExitButton.UseVisualStyleBackColor = True
        '
        'MainForm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(287, 158)
        Me.Controls.Add(Me.xExitButton)
        Me.Controls.Add(Me.xCalcButton)
        Me.Controls.Add(Me.xTotalPriceLabel)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.xPriceTextBox)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.xWidthTextBox)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.xLengthTextBox)
        Me.Controls.Add(Me.Label1)
        Me.Name = "MainForm"
        Me.Text = "Kessler Landscaping"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents xLengthTextBox As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents xWidthTextBox As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents xPriceTextBox As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents xTotalPriceLabel As System.Windows.Forms.Label
    Friend WithEvents xCalcButton As System.Windows.Forms.Button
    Friend WithEvents xExitButton As System.Windows.Forms.Button

End Class
