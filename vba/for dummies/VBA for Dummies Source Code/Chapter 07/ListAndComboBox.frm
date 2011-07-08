VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} ListAndComboBox 
   Caption         =   "ListBox and ComboBox Demo"
   ClientHeight    =   2160
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5370
   OleObjectBlob   =   "ListAndComboBox.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "ListAndComboBox"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub btnQuit_Click()
    ' End the program.
    End
End Sub

Private Sub btnStatus_Click()
    ' Create an output string.
    Dim Output As String
    Output = "The selected color is: " + _
             comboColors.Value + vbCrLf + _
             "The selected number is: " + listNumbers.Value
    
    ' Display the result.
    MsgBox Output
End Sub

Private Sub UserForm_Initialize()
    ' Populate the ListBox control.
    listNumbers.AddItem "One"
    listNumbers.AddItem "Two"
    listNumbers.AddItem "Three"
    listNumbers.AddItem "Four"
    listNumbers.AddItem "Five"
    listNumbers.AddItem "Six"
    
    ' Select the default value.
    listNumbers.Value = "One"
    
    ' Populate the ComboBox control.
    comboColors.AddItem "Red"
    comboColors.AddItem "Green"
    comboColors.AddItem "Blue"
    comboColors.AddItem "Yellow"
    comboColors.AddItem "Orange"
    comboColors.AddItem "Purple"
    
    ' Select the default value.
    comboColors.Value = "Red"
End Sub
