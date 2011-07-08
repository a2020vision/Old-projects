Attribute VB_Name = "BooleanDemo"
Public Sub BooleanCheck()
    ' Create a Bolean data type.
    Dim MyBool As Boolean
    
    ' Set MyBool to True
    MyBool = True
    
    ' Display the native value.
    MsgBox "MyBool = " + CStr(MyBool), _
           vbOKOnly, _
           "Native Value"
    
    ' Display the numeric value.
    MsgBox "MyBool = " + CStr(CInt(MyBool)), _
           vbOKOnly, _
           "Numeric Value"
           
    ' Make MyBool equal to a number. Only the number
    ' 0 is False; everything else is True.
    MyBool = CBool(0)
    MsgBox "MyBool = " + CStr(MyBool), _
           vbOKOnly, _
           "Converted Numeric Value"
End Sub
