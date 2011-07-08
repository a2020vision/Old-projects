Attribute VB_Name = "RegistryFuncs"
' This Windows API function opens a registry key.
Public Declare Function RegOpenKey _
    Lib "advapi32.dll" _
    Alias "RegOpenKeyA" (ByVal HKey As Long, _
                         ByVal lpSubKey As String, _
                         phkResult As Long) As Boolean

' Use this enumeration for the top level keys.
Public Enum ROOT_KEYS
    HKEY_CLASSES_ROOT = &H80000000
    HKEY_CURRENT_USER = &H80000001
    HKEY_LOCAL_MACHINE = &H80000002
    HKEY_USERS = &H80000003
    HKEY_PERFORMANCE_DATA = &H80000004
    HKEY_CURRENT_CONFIG = &H80000005
    HKEY_DYN_DATA = &H80000006
End Enum

' This Windows API function reads a value from a key.
Declare Function RegQueryValue _
    Lib "advapi32.dll" _
    Alias "RegQueryValueA" (ByVal HKey As Long, _
                            ByVal lpSubKey As String, _
                            ByVal lpValue As String, _
                            lpcbValue As Long) As Boolean

' This Windows API function closes a registry key.
Public Declare Function RegCloseKey _
    Lib "advapi32.dll" (ByVal HKey As Long) As Boolean

