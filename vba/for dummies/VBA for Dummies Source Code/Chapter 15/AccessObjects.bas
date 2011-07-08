Attribute VB_Name = "AccessObjects"
Option Compare Database
Option Explicit

Public Function SpecialCommands()
   ' Sound a beep.
   MsgBox "Sounding a beep!", vbInformation, "DoCmd Event"
   DoCmd.Beep
   
   ' Turn echo off, and then back on.
   DoCmd.Echo False, "Echo is off!"
   MsgBox "Echo is off!", vbInformation, "DoCmd Event"
   DoCmd.Echo True, "Echo is on!"
   MsgBox "Echo is on!", vbInformation, "DoCmd Event"
   
   ' Open and close a query.
   DoCmd.OpenQuery "GetWordList", acViewNormal, acReadOnly
   MsgBox "Query is open!", vbInformation, "DoCmd Event"
   DoCmd.Close acQuery, "GetWordList"
   MsgBox "Query is closed!", vbInformation, "DoCmd Event"
   
   ' Run a macro.
   DoCmd.RunMacro "RunSayHello"
End Function

Public Function SayHello()
   ' Say hello to the user.
   MsgBox "Hello!", vbExclamation, "Say Hello Message"
End Function

Public Function UseApplication()
   ' Create an output string.
   Dim Output As String
   
   ' Fill it with text version of a numeric error.
   Output = Application.AccessError(14)
   
   ' Display the result.
   MsgBox "Error number 14 is " + Chr(&H22) + Output + _
          Chr(&H22), vbInformation, "Error Number Text"
   
   ' Add this database to the favorites list.
   Application.AddToFavorites
   
   ' Perform some system commands.
   ' Create a progress meter.
   Application.SysCmd acSysCmdInitMeter, "Progress Meter", 5
   Dim Counter As Integer
   
   ' Update the meter until finished.
   For Counter = 1 To 5
      Application.SysCmd acSysCmdUpdateMeter, Counter
      MsgBox "Click to proceed", vbInformation, "Progress"
   Next
   
   ' Remove the meter.
   Application.SysCmd acSysCmdRemoveMeter
   
   ' Say you're done by changing the status bar text.
   Application.SysCmd acSysCmdSetStatus, _
                      "Progress meter is done."
End Function

Public Function ConfigureUser()
   ' Get the default workspace.
   Dim CurWrk As Workspace
   Set CurWrk = DBEngine.Workspaces(0)
   
   ' Get the username and password.
   Dim Username As String
   Dim Password As String
   Username = InputBox("Type a user name.", "New User")
   Password = InputBox("Type a password.", "New User")
   
   ' Create a new user.
   Dim NewUser As User
   Set NewUser = CurWrk.CreateUser(Name:=Username, _
                                   Password:=Password, _
                                   PID:=Username)
   
   ' Add the user to the database.
   CurWrk.Users.Append NewUser
   
   ' Modify the user setup for a default user.
   Dim AddGroup As Group
   Set AddGroup = NewUser.CreateGroup("Users", "Users")
   NewUser.Groups.Append AddGroup
End Function

Public Function GetDBEngineProperties()
   ' Create an output string.
   Dim Output As String
   
   ' Make a place for the property values.
   Dim CurProp As Property
   
   ' Some properties won't have a value.
   On Error Resume Next
   
   ' Get the current properties.
   For Each CurProp In DBEngine.Properties
      Output = Output + CurProp.Name + ": " + _
         CStr(CurProp.Value) + vbCrLf
   Next
   
   ' Display the results.
   MsgBox Output, vbInformation, "DBEngine Properties"
End Function

Public Function GetDBEngineSecurity()
   ' Create an output string.
   Dim Output As String
   
   ' Set the system database value if necessary.
   If DBEngine.SystemDB = "" Then
      DBEngine.SystemDB = "System.mdw"
   End If
   
   ' Get the current database.
   Dim TheDB As Database
   Set TheDB = DBEngine.Workspaces(0).Databases(0)
   
   ' Create a container object to hold the security data.
   Dim AContainer As Container
   
   ' Check each container for data.
   For Each AContainer In TheDB.Containers
   
      With AContainer
      
      ' Store the name of the permission object.
      Output = Output + .Name + ":" + vbCrLf
      
      ' Check the flag values.
      If .AllPermissions And dbSecReadDef Then
         Output = Output + "Can Read Definition" + vbCrLf
      End If
      If .AllPermissions And dbSecWriteDef Then
         Output = Output + "Can Write Definition" + vbCrLf
      End If
      If .AllPermissions And dbSecRetrieveData Then
         Output = Output + "Can Retrieve Data" + vbCrLf
      End If
      If .AllPermissions And dbSecInsertData Then
         Output = Output + "Can Insert Data" + vbCrLf
      End If
      If .AllPermissions And dbSecReplaceData Then
         Output = Output + "Can Replace Data" + vbCrLf
      End If
      If .AllPermissions And dbSecDeleteData Then
         Output = Output + "Can Delete Data" + vbCrLf
      End If
      If .AllPermissions And dbSecDBAdmin Then
         Output = Output + "Can Administrate" _
            + vbCrLf
      End If
      If .AllPermissions And dbSecDBCreate Then
         Output = Output + "Can Create New" _
            + vbCrLf
      End If
      If .AllPermissions And dbSecDBExclusive Then
         Output = Output + "Can Open Exclusively" _
            + vbCrLf
      End If
      If .AllPermissions And dbSecDBOpen Then
         Output = Output + "Can Open" + vbCrLf
      End If
      End With
      
      ' Display the results.
      MsgBox Output, vbInformation, "DBEngine Security"
      
      ' Erase the data.
      Output = ""
   Next
   
End Function

Public Function CheckCurrentDB()
   ' Create an individual table definition.
   Dim CurTblDef As TableDef
   
   ' Create an individual recordset.
   Dim CurRec As Recordset
   
   ' Create an individual field.
   Dim CurField As Field
   
   ' Create an output string.
   Dim Output As String
   
   ' Check each recordset in the database.
   For Each CurTblDef In CurrentDb.TableDefs
   
      ' Open a recordset for each table definition.
      Set CurRec = CurrentDb.OpenRecordset(CurTblDef.Name)
      
      ' Get the recordset name.
      Output = Output + CurRec.Name + vbCrLf
      
      ' Check for records.
      If CurRec.RecordCount = 0 Then
      
         ' Tell the user and exit.
         Output = Output + "No Records Available"
         GoTo SkipFields
      
      End If
      
      ' Check each field definition in the recordset.
      For Each CurField In CurRec.Fields
      
         ' Get the field name, type, and current value.
         Output = Output + "Name: " + CurField.Name + _
            vbCrLf + vbTab + "Type: " + _
            CvtType(CurField.Type) + vbCrLf + vbTab + _
            "Value: "
         
         ' Some values are null.
         If IsNull(CurField.Value) Then
            Output = Output + "Null" + vbCrLf
         Else
            Output = Output + CStr(CurField.Value) + vbCrLf
         End If
      Next
   
SkipFields:
      ' Display the results.
      MsgBox Output, vbInformation, "CurrentDB Information"
      
      ' Erase the data.
      Output = ""
      
      ' Close each recordset in turn.
      CurRec.Close
   Next
End Function

Public Function CvtType(DataType As Long) As String
   ' Use a case statement to choose a data type.
   Select Case DataType
      Case DataTypeEnum.dbBigInt
         CvtType = "dbBigInt"
      Case DataTypeEnum.dbBinary
         CvtType = "dbBinary"
      Case DataTypeEnum.dbBoolean
         CvtType = "dbBoolean"
      Case DataTypeEnum.dbByte
         CvtType = "dbByte"
      Case DataTypeEnum.dbChar
         CvtType = "dbChar"
      Case DataTypeEnum.dbCurrency
         CvtType = "dbCurrency"
      Case DataTypeEnum.dbDate
         CvtType = "dbDate"
      Case DataTypeEnum.dbDecimal
         CvtType = "dbDecimal"
      Case DataTypeEnum.dbDouble
         CvtType = "dbDouble"
      Case DataTypeEnum.dbFloat
         CvtType = "dbFloat"
      Case DataTypeEnum.dbGUID
         CvtType = "dbGUID"
      Case DataTypeEnum.dbInteger
         CvtType = "dbInteger"
      Case DataTypeEnum.dbLong
         CvtType = "dbLong"
      Case DataTypeEnum.dbLongBinary
         CvtType = "dbLongBinary"
      Case DataTypeEnum.dbMemo
         CvtType = "dbMemo"
      Case DataTypeEnum.dbNumeric
         CvtType = "dbNumeric"
      Case DataTypeEnum.dbSingle
         CvtType = "dbSingle"
      Case DataTypeEnum.dbText
         CvtType = "dbText"
      Case DataTypeEnum.dbTime
         CvtType = "dbTime"
      Case DataTypeEnum.dbTimeStamp
         CvtType = "dbTimeStamp"
      Case DataTypeEnum.dbVarBinary
         CvtType = "dbVarBinary"
      Case Else
         CvtType = "Type Unknown"
   End Select
End Function

Public Function QueryCAcronyms()
   ' Create a recordset
   Dim Rec As Recordset
   Set Rec = _
      CurrentDb.OpenRecordset( _
         "SELECT [Word List].* " + _
         "FROM [Word List] " + _
         "WHERE (((Left([Acronym],1))='C') " + _
         "AND (([Word List].IsAcronym)=True))", _
      Type:=dbOpenDynaset)
         
   ' Create an output string.
   Dim Output As String
   
   ' Check each record in the recordset.
   While Not Rec.EOF
   
      ' Get the information.
      Output = Output + Rec.Fields("Acronym") + vbTab + _
               Rec.Fields("Word") + vbCrLf
               
      ' Move to the next record.
      Rec.MoveNext
   Wend
   
   ' Display the result.
   MsgBox Output, vbInformation, "Words and Acronyms"
   
   ' Close the recordset.
   Rec.Close
End Function
