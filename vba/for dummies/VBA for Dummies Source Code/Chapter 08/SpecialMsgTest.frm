VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} SpecialMsgTest 
   Caption         =   "Test the Special Message Class"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4710
   OleObjectBlob   =   "SpecialMsgTest.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "SpecialMsgTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private WithEvents MsgObj As SpecialMsg
Attribute MsgObj.VB_VarHelpID = -1

Private Sub btnQuit_Click()
    ' End the program.
    End
End Sub

Private Sub btnTest_Click()
    ' Instantiate the special message box.
    If MsgObj Is Nothing Then
        Set MsgObj = New SpecialMsg
    End If
    
    ' Assign some property values.
    MsgObj.Caption = "This is a message object."
    MsgObj.Title = "Special Message"
    MsgObj.Buttons = YesNoCancel
    MsgObj.Icon = Question
    
    ' Display the message box.
    MsgObj.Show
End Sub

Private Sub btnTest2_Click()
    ' Instantiate the special message box.
    If MsgObj Is Nothing Then
        Set MsgObj = New SpecialMsg
    End If
    
    ' Assign some property values.
    With MsgObj
        .Caption = "This is a message object."
        .Title = "Special Message"
        .Buttons = YesNoCancel
        .Icon = Question
        
        ' Display the message box.
        .Show
    End With
End Sub

Private Sub MsgObj_ChangeButton(Result As ButtonTypes)
    ' Show the new button type.
    lblButtonType = Result
End Sub

Private Sub MsgObj_Click(Result As VbMsgBoxResult)
    ' Show the return value.
    lblReturnValue = Result
End Sub

