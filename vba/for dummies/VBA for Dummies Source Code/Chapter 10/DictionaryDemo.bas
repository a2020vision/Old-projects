Attribute VB_Name = "DictionaryDemo"
Option Explicit

Public Sub WriteDictionary()
    ' Create a variable to hold the data.
    Dim DataString As Variant
    
    ' Create the dictionary for user settings.
    Dim UserSetting As Dictionary
    Set UserSetting = New Dictionary
    UserSetting.Add "Greeting", "Hello"
    UserSetting.Add "Language", "English"
    
    ' Create the dictionary for application configuration.
    Dim AppConfig As Dictionary
    Set AppConfig = New Dictionary
    AppConfig.Add "ShowHelpMenu", "True"
    AppConfig.Add "AllowChanges", "True"
    
    ' Create the configuration file.
    Dim TheConfig As TextStream
    OpenWriteConfig "DictionaryDemo", "Data.INI", TheConfig

    ' Write the UserSetting Dictionary.
    TheConfig.WriteLine "[UserSetting]"
    For Each DataString In UserSetting
        TheConfig.Write DataString
        TheConfig.Write "="
        TheConfig.WriteLine UserSetting.Item(DataString)
    Next
    
    'Write the AppConfig Dictionary
    TheConfig.WriteLine "[AppConfig]"
    For Each DataString In AppConfig
        TheConfig.Write DataString
        TheConfig.Write "="
        TheConfig.WriteLine AppConfig.Item(DataString)
    Next
    
    ' Close the configuration file.
    TheConfig.Close
End Sub

Public Sub ReadDictionary()
    ' Create an individual data element.
    Dim DataElement As String
    
    ' Create a dictionary selector.
    Dim Selector As Dictionary
    
    ' Create a string indexer.
    Dim Index As Long
    
    ' Create the dictionary for user settings.
    Dim UserSetting As Dictionary
    Set UserSetting = New Dictionary
    
    ' Create the dictionary for application configuration.
    Dim AppConfig As Dictionary
    Set AppConfig = New Dictionary
    
    ' Try to open the configuration file.
    Dim TheConfig As TextStream
    If Not OpenReadConfig("DictionaryDemo", "Data.INI", TheConfig) Then
        
        'Exit the sub if not successful.
        Exit Sub
    End If
    
    ' Read the file into the dictionaries.
    While Not TheConfig.AtEndOfStream
    
        ' Read the data element.
        DataElement = TheConfig.ReadLine
    
        Select Case DataElement
            ' Set the selector for AppConfig.
            Case "[AppConfig]"
                Set Selector = AppConfig
                
            ' Set the selector for UserSetting.
            Case "[UserSetting]"
                Set Selector = UserSetting
                
            'Fill the selected dictionary with data.
            Case Else
                Index = InStr(1, DataElement, "=")
                Selector.Add Left(DataElement, Index - 1), _
                             Mid(DataElement, Index + 1)
        End Select
    Wend
    
    ' Close the configuration file.
    TheConfig.Close
End Sub

Public Sub OpenWriteConfig(AppName As String, Filename As String, ByRef Output As TextStream)
    ' Define the path variable.
    Dim DataPath As String
    
    ' Create a path string for the file. Start with the
    ' default program settings path. Add a special folder
    ' for this program.
    DataPath = Application.UserLibraryPath + AppName + "\"
    
    ' Create a file system object.
    Dim FS As FileSystemObject
    Set FS = New FileSystemObject
    
    ' Verify the path exists.
    If Not FS.FolderExists(DataPath) Then
        ' If not, create it.
        FS.CreateFolder DataPath
    End If
    
    ' Create a text file object.
    Set Output = FS.CreateTextFile(DataPath + Filename)
End Sub

Public Function OpenReadConfig(AppName As String, Filename As String, ByRef Output As TextStream) As Boolean
    ' Define the path variable.
    Dim DataPath As String
    DataPath = Application.UserLibraryPath + AppName + "\"
    
    ' Create a file system object.
    Dim FS As FileSystemObject
    Set FS = New FileSystemObject
    
    ' Determine whether the file exists.
    If Not FS.FileExists(DataPath + Filename) Then
    
        ' Tell the user there are no config settings.
        OpenReadConfig = False
        
        ' Exit the Sub without reading the file.
        Exit Function
    End If
    
    ' Create a text file object.
    Set Output = FS.OpenTextFile( _
        DataPath + Filename, ForReading)
        
    ' Determine whether there is data in the file.
    If Output.AtEndOfStream Then
    
        ' Tell the user the file is empty.
        OpenReadConfig = False
        
    Else
    
        ' Tell the user the file was opened successfully.
        OpenReadConfig = True
    End If
End Function
