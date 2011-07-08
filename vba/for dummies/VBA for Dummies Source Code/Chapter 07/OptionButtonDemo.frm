VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} OptionButtonDemo 
   Caption         =   "Using Option Buttons"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5040
   OleObjectBlob   =   "OptionButtonDemo.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "OptionButtonDemo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private ColorSelect As String
Private NumberSelect As String

Private Sub btnElseIfSelect_Click()
    ' Create an output string.
    Dim Output As String
    Output = "The selected color is: "
    
    ' Determine the color value.
    If obRed.Value Then
        Output = Output + "Red"
    ElseIf obGreen.Value Then
        Output = Output + "Green"
    Else
        Output = Output + "Blue"
    End If
    
    ' Add the number string.
    Output = Output + vbCrLf + "The selected number is: "
    
    ' Determine the number value.
    If obOne.Value Then
        Output = Output + "One"
    ElseIf obTwo.Value Then
        Output = Output + "Two"
    Else
        Output = Output + "Three"
    End If
    
    ' Display the result.
    MsgBox Output
End Sub

Private Sub btnQuit_Click()
    ' End the program.
    End
End Sub

Private Sub btnStatus_Click()
    ' Create an output string.
    Dim Output As String
    Output = "The selected color is: " + ColorSelect + _
             vbCrLf + _
             "The selected number is: " + NumberSelect
    
    
    ' Display the result.
    MsgBox Output
End Sub

Private Sub obBlue_Click()
    ' Change the ColorSelect value.
    ColorSelect = obBlue.Caption
End Sub

Private Sub obGreen_Click()
    ' Change the ColorSelect value.
    ColorSelect = obGreen.Caption
End Sub

Private Sub obOne_Click()
    ' Change the NumberSelect value.
    NumberSelect = obOne.Caption
End Sub

Private Sub obRed_Click()
    ' Change the ColorSelect value.
    ColorSelect = obRed.Caption
End Sub

Private Sub obThree_Click()
    ' Change the NumberSelect value.
    NumberSelect = obThree.Caption
End Sub

Private Sub obTwo_Click()
    ' Change the NumberSelect value.
    NumberSelect = obTwo.Caption
End Sub

Private Sub UserForm_Initialize()
    'Set the initial global values.
    ColorSelect = obRed.Caption
    NumberSelect = obOne.Caption
End Sub
