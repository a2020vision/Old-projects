Attribute VB_Name = "LoopStatement"
Option Explicit

Public Sub ChangeWords()
    Dim CurrentWord As Long ' Current word selection.
    Dim TotalWords As Long  ' Total number of words
    
    ' Get the total number of words.
    TotalWords = ActiveDocument.Words.Count
    
    ' Select the first word in the document.
    ActiveDocument.Words(1).Select
    CurrentWord = 1
    
    ' Keep selecting words until we run out.
    Do While CurrentWord < TotalWords
    
        ' Make a change based on the word.
        Select Case Trim(ActiveWindow.Selection.Text)
            Case "Hello"
                Selection.Font.Italic = True
            Case "Goodbye"
                Selection.Font.Bold = True
            Case "Yes"
                Selection.Font.Color = wdColorGreen
            Case "No"
                Selection.Font.Color = wdColorRed
        End Select
        
        ' Move to the next word.
        CurrentWord = CurrentWord + 1
        ActiveDocument.Words(CurrentWord).Select
    Loop
End Sub
