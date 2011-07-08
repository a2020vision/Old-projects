Option Explicit On
Option Strict On


Public Class Form1

    Private Sub xExitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xExitButton.Click
        Me.Close()
    End Sub

    Private Sub xPrincipalTextBox_Enter(ByVal sender As Object, ByVal e As System.EventArgs) Handles xPrincipalTextBox.Enter
        Me.xPrincipalTextBox.SelectAll()

    End Sub

    Private Sub xRateTextBox_Enter(ByVal sender As Object, ByVal e As System.EventArgs) Handles xRateTextBox.Enter
        Me.xRateTextBox.SelectAll()
    End Sub

    Private Sub xTermTextBox_Enter(ByVal sender As Object, ByVal e As System.EventArgs) Handles xTermTextBox.Enter
        Me.xTermTextBox.SelectAll()
    End Sub

    Private Sub CancelKeys(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) _
            Handles xPrincipalTextBox.KeyPress, xRateTextBox.KeyPress, xTermTextBox.KeyPress
        ' allows numbers, the Backspace key, and the period

        If (e.KeyChar < "0" OrElse e.KeyChar > "9") _
            AndAlso e.KeyChar <> ControlChars.Back _
            AndAlso e.KeyChar <> "." Then
            ' cancel the key:
            e.Handled = True

        End If

    End Sub

    Private Sub xPrincipalTextBox_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles xPrincipalTextBox.TextChanged, xRateTextBox.TextChanged, xTermTextBox.TextChanged
        ' clears the monthly payment

        Me.xPaymentsLabel.Text = String.Empty
    End Sub

    Private Sub xCalcButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xCalcButton.Click
        ' Calculates and displays a monthly period

        Const Message As String = "The term must be greater than or equal to 1."
        Dim principal As Double
        Dim interestRate As Double
        Dim loanTerm As Double
        Dim monthlyPayment As Double

        Double.TryParse(Me.xPrincipalTextBox.Text, principal)
        Double.TryParse(Me.xRateTextBox.Text, interestRate)
        Double.TryParse(Me.xTermTextBox.Text, loanTerm)

        ' convert interest rate to decimal form, if necessary
        If interestRate >= 1.0 Then
            interestRate = interestRate / 100.0

        End If
        If loanTerm >= 1.0 Then
            monthlyPayment = Financial.Pmt(interestRate / 12, 12 * loanTerm, principal)
            Me.xPaymentsLabel.Text = monthlyPayment.ToString("C2")
        Else
            MessageBox.Show(Message, "Monthly Payment Calculator", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If

    End Sub
End Class
