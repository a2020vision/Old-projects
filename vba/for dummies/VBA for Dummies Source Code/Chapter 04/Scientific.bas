Attribute VB_Name = "Scientific"
Option Explicit

Public Sub ScientificCalcs()
    ' Define an input value
    Dim MyInt As Integer
    MyInt = 45
    
    ' Create an output string.
    Dim Output As String
    
    ' Display the trigonometric values for a 45 degree
    ' angle.
    MsgBox "The original angle is: " + CStr(MyInt) + _
           vbCrLf + "Arctangent is: " + CStr(Atn(MyInt)) + _
           vbCrLf + "Cosine is: " + CStr(Cos(MyInt)) + _
           vbCrLf + "Sine is: " + CStr(Sin(MyInt)) + _
           vbCrLf + "Tangent is: " + CStr(Tan(MyInt)), _
           vbOKOnly, _
           "Trigonometric Values"
           
    ' Change the sign of the number using Sgn and Int.
    ' Add the value to Output each time.
    Output = "The sign of 0 is: " + CStr(Sgn(0))
    MyInt = -45
    Output = Output + vbCrLf + _
             "The sign of " + CStr(MyInt) + " is: " + _
             CStr(Sgn(MyInt))
    MyInt = Abs(MyInt)
    Output = Output + vbCrLf + _
             "The sign of " + CStr(MyInt) + " is: " + _
             CStr(Sgn(MyInt))
    MsgBox Output, vbOKOnly, "Using Sgn and Abs"
End Sub
