VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Persons"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Compare Database
Option Explicit

' Declare the collection.
Private PersonCollection As Collection

Public Sub Add(Item As Person, _
               Optional Key As String, _
               Optional Before As Integer, _
               Optional After As Integer)
    
    ' Determine whether there is a Key.
    If Not Key = "" Then
    
        ' Determine whether there is a Before value.
        If Before > 0 Then
            
            ' Add an entry with a Key and Before value.
            PersonCollection.Add Item, Key, Before
            
        ' Determine whether there is an After value.
        ElseIf After > 0 Then
        
            ' Add an entry with a Key and After value.
            PersonCollection.Add Item, Key, , After
        
        Else
        
            ' The entry is just with an Item and Key.
            PersonCollection.Add Item, Key
        End If
    Else
        ' Determine whether there is a Before value.
        If Before > 0 Then
            
            ' Add an entry with a Before value.
            PersonCollection.Add Item, , Before
            
        ' Determine whether there is an After value.
        ElseIf After > 0 Then
        
            ' Add an entry with an After value.
            PersonCollection.Add Item, , , After
        
        Else
        
            ' The entry is just with an Item.
            PersonCollection.Add Item
        End If
    End If
End Sub

Public Property Get Count() As Long
    ' Return the current collection count.
    Count = PersonCollection.Count
End Property

Public Sub Remove(Index As Variant)
    ' Remove the requested item.
    PersonCollection.Remove Index
End Sub

Public Property Get Item(Index As Variant) As Person
Attribute Item.VB_UserMemId = 0
    ' Return the requested item.
    Set Item = PersonCollection.Item(Index)
End Property

Private Sub Class_Initialize()
    ' Initialize the collection.
    Set PersonCollection = New Collection
End Sub
