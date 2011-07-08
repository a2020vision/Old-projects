Attribute VB_Name = "ExcelReport"
Public Sub CreateReport()
    ' Create some output variables.
    Dim DataSum As Integer
    Dim Output As String
    
    ' Begin by adding data to the report.
    Sheet1.Cells(3, 2) = 1
    Sheet1.Cells(4, 2) = 2
    Sheet1.Cells(5, 2) = 3
    
    ' Create a sum of the cell content.
    DataSum = Sheet1.Cells(3, 2) + _
              Sheet1.Cells(4, 2) + _
              Sheet1.Cells(5, 2)
    
    ' Create an output string.
    Output = "The sum of the three numbers is: " + _
             CStr(DataSum)
    
    Sheet1.Cells(7, 1) = Output
End Sub
