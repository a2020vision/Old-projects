Attribute VB_Name = "UsingObjects"
Option Explicit

Public Sub MyDocuments()
    ' Create a variable to hold the individual documents.
    Dim MyDocs As Document
    
    ' Create a variable to hold information about selected
    ' documents.
    Dim Output As String
    
    ' Look at each document in the Documents collection.
    For Each MyDocs In Application.Documents
    
        ' Check for the appropriate template name.
        If UCase(MyDocs.AttachedTemplate) _
            = "NORMAL.DOT" Then
            
            ' Create a list of information about the
            ' document.
            With MyDocs
            Output = Output + "Name: " + vbTab + vbTab + _
                .Name + vbCrLf + _
                "Window Caption: " + vbTab + _
                .ActiveWindow.Caption + vbCrLf + _
                "Document Type: " + vbTab + _
                IIf(.ActiveWindow.Creator = wdCreatorCode, _
                    "Word Document", _
                    "Other Document") + vbCrLf + _
                "Writing Style: " + vbTab + _
                .ActiveWritingStyle(wdEnglishUS) _
                + vbCrLf + "Characters: " + vbTab + _
                CStr(.Characters.Count) + vbCrLf + _
                "Words: " + vbTab + vbTab + _
                CStr(.Words.Count) + vbCrLf + vbCrLf
            End With
        End If
    Next
    
    ' Output the result.
    MsgBox Output, _
           vbInformation Or vbOKOnly, _
           "Documents that Use the Normal Template"
End Sub

Public Sub MyTemplates()
    ' Holds the current template.
    Dim CurrTemp As Template
    
    ' Holds the built-in properties.
    Dim CurrProp As DocumentProperty
    
    ' Holds the property name length.
    Dim PropLen As Integer
    
    ' Holds the output.
    Dim Output As String
    
    ' Look at each template in the Templates collection.
    For Each CurrTemp In Application.Templates
    
        ' Get information about the current template.
        With CurrTemp
            Output = Output + _
                "Name:" + vbTab + vbTab + .Name + vbCrLf + _
                "Full Name:" + vbTab + .FullName + vbCrLf
                
                ' Check property values for the template.
                For Each CurrProp In _
                    .BuiltInDocumentProperties
                    
                    ' Some entries will fail.
                    On Error Resume Next
                    
                    ' Determine the property name length.
                    PropLen = Len(CurrProp.Name)
                    
                    ' Get the information.
                    Output = Output + "Property: " + _
                        CurrProp.Name + _
                        IIf(PropLen < 40, vbTab, "") + _
                        IIf(PropLen < 32, vbTab, "") + _
                        IIf(PropLen < 24, vbTab, "") + _
                        IIf(PropLen < 14, vbTab, "") + _
                        IIf(PropLen < 6, vbTab, "") + _
                        CStr(CurrProp.Type) + vbTab + _
                        CStr(CurrProp.Value) + vbCrLf
                Next
                
                ' Add space at the end of the entry.
                Output = Output + vbCrLf + vbCrLf
        End With
    Next
    
    ' Output the result.
    MsgBox Output, _
           vbInformation Or vbOKOnly, _
           "Templates Currently in Use"
End Sub

Public Sub MyWindows()
    ' Holds a Window object.
    Dim MyWin As Window
    
    ' Holds the output.
    Dim Output As String
    
    ' Used for loop counting.
    Dim Counter As Integer
    
    ' Look at each Window in the Windows collection.
    For Each MyWin In Application.Windows
    
        ' Get the current window information.
        With MyWin
        Output = Output + "Caption: " + .Caption + _
            vbCrLf + "Panes: " + _
            CStr(.Panes.Count) + vbCrLf
            
        ' Check each of the panes for selected data.
        For Counter = 1 To .Panes.Count
            Output = Output + "Pane " + CStr(Counter) + _
                " Selection: " + _
                CStr(.Panes(Counter).Selection) + _
                vbCrLf
        Next
        
        ' Add a new pane if possible.
        If .Panes.Count = 1 Then
            .Panes.Add
        End If
        
        ' Add space to the output.
        Output = Output + vbCrLf
        
        End With
    Next
    
    ' Output the result.
    MsgBox Output, _
           vbInformation Or vbOKOnly, _
           "Windows Currently in Use"
End Sub
