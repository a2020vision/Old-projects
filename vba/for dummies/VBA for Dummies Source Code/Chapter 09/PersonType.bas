Attribute VB_Name = "PersonType"
Option Compare Database
Option Explicit

' Define a user type.
Public Type APerson
    Name As String      ' The person's name.
    Telephone As String ' The contact telephone number.
    LastContact As Date ' The date of last contact.
End Type
