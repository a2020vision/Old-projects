Attribute VB_Name = "Declarations"
Option Explicit

' This variable is visible to other modules.
Public MyPublicVariable As String
' This variable is visible only to this module.
Private MyPrivateVariable As String
' Using Dim is the same as making the variable private.
Dim MyDimVariable As String

' A constant only used for conditional compilation.
#Const MyConditionalConstant = "Hello"
' This constant is visible to other modules.
Public Const MyPublicConstant = "Hello"
' This constant is visible only to this module.
Private Const MyPrivateConstant = "Hello"

Public Sub DataDeclarations()
    ' Only this Sub can see these variables.
    Dim MyDimSubVariable As String
    
    ' Only this Sub can see this constant.
    Const MySubConstant = "Hello"
    
End Sub
