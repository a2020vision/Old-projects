Attribute VB_Name = "OptionExplicit"
' Tell VBA to ensure we define variables.
Option Explicit

' This Sub will fail because it doesn't
' define the variable.
Public Sub OptionCheck()
    MyVar = "Hello"
    MsgBox MyVar
End Sub

' This Sub will succeed.
Public Sub OptionCheck2()
    ' Define the variable.
    Dim MyVar As String
    
    ' Add a value to the variable.
    MyVar = "Hello"
    
    ' Display a message box.
    MsgBox MyVar
End Sub
