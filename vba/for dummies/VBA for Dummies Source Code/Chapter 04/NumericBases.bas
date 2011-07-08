Attribute VB_Name = "NumericBases"
Option Explicit

Public Sub ShowBase()
    ' Define the three number bases.
    Dim OctNum As Integer
    Dim DecNum As Integer
    Dim HexNum As Integer
    
    ' Define an output string.
    Dim Output As String
    
    ' Assign an octal number.
    OctNum = &O110
    
    ' Assign a decimal number.
    DecNum = 110
    
    ' Assign a hexidecimal number.
    HexNum = &H110
    
    ' Create a heading.
    Output = vbTab + vbTab + vbTab + "Oct" + _
             vbTab + "Dec" + _
             vbTab + "Hex" + vbCrLf
    
    ' Create an output string.
    Output = Output + "Octal Number:" + _
             vbTab + vbTab + Oct$(OctNum) + _
             vbTab + CStr(OctNum) + _
             vbTab + Hex$(OctNum) + _
             vbCrLf + "Decimal Number:" + _
             vbTab + vbTab + Oct$(DecNum) + _
             vbTab + CStr(DecNum) + _
             vbTab + Hex$(DecNum) + _
             vbCrLf + "Hexidecimal Number:" + _
             vbTab + Oct$(HexNum) + _
             vbTab + CStr(HexNum) + _
             vbTab + Hex$(HexNum)
    
    ' Display the actual numbers.
    MsgBox Output, _
           vbInformation Or vbOKOnly, _
           "Data Type Output"
End Sub
