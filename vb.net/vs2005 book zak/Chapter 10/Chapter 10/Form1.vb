Public Class Friends
    Private Const FriendsFile As String = "friends.txt"

    Private Sub xExitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xExitButton.Click
        Me.Close()
    End Sub

    Private Sub xAddButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xAddButton.Click
        Const EnterMsg As String = "Please enter a name."
        Const DuplicateMsg As String = "Duplicate entry."
        Dim friendName As String = Me.xFriendsComboBox.Text.Trim ' friend name, initialized too, to whatever they've typed into the combo box

        If friendName = String.Empty Then
            MessageBox.Show(EnterMsg, "Friends", MessageBoxButtons.OK, MessageBoxIcon.Information)
        Else
            If Me.xFriendsComboBox.Items.Contains(friendName) Then
                MessageBox.Show(DuplicateMsg, "Friends", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
            Else
                Me.xFriendsComboBox.Items.Add(friendName)
            End If

        End If
        Me.xFriendsComboBox.Focus()

    End Sub

    Private Sub xRemoveButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles xRemoveButton.Click
        Dim friendName As String
        friendName = Me.xFriendsComboBox.Text.Trim

        Me.xFriendsComboBox.Items.Remove(friendName)

    End Sub

    Private Sub Friends_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing

        If My.Computer.FileSystem.FileExists(FriendsFile) Then
            My.Computer.FileSystem.DeleteFile(FriendsFile)
        End If
        For x As Integer = 0 To Me.xFriendsComboBox.Items.Count - 1
            My.Computer.FileSystem.WriteAllText(FriendsFile, Me.xFriendsComboBox.Items(x).ToString & ControlChars.NewLine, True)

        Next x
    End Sub

    Private Sub Friends_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim friends As String
        Dim name As String
        Dim newLineIndex As Integer
        Dim nameIndex As Integer = 0
        If My.Computer.FileSystem.FileExists(FriendsFile) Then
            friends = My.Computer.FileSystem.ReadAllText(FriendsFile)
            newLineIndex = friends.IndexOf(ControlChars.NewLine)
            Do Until newLineIndex = -1
                name = friends.Substring(nameIndex, newLineIndex - nameIndex)
                Me.xFriendsComboBox.Items.Add(name)
                nameIndex = newLineIndex + 2
                newLineIndex = friends.IndexOf(ControlChars.NewLine, nameIndex)

            Loop
        End If
    End Sub
End Class
