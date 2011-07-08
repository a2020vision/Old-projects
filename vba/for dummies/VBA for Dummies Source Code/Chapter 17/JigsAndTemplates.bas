Attribute VB_Name = "JigsAndTemplates"
Option Explicit

Public Sub ModuleStart()
   ' Create the new module.
   Dim NewMod As Module
   Set NewMod = Modules.Add
   
   ' Get the module name.
   Dim ModName As String
   ModName = InputBox("Type the Module Name", "Name")
   NewMod.Name = ModName
   
   ' Get the new projects
   Dim MyProj As CodeModule
   Set MyProj = Application.VBE.VBProjects(1).VBComponents(ModName).CodeModule
   
   ' Open the file.
   MyProj.CodePane.Show
   
   ' Add the required option statement, module header, and opening Sub.
   MyProj.InsertLines 1, "Option Explicit" + vbCrLf + vbCrLf + _
      "' Module Name: " + ModName + vbCrLf + "' Author: " + _
      Application.UserName + vbCrLf + "' Date: " + CStr(DateTime.Now) + _
      vbCrLf + vbCrLf + "Public Sub Main()" + vbCrLf + vbCrLf + "End Sub"
End Sub
