' Project Name:     SkateAway Project
' Project Purpose:  The project calculates the total number of skateboards
'                   ordered and the total price of the order.
' Created/revised:  Nick Leep on 12/11/2010

Public Class MainForm

    Private Sub xCalcButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xCalcButton.Click
        Me.xTotalBoardsLabel.Text = Val(Me.xBlueTextBox.Text) + Val(Me.xYellowTextBox.Text)
        Me.xTotalPriceLabel.Text = Val(Me.xTotalBoardsLabel.Text) * 100 * 1.05 ' $100/board, 5% sales tax
        Me.xTotalPriceLabel.Text = Format(Me.xTotalPriceLabel.Text, "currency")
    End Sub

    Private Sub xClearButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xClearButton.Click
        ' prepare the screen for the next order
        Me.xNameTextBox.Text = String.Empty
        Me.xAddressTextBox.Text = String.Empty
        Me.xStateTextBox.Text = String.Empty
        Me.xCityTextBox.Text = String.Empty
        Me.xZipTextBox.Text = String.Empty
        Me.xBlueTextBox.Text = String.Empty
        Me.xYellowTextBox.Text = String.Empty
        Me.xTotalBoardsLabel.Text = String.Empty
        Me.xTotalPriceLabel.Text = String.Empty
        Me.xNameTextBox.Focus()

    End Sub

    Private Sub xExitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xExitButton.Click
        Me.Close()
    End Sub
End Class
