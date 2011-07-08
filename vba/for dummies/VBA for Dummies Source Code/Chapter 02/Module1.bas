Attribute VB_Name = "Module1"
Sub SayHello()
Attribute SayHello.VB_Description = "This is a simple program."
Attribute SayHello.VB_ProcData.VB_Invoke_Func = "h\n14"
' Display the message box
Result = MsgBox("Click a Button", vbYesNoCancel, "A Message")
' See which button the user pressed.
MsgBox Result
' End the program.
End Sub

Sub SayHello2()
' Show that we're using the SayHello2 program.
MsgBox "We're in SayHello2!"

' Call SayHello
SayHello
End Sub

