VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} NumericText 
   Caption         =   "Numeric Text Input"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4710
   OleObjectBlob   =   "NumericText.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "NumericText"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub btnTest_Click()
    ' Create the input variable.
    Dim InputValue As Integer
    
    ' Tell VBA about the error handler.
    On Error GoTo NotANumber
    
    ' Get the string value and place it in the numeric
    ' variable.
    InputValue = txtInput.Text
    
    ' Tell the user what they typed.
    lblOutput.Caption = InputValue
    
    ' Exit the Sub.
    Exit Sub

    ' Handle non-numeric input.
NotANumber:
    MsgBox "You must type a number!"
End Sub

Private Sub btnQuit_Click()
    ' End the program.
    End
End Sub
