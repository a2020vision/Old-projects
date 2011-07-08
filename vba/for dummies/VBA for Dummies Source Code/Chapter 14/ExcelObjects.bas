Attribute VB_Name = "ExcelObjects"
Option Explicit

Public Sub WorkbookDemo()
   ' Holds the output data.
   Dim Output As String
   
   ' Get the test workbook.
   Dim CurrBook As Workbook
   Set CurrBook = Application.Workbooks("ExcelObjects.xls")
   
   ' Get the workbook name and location.
   Output = "Name: " + CurrBook.Name + vbCrLf + _
            "Full Name: " + CurrBook.FullName + vbCrLf + _
            "Path: " + CurrBook.Path + vbCrLf + vbCrLf
   
   'Holds the current sheet.
   Dim CurrSheet As Worksheet
   
   ' Look for every sheet.
   Output = Output + "Worksheet List:" + vbCrLf
   For Each CurrSheet In CurrBook.Worksheets
      Output = Output + CurrSheet.Name + vbCrLf
   Next
   
   ' Holds the current chart.
   Dim CurrChart As Chart
   
   ' Look for every chart.
   Output = Output + vbCrLf + "Chart List:" + vbCrLf
   For Each CurrChart In CurrBook.Charts
      Output = Output + CurrChart.Name + vbCrLf
   Next
   
   ' Display the output.
   MsgBox Output, vbInformation Or vbOKOnly, "Object List"
End Sub

Public Sub ListSheets()
   ' An individual entry.
   Dim ThisEntry As Variant
   
   ' Holds the output data.
   Dim Output As String
   
   ' Get the current number of worksheets.
   Output = "Sheet Count: " + _
      CStr(Application.Sheets.Count)
   
   ' List each worksheet in turn.
   For Each ThisEntry In Application.Sheets
      
      ' Verify there is a sheet to work with.
      If ThisEntry.Type = XlSheetType.xlWorksheet Then
         Output = Output + vbCrLf + ThisEntry.Name
      End If
   Next
   
   ' Display the result.
   MsgBox Output, _
          vbInformation Or vbOKOnly, _
          "Worksheet List"
End Sub

Public Sub AddSheetToEnd()
   ' Create a new sheet.
   Dim NewWorksheet As Worksheet
   Set NewWorksheet = _
      Application.Sheets.Add( _
         After:=Worksheets(GetLastSheet), _
         Type:=XlSheetType.xlWorksheet)
   
   ' Rename the worksheet.
   NewWorksheet.Name = "Added Worksheet"
   
   ' Place a title in the worksheet.
   NewWorksheet.Cells(1, 1) = "Sample Data"
   
   ' Add some headings.
   NewWorksheet.Cells(3, 1) = "Label"
   NewWorksheet.Cells(3, 2) = "Data"
   NewWorksheet.Cells(3, 3) = "Sum"
   
   ' Format the title and headings.
   With NewWorksheet.Range("A1", "B1")
      .Font.Bold = True
      .Font.Size = 12
      .Borders.LineStyle = XlLineStyle.xlContinuous
      .Borders.Weight = XlBorderWeight.xlThick
      .Interior.Pattern = XlPattern.xlPatternSolid
      .Interior.Color = RGB(255, 255, 0)
   End With
   NewWorksheet.Range("A3", "C3").Font.Bold = True
   
   ' Create some data entries.
   Dim Counter As Integer
   For Counter = 1 To 6
   
      ' Add some data labels.
      NewWorksheet.Cells(Counter + 3, 1) = _
         "Element " + CStr(Counter)
         
      ' Add a random integer value between 1 and 10.
      NewWorksheet.Cells(Counter + 3, 2) = _
         CInt(Rnd() * 10)
         
      ' Add an equation to the third column.
      If Counter = 1 Then
         NewWorksheet.Cells(Counter + 3, 3) = _
            "= B" + CStr(Counter + 3)
      Else
         NewWorksheet.Cells(Counter + 3, 3) = _
            "= C" + CStr(Counter + 2) + _
            " + B" + CStr(Counter + 3)
      End If
   Next
End Sub

Public Function GetLastSheet() As String
   ' An individual entry.
   Dim ThisEntry As Variant
   
   ' Holds the output data.
   Dim Output As String
   
   ' List each worksheet in turn.
   For Each ThisEntry In Application.Sheets
      
      ' Verify there is a sheet to work with.
      If ThisEntry.Type = XlSheetType.xlWorksheet Then
         Output = ThisEntry.Name
      End If
   Next
   
   ' Display the result.
   GetLastSheet = Output
End Function

Public Sub RemoveLastSheet()
   ' Remove the last worksheet.
   Application.Sheets(GetLastSheet).Delete
End Sub

Public Sub BuildChart()
   ' Create a new chart.
   Dim NewChart As Chart
   Set NewChart = Charts.Add(After:=Charts(Charts.Count))
   
   ' Change the Name.
   NewChart.Name = "Added Chart"
   
   ' Create a series for the chart.
   Dim TheSeries As Series
   NewChart.SeriesCollection.Add _
      Source:=Worksheets("My Data Sheet").Range("B$3:B$8")
   Set TheSeries = NewChart.SeriesCollection(1)
   
   ' Change the chart type.
   TheSeries.ChartType = xl3DPie
   
   ' Change the series title.
   TheSeries.Name = "Data from My Data Sheet"
   
   ' Perform some data formatting.
   With TheSeries
      .XValues = _
         Worksheets("My Data Sheet").Range("A$3:A$8")
      .HasDataLabels = True
      .DataLabels.ShowValue = True
      .DataLabels.Font.Italic = True
      .DataLabels.Font.Size = 14
   End With
   
   ' Modify the chart's legend.
   With NewChart
      .HasLegend = True
      .Legend.Font.Size = 14
   End With
   
   ' Modify the 3D view.
   With NewChart
      .Pie3DGroup.FirstSliceAngle = 90
      .Elevation = 45
   End With
   
   ' Format the chart title.
   With NewChart.ChartTitle
      .Font.Bold = True
      .Font.Size = 18
      .Border.LineStyle = XlLineStyle.xlContinuous
      .Border.Weight = XlBorderWeight.xlMedium
   End With
   
   ' Format the Plot area.
   With NewChart.PlotArea
      .Interior.Color = RGB(255, 255, 255)
      .Border.LineStyle = XlLineStyle.xlLineStyleNone
      .Height = 450
      .Width = 450
      .Top = 75
      .Left = 25
   End With
End Sub

Public Sub ListWindows()
   ' Holds a Window object.
   Dim MyWin As Window
   
   ' Holds the output.
   Dim Output As String
   
   ' Look at each Window in the Windows collection.
   For Each MyWin In Application.Windows
   
       ' Get the current window information.
      With MyWin
      Output = Output + "Caption: " + .Caption + vbCrLf + _
         "Display Tabs: " + _
         IIf(MyWin.DisplayWorkbookTabs, "Yes", "No") + _
         vbCrLf + "Zoom Factor: " + CStr(MyWin.Zoom) + _
         vbCrLf + "Panes: "
      
      ' Determine the number of panes.
      If .ActiveSheet.Type = -4167 Then
      
         ' Store the number of panes.
         Output = Output + CStr(.Panes.Count) + vbCrLf
         
         ' Add a new pane if possible.
         If .Panes.Count = 1 Then
            .SplitHorizontal = 200
            .SplitVertical = 200
            
         ' Remove extra panes if possible.
         ElseIf .Panes.Count = 4 Then
            .SplitHorizontal = 0
            .SplitVertical = 0
         End If
      Else
         Output = Output + "No Panes on a Chart" + vbCrLf
      End If
      
      ' Add space to the output.
      Output = Output + vbCrLf
      
      End With
    Next
    
    ' Output the result.
    MsgBox Output, _
           vbInformation Or vbOKOnly, _
           "Windows Currently in Use"
End Sub

