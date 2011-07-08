Attribute VB_Name = "ErrorCondition"
Option Explicit
Public MyInteger As Integer
Public MyString As String

Public Sub DriveTest()
    ' Create a variable to hold the free space.
    Dim FreeSpace As Long
    
    ' Create a reference to the file system.
    Dim MyFileSystem As FileSystemObject
    
    ' Create a reference for the target drive.
    Dim MyDrive As Drive
    
    ' Create a dialog result variable.
    Dim Result As VbMsgBoxResult
    
    'Provide a jump back point.
DoCheckAgain:
    
    ' Fill these two objects with data so they show the
    ' available space on drive C.
    Set MyFileSystem = New FileSystemObject
    Set MyDrive = MyFileSystem.GetDrive("C")
    
    ' Determine the amount of free space.
    FreeSpace = MyDrive.AvailableSpace
    
    ' Make the check.
    If FreeSpace < 1000000000 Then
    
        ' The drive doesn't have enough space. Ask what to
        ' do.
        Result = MsgBox("The drive doesn't have enough " + _
                        "space to hold the data. Do you" + _
                        " want to correct the error?" + _
                        vbCrLf + _
                        Format(FreeSpace, "###,###") + _
                        " bytes available, " + _
                        "1,000,000,000 bytes needed.", _
                        vbYesNo Or vbExclamation, _
                        "Drive Space Error")
        
        ' Determine if the user wants to correct the error.
        If Result = vbYes Then
        
            ' Wait for the user to fix the problem.
            MsgBox "Please click OK when you have freed" + _
                   " some disk space.", _
                   vbInformation Or vbOKOnly, _
                   "Retry Drive Check"
            
            ' Go to the fallback point.
            GoTo DoCheckAgain
        Else
        
            ' The user doesn't want to fix the error.
            MsgBox "The program can't save your data " + _
                   "until the drive has enough space.", _
                   vbInformation Or vbOKOnly, _
                   "Insufficient Drive Space"
            
            ' End the Sub.
            Exit Sub
        End If
    End If
End Sub

Public Sub ErrorHandle()
    ' The variable that receives the input.
    Dim InNumber As Byte
    
    ' Tell VBA about the error handler.
    On Error GoTo MyHandler
    
    ' Ask the user for some input.
    InNumber = InputBox("Type a number between 1 and " + _
                        "10.", "Numberic Input", "1")
                        
    ' Determine whether the input is correct.
    If (InNumber < 1) Or (InNumber > 10) Then
    
        ' If the input is incorrect, then raise an error.
        Err.Raise vbObjectError + 1, _
                  "ErrorCheck.ErrorCondition.ErrorHandle", _
                  "Incorrect Numeric Input. The number " + _
                  "must be between 1 and 10."
    Else
        ' Otherwise, display the result.
        MsgBox "The Number You Typed: " + CStr(InNumber), _
               vbOKOnly Or vbInformation, _
               "Successful Input"
    End If
    
    ' Exit the Sub.
    Exit Sub

' The start of the error handler.
MyHandler:
    
    ' Display an error message box.
    MsgBox "The program experienced an error." + vbCrLf + _
           "Error Number: " + CStr(Err.Number) + vbCrLf + _
           "Description: " + Err.Description + vbCrLf + _
           "Source: " + Err.Source, _
           vbOKOnly Or vbExclamation, _
           "Program Error"
           
    ' Always clear the error after you process it.
    Err.Clear
End Sub

Public Sub UseDebug()
    ' The variable that receives the input.
    Dim InNumber As Byte
    
    ' Ask the user for some input.
    InNumber = InputBox("Type a number between 1 and " + _
                        "10.", "Numberic Input", "1")
    
    ' Print the value of InNumber to the Immediate window.
    Debug.Print "InNumber = " + CStr(InNumber)
    
    ' Stop program execution if InNumber is not in the
    ' correct range.
    Debug.Assert (InNumber >= 1) And (InNumber <= 10)
    
    ' Display the result.
    MsgBox "The Number You Typed: " + CStr(InNumber), _
           vbOKOnly Or vbInformation, _
           "Successful Input"
End Sub
