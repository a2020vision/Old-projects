Attribute VB_Name = "FPDocuments"
Public Sub CreateWebSite()
   ' Contains the new Web site.
   Dim NewSite As WebEx
   
   ' Contains the default Web page.
   Dim WelcomePage As WebFile
   
   ' Create the new site.
   Set NewSite = Application.Webs.Add("C:\MyTempSite")
   
   ' Configure the new site.
   With NewSite
   
      ' Define the navigation key values.
      .Properties("vti_navbuttonprevlabel") = "Previous"
      .Properties("vti_navbuttonhomelabel") = "Go Home"
      .Properties("vti_navbuttonnextlabel") = "Next"
      .Properties("vti_navbuttonuplabel") = "Up a Level"
      
      ' Set the language and character set.
      .Properties("vti_defaultlanguage") = "en-us"
      .Properties("vti_defaultcharset") = "windows-1252"
      .Properties("vti_encoding") = "utf8-nl"
      
      ' Apply the changes.
      .Properties.ApplyChanges
      
      ' Refresh the site to match the new properties.
      .Refresh
      
      ' Define a theme for the site.
      .ApplyTheme ("Spring")
      
      ' Add basic folders to the new site.
      .RootFolder.Folders.Add "Graphics"
      .RootFolder.Folders.Add "Products"
      .RootFolder.Folders.Add "Contact Us"
      
      ' Add an initial Web page.
      Set WelcomePage = .RootFolder.Files.Add("Index.HTM")
      WelcomePage.Open
      .Publish
   End With
End Sub

Public Sub MakeStandardPage()
   ' Contains the target Web site.
   Dim TheSite As WebEx
   
   ' Get the site.
   If (Application.Webs.Count > 0) Then
      If (Application.Webs(0).Title = "C:/MyTempSite") Then
         Set TheSite = Application.Webs(0)
      Else
         Set TheSite = Application.Webs.Add("C:\MyTempSite")
      End If
   Else
      Set TheSite = Application.Webs.Open("C:\MyTempSite")
   End If
   
   ' Set the Web site to use a template.
   TheSite.ApplyTemplate TheSite.Title + "\Templates\Standard.tem", True
   
   ' Contains the target folder.
   Dim Target As WebFolder
   
   ' Get the target folder.
   Set Target = TheSite.RootFolder.Folders("Products")
   
   ' Contains the Web page template.
   Dim StdPage As WebFile

   ' Create the new page.
   Set StdPage = TheSite.RootFolder.Files("Standard.HTM")
   StdPage.Copy Target.Url + "\NewFile.HTM", True, True
   
   ' Contains the new Web Page.
   Dim NewPage As WebFile
   
   ' Open the page for editing.
   Set NewPage = Target.Files("NewFile.HTM")
   NewPage.Open
End Sub
