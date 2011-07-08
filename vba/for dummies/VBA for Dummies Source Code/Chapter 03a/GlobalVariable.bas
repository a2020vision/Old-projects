Attribute VB_Name = "GlobalVariable"
Option Explicit

' Declare a private global variable.
Private MyGlobalVariable As String

Public Sub GlobalTest()
    ' Set the value of the global variable.
    MyGlobalVariable = "Hello"
    
    ' Display the value.
    MsgBox MyGlobalVariable
    
    ' Call the GlobalTest2 Sub
    GlobalTest2
    
    ' Display the value on return from the call.
    MsgBox MyGlobalVariable
End Sub

Private Sub GlobalTest2()
    ' Show that the global variable is truly global.
    MsgBox MyGlobalVariable
    
    ' Change the value of the global variable.
    MyGlobalVariable = "Goodbye"
End Sub
