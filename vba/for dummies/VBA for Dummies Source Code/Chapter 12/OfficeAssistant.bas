Attribute VB_Name = "OfficeAssistant"
Public Sub ShowAssistant()
    ' Create a variable for balloons.
    Dim SayIt As Balloon
    Set SayIt = Assistant.NewBalloon
    
    ' Determine if Assistant is On.
    Dim IsOn As Boolean
    IsOn = Assistant.On
    
    ' Configure Assistant for use.
    With Assistant
        ' Turn Assistant on if necessary.
        .On = True
        
        ' Load a Microsoft Agent file.
        .Filename = "F1.ACS"
        
        ' Move to a new location.
        .Move 40, 40
        
        ' Make the Assistant visible.
        .Visible = True
    End With
    
    ' Perform some task.
    With Assistant
    
        ' Greet the user.
        .Animation = msoAnimationGreeting
        Application.Wait Now + TimeValue("0:00:5")
        
        ' Move to a new location.
        .Move 200, 200
        Application.Wait Now + TimeValue("0:00:2")
        
        ' Say something to the user.
        SayIt.Heading = "Greeting"
        SayIt.Icon = msoIconAlertInfo
        SayIt.Text = "Hello " + Application.UserName
        SayIt.Show
        
        ' Say goodbye.
        .Animation = msoAnimationGoodbye
        Application.Wait Now + TimeValue("0:00:5")
    End With
    
    ' Stop using the assistant.
    With Assistant
        ' Make the Assistant invisible.
        .Visible = False
        
        ' Set the Assistant setting to its previous value.
        .On = IsOn
    End With
End Sub
