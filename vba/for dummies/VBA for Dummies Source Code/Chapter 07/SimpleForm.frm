VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} SimpleForm 
   Caption         =   "Simple Form Demonstration"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4710
   OleObjectBlob   =   "SimpleForm.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "SimpleForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnTest_Click()
    ' Move the information from the TextBox input to the
    ' label output.
    lblOutput.Caption = "Message Output: " + vbCrLf + _
                        txtInput.Text
End Sub

Private Sub btnQuit_Click()
    ' End the application.
    End
End Sub
