Attribute VB_Name = "CustomFunctions"
Option Explicit

Public Function ConvertString(Original As String) As String
Attribute ConvertString.VB_Description = "This function reverses the characters in a string."
Attribute ConvertString.VB_ProcData.VB_Invoke_Func = " \n14"
   ' Used for loops.
   Dim Counter As Integer
   
   ' Contains the string length.
   Dim StrLen As Integer
   StrLen = Len(Original)
   
   ' Holds the output string.
   Dim Output As String
   Output = ""
   
   ' Reverse the string.
   For Counter = StrLen To 1 Step -1
      Output = Output + Mid(Original, Counter, 1)
   Next
   
   ' Return the result.
   ConvertString = Output
End Function

Public Function Pythagoras(Side1 As Double, _
   Side2 As Double) As Double
Attribute Pythagoras.VB_Description = "Returns the value of the hypotenuse."
   
   ' Perform the calculation.
   Pythagoras = Math.Sqr((Side1 * Side1) + (Side2 * Side2))

End Function
