<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class harveyIndustries
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
        Me.Label2 = New System.Windows.Forms.Label
        Me.xNameTextBox = New System.Windows.Forms.TextBox
        Me.xSingleRadioButton = New System.Windows.Forms.RadioButton
        Me.xMarriedRadioButton = New System.Windows.Forms.RadioButton
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.xAllowancesComboBox = New System.Windows.Forms.ComboBox
        Me.xHoursListBox = New System.Windows.Forms.ListBox
        Me.xRateListBox = New System.Windows.Forms.ListBox
        Me.xCalcButton = New System.Windows.Forms.Button
        Me.xExitButton = New System.Windows.Forms.Button
        Me.xNetPayLabel = New System.Windows.Forms.Label
        Me.xFICALabel = New System.Windows.Forms.Label
        Me.xFWTLabel = New System.Windows.Forms.Label
        Me.xGrossPayLabel = New System.Windows.Forms.Label
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label7 = New System.Windows.Forms.Label
        Me.Label8 = New System.Windows.Forms.Label
        Me.Label9 = New System.Windows.Forms.Label
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(12, 56)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(38, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "&Name:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(187, 9)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(182, 16)
        Me.Label2.TabIndex = 20
        Me.Label2.Text = "Harvey Industries Payroll"
        Me.Label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'xNameTextBox
        '
        Me.xNameTextBox.Location = New System.Drawing.Point(15, 72)
        Me.xNameTextBox.Name = "xNameTextBox"
        Me.xNameTextBox.Size = New System.Drawing.Size(163, 20)
        Me.xNameTextBox.TabIndex = 1
        '
        'xSingleRadioButton
        '
        Me.xSingleRadioButton.AutoSize = True
        Me.xSingleRadioButton.Checked = True
        Me.xSingleRadioButton.Location = New System.Drawing.Point(227, 54)
        Me.xSingleRadioButton.Name = "xSingleRadioButton"
        Me.xSingleRadioButton.Size = New System.Drawing.Size(54, 17)
        Me.xSingleRadioButton.TabIndex = 2
        Me.xSingleRadioButton.TabStop = True
        Me.xSingleRadioButton.Text = "&Single"
        Me.xSingleRadioButton.UseVisualStyleBackColor = True
        '
        'xMarriedRadioButton
        '
        Me.xMarriedRadioButton.AutoSize = True
        Me.xMarriedRadioButton.Location = New System.Drawing.Point(227, 77)
        Me.xMarriedRadioButton.Name = "xMarriedRadioButton"
        Me.xMarriedRadioButton.Size = New System.Drawing.Size(60, 17)
        Me.xMarriedRadioButton.TabIndex = 3
        Me.xMarriedRadioButton.Text = "&Married"
        Me.xMarriedRadioButton.UseVisualStyleBackColor = True
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(316, 56)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(38, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "&Hours:"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(392, 56)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(33, 13)
        Me.Label4.TabIndex = 6
        Me.Label4.Text = "&Rate:"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(458, 56)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(64, 13)
        Me.Label5.TabIndex = 8
        Me.Label5.Text = "&Allowances:"
        '
        'xAllowancesComboBox
        '
        Me.xAllowancesComboBox.FormattingEnabled = True
        Me.xAllowancesComboBox.Location = New System.Drawing.Point(461, 76)
        Me.xAllowancesComboBox.Name = "xAllowancesComboBox"
        Me.xAllowancesComboBox.Size = New System.Drawing.Size(38, 21)
        Me.xAllowancesComboBox.TabIndex = 9
        '
        'xHoursListBox
        '
        Me.xHoursListBox.FormattingEnabled = True
        Me.xHoursListBox.Location = New System.Drawing.Point(319, 72)
        Me.xHoursListBox.Name = "xHoursListBox"
        Me.xHoursListBox.Size = New System.Drawing.Size(50, 56)
        Me.xHoursListBox.TabIndex = 5
        '
        'xRateListBox
        '
        Me.xRateListBox.FormattingEnabled = True
        Me.xRateListBox.Location = New System.Drawing.Point(395, 72)
        Me.xRateListBox.Name = "xRateListBox"
        Me.xRateListBox.Size = New System.Drawing.Size(60, 56)
        Me.xRateListBox.TabIndex = 7
        '
        'xCalcButton
        '
        Me.xCalcButton.Location = New System.Drawing.Point(366, 194)
        Me.xCalcButton.Name = "xCalcButton"
        Me.xCalcButton.Size = New System.Drawing.Size(75, 23)
        Me.xCalcButton.TabIndex = 18
        Me.xCalcButton.Text = "&Calculate" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10)
        Me.xCalcButton.UseVisualStyleBackColor = True
        '
        'xExitButton
        '
        Me.xExitButton.Location = New System.Drawing.Point(461, 194)
        Me.xExitButton.Name = "xExitButton"
        Me.xExitButton.Size = New System.Drawing.Size(75, 23)
        Me.xExitButton.TabIndex = 19
        Me.xExitButton.Text = "E&xit"
        Me.xExitButton.UseVisualStyleBackColor = True
        '
        'xNetPayLabel
        '
        Me.xNetPayLabel.AutoSize = True
        Me.xNetPayLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xNetPayLabel.Location = New System.Drawing.Point(255, 194)
        Me.xNetPayLabel.MinimumSize = New System.Drawing.Size(75, 23)
        Me.xNetPayLabel.Name = "xNetPayLabel"
        Me.xNetPayLabel.Size = New System.Drawing.Size(75, 23)
        Me.xNetPayLabel.TabIndex = 17
        Me.xNetPayLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'xFICALabel
        '
        Me.xFICALabel.AutoSize = True
        Me.xFICALabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xFICALabel.Location = New System.Drawing.Point(174, 194)
        Me.xFICALabel.MinimumSize = New System.Drawing.Size(75, 23)
        Me.xFICALabel.Name = "xFICALabel"
        Me.xFICALabel.Size = New System.Drawing.Size(75, 23)
        Me.xFICALabel.TabIndex = 15
        Me.xFICALabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'xFWTLabel
        '
        Me.xFWTLabel.AutoSize = True
        Me.xFWTLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xFWTLabel.Location = New System.Drawing.Point(93, 194)
        Me.xFWTLabel.MinimumSize = New System.Drawing.Size(75, 23)
        Me.xFWTLabel.Name = "xFWTLabel"
        Me.xFWTLabel.Size = New System.Drawing.Size(75, 23)
        Me.xFWTLabel.TabIndex = 13
        Me.xFWTLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'xGrossPayLabel
        '
        Me.xGrossPayLabel.AutoSize = True
        Me.xGrossPayLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xGrossPayLabel.Location = New System.Drawing.Point(12, 195)
        Me.xGrossPayLabel.MinimumSize = New System.Drawing.Size(75, 23)
        Me.xGrossPayLabel.Name = "xGrossPayLabel"
        Me.xGrossPayLabel.Size = New System.Drawing.Size(75, 23)
        Me.xGrossPayLabel.TabIndex = 11
        Me.xGrossPayLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(12, 171)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(57, 13)
        Me.Label6.TabIndex = 10
        Me.Label6.Text = "Gross pay:"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(90, 171)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(34, 13)
        Me.Label7.TabIndex = 12
        Me.Label7.Text = "FWT:"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(171, 171)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(33, 13)
        Me.Label8.TabIndex = 14
        Me.Label8.Text = "FICA:"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(252, 171)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(48, 13)
        Me.Label9.TabIndex = 16
        Me.Label9.Text = "Net Pay:"
        '
        'harveyIndustries
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(561, 273)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.xGrossPayLabel)
        Me.Controls.Add(Me.xFWTLabel)
        Me.Controls.Add(Me.xFICALabel)
        Me.Controls.Add(Me.xNetPayLabel)
        Me.Controls.Add(Me.xExitButton)
        Me.Controls.Add(Me.xCalcButton)
        Me.Controls.Add(Me.xRateListBox)
        Me.Controls.Add(Me.xHoursListBox)
        Me.Controls.Add(Me.xAllowancesComboBox)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.xMarriedRadioButton)
        Me.Controls.Add(Me.xSingleRadioButton)
        Me.Controls.Add(Me.xNameTextBox)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Name = "harveyIndustries"
        Me.Text = "Harvey Industries"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents xNameTextBox As System.Windows.Forms.TextBox
    Friend WithEvents xSingleRadioButton As System.Windows.Forms.RadioButton
    Friend WithEvents xMarriedRadioButton As System.Windows.Forms.RadioButton
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents xAllowancesComboBox As System.Windows.Forms.ComboBox
    Friend WithEvents xHoursListBox As System.Windows.Forms.ListBox
    Friend WithEvents xRateListBox As System.Windows.Forms.ListBox
    Friend WithEvents xCalcButton As System.Windows.Forms.Button
    Friend WithEvents xExitButton As System.Windows.Forms.Button
    Friend WithEvents xNetPayLabel As System.Windows.Forms.Label
    Friend WithEvents xFICALabel As System.Windows.Forms.Label
    Friend WithEvents xFWTLabel As System.Windows.Forms.Label
    Friend WithEvents xGrossPayLabel As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label

End Class
