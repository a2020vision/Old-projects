Public Class Form1

    Private Sub mnuFileExit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuFileExit.Click
        Me.Close()

    End Sub

    Private Sub btnChangeOptions_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnChangeOptions.Click
        ' Change activated/deactivated context menu controls on the picture
        Dim intMenuItemIndex As Integer
        Dim intNumMenuItems As Integer = mnuContextPicture.Items.Count
        Debug.Print(intNumMenuItems.ToString)

        'For intMenuItemIndex = 1 To intNumMenuItems
        'Debug.Print("Item Number" & intMenuItemIndex.ToString)
        'If mnuContextPicture.Items(intMenuItemIndex).Enabled = True Then
        'mnuContextPicture.Items(intMenuItemIndex).Enabled = False

        'Else
        'mnuContextPicture.Items(intMenuItemIndex).Enabled = True
        'End If
        'Next intMenuItemIndex

    End Sub

    Private Sub mnuContextPicture_Opening(ByVal sender As System.Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles mnuContextPicture.Opening

    End Sub

    Private Sub mnuEditCopy_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuEditCopy.Click

    End Sub


End Class
