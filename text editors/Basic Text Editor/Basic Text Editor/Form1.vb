' Nick Leep's Basic Text Editor, v 0.1
' A simple text editor


Imports System.IO
Public Class Form1
    ' first make sure everything's set up right:
    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' make sure that this is right:
        mnuViewWordWrap.Checked = txtEdit.WordWrap

    End Sub
    ' Now let's make a global variable: saved or not?
    Public isUnsaved As Boolean = False


    ' Now the different drop-down menu things, and the different things they handle
    ' "File" menu:

    Private Sub mnuFileNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuFileNew.Click
        If isUnsaved Then
            Dim dr As DialogResult
            dr = MessageBox.Show("Are you sure you want to open a new document and discard changes to this one?", "Confirmation", MessageBoxButtons.YesNo)
            If dr = Windows.Forms.DialogResult.Yes Then
                newFile()
            End If
        Else
            newFile()
        End If
    End Sub
    ' Open:
    Private Sub mnuFileOpen_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuFileOpen.Click, tsbOpen.Click
        Dim readerVar As IO.StreamReader
        Dim dr As DialogResult
        dr = dlgOpen.ShowDialog()
        If dr = Windows.Forms.DialogResult.OK Then
            readerVar = New StreamReader(dlgOpen.FileName)
            txtEdit.Text = readerVar.ReadToEnd
            Me.Text = dlgOpen.FileName
            readerVar.Close()
            isSaved()
        End If
    End Sub
    ' Save:
    Private Sub mnuFileSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuFileSave.Click, tsbSave.Click
        Dim writerVar As IO.StreamWriter
        Dim dr As DialogResult
        dr = dlgSave.ShowDialog()
        If dr = Windows.Forms.DialogResult.OK Then
            writerVar = New StreamWriter(dlgSave.FileName, False)
            writerVar.Write(txtEdit.Text)
            Me.Text = dlgSave.FileName
            writerVar.Close()
            isSaved()
        End If
    End Sub
    ' Exit: 
    Private Sub mnuFileExit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuFileExit.Click
        Me.Close()
    End Sub

    ' "edit" options:
    ' The copy buttons:
    Private Sub mnuEditCopy_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuEditCopy.Click, tsbCopy.Click, cmnEditCopy.Click
        txtEdit.Copy()
    End Sub
    ' the cut buttons:
    Private Sub mnuEditCut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuEditCut.Click, tsbCut.Click, cmnuEditCut.Click
        txtEdit.Cut()
    End Sub
    ' the paste buttons:
    Private Sub pasteText(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuEditPaste.Click, cmnEditPaste.Click, tsbPaste.Click
        txtEdit.Paste()
    End Sub

    ' "View" menu:
    Private Sub switchWordWrap(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuViewWordWrap.Click
        If txtEdit.WordWrap Then
            txtEdit.WordWrap = False
            mnuViewWordWrap.Checked = False
        Else
            txtEdit.WordWrap = True
            mnuViewWordWrap.Checked = True
        End If
    End Sub


    ' About dialog box:
    Private Sub mnuHelpAbout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuHelpAbout.Click
        MessageBox.Show("Nick Leep's Basic Text Editor, v 0.1", "About Basic Text Editor", MessageBoxButtons.OK, MessageBoxIcon.Information)
    End Sub

    ' Sub to run whenever someone wants to close:
    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        e.Cancel = MessageBox.Show("Are you sure to exit?", "Exit Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Question) <> DialogResult.Yes
    End Sub

    ' Tracks whether or not text is changed: 
    Private Sub txtEdit_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtEdit.TextChanged
        If Not isUnsaved Then
            isUnsaved = True
            Dim newName As String = Me.Text
            newName = newName & " *"
            Me.Text = newName
        End If

    End Sub

    ' change to make it saved:
    Private Sub isSaved()
        isUnsaved = False

    End Sub

    Private Sub newFile()
        txtEdit.Text = ""
        Me.Text = "New file"
    End Sub
End Class
