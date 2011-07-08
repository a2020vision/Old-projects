Public Class harveyIndustries

    Private Sub ClearLabels(ByVal sender As Object, ByVal e As System.EventArgs) Handles xNameTextBox.TextChanged, xAllowancesComboBox.TextChanged, xHoursListBox.SelectedValueChanged, xRateListBox.SelectedValueChanged, xMarriedRadioButton.Click, xSingleRadioButton.Click
        Me.xGrossPayLabel.Text = String.Empty
        Me.xFICALabel.Text = String.Empty
        Me.xFWTLabel.Text = String.Empty
        Me.xNetPayLabel.Text = String.Empty
    End Sub

    Private Sub xExitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xExitButton.Click
        Me.Close()

    End Sub

    Private Sub xNameTextBox_Enter(ByVal sender As Object, ByVal e As System.EventArgs) Handles xNameTextBox.Enter
        Me.xNameTextBox.SelectAll()

    End Sub

    Private Sub harveyIndustries_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        ' verify that the user wants to exit
        Dim button As DialogResult
        button = MessageBox.Show("Are you sure you want to quit?", "Harvey Industries", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation)
        If button = Windows.Forms.DialogResult.No Then
            e.Cancel = True

        End If
    End Sub

    Private Sub harveyIndustries_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        For hours As Decimal = 0D To 55D Step 0.5D
            Me.xHoursListBox.Items.Add(hours.ToString)
        Next

        For rates As Decimal = 7.5D To 15.5D Step 0.5D
            Me.xRateListBox.Items.Add(rates.ToString("N2"))
        Next
        For allowances As Integer = 0 To 10
            Me.xAllowancesComboBox.Items.Add(allowances.ToString)
        Next

        Me.xHoursListBox.SelectedItem = "40.0"
        Me.xRateListBox.SelectedItem = "9.50"
        Me.xAllowancesComboBox.SelectedIndex = 0
    End Sub

    Private Sub xCalcButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xCalcButton.Click
        Const ficaRate As Decimal = 0.0765D
        Dim numAllow As Integer
        Dim isAllowOK As Boolean
        Dim Message As String = "Please re-enter the allowances"
        Dim Caption As String = "Harvey Industries" ' come back to this later
        Dim hours As Decimal
        Dim rate As Decimal
        Dim grossPay As Decimal
        Dim maritalStatus As String
        Dim fwt As Decimal
        Dim ficaTax As Decimal
        Dim netPay As Decimal

        isAllowOK = Integer.TryParse(Me.xAllowancesComboBox.Text, numAllow)
        If isAllowOK Then
            Decimal.TryParse(Me.xHoursListBox.SelectedItem, hours)
            Decimal.TryParse(Me.xRateListBox.SelectedItem, rate)
            If Me.xSingleRadioButton.Checked Then
                ' single
                maritalStatus = "S"
            Else
                ' married
                maritalStatus = "M"
            End If
            If hours < 40D Then
                grossPay = hours * rate
            Else ' they worked overtime
                grossPay = 40 * rate + (hours - 40) * 1.5 * rate
            End If
            fwt = GetFwt(maritalStatus, numAllow, grossPay)
            ficaTax = grossPay * ficaRate
            ' round gross pay
            Math.Round(grossPay, 2)
            Math.Round(fwt, 2)
            Math.Round(ficaTax, 2)

            ' calc net pay
            netPay = grossPay - ficaTax - fwt

            ' display all this
            Me.xGrossPayLabel.Text = grossPay.ToString("N2")
            Me.xFICALabel.Text = ficaTax.ToString("N2")
            Me.xFWTLabel.Text = fwt.ToString("N2")
            Me.xNetPayLabel.Text = netPay.ToString("N2")
        Else
            MessageBox.Show(Message, Caption, MessageBoxButtons.OK)

        End If
    End Sub
    Private Function GetFwt(ByVal marital As String, ByVal numAllow As Integer, ByVal weekPay As Decimal) As Decimal
        Const WithAllow As Decimal = 63.46D
        Dim tax As Decimal
        Dim taxableWages As Decimal
        taxableWages = weekPay - Convert.ToDecimal(numAllow) * WithAllow
        If marital = "S" Then
            Select Case taxableWages
                Case Is <= 51D
                    tax = 0D
                Case Is <= 192D
                    tax = 0.1D * (taxableWages - 51D)
                Case Is <= 620D
                    tax = 14.1D + 0.15 * (taxableWages - 192D)
                Case Is <= 1409D
                    tax = 78.3D + 0.25D * (taxableWages - 620D)
                Case Is <= 3013D
                    tax = 275.55D + 0.28D * (taxableWages - 1409D)
                Case Is <= 6508D
                    tax = 724.67D + 0.33D * (taxableWages - 3013D)
                Case Else
                    tax = 1878.02D + 0.35D * (taxableWages - 6508D)
            End Select
        Else
            Select Case taxableWages
                Case Is <= 154D
                    tax = 0
                Case Is <= 440D
                    tax = 0.1D * (taxableWages - 154D)
                Case Is <= 1308D
                    tax = 28.6D + 0.15D * (taxableWages - 440D)
                Case Is <= 2440D
                    tax = 158.8D + 0.25D * (taxableWages - 1308D)
                Case Is <= 3759D
                    tax = 441.8 + 0.28D * (taxableWages - 2440D)
                Case Is <= 6607D
                    tax = 811.12D + 0.33D * (taxableWages - 2759D)
                Case Else
                    tax = 1750.96D + 0.35D * (taxableWages - 6607D)
            End Select
        End If

        Return tax
    End Function
End Class
