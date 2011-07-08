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
        Me.Label1 = New System.Windows.Forms.Label
        Me.xPriceTextBox = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.xRateListBox = New System.Windows.Forms.ListBox
        Me.xCalcButton = New System.Windows.Forms.Button
        Me.xExitButton = New System.Windows.Forms.Button
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.xDiscountLabel = New System.Windows.Forms.Label
        Me.xDiscountedPriceLabel = New System.Windows.Forms.Label
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(12, 24)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(90, 16)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "&Original Price:"
        '
        'xPriceTextBox
        '
        Me.xPriceTextBox.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xPriceTextBox.Location = New System.Drawing.Point(15, 43)
        Me.xPriceTextBox.Name = "xPriceTextBox"
        Me.xPriceTextBox.Size = New System.Drawing.Size(100, 22)
        Me.xPriceTextBox.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(147, 24)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(89, 16)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Discount &rate:"
        '
        'xRateListBox
        '
        Me.xRateListBox.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xRateListBox.FormattingEnabled = True
        Me.xRateListBox.ItemHeight = 16
        Me.xRateListBox.Location = New System.Drawing.Point(150, 43)
        Me.xRateListBox.Name = "xRateListBox"
        Me.xRateListBox.Size = New System.Drawing.Size(61, 52)
        Me.xRateListBox.TabIndex = 3
        '
        'xCalcButton
        '
        Me.xCalcButton.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xCalcButton.Location = New System.Drawing.Point(80, 227)
        Me.xCalcButton.Name = "xCalcButton"
        Me.xCalcButton.Size = New System.Drawing.Size(75, 23)
        Me.xCalcButton.TabIndex = 4
        Me.xCalcButton.Text = "&Calculate"
        Me.xCalcButton.UseVisualStyleBackColor = True
        '
        'xExitButton
        '
        Me.xExitButton.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xExitButton.Location = New System.Drawing.Point(165, 227)
        Me.xExitButton.Name = "xExitButton"
        Me.xExitButton.Size = New System.Drawing.Size(75, 23)
        Me.xExitButton.TabIndex = 5
        Me.xExitButton.Text = "E&xit"
        Me.xExitButton.UseVisualStyleBackColor = True
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(9, 143)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(63, 16)
        Me.Label3.TabIndex = 6
        Me.Label3.Text = "Discount:"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(133, 143)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(107, 16)
        Me.Label4.TabIndex = 8
        Me.Label4.Text = "Discounted Price"
        '
        'xDiscountLabel
        '
        Me.xDiscountLabel.AutoSize = True
        Me.xDiscountLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xDiscountLabel.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xDiscountLabel.Location = New System.Drawing.Point(12, 159)
        Me.xDiscountLabel.MinimumSize = New System.Drawing.Size(100, 22)
        Me.xDiscountLabel.Name = "xDiscountLabel"
        Me.xDiscountLabel.Size = New System.Drawing.Size(100, 22)
        Me.xDiscountLabel.TabIndex = 7
        Me.xDiscountLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'xDiscountedPriceLabel
        '
        Me.xDiscountedPriceLabel.AutoSize = True
        Me.xDiscountedPriceLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xDiscountedPriceLabel.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xDiscountedPriceLabel.Location = New System.Drawing.Point(136, 159)
        Me.xDiscountedPriceLabel.MinimumSize = New System.Drawing.Size(100, 22)
        Me.xDiscountedPriceLabel.Name = "xDiscountedPriceLabel"
        Me.xDiscountedPriceLabel.Size = New System.Drawing.Size(100, 22)
        Me.xDiscountedPriceLabel.TabIndex = 9
        Me.xDiscountedPriceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(284, 262)
        Me.Controls.Add(Me.xDiscountedPriceLabel)
        Me.Controls.Add(Me.xDiscountLabel)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.xExitButton)
        Me.Controls.Add(Me.xCalcButton)
        Me.Controls.Add(Me.xRateListBox)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.xPriceTextBox)
        Me.Controls.Add(Me.Label1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents xPriceTextBox As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents xRateListBox As System.Windows.Forms.ListBox
    Friend WithEvents xCalcButton As System.Windows.Forms.Button
    Friend WithEvents xExitButton As System.Windows.Forms.Button
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents xDiscountLabel As System.Windows.Forms.Label
    Friend WithEvents xDiscountedPriceLabel As System.Windows.Forms.Label

End Class
