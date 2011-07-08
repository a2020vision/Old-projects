VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} ButtonDemo 
   Caption         =   "Get the Document Properties"
   ClientHeight    =   4620
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6375
   OleObjectBlob   =   "ButtonDemo.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "ButtonDemo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnCopy_Click()
    ' Create a clipboard storage object.
    Dim ClipData As DataObject
    Set ClipData = New DataObject
    
    ' Place the text in lblOutput in the clipboard.
    ClipData.SetText lblOutput.Caption
    
    ' Place the object on the clipboard.
    ClipData.PutInClipboard
End Sub

Private Sub btnQuit_Click()
    'End the program.
    End
End Sub

Private Sub btnTest_Click()
    ' Create a string to hold the data.
    Dim Output As String
    
    ' Create a document property holder
    Dim DocProp As DocumentProperty
    
    ' Handle properties that the application doesn't support.
    On Error Resume Next
    
    ' Start creating the output string.
    For Each DocProp In _
    ActiveWorkbook.BuiltinDocumentProperties
        Output = Output + DocProp.Name + " = " + _
                 CStr(DocProp.Value) + vbCrLf
    Next
    
    ' Display the output on screen.
    lblOutput.Caption = Output
    
    ' Enable the Copy Data button.
    btnCopy.Enabled = True
End Sub
