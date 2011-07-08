Attribute VB_Name = "IfThenElseDemo"
Public Sub CompareNumbers()
    ' Create variables to hold the two numbers.
    Dim Input1 As Double
    Dim Input2 As Double
    
    ' Create an output string.
    Dim Output As String
    
    ' Fill the variables with input from the worksheet.
    Input1 = Sheet1.Cells(3, 2)
    Input2 = Sheet1.Cells(4, 2)
    
    ' Determine if the first number is greater than or equal
    ' to the second number.
    If Input1 >= Input2 Then
        
        ' Determine if they are equal.
        If Input1 = Input2 Then
        
            ' Tell the user they are equal.
            Output = "The values are equal."
            
        Else
        
            ' The first number must be greater than the
            ' second.
            Output = "First Number is greater than " + _
                     "Second Number."
        End If
        
    Else
    
        ' The first number is less than the second.
        Output = "First Number is less than Second Number."
    End If
    
    ' Place the output on the worksheet.
    Sheet1.Cells(6, 2) = Output
End Sub

Public Sub CompareNumbers2()
    ' Create variables to hold the two numbers.
    Dim Input1 As Double
    Dim Input2 As Double
    
    ' Create an output string.
    Dim Output As String
    
    ' Fill the variables with input from the worksheet.
    Input1 = Sheet1.Cells(3, 2)
    Input2 = Sheet1.Cells(4, 2)
    
    ' Determine if the first number is greater than
    ' the second number.
    If Input1 > Input2 Then
        
        ' Tell the user the first number is greater.
        Output = "First Number is greater than " + _
                 "Second Number."
        
    ' Determine if they are equal.
    ElseIf Input1 = Input2 Then
    
        ' Tell the user they are equal.
        Output = "The values are equal."
        
    Else
    
        ' The first number is less than the second.
        Output = "First Number is less than Second Number."
    End If
    
    ' Place the output on the worksheet.
    Sheet1.Cells(6, 2) = Output
End Sub

Public Sub IIfDemo()
    ' Create variables to hold the two numbers.
    Dim Input1 As Double
    Dim Input2 As Double
    
    ' Create an output string.
    Dim Output As String
    
    ' Fill the variables with input from the worksheet.
    Input1 = Sheet1.Cells(3, 2)
    Input2 = Sheet1.Cells(4, 2)
    
    ' Use nested IIf functions to check all three
    ' conditions.
    Output = IIf(Input1 = Input2, _
                 "The values are equal.", _
                 IIf(Input1 > Input2, _
                     "First Number is greater.", _
                     "Second Number is greater."))
    
    ' Place the output on the worksheet.
    Sheet1.Cells(6, 2) = Output
End Sub

