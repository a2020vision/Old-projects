Attribute VB_Name = "LoopDemo"
Option Explicit

Public Sub ChangeAllRooms()
    Dim ActiveRows As Integer   ' Number of active rows.
    Dim Counter As Integer      ' Current row in process.
    
    ' Select the first data cell in the worksheet.
    Range("A5").Select
    
    ' Use SendKeys to select all of the cells in the column.
    SendKeys "+^{DOWN}", True
    
    ' Get the number of rows to process.
    ActiveRows = ActiveWindow.RangeSelection.Rows.Count
    
    ' Reset the cell pointer.
    Range("C5").Select
    
    ' Keep processing the cells until complete.
    For Counter = 5 To ActiveRows + 5
    
        ' Call the Sub created to change a single cell.
        MakeChoice3
        
        ' Move to the next cell.
        Range("C" + CStr(Counter)).Select
    Next
End Sub
