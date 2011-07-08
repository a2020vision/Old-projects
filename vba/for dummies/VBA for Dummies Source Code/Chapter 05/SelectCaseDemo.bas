Attribute VB_Name = "SelectCaseDemo"
Option Explicit

Public Sub MakeChoice()
    Dim CursorPosition  As Integer  ' Current row selection.
    Dim BinValue As Integer         ' Bin for selected row.
    Dim Output As Integer           ' Storage room number.
    
    ' Determine if the user has selected more than one row.
    If ActiveWindow.RangeSelection.Rows.Count = 1 Then
    
        ' Get the cursor position.
        CursorPosition = ActiveWindow.RangeSelection.Row
    Else
    
        ' Tell the user to select only one cell.
        MsgBox "Select only one cell!", _
               vbExclamation Or vbOKOnly, _
               "Selection Error"
        
        ' Exit the Sub without further processing.
        End
    End If
    
    ' Get the selected bin number.
    BinValue = Sheet2.Cells(CursorPosition, 2)
    
    ' Select a choice of storage room based in the bin.
    Select Case BinValue
        Case 1
            Output = 1
        Case 2
            Output = 2
        Case 3 To 4
            Output = 1
        Case 5 To 6
            Output = 3
    End Select
    
    ' Store the number in the worksheet.
    Sheet2.Cells(CursorPosition, 3) = Output
End Sub

Public Sub MakeChoice2()
    Dim CursorPosition  As Integer  ' Current row selection.
    Dim BinValue As Integer         ' Bin for selected row.
    Dim Output As Integer           ' Storage room number.
    
    ' Determine if the user has selected more than one row.
    If ActiveWindow.RangeSelection.Rows.Count = 1 Then
    
        ' Get the cursor position.
        CursorPosition = ActiveWindow.RangeSelection.Row
    Else
    
        ' Tell the user to select only one cell.
        MsgBox "Select only one cell!", _
               vbExclamation Or vbOKOnly, _
               "Selection Error"
        
        ' Exit the Sub without further processing.
        End
    End If
    
    ' Get the selected bin number.
    BinValue = Sheet2.Cells(CursorPosition, 2)
    
    ' Select a choice of storage room based in the bin.
    Select Case BinValue
        Case 1
            Output = 1
        Case 2
            Output = 2
        Case 3 To 4
            Output = 1
        Case 5 To 6
            Output = 3
        Case Else
            ' Tell the user to select only one cell.
            MsgBox "Provide a Bin Number between 1 and 6", _
                   vbExclamation Or vbOKOnly, _
                   "Bin Number Input Error"
            
            ' Exit the Sub without further processing.
            End
    End Select
    
    ' Store the number in the worksheet.
    Sheet2.Cells(CursorPosition, 3) = Output
End Sub

Public Sub MakeChoice3()
    Dim CursorPosition  As Integer  ' Current row selection.
    Dim BinValue As Integer         ' Bin for selected row.
    Dim Output As Integer           ' Storage room number.
    Dim Result As VbMsgBoxResult    ' Result of question.
    
' The restart point.
RestartCheck:
    
    ' Determine if the user has selected more than one row.
    If ActiveWindow.RangeSelection.Rows.Count = 1 Then
    
        ' Get the cursor position.
        CursorPosition = ActiveWindow.RangeSelection.Row
    Else
    
        ' Tell the user to select only one cell.
        Result = MsgBox("Select only one cell!" + vbCrLf + _
                        "Choose the first row in the range?", _
                        vbExclamation Or vbYesNo, _
                        "Selection Error")
        
        ' Determine if the user selected Yes.
        If Result = vbYes Then
        
            ' Modify the selection.
            Range("A" + _
                  CStr(ActiveWindow.RangeSelection.Row)).Select
            
            ' Try the check again.
            GoTo RestartCheck
        End If
        
        ' Exit the Sub without further processing.
        End
    End If
    
    ' Get the selected bin number.
    BinValue = Sheet2.Cells(CursorPosition, 2)
    
    ' Select a choice of storage room based in the bin.
    Select Case BinValue
        Case 1
            Output = 1
        Case 2
            Output = 2
        Case 3 To 4
            Output = 1
        Case 5 To 6
            Output = 3
        Case Else
            ' Tell the user to select only one cell.
            MsgBox "Provide a Bin Number between 1 and 6", _
                   vbExclamation Or vbOKOnly, _
                   "Bin Number Input Error"
            
            ' Exit the Sub without further processing.
            End
    End Select
    
    ' Store the number in the worksheet.
    Sheet2.Cells(CursorPosition, 3) = Output
End Sub



