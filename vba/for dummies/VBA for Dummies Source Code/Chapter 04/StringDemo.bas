Attribute VB_Name = "StringDemo"
Option Explicit

Public Sub ShowCharacter()
    ' Declare the output string.
    Dim MyChar As String
    
    ' Tell what type of character the code displays.
    MyChar = "Latin Capital Letter A with Circumflex: "
    
    ' Add the character.
    MyChar = MyChar + Chr(&HC2)
    
    'Display the result.
    MsgBox MyChar, vbOKOnly, "Special Character"
End Sub

Public Sub GetCharacter()
    ' Declare the output variables.
    Dim MyChar As String
    Dim CharNum As Integer
    
    ' Add the special character to MyChar.
    MyChar = Chr(&HC2)
    
    ' Determine the Unicode number for the character.
    CharNum = Asc(MyChar)
    
    ' Display the result as a decimal value.
    MsgBox "Character " + MyChar + _
           " = Decimal Value " + CStr(CharNum), _
           vbOKOnly, _
           "Special Character Decimal Value"
End Sub

Public Sub RemoveSpace()
    ' Declare a string with spaces.
    Dim MyStr As String
    
    ' Declare an output string.
    Dim Output As String
    
    ' Add a string to MyStr
    MyStr = "    Hello    "
    
    ' Show the original string length.
    Output = "Original String Length: " + CStr(Len(MyStr))
    
    ' Get rid of the spaces in the left.
    Output = Output + vbCrLf + _
             "LTrim Length: " + CStr(Len(LTrim(MyStr))) + _
             " Value: " + Chr(&H22) + LTrim(MyStr) + Chr(&H22)
    
    ' Get rid of the spaces on the right.
    Output = Output + vbCrLf + _
             "RTrim Length: " + CStr(Len(RTrim(MyStr))) + _
             " Value: " + Chr(&H22) + RTrim(MyStr) + Chr(&H22)
    
    ' Get rid of all the extra spaces.
    Output = Output + vbCrLf + _
             "Trim Length: " + CStr(Len(Trim(MyStr))) + _
             " Value: " + Chr(&H22) + Trim(MyStr) + Chr(&H22)
    
    ' Display the result.
    MsgBox Output, vbOKOnly, "Trimming Extra Spaces"
End Sub

Public Sub ParseString()
    ' Create a string with elements the program can parse.
    Dim MyStr As String
    
    ' Create an output string.
    Dim Output As String
    
    ' Fill the input string with data.
    MyStr = "A String To Parse"
    
    ' Display the whole string.
    Output = "The whole string is: " + MyStr
    
    ' Obtain the first word.
    Output = Output + vbCrLf + "The First Word: " + _
             Left(MyStr, InStr(1, MyStr, " "))
    
    ' Obtain the last word.
    Output = Output + vbCrLf + "The Last Word: " + _
             Right(MyStr, Len(MyStr) - InStrRev(MyStr, " "))
    
    ' Obtain the word String.
    Output = Output + vbCrLf + "The Word String: " + _
             Trim(Mid(MyStr, _
                      InStr(1, MyStr, "String"), _
                      Len(MyStr) - InStr(1, MyStr, "To")))
    
    ' Output the result.
    MsgBox Output, vbOKOnly, "Parsing a String"
End Sub
