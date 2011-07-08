Attribute VB_Name = "AccessInteraction"
Public Sub GetData()
   ' Create the database connection.
   Dim DBConn As ADODB.Connection
   Set DBConn = New ADODB.Connection
   DBConn.ConnectionString = _
      "Driver={Microsoft Access Driver (*.mdb)};" + _
      "Dbq=" + ThisWorkbook.Path + "\AccessObjects.MDB;" + _
      "Uid=admin;Pwd="
   
   ' Open the database.
   DBConn.Open
   
   ' Create a recordset.
   Dim DBRec As ADODB.Recordset
   Set DBRec = New ADODB.Recordset
   
   ' Set the recordset parameters.
   DBRec.ActiveConnection = DBConn
   DBRec.Source = "Select * From [Word List] Where IsAcronym=True"
   
   ' Open the recordset.
   DBRec.Open
   
   ' Display the fields as headers.
   Dim CurrentCell As Integer
   CurrentCell = 1
   Dim AField As ADODB.Field
   For Each AField In DBRec.Fields
      Sheet2.Cells(1, CurrentCell) = AField.Name
      CurrentCell = CurrentCell + 1
   Next
   
   ' Display the data.
   Dim RowCount As Integer
   RowCount = 3
   While Not DBRec.EOF
      CurrentCell = 1
      For Each AField In DBRec.Fields
         Sheet2.Cells(RowCount, CurrentCell) = AField.Value
         CurrentCell = CurrentCell + 1
      Next
      DBRec.MoveNext
      RowCount = RowCount + 1
   Wend
   
   ' Close the dabase.
   DBConn.Close
End Sub
