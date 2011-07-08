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
        Me.xMathGroupBox = New System.Windows.Forms.GroupBox
        Me.xExitButton = New System.Windows.Forms.Button
        Me.xCheckButton = New System.Windows.Forms.Button
        Me.xFacePictureBox = New System.Windows.Forms.PictureBox
        Me.xAnsTextBox = New System.Windows.Forms.TextBox
        Me.xOperationLabel = New System.Windows.Forms.Label
        Me.xNum2Label = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.xNum1Label = New System.Windows.Forms.Label
        Me.xOperationGroupBox = New System.Windows.Forms.GroupBox
        Me.xSubtractionRadioButton = New System.Windows.Forms.RadioButton
        Me.xAdditionRadioButton = New System.Windows.Forms.RadioButton
        Me.xGradeGroupBox = New System.Windows.Forms.GroupBox
        Me.xNeutralPictureBox = New System.Windows.Forms.PictureBox
        Me.xIncorrectPictureBox = New System.Windows.Forms.PictureBox
        Me.xGrade2RadioButton = New System.Windows.Forms.RadioButton
        Me.xGrade1RadioButton = New System.Windows.Forms.RadioButton
        Me.xCorrectPictureBox = New System.Windows.Forms.PictureBox
        Me.xDisplayCheckBox = New System.Windows.Forms.CheckBox
        Me.xSummaryGroupBox = New System.Windows.Forms.GroupBox
        Me.xNumWrongLabel = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.xNumCorrectLabel = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.xMathGroupBox.SuspendLayout()
        CType(Me.xFacePictureBox, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.xOperationGroupBox.SuspendLayout()
        Me.xGradeGroupBox.SuspendLayout()
        CType(Me.xNeutralPictureBox, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.xIncorrectPictureBox, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.xCorrectPictureBox, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.xSummaryGroupBox.SuspendLayout()
        Me.SuspendLayout()
        '
        'xMathGroupBox
        '
        Me.xMathGroupBox.Controls.Add(Me.xExitButton)
        Me.xMathGroupBox.Controls.Add(Me.xCheckButton)
        Me.xMathGroupBox.Controls.Add(Me.xFacePictureBox)
        Me.xMathGroupBox.Controls.Add(Me.xAnsTextBox)
        Me.xMathGroupBox.Controls.Add(Me.xOperationLabel)
        Me.xMathGroupBox.Controls.Add(Me.xNum2Label)
        Me.xMathGroupBox.Controls.Add(Me.Label2)
        Me.xMathGroupBox.Controls.Add(Me.xNum1Label)
        Me.xMathGroupBox.Location = New System.Drawing.Point(12, 12)
        Me.xMathGroupBox.Name = "xMathGroupBox"
        Me.xMathGroupBox.Size = New System.Drawing.Size(543, 122)
        Me.xMathGroupBox.TabIndex = 0
        Me.xMathGroupBox.TabStop = False
        '
        'xExitButton
        '
        Me.xExitButton.Location = New System.Drawing.Point(422, 62)
        Me.xExitButton.Name = "xExitButton"
        Me.xExitButton.Size = New System.Drawing.Size(91, 23)
        Me.xExitButton.TabIndex = 2
        Me.xExitButton.Text = "E&xit"
        Me.xExitButton.UseVisualStyleBackColor = True
        '
        'xCheckButton
        '
        Me.xCheckButton.Location = New System.Drawing.Point(422, 29)
        Me.xCheckButton.Name = "xCheckButton"
        Me.xCheckButton.Size = New System.Drawing.Size(91, 23)
        Me.xCheckButton.TabIndex = 1
        Me.xCheckButton.Text = "&Check Answer"
        Me.xCheckButton.UseVisualStyleBackColor = True
        '
        'xFacePictureBox
        '
        Me.xFacePictureBox.Image = Global.Chapter_5.My.Resources.Resources.neutral
        Me.xFacePictureBox.InitialImage = Global.Chapter_5.My.Resources.Resources.neutral
        Me.xFacePictureBox.Location = New System.Drawing.Point(354, 39)
        Me.xFacePictureBox.Name = "xFacePictureBox"
        Me.xFacePictureBox.Size = New System.Drawing.Size(36, 36)
        Me.xFacePictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.xFacePictureBox.TabIndex = 6
        Me.xFacePictureBox.TabStop = False
        '
        'xAnsTextBox
        '
        Me.xAnsTextBox.Font = New System.Drawing.Font("Arial Black", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xAnsTextBox.Location = New System.Drawing.Point(286, 39)
        Me.xAnsTextBox.MinimumSize = New System.Drawing.Size(45, 36)
        Me.xAnsTextBox.Name = "xAnsTextBox"
        Me.xAnsTextBox.Size = New System.Drawing.Size(45, 34)
        Me.xAnsTextBox.TabIndex = 0
        Me.xAnsTextBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'xOperationLabel
        '
        Me.xOperationLabel.AutoSize = True
        Me.xOperationLabel.Font = New System.Drawing.Font("Arial Black", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xOperationLabel.Location = New System.Drawing.Point(85, 39)
        Me.xOperationLabel.MinimumSize = New System.Drawing.Size(45, 36)
        Me.xOperationLabel.Name = "xOperationLabel"
        Me.xOperationLabel.Size = New System.Drawing.Size(45, 36)
        Me.xOperationLabel.TabIndex = 6
        Me.xOperationLabel.Text = "+"
        Me.xOperationLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'xNum2Label
        '
        Me.xNum2Label.AutoSize = True
        Me.xNum2Label.BackColor = System.Drawing.Color.White
        Me.xNum2Label.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xNum2Label.Font = New System.Drawing.Font("Arial Black", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xNum2Label.Location = New System.Drawing.Point(152, 39)
        Me.xNum2Label.MinimumSize = New System.Drawing.Size(45, 36)
        Me.xNum2Label.Name = "xNum2Label"
        Me.xNum2Label.Size = New System.Drawing.Size(45, 36)
        Me.xNum2Label.TabIndex = 4
        Me.xNum2Label.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Arial Black", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(219, 39)
        Me.Label2.MinimumSize = New System.Drawing.Size(45, 36)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(45, 36)
        Me.Label2.TabIndex = 5
        Me.Label2.Text = "="
        Me.Label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'xNum1Label
        '
        Me.xNum1Label.AutoSize = True
        Me.xNum1Label.BackColor = System.Drawing.Color.White
        Me.xNum1Label.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xNum1Label.Font = New System.Drawing.Font("Arial Black", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.xNum1Label.Location = New System.Drawing.Point(18, 39)
        Me.xNum1Label.MinimumSize = New System.Drawing.Size(45, 36)
        Me.xNum1Label.Name = "xNum1Label"
        Me.xNum1Label.Size = New System.Drawing.Size(45, 36)
        Me.xNum1Label.TabIndex = 3
        Me.xNum1Label.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'xOperationGroupBox
        '
        Me.xOperationGroupBox.Controls.Add(Me.xSubtractionRadioButton)
        Me.xOperationGroupBox.Controls.Add(Me.xAdditionRadioButton)
        Me.xOperationGroupBox.Location = New System.Drawing.Point(178, 149)
        Me.xOperationGroupBox.Name = "xOperationGroupBox"
        Me.xOperationGroupBox.Size = New System.Drawing.Size(98, 100)
        Me.xOperationGroupBox.TabIndex = 2
        Me.xOperationGroupBox.TabStop = False
        Me.xOperationGroupBox.Text = "Operation"
        '
        'xSubtractionRadioButton
        '
        Me.xSubtractionRadioButton.AutoSize = True
        Me.xSubtractionRadioButton.Location = New System.Drawing.Point(8, 56)
        Me.xSubtractionRadioButton.Name = "xSubtractionRadioButton"
        Me.xSubtractionRadioButton.Size = New System.Drawing.Size(79, 17)
        Me.xSubtractionRadioButton.TabIndex = 1
        Me.xSubtractionRadioButton.Text = "&Subtraction"
        Me.xSubtractionRadioButton.UseVisualStyleBackColor = True
        '
        'xAdditionRadioButton
        '
        Me.xAdditionRadioButton.AutoSize = True
        Me.xAdditionRadioButton.Checked = True
        Me.xAdditionRadioButton.Location = New System.Drawing.Point(8, 25)
        Me.xAdditionRadioButton.Name = "xAdditionRadioButton"
        Me.xAdditionRadioButton.Size = New System.Drawing.Size(63, 17)
        Me.xAdditionRadioButton.TabIndex = 0
        Me.xAdditionRadioButton.TabStop = True
        Me.xAdditionRadioButton.Text = "&Addition"
        Me.xAdditionRadioButton.UseVisualStyleBackColor = True
        '
        'xGradeGroupBox
        '
        Me.xGradeGroupBox.Controls.Add(Me.xNeutralPictureBox)
        Me.xGradeGroupBox.Controls.Add(Me.xIncorrectPictureBox)
        Me.xGradeGroupBox.Controls.Add(Me.xGrade2RadioButton)
        Me.xGradeGroupBox.Controls.Add(Me.xGrade1RadioButton)
        Me.xGradeGroupBox.Controls.Add(Me.xCorrectPictureBox)
        Me.xGradeGroupBox.Location = New System.Drawing.Point(12, 149)
        Me.xGradeGroupBox.Name = "xGradeGroupBox"
        Me.xGradeGroupBox.Size = New System.Drawing.Size(160, 100)
        Me.xGradeGroupBox.TabIndex = 1
        Me.xGradeGroupBox.TabStop = False
        Me.xGradeGroupBox.Text = "Grade"
        '
        'xNeutralPictureBox
        '
        Me.xNeutralPictureBox.Image = Global.Chapter_5.My.Resources.Resources.neutral
        Me.xNeutralPictureBox.Location = New System.Drawing.Point(68, 19)
        Me.xNeutralPictureBox.Name = "xNeutralPictureBox"
        Me.xNeutralPictureBox.Size = New System.Drawing.Size(100, 50)
        Me.xNeutralPictureBox.TabIndex = 12
        Me.xNeutralPictureBox.TabStop = False
        Me.xNeutralPictureBox.Visible = False
        '
        'xIncorrectPictureBox
        '
        Me.xIncorrectPictureBox.Image = Global.Chapter_5.My.Resources.Resources.incorrect
        Me.xIncorrectPictureBox.Location = New System.Drawing.Point(60, 11)
        Me.xIncorrectPictureBox.Name = "xIncorrectPictureBox"
        Me.xIncorrectPictureBox.Size = New System.Drawing.Size(100, 50)
        Me.xIncorrectPictureBox.TabIndex = 11
        Me.xIncorrectPictureBox.TabStop = False
        Me.xIncorrectPictureBox.Visible = False
        '
        'xGrade2RadioButton
        '
        Me.xGrade2RadioButton.AutoSize = True
        Me.xGrade2RadioButton.Location = New System.Drawing.Point(6, 56)
        Me.xGrade2RadioButton.Name = "xGrade2RadioButton"
        Me.xGrade2RadioButton.Size = New System.Drawing.Size(99, 17)
        Me.xGrade2RadioButton.TabIndex = 1
        Me.xGrade2RadioButton.TabStop = True
        Me.xGrade2RadioButton.Text = "Grade &2 (10-99)"
        Me.xGrade2RadioButton.UseVisualStyleBackColor = True
        '
        'xGrade1RadioButton
        '
        Me.xGrade1RadioButton.AutoSize = True
        Me.xGrade1RadioButton.Checked = True
        Me.xGrade1RadioButton.Location = New System.Drawing.Point(6, 25)
        Me.xGrade1RadioButton.Name = "xGrade1RadioButton"
        Me.xGrade1RadioButton.Size = New System.Drawing.Size(93, 17)
        Me.xGrade1RadioButton.TabIndex = 0
        Me.xGrade1RadioButton.TabStop = True
        Me.xGrade1RadioButton.Text = "Grade &1 (1-10)"
        Me.xGrade1RadioButton.UseVisualStyleBackColor = True
        '
        'xCorrectPictureBox
        '
        Me.xCorrectPictureBox.Image = Global.Chapter_5.My.Resources.Resources.correct
        Me.xCorrectPictureBox.Location = New System.Drawing.Point(52, 3)
        Me.xCorrectPictureBox.Name = "xCorrectPictureBox"
        Me.xCorrectPictureBox.Size = New System.Drawing.Size(100, 50)
        Me.xCorrectPictureBox.TabIndex = 10
        Me.xCorrectPictureBox.TabStop = False
        Me.xCorrectPictureBox.Visible = False
        '
        'xDisplayCheckBox
        '
        Me.xDisplayCheckBox.AutoSize = True
        Me.xDisplayCheckBox.Location = New System.Drawing.Point(307, 152)
        Me.xDisplayCheckBox.Name = "xDisplayCheckBox"
        Me.xDisplayCheckBox.Size = New System.Drawing.Size(104, 17)
        Me.xDisplayCheckBox.TabIndex = 3
        Me.xDisplayCheckBox.Text = "&Display summary"
        Me.xDisplayCheckBox.UseVisualStyleBackColor = True
        '
        'xSummaryGroupBox
        '
        Me.xSummaryGroupBox.Controls.Add(Me.xNumWrongLabel)
        Me.xSummaryGroupBox.Controls.Add(Me.Label4)
        Me.xSummaryGroupBox.Controls.Add(Me.xNumCorrectLabel)
        Me.xSummaryGroupBox.Controls.Add(Me.Label1)
        Me.xSummaryGroupBox.Location = New System.Drawing.Point(307, 175)
        Me.xSummaryGroupBox.Name = "xSummaryGroupBox"
        Me.xSummaryGroupBox.Size = New System.Drawing.Size(200, 74)
        Me.xSummaryGroupBox.TabIndex = 4
        Me.xSummaryGroupBox.TabStop = False
        Me.xSummaryGroupBox.Visible = False
        '
        'xNumWrongLabel
        '
        Me.xNumWrongLabel.AutoSize = True
        Me.xNumWrongLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xNumWrongLabel.Location = New System.Drawing.Point(124, 42)
        Me.xNumWrongLabel.MinimumSize = New System.Drawing.Size(40, 20)
        Me.xNumWrongLabel.Name = "xNumWrongLabel"
        Me.xNumWrongLabel.Size = New System.Drawing.Size(40, 20)
        Me.xNumWrongLabel.TabIndex = 3
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(124, 17)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(52, 13)
        Me.Label4.TabIndex = 2
        Me.Label4.Text = "Incorrect:"
        '
        'xNumCorrectLabel
        '
        Me.xNumCorrectLabel.AutoSize = True
        Me.xNumCorrectLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xNumCorrectLabel.Location = New System.Drawing.Point(23, 42)
        Me.xNumCorrectLabel.MinimumSize = New System.Drawing.Size(40, 20)
        Me.xNumCorrectLabel.Name = "xNumCorrectLabel"
        Me.xNumCorrectLabel.Size = New System.Drawing.Size(40, 20)
        Me.xNumCorrectLabel.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(20, 17)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(44, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Correct:"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(575, 273)
        Me.Controls.Add(Me.xSummaryGroupBox)
        Me.Controls.Add(Me.xDisplayCheckBox)
        Me.Controls.Add(Me.xGradeGroupBox)
        Me.Controls.Add(Me.xOperationGroupBox)
        Me.Controls.Add(Me.xMathGroupBox)
        Me.Name = "Form1"
        Me.Text = "Math Practice"
        Me.xMathGroupBox.ResumeLayout(False)
        Me.xMathGroupBox.PerformLayout()
        CType(Me.xFacePictureBox, System.ComponentModel.ISupportInitialize).EndInit()
        Me.xOperationGroupBox.ResumeLayout(False)
        Me.xOperationGroupBox.PerformLayout()
        Me.xGradeGroupBox.ResumeLayout(False)
        Me.xGradeGroupBox.PerformLayout()
        CType(Me.xNeutralPictureBox, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.xIncorrectPictureBox, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.xCorrectPictureBox, System.ComponentModel.ISupportInitialize).EndInit()
        Me.xSummaryGroupBox.ResumeLayout(False)
        Me.xSummaryGroupBox.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents xMathGroupBox As System.Windows.Forms.GroupBox
    Friend WithEvents xAnsTextBox As System.Windows.Forms.TextBox
    Friend WithEvents xOperationLabel As System.Windows.Forms.Label
    Friend WithEvents xNum2Label As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents xNum1Label As System.Windows.Forms.Label
    Friend WithEvents xFacePictureBox As System.Windows.Forms.PictureBox
    Friend WithEvents xExitButton As System.Windows.Forms.Button
    Friend WithEvents xCheckButton As System.Windows.Forms.Button
    Friend WithEvents xOperationGroupBox As System.Windows.Forms.GroupBox
    Friend WithEvents xSubtractionRadioButton As System.Windows.Forms.RadioButton
    Friend WithEvents xAdditionRadioButton As System.Windows.Forms.RadioButton
    Friend WithEvents xGradeGroupBox As System.Windows.Forms.GroupBox
    Friend WithEvents xGrade2RadioButton As System.Windows.Forms.RadioButton
    Friend WithEvents xGrade1RadioButton As System.Windows.Forms.RadioButton
    Friend WithEvents xCorrectPictureBox As System.Windows.Forms.PictureBox
    Friend WithEvents xNeutralPictureBox As System.Windows.Forms.PictureBox
    Friend WithEvents xIncorrectPictureBox As System.Windows.Forms.PictureBox
    Friend WithEvents xDisplayCheckBox As System.Windows.Forms.CheckBox
    Friend WithEvents xSummaryGroupBox As System.Windows.Forms.GroupBox
    Friend WithEvents xNumWrongLabel As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents xNumCorrectLabel As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label

End Class
