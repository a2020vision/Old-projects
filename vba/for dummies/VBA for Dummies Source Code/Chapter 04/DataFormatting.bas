Attribute VB_Name = "DataFormatting"
Public Sub FormatDemo()
    ' Create the date variable
    Dim MyDate As Date
    
    ' Fill MyDate with the current date and time.
    MyDate = Now
    
    ' Display the date using standard formats.
    MsgBox "Standard Format =" + vbTab + CStr(MyDate) + _
           vbCrLf + "Long Date =" + vbTab + _
           Format(MyDate, "Long Date") + _
           vbCrLf + "Short Time =" + vbTab + _
           Format(MyDate, "Short Time"), _
           vbOKOnly, _
           "VBA Named Formats"
End Sub

Public Sub CustomFormatDemo()
    ' Create the date variable.
    Dim MyDate As Date
    
    ' Fill MyDate with the current date and time.
    MyDate = Now
    
    ' Display the date using standard formats.
    MsgBox "Custom Date/Time = " + _
           Format(MyDate, "dd mmmm yyyy Hh:Nn:Ss"), _
           vbOKOnly, _
           "VBA Custom Formats"
End Sub

Public Sub OtherFormattingFunctions()
    ' Create a unique number format.
    MsgBox FormatNumber(15.51, 3, vbTrue, vbTrue, vbTrue)
    
    ' Display a long date.
    MsgBox FormatDateTime(Now, vbLongDate)
    
    ' Display a number as currency.
    MsgBox FormatCurrency(15.02, 2, vbTrue, vbTrue, vbTrue)
    
    ' Display a number as a percentage.
    MsgBox FormatPercent(0.2521, -1)
End Sub
