Attribute VB_Name = "EventLogWrite"
Option Explicit

' All of these functions are actually calls to the Win32 API.
' The API provides access to various Windows features,
' including those used to write an event log.

' **** These three functions work with the Event Log. ****

' This function tells Windows to use a specific event log
' for event log entries.
Declare Function RegisterEventSource _
        Lib "advapi32.dll" _
        Alias "RegisterEventSourceA" ( _
            ByVal lpUNCServerName As String, _
            ByVal lpSourceName As String) As Long

' This function creates the report entry within the event
' log.
Declare Function ReportEvent _
        Lib "advapi32.dll" _
        Alias "ReportEventA" ( _
            ByVal hEventLog As Long, _
            ByVal wType As EntryType, _
            ByVal wCategory As Integer, _
            ByVal dwEventID As Long, _
            ByVal lpUserSid As Any, _
            ByVal wNumStrings As Integer, _
            ByVal dwDataSize As Long, _
            plpStrings As Long, _
            lpRawData As Any) As Boolean
        
' This function tells Windows that the program is done using
' the event log.
Declare Function DeregisterEventSource _
        Lib "advapi32.dll" ( _
            ByVal hEventLog As Long) As Long
        
' **** These three functions work with memory used by the
'      event reporting functions. ****

' This function asks Windows to provide memory for use with
' the event log functions.
Declare Function GlobalAlloc _
        Lib "kernel32" ( _
            ByVal wFlags As GlobalAllocFlags, _
            ByVal dwBytes As Integer) As Long

' This function copies information from VBA to the memory
' provided by Windows.
Declare Sub CopyMemory _
        Lib "kernel32" _
        Alias "RtlMoveMemory" ( _
            hpvDest As Any, _
            hpvSource As Any, _
            ByVal cbCopy As Long)

' This function tells Windows that we no longer need the
' memory allocated using the GlobalAlloc function.
Declare Function GlobalFree _
        Lib "kernel32" ( _
            ByVal hMem As Long) As Integer


' **** These enumerated constants make using the functions
' easier. ****

' These constants define event log entry types.
Public Enum EntryType
    EVENTLOG_SUCCESS = 0
    EVENTLOG_ERROR_TYPE = 1
    EVENTLOG_WARNING_TYPE = 2
    EVENTLOG_INFORMATION_TYPE = 4
    EVENTLOG_AUDIT_SUCCESS = 8
    EVENTLOG_AUDIT_FAILURE = 16
End Enum

' These constants define memory allocation methods.
Public Enum GlobalAllocFlags
    GMEM_FIXED = &H0
    GMEM_MOVEABLE = &H2
    GMEM_ZEROINIT = &H40
    GHND = GMEM_MOVEABLE Or GMEM_ZEROINIT
    GPTR = GMEM_FIXED Or GMEM_ZEROINIT
End Enum

Public Function Write2EventLog( _
    Optional LogName As String = "Application", _
    Optional EventType As EntryType = 4, _
    Optional Category As Integer = 0, _
    Optional EventID As Long = 0, _
    Optional Description As String = "None") As Boolean
    
    ' The address of the open Event Log. A handle is a way
    ' to access the Event Log.
    Dim EventLogHandle As Long
    
    ' The address of the Windows memory used to store the
    ' event description.
    Dim MessageHandle As Long
    
    ' This functions writes information to the local
    ' machine Event Log. If you want to write to an Event
    ' Log on a server, then change the first argument in
    ' this call to the name of that server.
    EventLogHandle = RegisterEventSource("", LogName)

    ' Ask Windows for memmory to store the description
    ' string and the raw data.
    MessageHandle = _
        GlobalAlloc(GMEM_ZEROINIT, Len(Description) + 1)
    
    ' If Windows doesn't have any memory to offer, tell the
    ' user and then exit.
    If (MessageHandle = 0) Then
        MsgBox "Windows ran low on memory, so the " + _
               "program can't create an Event Log entry.", _
               vbOKOnly Or vbExclamation, _
               "Error Getting Memory"
               
        Exit Function
    End If
    
    ' Now that we have memory to use, copy the description
    ' and the raw data to the Windows memory.
    CopyMemory ByVal MessageHandle, _
               ByVal Description, _
               Len(Description) + 1
    
    ' Write the information to the Event Log
    Write2EventLog = ReportEvent(EventLogHandle, _
                                 EventType, _
                                 Category, _
                                 EventID, _
                                 0&, _
                                 1, _
                                 0, _
                                 MessageHandle, _
                                 0)
    
    ' Always free memory that you request from Windows.
    Call GlobalFree(MessageHandle)
    
    ' Tell Windows the Event Log entry is finished.
    DeregisterEventSource (EventLogHandle)
End Function

Public Sub SampleEntry()
    ' Create an object.
    Dim MyObject As Object
    
    ' Tell VBA about the error handler.
    On Error GoTo MyErrorHandler
    
    ' Generate an error.
    MyObject = 2
    
    ' Exit the Sub.
    Exit Sub
    
MyErrorHandler:
    ' Create an Event Log entry.
    If Write2EventLog("MySpecialProgram", _
                      EVENTLOG_ERROR_TYPE, _
                      0, _
                      Err.Number, _
                      vbCrLf + "Source: " + Err.Source + _
                      vbCrLf + "Decription: " + _
                      Err.Description) Then
        
        ' Indicate success.
        MsgBox "Event Log entry written.", _
               vbOKOnly Or vbInformation, _
               "Success"
    Else
        ' Indicate failure.
        MsgBox "Error writing Event Log entry.", _
               vbOKOnly Or vbExclamation, _
               "Event Log Error"
    End If
End Sub
