Public Class Form1

    Private Sub btnClose_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClose.Click
        ConfirmClose()
    End Sub


    Public Sub ConfirmClose()
        ' confirms that a user wants to quit; if the answer is yes, the application exits, otherwise returns the user to the calling form
        Dim drQuit As DialogResult
        drQuit = MessageBox.Show("Do you really want to quit?", "Exit Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2)
        If drQuit = Windows.Forms.DialogResult.Yes Then
            Me.Close()
        End If
    End Sub


End Class
