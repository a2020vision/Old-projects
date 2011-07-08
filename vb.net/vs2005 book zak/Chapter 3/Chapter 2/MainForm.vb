' Project Name:     SkateAway Project
' Project Purpose:  The project calculates the total number of skateboards
'                   ordered and the total price of the order.
' Created/revised:  Nick Leep on 12/11/2010
Option Explicit On
Option Strict On

Public Class MainForm
    ' constants:
    Private Const BoardPrice As Decimal = 100D ' $100/board
    Private Const TaxRate As Decimal = 0.05D ' 5% sales tax

    ' variables:
    Private salesPerson As String

    Private Sub xCalcButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xCalcButton.Click
        ' variables:
        Const InputPrompt As String = "Enter the salesperson's Name:"
        Const InputTitle As String = "Name Entry"
        Dim blueBoards As Integer
        Dim yellowBoards As Integer
        Dim totalBoards As Integer
        Dim subtotal As Decimal
        Dim salesTax As Decimal
        Dim totalPrice As Decimal
        Static salesPerson As String

        ' Get the name of the salesperson and store it in the formwide serting salesPerson
        salesPerson = InputBox(InputPrompt, InputTitle)

        ' Get the number of each color of boards:
        Integer.TryParse(Me.xBlueTextBox.Text, blueBoards)
        Integer.TryParse(Me.xYellowTextBox.Text, yellowBoards)

        totalBoards = blueBoards + yellowBoards

        ' calculate the subtotal:
        subtotal = totalBoards * BoardPrice

        ' calculate the sales tax:
        salesTax = subtotal * TaxRate

        ' calculate total:
        totalPrice = salesTax + subtotal

        ' Text outputs:
        Me.xTotalBoardsLabel.Text = Convert.ToString(totalBoards)
        Me.xTotalPriceLabel.Text = totalPrice.ToString("C")
        Me.xMessageLabel.Text = "The sales tax was " & salesTax.ToString("C") & "." _
        & ControlChars.NewLine & "Your salesperson was " & salesPerson & "."
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
        Me.xMessageLabel.Text = String.Empty
        Me.xNameTextBox.Focus()

    End Sub

    Private Sub xExitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xExitButton.Click
        Me.Close()
    End Sub


    Private Sub ClearControls(ByVal sender As Object, ByVal e As System.EventArgs) _
    Handles xBlueTextBox.TextChanged, xYellowTextBox.TextChanged
        ' clears the total boards, total price, and message

        Me.xTotalBoardsLabel.Text = String.Empty
        Me.xTotalPriceLabel.Text = String.Empty
        Me.xMessageLabel.Text = String.Empty

    End Sub
End Class
