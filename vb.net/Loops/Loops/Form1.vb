Public Class Form1
    Private Sub PrintInput()
        Dim strInput As String
        strInput = InputBox("Enter something")
        If strInput = "" Then
            Return
        End If
        Debug.WriteLine(strInput)

    End Sub

    Private Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        PrintInput()
    End Sub
End Class
