VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} CheckBoxAndToggleButton 
   Caption         =   "CheckBox and ToggleButton Demo"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4710
   OleObjectBlob   =   "CheckBoxAndToggleButton.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "CheckBoxAndToggleButton"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub btnQuit_Click()
    'End the program.
    End
End Sub

Private Sub cbChecked_Click()
    ' Verify the checked status.
    If cbChecked.Value Then
        ' Display a message.
        MsgBox "CheckBox Checked"
        
    Else
        ' Display a message.
        MsgBox "Checkbox Cleared"
    End If
End Sub

Private Sub tbCBEnable_Click()
    ' Check the state of cbChecked.
    If tbCBEnable.Value Then
        ' Disable cbChecked.
        cbChecked.Enabled = True
        
        ' Change the caption.
        tbCBEnable.Caption = "CheckBox Enabled"
        
    Else
        ' Enable cdChecked
        cbChecked.Enabled = False
        
        ' Change the caption.
        tbCBEnable.Caption = "CheckBox Disabled"
    End If
End Sub
