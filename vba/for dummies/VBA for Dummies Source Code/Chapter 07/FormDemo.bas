Attribute VB_Name = "FormDemo"
Option Explicit

Public Sub ShowFirstForm()
    ' Used to keep track of the lines of code.
    Dim Count As Integer
    
    ' Create the form object.
    Dim FirstForm As VBComponent
    Set FirstForm = _
        ThisWorkbook.VBProject.VBComponents.Add( _
            vbext_ct_MSForm)
    
    ' Give the form a caption.
    FirstForm.Properties("Caption") = "Custom Dialog Box"
    
    ' Add a command button to the form
    With FirstForm.Designer.Controls.Add( _
                    "Forms.CommandButton.1", _
                    "btnOK", _
                    True)
                    
        ' Configure the command button for use.
        .Left = 156
        .Top = 6
        .Caption = "OK"
    End With
    
    ' Add some code so btnOK is functional.
    With FirstForm.CodeModule
    
        ' Get the current number of lines of code.
        Count = .CountOfLines
        
        ' Insert code at the end.
        ' Begin by creating a Private Sub statement.
        .InsertLines Count + 1, "Private Sub btnOK_Click"
        
        ' Display a message that says "Goodbye!"
        .InsertLines Count + 2, "MsgBox " + Chr(&H22) + _
                                "Goodbye!" + Chr(&H22)
        
        ' Close the dialog box so the program can end.
        .InsertLines Count + 3, "Unload Me"
        
        ' End the Sub.
        .InsertLines Count + 4, "End Sub"
    End With
    
    ' Create a label.
    With FirstForm.Designer.Controls.Add( _
                        "Forms.Label.1", _
                        "lblMessage", _
                        True)
                        
        ' Configure the label.
        .Left = 23
        .Top = 60
        .Width = 190
        .Height = 90
        .Caption = "This is a custom form that shows " + _
                   "there is no magic in the IDE. " + _
                   "you can create any form you want " + _
                   "using simple code."
    End With
                        
    
    ' Display the form.
    VBA.UserForms.Add(FirstForm.Name).Show
    
    ' Remove the form from the worksheet.
    ThisWorkbook.VBProject.VBComponents.Remove _
        VBComponent:=FirstForm
End Sub

