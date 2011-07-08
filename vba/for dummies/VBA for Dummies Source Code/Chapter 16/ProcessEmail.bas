Attribute VB_Name = "ProcessEmail"
Option Explicit

Public Sub GetFlagged()
   ' Create the Outlook application reference.
   Dim OutlookApp As Outlook.Application
   Set OutlookApp = CreateObject("Outlook.Application")
   
   ' Create the MAPI namespace reference.
   Dim MAPI_NS As Outlook.NameSpace
   Set MAPI_NS = OutlookApp.GetNamespace("MAPI")
   
   ' Create a reference to the inbox.
   Dim Inbox As Outlook.MAPIFolder
   Set Inbox = MAPI_NS.GetDefaultFolder(olFolderInbox)
   
   ' Holds the current message.
   Dim CurMsg As Outlook.MailItem
   
   ' Look at all of the messages.
   For Each CurMsg In Inbox.Items
   
      ' Determine whether this message requires processing.
      If CurMsg.FlagStatus = olFlagMarked And _
         CurMsg.FlagIcon = olRedFlagIcon Then
         
         ' Place the information in the Word document.
         With ActiveWindow.ActivePane.Selection
         
            ' Create a From header and content.
            .BoldRun
            .TypeText "From: "
            .BoldRun
            .TypeText CurMsg.SenderName + " <" + _
               CurMsg.SenderEmailAddress + ">"
               
            ' Go to the next line.
            .InsertParagraph
            .GoTo What:=wdGoToLine, Which:=wdGoToLast
            
            ' Create a Subject header and content.
            .BoldRun
            .TypeText "Subject: "
            .BoldRun
            .TypeText CurMsg.Subject
            .InsertParagraph
            .GoTo What:=wdGoToLine, Which:=wdGoToLast
            
            ' Create a Content header and content.
            .BoldRun
            .TypeText "Content: "
            .BoldRun
            .TypeText CurMsg.Body
            
            ' Create a page separator.
            .InsertParagraph
            .InsertBreak wdPageBreak
            .GoTo What:=wdGoToLine, Which:=wdGoToLast
         End With
            
         ' Show this action is complete.
         CurMsg.FlagStatus = olFlagComplete
            
      End If
   Next
End Sub

