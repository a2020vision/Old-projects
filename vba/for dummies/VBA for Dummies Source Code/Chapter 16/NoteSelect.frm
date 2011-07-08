VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} NoteSelect 
   Caption         =   "Note Area Selection"
   ClientHeight    =   3120
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4710
   OleObjectBlob   =   "NoteSelect.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "NoteSelect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnOK_Click()
   ' Add error handling.
   On Error GoTo EntryError
   
   ' Check the Sheet range.
   If Not CInt(txtSheet.Value) > 0 Then
      MsgBox "Please type a number greater than 0.", _
         vbOKOnly Or vbCritical, "Data Entry Error"
      Exit Sub
   End If
   
   ' Check the Row range.
   If Not CInt(txtRow.Value) > 0 Then
      MsgBox "Please type a row number greater than 0.", _
         vbOKOnly Or vbCritical, "Data Entry Error"
      Exit Sub
   End If
   
   ' Check the Column range.
   If Not Asc(txtColumn.Value) > 64 Then
      MsgBox "Please type a letter greater than A.", _
         vbOKOnly Or vbCritical, "Data Entry Error"
      Exit Sub
   End If
   
   ' Save the data values.
   SendExcelNotes.Sheet = CInt(txtSheet.Value)
   SendExcelNotes.Row = txtRow.Value
   SendExcelNotes.Column = txtColumn.Value
   
   ' Close the dialog box.
   Me.Hide
   
   ' Exit the Sub
   Exit Sub
   
EntryError:
   ' Tell the user what went wrong.
   MsgBox "You must enter a number for the Sheet and " + _
      "Row fields, and a letter for the Column field.", _
      vbOKOnly Or vbCritical, "Data Entry Error"
   
   ' Return the fields to appropriate values.
   txtSheet.Value = "1"
   txtRow.Value = "1"
   txtColumn.Value = "A"
End Sub
