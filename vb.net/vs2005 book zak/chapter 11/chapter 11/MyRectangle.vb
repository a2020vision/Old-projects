' Class name:       MyRectangle
' Class purpose:    Calculate the area of a rectangle
' Created/revised:  12/31/2010 by Nick Leep

Option Explicit On
Option Strict On

Public Class MyRectangle
    Private _length As Decimal
    Private _width As Decimal
    ' properties: length and width
    Public Property Length() As Decimal
        Get
            Return _length
        End Get
        Set(ByVal value As Decimal)
            _length = value
        End Set
    End Property
    Public Property Width() As Decimal
        Get
            Return _width
        End Get
        Set(ByVal value As Decimal)
            _width = value
        End Set
    End Property

    ' constructors:
    Public Sub New()
        _length = 0D
        _width = 0D
    End Sub
    Public Sub New(ByVal len As Decimal, ByVal wid As Decimal)
        Length = len
        Width = wid
    End Sub
    Public Function CalculateArea() As Decimal
        Return _length * _width
    End Function
End Class
