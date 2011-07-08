' Chapter 11
' purpose: calculate the cost of sod for a lawn
' 12/31/2010 by Nick Leep nleep3@gmail.com

Public Class MainForm

    Private Sub xExitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xExitButton.Click
        Me.Close()
    End Sub

    Private Sub xCalcButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xCalcButton.Click
        Dim lawn As New MyRectangle
        Dim sodPrice As Decimal
        Dim area As Decimal
        Dim totalPrice As Decimal
        Decimal.TryParse(Me.xLengthTextBox.Text, lawn.Length)
        Decimal.TryParse(Me.xWidthTextBox.Text, lawn.Width)
        Decimal.TryParse(Me.xPriceTextBox.Text, sodPrice)
        If (Me.xLengthTextBox.Text = String.Empty) OrElse (Me.xPriceTextBox.Text = String.Empty) OrElse (Me.xWidthTextBox.Text = String.Empty) Then
            MessageBox.Show("Please enter all fields!", "Landscape", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If

        area = lawn.CalculateArea / 9D ' lawn.CalculateArea returns square feet, we need square yards (divide by 9)

        totalPrice = area * sodPrice
        Me.xTotalPriceLabel.Text = totalPrice.ToString("C2")

        ' return focus
        Me.xLengthTextBox.Focus()
    End Sub

    Private Sub numericOnly(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles xLengthTextBox.KeyPress, xPriceTextBox.KeyPress, xWidthTextBox.KeyPress
        ' only allows numeric or "." as entry.
        If (e.KeyChar < "0" OrElse e.KeyChar > "9") AndAlso e.KeyChar <> ControlChars.Back AndAlso e.KeyChar <> "." Then
            e.Handled = True

        End If
    End Sub
End Class
