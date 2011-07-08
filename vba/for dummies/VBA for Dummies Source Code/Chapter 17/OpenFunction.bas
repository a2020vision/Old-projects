Attribute VB_Name = "OpenFunction"
Option Explicit

Public Sub OldOpen()
   ' Create the input strings.
   Dim DataLine As String
   Dim ThisCell As String
   
   ' Used for looping.
   Dim Counter As Integer
   Counter = 1
   Dim CellCounter As Integer
   
   ' Open the file.
   Open ThisWorkbook.Path + "\Temp.txt" For Input As #1
   
   ' Read the data one line at a time.
   While Not EOF(1)
      Line Input #1, DataLine
      
      ' Verify whether there is a tab in the text. If so
      ' place each text element in a separate column.
      If InStr(1, DataLine, vbTab) Then
      
         ' Set the cell counter.
         CellCounter = 1
         
         ' Keep processing the line of text until finished.
         While (Len(DataLine) > 0)
         
            ' Verify that the text still has tabs in it.
            If InStr(1, DataLine, vbTab) Then
            
               ' Get the text to the left of the tab and
               ' place it in the cell.
               ThisCell = Left(DataLine, _
                  InStr(1, DataLine, vbTab) - 1)
               Sheet1.Cells(Counter, CellCounter) = ThisCell
               
               ' Make the current text equal to the
               ' remaining tabbed text element.
               DataLine = Mid(DataLine, _
                  InStr(1, DataLine, vbTab) + 1)
                  
               ' Go to the next cell.
               CellCounter = CellCounter + 1
            Else
               ' The text is free of tabs. Make the cell
               ' equal to this last line, and then blank the
               ' data line.
               Sheet1.Cells(Counter, CellCounter) = DataLine
               DataLine = ""
            End If
         Wend
      
      Else
      
         ' Place the data in the worksheet.
         Sheet1.Cells(Counter, 1) = DataLine
      End If
      
      'Update the counter.
      Counter = Counter + 1
   Wend
   
   ' Close the file.
   Close #1
End Sub

Public Sub UseOpen()
   ' Open a text file as a workbook.
   Dim TempBook As Workbook
   Set TempBook = _
      Workbooks.Open(ThisWorkbook.Path + "\Temp.txt")
      
   ' Look at the result.
   MsgBox "Temp.txt Opened", vbInformation, "Open File"
   
   ' Close the workbook.
   TempBook.Close
End Sub
