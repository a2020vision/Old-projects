Attribute VB_Name = "ConditionalCompilation"
Public Sub CheckConditional()
    #If myDebug = 0 Then
        MsgBox "In Standard Mode"
    #Else
        MsgBox "In Debug Mode"
    #End If
End Sub
