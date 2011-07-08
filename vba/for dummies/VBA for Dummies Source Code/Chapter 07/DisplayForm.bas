Attribute VB_Name = "DisplayForm"
Public Sub ShowAForm()
    ' Use the Show method to show a form.
    ' You can perform other tasks using a modeless form.
    ButtonDemo.Show vbModeless
    
    ' A modal form requires that you complete the task with
    ' that form before you proceed to other tasks.
    NumericText.Show vbModal
End Sub
