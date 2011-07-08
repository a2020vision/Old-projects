Attribute VB_Name = "ArrayTypes"
Option Explicit

' Tell VBA to start all arrays at 0.
Option Base 0

' Define some data exchange values for the
' GetArrayDimensions form.
Public Input1Value As Integer
Public Input2Value As Integer
Public ClickType As VbMsgBoxResult

Public Sub SingleDimension()
    ' Define an output string.
    Dim Output As String
    
    ' Define a variant to hold individual strings.
    Dim IndividualString As Variant
    
    ' Define the array of strings.
    Dim StringArray(5) As String
    
    ' Fill each array element with information.
    StringArray(0) = "This"
    StringArray(1) = "Is"
    StringArray(2) = "An"
    StringArray(3) = "Array"
    StringArray(4) = "Of"
    StringArray(5) = "Strings"
    
    ' Use the For Each...Next statement to get each array
    ' element and place it in a string.
    For Each IndividualString In StringArray
    
        ' Create a single output string with the array
        ' array elements.
        Output = Output + IndividualString + " "
    Next
    
    ' Display the result.
    MsgBox Trim(Output), _
           vbInformation Or vbOKOnly, _
           "Array Content"
End Sub

Public Sub TwoDimension()
    ' Create an array to hold the calculation results.
    Dim CalcResult() As Integer
    
    ' Create some loop variables for the calculation.
    Dim Loop1 As Integer
    Dim Loop2 As Integer
    
    ' Create an output string for the display.
    Dim Output As String
    
    ' Display a form to obtain the array dimensions.
    GetArrayDimensions.Show
    
    ' Determine which button the user clicked.
    If ClickType = vbCancel Then
    
        ' If the user clicked Cancel, exit.
        Exit Sub
    End If
    
    ' Redimension the array.
    ReDim CalcResult(Input1Value, Input2Value)
    
    ' Perform the calculation.
    For Loop1 = 1 To Input1Value
        For Loop2 = 1 To Input2Value
            CalcResult(Loop1, Loop2) = Loop1 * Loop2
        Next
    Next
    
    ' Create a heading.
    Output = "Calculation Results" + vbCrLf + _
             "In Tabular Format" + vbCrLf + vbCrLf
             
    ' Define the column heading values.
    For Loop1 = 1 To Input2Value
        Output = Output + vbTab + CStr(Loop1)
    Next
    
    ' Define the rows.
    For Loop1 = 1 To Input1Value
        Output = Output + vbCrLf + CStr(Loop1)
        For Loop2 = 1 To Input2Value
            Output = Output + vbTab + CStr(CalcResult(Loop1, Loop2))
        Next
    Next
    
    ' Create a message box to show the result.
    MsgBox Output, vbInformation Or vbOKOnly, "Results"
End Sub

Public Sub ArrayCopy()
    ' Create a loop variable.
    Dim Counter As Integer
    
    ' Create an orignal array of strings and a copy.
    Dim OriginalArray(4) As String
    Dim CopiedArray(5) As String
    
    ' Create an output variable.
    Dim Output As String
    
    ' Fill the array with data.
    OriginalArray(0) = "This"
    OriginalArray(1) = "is"
    OriginalArray(2) = "the"
    OriginalArray(3) = "original"
    OriginalArray(4) = "array!"
    
    ' Copy the data.
    For Counter = 0 To UBound(OriginalArray)
        CopiedArray(Counter) = OriginalArray(Counter)
    Next
    
    ' Modify some data elements.
    CopiedArray(3) = "copied"
    CopiedArray(4) = "array"
    
    ' Add a new element.
    CopiedArray(5) = "too!"
    
    ' Create the first part of the output string.
    Output = "The first string:" + vbCrLf
    For Counter = 0 To UBound(OriginalArray)
        Output = Output + OriginalArray(Counter) + " "
    Next
    
    ' Create the second part of the output string.
    Output = Output + vbCrLf + "The Second String:" + vbCrLf
    For Counter = 0 To UBound(CopiedArray)
        Output = Output + CopiedArray(Counter) + " "
    Next
    
    ' Display the results.
    MsgBox Output, vbInformation Or vbOKOnly, "Results"
End Sub
