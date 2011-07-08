Attribute VB_Name = "ListPeople"
Option Compare Database
Option Explicit

Public Sub DisplayContacts()
    ' Create a loop counter variable.
    Dim Counter As Integer
    Counter = 1
    
    ' Create a recordset object.
    Dim CurrentData As DAO.Recordset
    
    ' Create the collection variable.
    Dim ContactList As Collection
    Set ContactList = New Collection
    
    ' Create the output variables.
    Dim Element As Variant
    Dim Output As String
    
    ' Get the current data.
    Set CurrentData = _
        Application.CurrentDb.OpenRecordset("Contacts")

    ' Create the collection from the data.
    While Not CurrentData.EOF
    
        ' Get the information and place it in the user
        ' data type.
        ContactList.Add _
            CurrentData.Fields("Name").Value, _
            "Name" + CStr(Counter)
        ContactList.Add _
            CurrentData.Fields("Telephone").Value, _
            "Telephone" + CStr(Counter)
        ContactList.Add _
            CurrentData.Fields("LastContact").Value, _
            "LastContact" + CStr(Counter)
        
        ' Update the Counter
        Counter = Counter + 1
        
        ' Move to the next database record.
        CurrentData.MoveNext
    Wend
    
    ' Create an output string by getting the values from
    ' the collection.
    For Counter = 1 To (ContactList.Count / 3)
    
        ' Access the collection elements by name.
        Element = ContactList("Name" + CStr(Counter))
        Output = Output + Element
        
        Element = ContactList("Telephone" + CStr(Counter))
        Output = Output + vbTab + Element
        
        Element = ContactList("LastContact" + CStr(Counter))
        Output = Output + vbTab + CStr(Element) + vbCrLf
    Next
    
    ' Create the message box.
    MsgBox Output, vbInformation, "Contact List"
End Sub

Public Sub DisplayContacts2()
    ' Create a loop counter variable.
    Dim Counter As Integer
    Counter = 1
    
    ' Create a recordset object.
    Dim CurrentData As DAO.Recordset
    
    ' Create the collection variables.
    Dim ContactList As Persons
    Set ContactList = New Persons
    
    ' Create an individual Person.
    Dim Individual As Person
    
    ' Create an output string.
    Dim Output As String
    
    ' Get the current data.
    Set CurrentData = _
        Application.CurrentDb.OpenRecordset("Contacts")
    
    ' Create the collection from the data.
    While Not CurrentData.EOF
    
        ' Define a new element.
        Set Individual = New Person
        
        ' Get the information and place it in the user
        ' data type.
        Individual.Name = CurrentData.Fields("Name").Value
        Individual.Telephone = CurrentData.Fields("Telephone").Value
        Individual.LastContact = CurrentData.Fields("LastContact").Value
        
        ' Add the information to the collection.
        ContactList.Add Individual, Individual.Name
        
        ' Move to the next database record.
        CurrentData.MoveNext
    Wend
    
    ' Create an output string by getting the values from
    ' the collection.
    For Counter = 1 To ContactList.Count
        ' Get the current element.
        Set Individual = ContactList(Counter)
    
        ' Access the collection elements by name.
        Output = Output + Individual.Name + vbTab + Individual.Telephone + vbTab + CStr(Individual.LastContact) + vbCrLf
    Next
    
    ' Create the message box.
    MsgBox Output, vbInformation, "Contact List"
End Sub

