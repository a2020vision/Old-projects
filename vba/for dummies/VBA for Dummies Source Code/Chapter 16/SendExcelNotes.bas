Attribute VB_Name = "SendExcelNotes"
Option Explicit

Public Sheet As Integer
Public Row As String
Public Column As String

Public Sub SendNote()
   ' The text used as a note.
   Dim NoteText As String
   
   With ActiveWindow.Selection
      
      ' Go to the beginning of the document.
      .GoTo What:=wdGoToLine, Which:=wdGoToFirst
      
      ' Select the document text.
      .EndOf Unit:=wdSection, Extend:=wdExtend
      
      ' Get the text.
      NoteText = .Text
   End With
   
   ' Create a file dialog.
   Dim GetFile As FileDialog
   Set GetFile = Application.FileDialog(msoFileDialogOpen)
   GetFile.AllowMultiSelect = False
   GetFile.Filters.Clear
   GetFile.Filters.Add "Excel Files", "*.XL*"
   
   ' Get the Excel file.
   GetFile.Show
   
   ' Get the selected file.
   Dim Filename As String
   Filename = GetFile.SelectedItems(1)
   
   ' Open the Excel workbook.
   Dim TheBook As Excel.Workbook
   Set TheBook = Excel.Workbooks.Open(Filename)
   
   ' Request the sheet and cell number for the note.
   NoteSelect.Show
   
   ' Get the worksheet.
   Dim TheSheet As Excel.Worksheet
   Set TheSheet = TheBook.Sheets(1)
   
   ' Add the comment.
   TheSheet.Range(Column + Row).AddComment NoteText
   
   ' Close the workbook.
   TheBook.Close True
End Sub
