VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Person"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Compare Database
Option Explicit

' Create an instance of this type.
Private ThePerson As APerson

Public Property Get Name() As String
    ' Get the current user name.
    Name = ThePerson.Name
End Property

Public Property Let Name(Value As String)
    ' Set the new user name.
    ThePerson.Name = Value
End Property

Public Property Get Telephone() As String
    ' Get the current telephone number.
    Telephone = ThePerson.Telephone
End Property

Public Property Let Telephone(Value As String)
    ' Set the new telephone number.
    ThePerson.Telephone = Value
End Property

Public Property Get LastContact() As Date
    ' Get the date of last contact.
    LastContact = ThePerson.LastContact
End Property

Public Property Let LastContact(Value As Date)
    ' Set the new last contact date.
    ThePerson.LastContact = Value
End Property
