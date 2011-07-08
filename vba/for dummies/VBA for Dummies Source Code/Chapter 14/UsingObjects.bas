Attribute VB_Name = "UsingObjects"
Public Sub SelectObject()
   ' Select the worksheet.
   Sheet2.Select
   
   ' Select the object.
   Sheet2.ChartObjects(1).Select
   
   ' Create a chart object.
   Dim EmbeddedChart As Chart
   Set EmbeddedChart = Sheet2.ChartObjects(1).Chart
   
   ' Make sure the chart has a title.
   EmbeddedChart.HasTitle = True
   
   ' Look for the chart object.
   With EmbeddedChart
   
      ' Rotate between chart types. Change the title as
      ' needed to match the chart type.
      Select Case .ChartType
         Case XlChartType.xlPie
            .ChartType = xlArea
            .ChartTitle.Caption = "More Data (Area)"
         Case XlChartType.xlArea
            .ChartType = xlLine
            .ChartTitle.Caption = "More Data (Line)"
         Case XlChartType.xlLine
            .ChartType = xlColumnClustered
            .ChartTitle.Caption = "More Data (Column)"
         Case XlChartType.xlColumnClustered
            .ChartType = xlPie
            .ChartTitle.Caption = "More Data (Pie)"
      End Select
   End With
End Sub
