Attribute VB_Name = "NumberStringConvert"
Option Explicit
Private Const TwoTab = vbTab + vbTab

Public Sub DataRange()
    ' Declare the numeric variables.
    Dim MyInt As Integer
    Dim MySgl As Single
    Dim MyDbl As Double
    Dim MyCur As Currency
    Dim MyDec As Variant
    
    ' Define values for each variable.
    MyInt = 30 + 0.00010001000111
    MySgl = 30 + 0.00010001000111
    MyDbl = 30 + 0.00010001000111
    MyCur = 30 + 0.00010001000111
    MyDec = CDec(30 + 0.00010001000111)
    
    ' Display the actual content.
    MsgBox "Integer:" + TwoTab + CStr(MyInt) + _
           vbCrLf + "Single:" + TwoTab + CStr(MySgl) + _
           vbCrLf + "Double:" + TwoTab + CStr(MyDbl) + _
           vbCrLf + "Currency:" + vbTab + CStr(MyCur) + _
           vbCrLf + "Decimal:" + TwoTab + CStr(MyDec), _
           vbOKOnly, _
           "VBA Data Types"
End Sub

Public Sub NumberConvert()
    ' Create some variables for use in conversion.
    Dim MyInt As Integer
    Dim MySgl As Single
    Dim MyStr As String
    
    ' Conversion between Integer and Single is direct
    ' with no data loss.
    MyInt = 30
    MySgl = MyInt
    MsgBox "MyInt = " + CStr(MyInt) + _
           vbCrLf + "MySgl = " + CStr(MySgl), _
           vbOKOnly, _
           "Current Data Values"
           
    ' Conversion between Single and Integer is also direct
    ' but incurs data loss.
    MySgl = 35.51
    MyInt = MySgl
    MsgBox "MyInt = " + CStr(MyInt) + _
           vbCrLf + "MySgl = " + CStr(MySgl), _
           vbOKOnly, _
           "Current Data Values"
    
    ' Conversion between a String and a Single or an
    ' Integer can rely on use of a special function. The
    ' conversion can also incur data loss.
    MyStr = "40.05"
    MyInt = CInt(MyStr)
    MySgl = CSng(MyStr)
    MsgBox "MyInt = " + CStr(MyInt) + _
           vbCrLf + "MySgl = " + CStr(MySgl), _
           vbOKOnly, _
           "Current Data Values"
    
    ' Conversion between a Single or Integer and a String
    ' can rely on use of a special function when making a
    ' direct conversion. The conversion doesn't incur any
    ' data loss.
    MyInt = 45
    MySgl = 45.05
    MyStr = MyInt
    MsgBox MyStr, _
           vbOKOnly, _
           "Current Data Values"
           
    ' You must use a special function in mixed data
    ' situations.
    MyStr = "MyInt = " + CStr(MyInt) + _
            vbCrLf + "MySgl = " + CStr(MySgl)
    MsgBox MyStr, _
           vbOKOnly, _
           "Current Data Values"
End Sub
