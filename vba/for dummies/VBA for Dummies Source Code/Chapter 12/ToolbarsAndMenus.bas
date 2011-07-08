Attribute VB_Name = "ToolbarsAndMenus"
Public Sub HideAndShowEditCutMenu()
    ' Create the menu command bar.
    Dim TopMenu As CommandBar
    Set TopMenu = _
        Application.CommandBars("Worksheet Menu Bar")
        
    ' Access the Edit menu control.
    Dim EditControl As CommandBarControl
    Set EditControl = TopMenu.Controls("Edit")
    
    ' Use the control to access the command bar.
    Dim EditMenu As CommandBar
    Set EditMenu = _
        TopMenu.Controls(EditControl.Index).CommandBar
    
    ' Access the Cut submenu.
    Dim EditCut As CommandBarControl
    Set EditCut = EditMenu.Controls("Cut")
    
    ' Change the visible state according to the current
    ' setting.
    EditCut.Visible = Not EditCut.Visible
    
    ' Display the current setting.
    If EditCut.Visible Then
        MsgBox "The Cut option is visible."
    Else
        MsgBox "The Cut option isn't visible."
    End If
End Sub

Public Sub ChangeBoldToolTip()
    ' Get the Formatting toolbar.
    Dim FormatBar As CommandBar
    Set FormatBar = Application.CommandBars("Formatting")
    
    ' Get the Bold control.
    Dim BoldControl As CommandBarControl
    Set BoldControl = FormatBar.Controls("&Bold")
    
    ' Change the tooltip.
    BoldControl.TooltipText = "Make the text bold!"
End Sub

Public Sub AddIconToFormatStyle()
    ' Create the menu command bar.
    Dim TopMenu As CommandBar
    Set TopMenu = _
        Application.CommandBars("Worksheet Menu Bar")
        
    ' Access the Format menu control.
    Dim FormatControl As CommandBarControl
    Set FormatControl = TopMenu.Controls("Format")
    
    ' Use the control to access the command bar.
    Dim FormatMenu As CommandBar
    Set FormatMenu = _
        TopMenu.Controls(FormatControl.Index).CommandBar
    
    ' Access the Style submenu.
    Dim FormatStyle As CommandBarButton
    Set FormatStyle = FormatMenu.Controls("&Style...")
    
    ' Load the picture.
    Dim NewPict As IPictureDisp
    Set NewPict _
        = stdole.StdFunctions.LoadPicture( _
            ThisWorkbook.Path + "\Stop.BMP")
    
    ' Place the picture in the menu.
    FormatStyle.Picture = NewPict
End Sub

Public Sub RemoveIconFromFormatStyle()
    ' Create the menu command bar.
    Dim TopMenu As CommandBar
    Set TopMenu = _
        Application.CommandBars("Worksheet Menu Bar")
        
    ' Access the Format menu control.
    Dim FormatControl As CommandBarControl
    Set FormatControl = TopMenu.Controls("Format")
    
    ' Use the control to access the command bar.
    Dim FormatMenu As CommandBar
    Set FormatMenu = _
        TopMenu.Controls(FormatControl.Index).CommandBar
    
    ' Access the Style submenu.
    Dim FormatStyle As CommandBarButton
    Set FormatStyle = FormatMenu.Controls("&Style...")
    
    ' Remove the picture in the menu.
    FormatStyle.FaceId = 0
End Sub

Public Sub AddToolbar()
    ' Add the toolbar.
    Dim MyToolbar As CommandBar
    Set MyToolbar = _
        Application.CommandBars.Add("My Toolbar")
    
    ' Add a control to the toolbar.
    Dim SayHello As CommandBarButton
    Set SayHello = _
        MyToolbar.Controls.Add(msoControlButton)
    
    ' Configure the control.
    With SayHello
        .Caption = "Say Hello"
        .DescriptionText = "This button displays a message."
        .OnAction = "DoSayHello"
        .TooltipText = "This button displays a message."
        .Visible = True
        .Style = msoButtonIconAndCaption
        .FaceId = 59
    End With
    
    ' Make the toolbar visible.
    MyToolbar.Visible = True
End Sub

Public Sub RemoveToolbar()
    ' Remove the custom toolbar.
    Application.CommandBars("My Toolbar").Delete
End Sub

Public Sub DoSayHello()
    ' Display a message box.
    MsgBox "Hello", vbInformation Or vbOKOnly, "Say Hello"
End Sub
