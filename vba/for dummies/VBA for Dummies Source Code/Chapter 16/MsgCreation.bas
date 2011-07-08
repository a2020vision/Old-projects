Attribute VB_Name = "MsgCreation"
Option Explicit

Public Sub CreateMessage()

   With ActiveWindow.Selection
      
      ' Go to the beginning of the document.
      .GoTo What:=wdGoToLine, Which:=wdGoToFirst
      
      ' Holds the subject and general text.
      Dim Subject As String
      Dim General As String
      
      ' Get the subject.
      ' Start by selecting the first word.
      .End = .Start + 8
      ' Make sure it's a subject.
      If .Text = "Subject:" Then
         'Go to the next line and select the subject.
         .GoTo What:=wdGoToLine, Which:=wdGoToNext
         .EndOf Unit:=wdParagraph, Extend:=wdExtend
         .End = .End - 1
         Subject = .Text
      Else
         ' Display an error message.
         MsgBox "You must include a subject line!", _
            vbCritical, "File Formatting Error"
         Exit Sub
      End If
      
      ' Get the general text.
      ' Start by selecting the keyword.
      .GoTo What:=wdGoToLine, Which:=wdGoToNext
      .Start = .Start + 1
      .End = .Start + 8
      ' Make sure it's the general text.
      If .Text = "General:" Then
         'Go to the next line and select the general text.
         .GoTo What:=wdGoToLine, Which:=wdGoToNext
         .EndOf Unit:=wdSection, Extend:=wdExtend
         .End = .End - 1
         General = .Text
      End If
   End With
   
   'Tracks the end of the text.
   Dim EndOfText As Boolean
   EndOfText = False
   
   ' Holds the user name.
   Dim UserName As String
   
   ' Holds any special greeting.
   Dim Special As String
   
   ' Create the Outlook application reference.
   Dim OutlookApp As Outlook.Application
   Set OutlookApp = CreateObject("Outlook.Application")
   
   ' Create the MAPI namespace reference.
   Dim MAPI_NS As Outlook.NameSpace
   Set MAPI_NS = OutlookApp.GetNamespace("MAPI")
   
   ' Create a reference to the inbox.
   Dim Outbox As Outlook.MAPIFolder
   Set Outbox = MAPI_NS.GetDefaultFolder(olFolderOutbox)
   
   ' Holds the current message.
   Dim CurMsg As Outlook.MailItem
   
   ' Holds the existing and new start range.
   Dim OldStart As Long
   Dim MyRange As Range
   
   ' Process the next section.
   ActiveWindow.Selection.GoTo What:=wdGoToSection, _
      Which:=wdGoToNext
   
   ' Keep processing until there is no more text.
   While Not EndOfText
   
      ' Get the user name and email address.
      With ActiveWindow.Selection
         .EndOf Unit:=wdParagraph, Extend:=wdExtend
         UserName = .Text
      
         ' Determine if the next line is a special greeting.
         OldStart = .Start
         Set MyRange = .GoTo(What:=wdGoToLine, Which:=wdGoToNext)
         If MyRange.Start = OldStart Then
            EndOfText = True
         End If
         .End = .Start + 8
         ' Make sure it's a subject.
         If .Text = "Special:" Then
            ' Select the special text.
            .Start = .End + 1
            .EndOf Unit:=wdParagraph, Extend:=wdExtend
            .End = .End - 1
            Special = .Text
            .HomeKey
         Else
            ' Reset the Special text.
            Special = ""
            
            ' Go back to the previous text.
            .GoTo What:=wdGoToLine, Which:=wdGoToPrevious
         End If
         
         ' Select the next name in the list. If this is the
         ' end of the text section, set the indicator.
         OldStart = .Start
         Set MyRange = .GoTo(What:=wdGoToLine, Which:=wdGoToNext)
         If MyRange.Start = OldStart Then
            EndOfText = True
         End If
      End With
      
      Set CurMsg = Outbox.Items.Add()
      
      ' Add some content.
      CurMsg.Recipients.Add UserName
      CurMsg.Subject = Subject
      CurMsg.Body = General + vbCrLf + vbCrLf + Special
      
      ' Send the message.
      CurMsg.Send
      
   Wend
   
   ' Display the number of messages sent.
   MsgBox CStr(Outbox.Items.Count) + " message sent.", _
      vbInformation, "Messages Sent"
End Sub


