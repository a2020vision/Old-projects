Attribute VB_Name = "Financial"
Public Sub ShowPayment()
    ' Create the required variables. All non-monetary
    ' values use the Double type to ensure accuracy. The
    ' monetary values use the Currency data type.
    Dim Rate As Double
    Dim Periods As Double
    Dim PresentValue As Currency
    Dim FutureValue As Currency
    
    'Calculate the monthly payment on a mortgage.
    Rate = 0.005            ' 6 Percent divided by 12 Months
    Periods = 60            ' 5 years
    PresentValue = 120000   ' $120,000.00 loan
    MsgBox CStr(Pmt(Rate, Periods, PresentValue)), _
           vbOKOnly, _
           "Mortgage Output"
    
    ' Calculate the monthly payments required to build
    ' a savings account to 120000
    Rate = 0.0025           ' 3 Percent divided by 12 Months
    Periods = 240           ' 20 years
    PresentValue = -5000    ' $5,000 current savings.
    FutureValue = 120000    ' $120,000.00 savings in 20 years
    MsgBox CStr(Pmt(Rate, Periods, PresentValue, FutureValue)), _
           vbOKOnly, _
           "Savings Output"
End Sub
