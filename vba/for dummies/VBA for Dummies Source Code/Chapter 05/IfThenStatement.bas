Attribute VB_Name = "IfThenStatement"
Option Explicit

Public Sub IfThenTest()
    ' Create a variable for the selected text.
    Dim TestText As String
    
    ' Get the current selection.
    TestText = ActiveWindow.Selection.Text
    
    ' Test the selection for "Hello"
    If TestText = "Hello" Then
    
        ' Modify the selected text to show it's correct.
        TestText = "Correct!" + vbCrLf + "Hello"
    End If
    
    ' Test the selection for end of line.
    If TestText = Chr(13) Then
    
        ' Modify the selected text to show the control
        ' character.
        TestText = "End of line selected!"
    End If
    
    ' Display the selected text.
    MsgBox TestText
End Sub

