VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} GetArrayDimensions 
   Caption         =   "Two-Dimensional Array Dimensions"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4710
   OleObjectBlob   =   "GetArrayDimensions.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "GetArrayDimensions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub btnCancel_Click()
    ' Change the click type.
    ArrayTypes.ClickType = vbCancel
    
    ' End the form.
    Me.Hide
End Sub

Private Sub btnOK_Click()
    ' Change the click type.
    ArrayTypes.ClickType = vbOK
    
    ' Check the two input values.
    txtInput1_Change
    txtInput2_Change
    
    ' End the form.
    Me.Hide
End Sub

Private Sub txtInput1_Change()
    ' Verify the user has input a number greater than 1.
    If Val(txtInput1.Text) = 0 Then
        ' If not, display an error message box.
        MsgBox "Type a numeric value greater than 1."
        
        ' Return the text to an acceptable value.
        txtInput1.Text = "5"
    Else
        ' Otherwise, store the numeric value.
        ArrayTypes.Input1Value = CInt(txtInput1.Text)
    End If
End Sub

Private Sub txtInput2_Change()
    ' Verify the user has input a number greater than 1.
    If Val(txtInput2.Text) = 0 Then
        ' If not, display an error message box.
        MsgBox "Type a numeric value greater than 1."
        
        ' Return the text to an acceptable value.
        txtInput2.Text = "5"
    Else
        ' Otherwise, store the numeric value.
        ArrayTypes.Input2Value = CInt(txtInput2.Text)
    End If
End Sub
