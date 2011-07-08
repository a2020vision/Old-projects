Attribute VB_Name = "FirstSubAndFunction"
Option Explicit

Public Sub GetSummary()
    ' Declare a DocumentProperty object to hold the information.
    Dim MyProperty As DocumentProperty
    
    ' Set the DocumentProperty object equal to the author information.
    Set MyProperty = ActiveWorkbook.BuiltinDocumentProperties("Author")
    
    ' Display a message box containing the property value.
    MsgBox MyProperty.Value, vbOKOnly, "Author Name"
End Sub

Public Sub GetSummary2()
    ' Declare a string to hold the output information.
    Dim DocumentData As String
    
    ' Store the name of the information.
    DocumentData = "Author Name: "
    
    ' Get the author name.
    DocumentData = DocumentData + GetDocProperty("Author")
    
    ' Add an extra line.
    DocumentData = DocumentData + vbCrLf
    
    ' Store the name of the information.
    DocumentData = DocumentData + "Company: "
    
    ' Get the company name.
    DocumentData = DocumentData + GetDocProperty("Company")
    
    ' Display a message box containing the property value.
    MsgBox DocumentData, vbOKOnly, "Summary"
End Sub

Private Function GetDocProperty(Name As String) As String
    ' Declare a DocumentProperty object to hold the
    ' information.
    Dim MyProperty As DocumentProperty
    
    ' Set the DocumentProperty object equal to the author
    ' information.
    Set MyProperty = _
        ActiveWorkbook.BuiltinDocumentProperties(Name)
    
    ' Return the information.
    GetDocProperty = MyProperty.Value
End Function
