Attribute VB_Name = "FirstFile"
Option Explicit

Public Sub WriteFile()
    ' Define the path variable.
    Dim DataPath As String
    
    ' Create a path string for the file. Start with the
    ' default program settings path. Add a special folder
    ' for this program.
    DataPath = Application.UserLibraryPath + "FirstFile\"
    
    ' Create a file system object.
    Dim FS As FileSystemObject
    Set FS = New FileSystemObject
    
    ' Verify the path exists.
    If Not FS.FolderExists(DataPath) Then
        ' If not, create it.
        FS.CreateFolder DataPath
    End If
    
    ' Create a text file object.
    Dim Output As TextStream
    Set Output = FS.CreateTextFile(DataPath + "Config.txt")
    
    ' Write information to the file.
    Output.WriteLine "Hello"
    Output.Write "World"
    
    ' Close the file.
    Output.Close
End Sub

Public Sub ReadFile()
    ' Define the path variable.
    Dim DataPath As String
    DataPath = Application.UserLibraryPath + "FirstFile\"
    
    ' Create a file system object.
    Dim FS As FileSystemObject
    Set FS = New FileSystemObject
    
    ' Determine whether the file exists.
    If Not FS.FileExists(DataPath + "Config.txt") Then
    
        ' Tell the user there are no config settings.
        MsgBox "The Configuration file is missing!", _
               vbCritical, _
               "Missing File Error"
        
        ' Exit the Sub without reading the file.
        Exit Sub
    End If
    
    ' Create a text file object.
    Dim Output As TextStream
    Set Output = FS.OpenTextFile( _
        DataPath + "Config.txt", ForReading)
        
    ' Determine whether there is data in the file.
    If Output.AtEndOfStream Then
    
        ' Tell the user the file is empty.
        MsgBox "There is no configuration file data!", _
               vbExclamation, _
               "Data Missing Error"
        
        ' Exit the Sub without reading the file.
        Exit Sub
    End If
    
    ' Create a variable to hold the information.
    Dim ReadData As String
    
    ' Write information to the file.
    ReadData = Output.ReadLine()
    ReadData = ReadData + " " + Output.ReadLine()
    
    ' Display the result.
    MsgBox ReadData, vbInformation, "File Content"
    
    ' Close the file.
    Output.Close
End Sub
