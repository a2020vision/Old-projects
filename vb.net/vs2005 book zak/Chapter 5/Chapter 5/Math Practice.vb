' Chapter 4
' A math practice application for first and second grade

Option Explicit On
Option Strict On


Public Class Form1
    ' Dim operation As String = "+" 'stores the operation, either + or -
    Dim num1 As Integer
    Dim num2 As Integer
    Dim numRight As Integer = 0
    Dim numWrong As Integer = 0
    Dim randomGenerator As New Random

    Private Sub xExitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xExitButton.Click
        Me.Close()
    End Sub

    '    Private Sub xAdditionRadioButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xAdditionRadioButton.Click
    '        Me.xOperationLabel.Text = "+"
    '        Call GenerateAndDisplayNumbers()
    '        Me.xFacePictureBox.Image = Me.xNeutralPictureBox.Image
    '
    '    End Sub

    '    Private Sub xSubtractionRadioButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xSubtractionRadioButton.Click
    '        Me.xOperationLabel.Text = "-"
    '        Call GenerateAndDisplayNumbers()
    '        Me.xFacePictureBox.Image = Me.xNeutralPictureBox.Image
    '    End Sub
    Private Sub GenerateAndDisplayNumbers()
        If Me.xGrade1RadioButton.Checked Then
            num1 = randomGenerator.Next(1, 11)
            num2 = randomGenerator.Next(1, 11)
        Else ' second grade
            num1 = randomGenerator.Next(10, 100)
            num2 = randomGenerator.Next(10, 100)
        End If
        If Me.xSubtractionRadioButton.Checked AndAlso num1 < num2 Then
            ' operation is subtraction, and they're in the wrong order
            Dim temp As Integer
            temp = num2
            num2 = num1
            num1 = temp
        End If
        ' finally, display the numbers:
        Me.xNum1Label.Text = num1.ToString
        Me.xNum2Label.Text = num2.ToString
    End Sub

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call GenerateAndDisplayNumbers()

    End Sub

    Private Sub xAnsTextBox_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles xAnsTextBox.KeyPress
        If (e.KeyChar < "0" OrElse e.KeyChar > "9") _
            AndAlso e.KeyChar <> ControlChars.Back Then
            e.Handled = True
        End If
    End Sub

    Private Sub xCheckButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xCheckButton.Click
        Dim actualAnswer As Integer ' stores the actual answer
        Dim givenAnswer As Integer
        If Me.xSubtractionRadioButton.Checked Then ' subtraction
            actualAnswer = num1 - num2
        Else ' addition
            actualAnswer = num1 + num2
        End If
        Integer.TryParse(Me.xAnsTextBox.Text, givenAnswer)
        If actualAnswer = givenAnswer Then
            numRight = numRight + 1
            Me.xFacePictureBox.Image = Me.xCorrectPictureBox.Image
            Me.xAnsTextBox.Text = String.Empty
            MessageBox.Show("You got it right!", "Math Practice", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Me.xAnsTextBox.SelectAll()
            Me.xNumCorrectLabel.Text = numRight.ToString
            Call GenerateAndDisplayNumbers()

        Else
            numWrong = numWrong + 1
            Me.xFacePictureBox.Image = Me.xIncorrectPictureBox.Image
            MessageBox.Show("You got the answer incorrect", "Math Practice", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Me.xNumWrongLabel.Text = numWrong.ToString

        End If
        Me.xAnsTextBox.Focus()


    End Sub

    Private Sub xDisplayCheckBox_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xDisplayCheckBox.Click
        Me.xSummaryGroupBox.Visible = Me.xDisplayCheckBox.Checked

    End Sub

    Private Sub ProcessRadioButtonClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles xGrade1RadioButton.Click, xGrade2RadioButton.Click
        If sender Is Me.xAdditionRadioButton Then
            Me.xOperationLabel.Text = "+"
        Else
            Me.xOperationLabel.Text = "-"
        End If
        Call GenerateAndDisplayNumbers()
    End Sub
End Class
