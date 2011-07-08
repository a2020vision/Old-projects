Attribute VB_Name = "VariantData"
Public Sub ShowVariant()
    ' Create the host variables.
    Dim MyVar As Variant
    Dim MyStr As String
    Dim MyInt As Integer
    
    ' Place a date within the Variant.
    MyVar = CDate("January 1, 1980")
    
    ' The date converts without problem to the String and
    ' Integer data types.
    MyStr = MyVar
    MyInt = MyVar
    
    ' Display the results.
    MsgBox "MyVar = " + CStr(MyVar) + _
           vbCrLf + "MyStr = " + MyStr + _
           vbCrLf + "MyInt = " + CStr(MyInt), _
           vbOKOnly, _
           "Variant Data Type Conversions"
           
    ' Numeric conversions also work.
    MyVar = CDec(1000)
    MyStr = MyVar
    
    ' Display the results.
    MsgBox "MyVar = " + CStr(MyVar) + _
           vbCrLf + "MyStr = " + MyStr, _
           vbOKOnly, _
           "Variant Number Conversion"
           
    ' You can also use a number as an input to CDate and
    ' place the result in a Variant.
    MyVar = CDate(MyInt)
    
    ' Display the results.
    MsgBox "MyVar = " + CStr(MyVar) + _
           vbCrLf + "MyInt = " + CStr(MyInt), _
           vbOKOnly, _
           "Variant Date Conversion"
End Sub

