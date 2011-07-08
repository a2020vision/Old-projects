VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "SpecialMsg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Private UseIcon As VbMsgBoxStyle
Private UseButtons As VbMsgBoxStyle
Private UseDefault As VbMsgBoxStyle
Private UseModal As VbMsgBoxStyle
Private UseHelpButton As Boolean
Private UseForeground As Boolean
Private UseRightAlignment As Boolean
Private UseRightToLeft As Boolean
Private ThePrompt As String
Private TheTitle As String
Private TheHelpFile As String
Private TheHelpContext As Integer
Private NewIcon As Image

' This enumeration shows the button types.
Public Enum ButtonTypes
    OKOnly = 0
    OKCancel = 1
    AbortRetryIgnore = 2
    YesNoCancel = 3
    YesNo = 4
    RetryCancel = 5
End Enum

' This enumeration lists the icon types.
Public Enum IconTypes
    Critical = 0
    Question = 1
    Exclamation = 2
    Information = 3
End Enum

' This enumeration lists the default button options.
Public Enum DefaultButtonTypes
    Button_1 = 1
    Button_2 = 2
    Button_3 = 3
    Button_4 = 4
End Enum

' This enumeration defines the modality of the messsage box.
Public Enum ModalityType
    Application = 0
    System = 1
End Enum

' Define an event that occurs when the user clicks a button.
Public Event Click(Result As VbMsgBoxResult)

' Define events for various property changes.
Public Event ChangeButton(Result As ButtonTypes)
Public Event ChangeIcon(Result As IconTypes)

Public Static Property Let Buttons(Value As ButtonTypes)
    ' Change the value of the message button based on the
    ' input value.
    Select Case Value
        Case OKOnly
            UseButtons = vbOKOnly
        Case OKCancel
            UseButtons = vbOKCancel
        Case AbortRetryIgnore
            UseButtons = vbAbortRetryIgnore
        Case YesNoCancel
            UseButtons = vbYesNoCancel
        Case YesNo
            UseButtons = vbYesNo
        Case RetryCancel
            UseButtons = vbRetryCancel
    End Select
    
    ' Raise an event to show the button type has changed.
    RaiseEvent ChangeButton(Value)
End Property

Public Static Property Get Buttons() As ButtonTypes
    ' Return the value of the message buttons.
    Select Case UseButtons
        Case vbOKOnly
            Buttons = OKOnly
        Case vbOKCancel
            Buttons = OKCancel
        Case vbAbortRetryIgnore
            Buttons = AbortRetryIgnore
        Case vbYesNoCancel
            Buttons = YesNoCancel
        Case vbYesNo
            Buttons = YesNo
        Case vbRetryCancel
            Buttons = RetryCancel
    End Select
End Property

Public Static Property Let Icon(Value As IconTypes)
    ' Change the value of the message icon based on the
    ' input value.
    Select Case Value
        Case Critical
            UseIcon = vbCritical
        Case Question
            UseIcon = vbQuestion
        Case Exclamation
            UseIcon = vbExclamation
        Case Information
            UseIcon = vbInformation
    End Select
    
    ' Raise an event to show the button type has changed.
    RaiseEvent ChangeIcon(Value)
End Property

Public Static Property Get Icon() As IconTypes
    ' Return the value of the message icon.
    Select Case UseIcon
        Case vbCritical
            Icon = Critical
        Case vbQuestion
            Icon = Question
        Case vbExclamation
            Icon = Exclamation
        Case vbInformation
            Icon = Information
    End Select
End Property

Public Static Property Let DefaultButton(Value As DefaultButtonTypes)
    ' Change the value of the message icon based on the
    ' input value.
    Select Case Value
        Case Button_1
            UseDefault = vbDefaultButton1
        Case Button_2
            If ((UseButtons = vbOKOnly) And _
                (Not UseHelpButton)) Then
                ' Can't have a single button setting if
                ' there is no Help button, so raise an
                ' error.
                Err.Raise vbObjectError + 2, _
                "SpecialMsg.DefaultButton", _
                "The selected default button value is " + _
                "incorrect. Choose a default button " + _
                "that matches the message box settings."
            Else
                ' Set the default button value.
                UseDefault = vbDefaultButton2
            End If
        Case Button_3
            If ((UseButtons = vbOKOnly) Or _
                (((UseButtons = vbOKCancel) Or _
                  (UseButtons = vbRetryCancel) Or _
                  (UseButtons = vbYesNo)) And _
                  (Not UseHelpButton))) Then
                ' This setting doesn't support a single
                ' button option at all. It also doesn't
                ' support any of the double button options
                ' if there is no help button. Raise an error
                ' if any of these conditions is true.
                Err.Raise vbObjectError + 2, _
                "SpecialMsg.DefaultButton", _
                "The selected default button value is " + _
                "incorrect. Choose a default button " + _
                "that matches the message box settings."
            Else
                ' Set the default button value.
                UseDefault = vbDefaultButton3
            End If
        Case Button_4
            If Not UseHelpButton Then
                ' Can't have four buttons if there is no
                ' Help button, so raise an error.
                Err.Raise vbObjectError + 2, _
                "SpecialMsg.DefaultButton", _
                "The selected default button value is " + _
                "incorrect. Choose a default button " + _
                "that matches the message box settings."
            Else
                ' Set the default button value.
                UseDefault = vbDefaultButton4
            End If
    End Select
End Property

Public Static Property Get DefaultButton() As DefaultButtonTypes
    ' Return the value of the default button.
    Select Case UseDefault
        Case vbDefaultButton1
            DefaultButton = Button_1
        Case vbDefaultButton2
            DefaultButton = Button_2
        Case vbDefaultButton3
            DefaultButton = Button_3
        Case vbDefaultButton4
            DefaultButton = Button_4
    End Select
End Property

Public Static Property Let Modality(Value As ModalityType)
    ' Change the type of the message box modality based on
    ' the input value.
    Select Case Value
        ' The user can't do anything with the application
        ' until the message box is cleared.
        Case Application
            UseModal = vbApplicationModal
        ' The user can't do anything with any application
        ' until the message box is cleared.
        Case System
            UseModal = vbSystemModal
    End Select
End Property

Public Static Property Get Modality() As ModalityType
    ' Return the modality value.
    Select Case UseModal
        Case vbApplicationModal
            Modality = Application
        Case vbSystemModal
            Modality = System
    End Select
End Property

Public Static Property Let HelpButton(Value As Boolean)
    ' Should the example use the vbMsgBoxHelpButton style?
    UseHelpButton = Value
End Property

Public Static Property Get HelpButton() As Boolean
    ' Return the vbMsgBoxHelpButton value.
    HelpButton = UseHelpButton
End Property

Public Static Property Let SetAsForegroundWindow(Value As Boolean)
    ' Should the example use the vbMsgBoxSetForeground style?
    UseForeground = Value
End Property

Public Static Property Get SetAsForegroundWindow() As Boolean
    ' Return the vbMsgBoxSetForeground value.
    SetAsForegroundWindow = UseForeground
End Property

Public Static Property Let RightAlignText(Value As Boolean)
    ' Should the example use the vbMsgBoxRight style?
    UseRightAlignment = Value
End Property

Public Static Property Get RightAlignText() As Boolean
    ' Return the vbMsgBoxRight value.
    RightAlignText = UseRightAlignment
End Property

Public Static Property Let TextRightToLeft(Value As Boolean)
    ' Should the example use the vbMsgBoxRtlReading style?
    UseRightToLeft = Value
End Property

Public Static Property Get TextRightToLeft() As Boolean
    ' Return the vbMsgBoxRtlReading value.
    TextRightToLeft = UseRightToLeft
End Property

Public Static Property Let Caption(Value As String)
    ' Set the message display text.
    ThePrompt = Value
End Property

Public Static Property Get Caption() As String
    ' Return the current prompt.
    Caption = ThePrompt
End Property

Public Static Property Let Title(Value As String)
    ' Set the title bar text.
    TheTitle = Value
End Property

Public Static Property Get Title() As String
    ' Return the current title.
    Title = TheTitle
End Property

Public Static Property Let HelpFilename(Value As String)
    ' Set the help filename.
    TheHelpFile = Value
End Property

Public Static Property Get HelpFilename() As String
    ' Return the current help filename.
    HelpFilename = TheHelpFile
End Property

Public Static Property Let HelpContextID(Value As Integer)
    ' Set the help context.
    TheHelpContext = Value
End Property

Public Static Property Get HelpContextID() As Integer
    ' Return the help context identifier
    HelpContextID = TheHelpContext
End Property

Public Static Property Set SpecialIcon(Value As Image)
    ' Set the custom icon value. Make sure the user has
    ' supplied a valid image.
    If Not Value Is Nothing Then
        Set NewIcon = Value
    End If
End Property

Public Static Property Get SpecialIcon() As Image
    ' Return the custom icon value.
    Set SpecialIcon = NewIcon
End Property

Private Sub Class_Initialize()
    ' Set the initial prompt
    ThePrompt = "Hello World"
    
    ' Define a simple title.
    TheTitle = ""
    
    ' Don't include a default help file or context.
    TheHelpFile = ""
    TheHelpContext = 0

    ' Initialize the variables.
    ' Use the Information icon.
    UseIcon = vbInformation
    
    ' Display only the OK button.
    UseButtons = vbOKOnly
    
    ' Make the first button the default button.
    UseDefault = vbDefaultButton1
    
    ' Ensure the message box is application modal. The user
    ' must clear the message box before doing anything else
    ' with the application.
    UseModal = vbApplicationModal
    
    ' Don't display a help button.
    UseHelpButton = False
    
    ' It's not essential that the message box always appear
    ' in the foreground.
    UseForeground = False
    
    ' Left align the message box text.
    UseRightAlignment = False
    
    ' Display the text in left to right order.
    UseRightToLeft = False
    
    ' Initialize the special icon, but don't load a picture.
    Set SpecialIcon = New Image
End Sub

Public Function Show() As VbMsgBoxResult
    ' Create a variable to hold the message box result.
    Dim Result As VbMsgBoxResult
    
    ' Create and build the option list.
    Dim Options As VbMsgBoxStyle
    Options = UseIcon
    Options = Options Or UseButtons
    Options = Options Or UseDefault
    Options = Options Or UseModal
    
    ' Each of the Boolean values require conversion to a
    ' style equivalent.
    If UseForeground Then
        Options = Options Or vbMsgBoxSetForeground
    End If
    If UseRightAlignment Then
        Options = Options Or vbMsgBoxRight
    End If
    If UseRightToLeft Then
        Options = Options Or vbMsgBoxRtlReading
    End If
    
    ' The help button requires special handling.
    If UseHelpButton Then
        ' Verify the user has supplied all required
        ' help information.
        If TheHelpFile = "" Then
            ' If the help filename is missing, the message
            ' box can't display help. Raise an error to tell
            ' the user about the problem.
            Err.Raise vbObjectError + 1, _
                      "SpecialMsg.Show", _
                      "You must provide a HelpFilename " + _
                      "property value to use the Help " + _
                      "button in a message box."
        Else
            ' The user has provided all required help
            ' information, so set the help button option.
            Options = Options Or vbMsgBoxHelpButton
        End If
    End If
    
    ' Determine if the message box will display help.
    If ((TheHelpFile = "") And (Not UseHelpButton)) Then
        ' Display a message box without help.
        Result = MsgBox(ThePrompt, Options, TheTitle)
    Else
        ' Display a message box that includes help.
        Result = MsgBox(ThePrompt, Options, TheTitle, _
                      TheHelpFile, TheHelpContext)
    End If
    
    ' Raise the Click event so the caller can react to it.
    RaiseEvent Click(Result)
    
    ' Return a result.
    Show = Result
End Function
