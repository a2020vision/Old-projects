Attribute VB_Name = "InventoryXML"
Public Sub OutputInventory()
    ' Use the standard SaveAs method to export XML.
    Sheet1.SaveAs "ExcelXML.XML", xlXMLSpreadsheet
End Sub

Public Sub OutputInventory2()
    ' Use the XmlExport technique to save data and the data
    ' interpretation.
    MsgBox Workbooks(1).XmlMaps("Items_Map").ExportXml()
    
    ' Use the standard Export method to create a file.
    Workbooks(1).XmlMaps(1).Export "ExcelXML2.XML", True
End Sub

Public Sub ImportInventory()
    ' Obtain the XML from disk using the XMLImport.
    ThisWorkbook.XmlImport "ExcelXML2.XML", _
                           True, _
                           Sheet2.Range("A1")
End Sub
