Attribute VB_Name = "WordMLRoutines"
Public Sub SaveXMLDocumentInfo()
    ' Create a File Open dialog box.
    Dim GetFile As FileDialog
    Set GetFile = Application.FileDialog(msoFileDialogOpen)
    
    ' Modify the settings to show XSLT files.
    GetFile.Filters.Clear
    GetFile.Filters.Add "XSLT File", "*.XSLT"
    GetFile.Show
    
    ' Make sure the save process uses the template.
    ThisDocument.XMLSaveThroughXSLT = _
        GetFile.SelectedItems(1)
    
    ' Recreate GetFile as a File Save dialog box.
    Set GetFile = Nothing
    Set GetFile = Application.FileDialog(msoFileDialogSaveAs)
    
    ' Modify the settings to show HTM files.
    GetFile.FilterIndex = 4
    GetFile.Show
    
    ' Save the document.
    ThisDocument.SaveAs GetFile.SelectedItems(1), _
                        wdFormatXML
End Sub
