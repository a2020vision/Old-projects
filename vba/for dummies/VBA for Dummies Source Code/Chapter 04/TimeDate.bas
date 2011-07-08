Attribute VB_Name = "TimeDate"
Public Sub ShowTime()
    ' Create a time variable.
    Dim MyTime As Date
    
    ' Obtain the current time.
    MyTime = Time
    
    ' Display the hours, minutes, and seconds.
    MsgBox "The current time is: " + _
           vbCrLf + "Hours: " + CStr(Hour(MyTime)) + _
           vbCrLf + "Minutes: " + CStr(Minute(MyTime)) + _
           vbCrLf + "Seconds: " + CStr(Second(MyTime)), _
           vbOKOnly, _
           "Current Time"
End Sub

Public Sub ShowDate()
    ' Create a date variable.
    Dim MyDate As Date
    
    ' Obtain the current date.
    MyDate = Date
    
    ' Set the date.
    Date = #1/1/1980#
    
    ' Display the Day, Month, and Year
    MsgBox "The current date is (DD/MM/YYYY): " + _
           CStr(Day(Date)) + "/" + _
           CStr(Month(Date)) + "/" + _
           CStr(Year(Date)), _
           vbOKCancel, _
           "Modified Date"
    
    ' Reset the date.
    Date = MyDate
    
    ' Display the Day, Month, and Year
    MsgBox "The current date is (DD/MM/YYYY): " + _
           CStr(Day(MyDate)) + "/" + _
           CStr(Month(MyDate)) + "/" + _
           CStr(Year(MyDate)), _
           vbOKCancel, _
           "Actual Date"
End Sub
