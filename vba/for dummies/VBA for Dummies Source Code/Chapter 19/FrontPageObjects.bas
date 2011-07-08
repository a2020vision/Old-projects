Attribute VB_Name = "FrontPageObjects"
Option Explicit

Public Sub GetAppStats()
   ' Contains the application information.
   Dim Output As String
   
   ' Get the application statistics.
   With Application
      Output = Output + .UserName + vbCrLf
      Output = Output + .OrganizationName + vbCrLf
      Output = Output + .Name + vbCrLf
      Output = Output + .Version + vbCrLf + vbCrLf
      
      ' Get some of the active document information.
      With ActiveDocument
         Output = Output + "Active Document" + vbCrLf
         Output = Output + vbCrLf + .nameProp + vbCrLf
         Output = Output + .DocumentHTML
      End With
   End With
   
   ' Dispaly the output.
   MsgBox Output, vbInformation, "Application Statistics"
End Sub

Public Sub ChangePage()
   
   ' Create the Web page elements.
   With Application.ActiveDocument
   
      ' Create a heading.
      Dim Heading As FPHTMLHeaderElement
      Set Heading = .createElement("H1")
      With Heading
         .Id = "MainHeading"
         .innerText = "Sample Web Page"
         .Align = "Center"
      End With
      
      ' Create some text.
      Dim Greeting As FPHTMLParaElement
      Set Greeting = .createElement("P")
      With Greeting
         .Id = "Greeting"
         .innerText = "This is some sample text."
      End With
      
      ' Create a horizonal line.
      Dim Separator As FPHTMLHRElement
      Set Separator = .createElement("HR")
      With Separator
         .Id = "Separator"
         .Size = "2"
         .Width = "90%"
      End With
      
      ' Create a combined element.
      Dim Contact As FPHTMLParaElement
      Dim EmailAddr As FPHTMLAnchorElement
      Set Contact = .createElement("P")
      Set EmailAddr = .createElement("a")
      With EmailAddr
         .Id = "EmailAddress"
         .href = "mailto:JMueller@mwt.net"
         .innerText = "John Mueller"
      End With
      With Contact
         .Id = "Goodbye"
         .insertAdjacentHTML "afterBegin", _
         "Please write " + EmailAddr.outerHTML + _
            " for additional information."
      End With
      
      ' Change the Web page title.
      .Title = "An Automated Web Page"
   
      ' Design the Web page content.
      .body.insertAdjacentHTML "afterBegin", _
         Heading.outerHTML + Greeting.outerHTML + _
         Separator.outerHTML + Contact.outerHTML
   End With
End Sub

Public Sub ThemeLister()
   ' Holds an individual theme.
   Dim ThisTheme As Theme
   
   ' Holds the theme list.
   Dim ThemeArray(2, 100)
   
   ' Keeps track of the current theme number.
   Dim Counter As Integer
   Counter = 0
   
   ' Clear any exisitng list items.
   MyThemeList.lbThemes.Clear
   
   ' Get the theme list.
   For Each ThisTheme In Application.Themes
      ThemeArray(0, Counter) = ThisTheme.Label
      ThemeArray(1, Counter) = ThisTheme.Name
      ThemeArray(2, Counter) = ThisTheme.Format
      Counter = Counter + 1
   Next
   
   ' Add the theme list to the list box.
   MyThemeList.lbThemes.Column() = ThemeArray
   
   ' Uncomment this line to hide the Name column.
   'MyThemeList.lbThemes.ColumnWidths = "2in;0;"
   
   ' Display the list.
   MyThemeList.Show
End Sub

Public Sub DisplayWebs()
   ' Holds an individual Web object.
   Dim AWeb As WebEx
   
   ' Holds an individual folder.
   Dim AFolder As WebFolder
   
   ' Contains the output information.
   Dim Output As String
   
   ' Define a Web object.
   Application.Webs.Add "D:\My Web Site"
   Application.Webs.Open "D:\OnlineSite"
   
   ' Display some statistics.
   For Each AWeb In Application.Webs
   
      ' Get the site name.
      Output = AWeb.Title + vbCrLf + vbCrLf
      
      ' Parse the folder list.
      For Each AFolder In AWeb.AllFolders
         Output = Output + AFolder.Name + vbCrLf
      Next
      
      ' Display the results.
      MsgBox Output, vbInformation, "Web Statistics"
   Next
End Sub

Public Sub DisplayWebsNoOpen()
   ' Holds an individual Web object.
   Dim AWeb As WebEx
   
   ' Holds an individual folder.
   Dim AFolder As WebFolder
   
   ' Contains the output information.
   Dim Output As String
   
   ' Display some statistics.
   For Each AWeb In Application.Webs
   
      ' Get the site name.
      Output = AWeb.Title + vbCrLf + vbCrLf
      
      ' Parse the folder list.
      For Each AFolder In AWeb.AllFolders
         Output = Output + AFolder.Name + vbCrLf
      Next
      
      ' Display the results.
      MsgBox Output, vbInformation, "Web Statistics"
   Next
End Sub

Public Sub ListWebWindows()
   ' Holds an individual Web window.
   Dim AWindow As WebWindowEx
   
   ' Holds an individual Page window.
   Dim APage As PageWindowEx
   
   ' Contains the output information.
   Dim Output As String
   
   ' View each of the windows in turn.
   For Each AWindow In Application.WebWindows
   
      ' Get the window information.
      Output = Output + AWindow.Caption + vbCrLf
      
      ' Display the Web site associated with this window.
      Output = Output + vbTab + AWindow.Web.Title + vbCrLf
      
      ' View each of the pages in turn.
      For Each APage In AWindow.PageWindows
         Output = Output + vbTab + APage.Caption + vbCrLf
      Next
   Next
   
   ' Display the results.
   MsgBox Output, vbInformation, "Web Window Statistics"
End Sub
