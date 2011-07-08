VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} CollectionDemo 
   Caption         =   "Working with Collections"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4710
   OleObjectBlob   =   "CollectionDemo.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "CollectionDemo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

' Declare the collection.
Private MyCollection As Collection

Private Sub btnAdd_Click()
    ' Add a new item.
    MyCollection.Add _
        InputBox("Type a new item.", "Add Item", "Hello")
    
    ' List the items.
    ListItems
End Sub

Private Sub btnDelete_Click()
    ' Define variables to hold the selection.
    Dim UserInput As String
    Dim Selection As Integer
    
    ' Define an error handling result variable.
    Dim Result As VbMsgBoxResult
    
    ' Get the input from the user.
RetryInput:
    UserInput = InputBox("Type an existing item number.", _
                         "Remove Item", _
                         "1")
                         
    ' Validate the input.
    If Val(UserInput) > 0 And _
       Val(UserInput) < MyCollection.Count + 1 Then
        
        ' Use good input to delete a value.
        Selection = CInt(UserInput)
    Else
        ' Display an error message.
        Result = MsgBox("Type a number greater than 1 " + _
                        "and less than or equal to the " + _
                        "number of elements.", _
                        vbExclamation Or vbRetryCancel, _
                        "Input Error")
                        
        ' Allow for a retry.
        If Result = vbRetry Then
            GoTo RetryInput
        Else
            Exit Sub
        End If
    End If
    
    ' Delete the existing item.
    MyCollection.Remove Selection
        
    ' List the items.
    ListItems
End Sub

Private Sub btnQuit_Click()
    ' End the program.
    End
End Sub

Private Sub UserForm_Initialize()
    ' Initialize the collection.
    Set MyCollection = New Collection
End Sub

Public Sub ListItems()
    ' Create the listing variable.
    Dim Element As Variant
    
    ' Clear the current list.
    lblCollection.Caption = ""
    
    ' Display each element in turn.
    For Each Element In MyCollection
        lblCollection.Caption = lblCollection.Caption + _
                                Element + vbCrLf
    Next
    
    ' Determine whether to enable the Delete button.
    If MyCollection.Count > 0 Then
        btnDelete.Enabled = True
    Else
        btnDelete.Enabled = False
    End If
End Sub
