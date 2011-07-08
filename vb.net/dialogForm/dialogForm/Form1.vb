Public Class Form1

    Private Sub btnNewCaption_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNewCaption.Click
        Dim frmCaption As New changeCaption
        frmCaption.ShowDialog(Me)
        If frmCaption.DialogResult = Windows.Forms.DialogResult.OK Then
            Me.Text = frmCaption.txtNewCaption.Text

        End If
    End Sub
End Class
