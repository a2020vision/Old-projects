Public Class Form1

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        For rates As Double = 10.0 To 30.0 Step 5.0
            Me.xRateListBox.Items.Add(rates.ToString)
        Next rates
        Me.xRateListBox.SelectedIndex = 0
    End Sub

    Private Sub xExitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xExitButton.Click
        Me.Close()
    End Sub

    Private Sub xPriceTextBox_Enter(ByVal sender As Object, ByVal e As System.EventArgs) Handles xPriceTextBox.Enter
        Me.xPriceTextBox.SelectAll()

    End Sub

    Private Sub clearLabels(ByVal sender As Object, ByVal e As System.EventArgs) Handles xPriceTextBox.TextChanged, xRateListBox.SelectedValueChanged
        Me.xDiscountedPriceLabel.Text = String.Empty
        Me.xDiscountLabel.Text = String.Empty

    End Sub

    Private Sub xCalcButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xCalcButton.Click
        Dim origPrice As Double
        Dim rate As Double
        Dim discount As Double
        Dim discPrice As Double
        Dim isOk As Double

        isOk = Double.TryParse(Me.xPriceTextBox.Text, origPrice)
        If isOk Then
            rate = Convert.ToDouble(Me.xRateListBox.SelectedItem)
            discount = origPrice * rate / 100.0
            discPrice = origPrice - discount
            Me.xDiscountLabel.Text = discount.ToString("C2")
            Me.xDiscountedPriceLabel.Text = discPrice.ToString("C2")

        Else
            MessageBox.Show("Original price is not an acceptable price!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If
    End Sub
End Class
