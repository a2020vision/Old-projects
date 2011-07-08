Imports System.Data
Imports System.Data.OleDb
Public Class Form1
    
    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dr As DialogResult ' open file dialog
        dr = dlgOpen.ShowDialog()
        If dr = Windows.Forms.DialogResult.OK Then
            Dim strFile As String ' file name
            strFile = dlgOpen.FileName
            Dim myConn As New OleDbConnection ' db connection
            Dim myCMD As New OleDbCommand ' db commands
            myConn.ConnectionString = "Provider = Microsoft.Jet.OLEDB.4.0;Data Source=" & strFile & ";"
            myConn.Open()
            myCMD.CommandText = "SELECT CustomerID, ContactTitle, CompanyName, ContactName FROM Customers"
            myCMD.Connection = myConn
            Dim myAdapter As New OleDbDataAdapter
            myAdapter.SelectCommand = myCMD
            Dim ds As New DataSet
            ds.Clear()
            myAdapter.Fill(ds, "Customers")
            dgvData.DataSource = ds
            dgvData.DataMember = "Customers"
        End If
    End Sub
End Class
