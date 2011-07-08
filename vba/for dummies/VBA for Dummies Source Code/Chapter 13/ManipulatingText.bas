Attribute VB_Name = "ManipulatingText"
Option Explicit

Public Sub AccessTheText()
    ' Holds the current pane.
    Dim CurrPane As Pane
    
    ' Holds a specific paragraph on the page.
    Dim CurrPara As Paragraph
    
    ' Holds a single sentence
    Dim CurrSent As String
    
    ' Holds the output.
    Dim Output As String
    
    ' Acts as a loop counter.
    Dim Counter As Integer
    
    ' Make sure you can access the pane properly.
    Application.Windows("WordObjects.doc").View _
        = wdNormalView
    
    ' Access the test document pane.
    Set CurrPane = Application.Windows("WordObjects.doc").ActivePane
    
    ' Access the second paragraph in that pane.
    Set CurrPara = CurrPane.Document.Paragraphs(2)
    
    ' Access the second sentence in that paragraph.
    For Counter = 1 To CurrPara.Range.Sentences.Count
    
        ' Get the current sentence content.
        CurrSent = CurrPara.Range.Sentences(Counter)
        
        ' Add the content to the Output string.
        Output = Output + "Sentence " + CStr(Counter) + _
            ": " + CurrSent + vbCrLf
    Next
    
    ' Display the sentence.
    MsgBox Output
End Sub

Public Sub AccessAnObject()
   ' Holds an indeterminate object.
   Dim AObj As InlineShape
   
   ' Holds the BMP file class.
   Dim BMPClass As String
   
   ' Holds picture statistical data.
   Dim Output As String
   
   ' Holds the registry key reference.
   Dim RegKeyRef As Long
   
   ' Holds the length of the registry data.
   Dim RegLength As Long
   
   ' Get the BMP file class.
   ' Open the registry key.
   RegOpenKey ROOT_KEYS.HKEY_CLASSES_ROOT, _
              ".bmp", RegKeyRef
   
   ' Determine whether the key exists.
   If RegKeyRef = 0 Then
       
      ' Display an error.
      MsgBox "Couldn't open BMP file registry setting.", _
             vbOKOnly Or vbExclamation, _
             "Registry Error"
      
      ' Exit the sub.
      Exit Sub
   End If
       
   ' Determine whether the required information exists. If
   ' so, get the data length.
   RegQueryValue RegKeyRef, "", BMPClass, RegLength
   
   ' Fill the string with the required spaces.
   BMPClass = VBA.String(RegLength, " ")
       
   ' Retrieve the value.
   RegQueryValue RegKeyRef, "", BMPClass, RegLength
   BMPClass = Left(BMPClass, Len(BMPClass) - 1)
   
   ' Close the registry.
   RegCloseKey (RegKeyRef)
   
   ' Check each inline shape.
   For Each AObj In ThisDocument.InlineShapes
   
      ' Select the object and show that it is selected.
      AObj.Select
      MsgBox "Object Number " + _
         CStr(AObj.Field.Index) + " is Selected", _
         vbInformation Or vbOKOnly, "Object Select"
      
      ' If this is a sound object, play it.
      If AObj.OLEFormat.ClassType = "SoundRec" Then
         AObj.OLEFormat.DoVerb wdOLEVerbPrimary
      End If
      
      ' If this is a picture object, display some
      ' statistics.
      If AObj.OLEFormat.ClassType = BMPClass Then
      
         ' Get the height and width and then display it.
         Output = "Height: " + CStr(AObj.Height) + _
            vbCrLf + _
            CStr(Application.PointsToInches(AObj.Height)) _
            + " Inches" + vbCrLf + _
            "Width: " + CStr(AObj.Width) + vbCrLf + _
            CStr(Application.PointsToInches(AObj.Width)) _
            + " Inches"
         MsgBox Output, vbInformation Or vbOKOnly, _
            "Picture Statistics"
      End If
   Next
End Sub

Public Sub HighlightText()
    ' Holds the current pane.
    Dim CurrPane As Pane
    
    ' Make sure you can access the pane properly.
    Application.Windows("WordObjects.doc").View _
        = wdNormalView
    
    ' Access the test document pane.
    Set CurrPane = _
      Application.Windows("WordObjects.doc").ActivePane
   
   ' Get the word to highlight.
   Dim Highlight As String
   Highlight = InputBox("Highlight which word?", _
                        "Highlight Word", _
                        "document")
   
   ' Go to the beginning of the document.
   CurrPane.Selection.GoTo wdGoToLine, wdGoToFirst
   
   ' Creates a search for the word.
   Dim DoSearch As Find
   Set DoSearch = CurrPane.Selection.Find
   
   ' Perform the search.
   With DoSearch
   
      ' Clear any existing formatting information.
      .ClearFormatting
      .MatchCase = False
         
      ' Continue until there is nothing else to search.
      While DoSearch.Execute(FindText:=Highlight)
      
         ' Highlight any found text in the right color.
         With CurrPane.Selection.FormattedText
            .HighlightColorIndex = wdTurquoise
         End With
      Wend
   End With
   
   ' Go to the beginning of the document.
   CurrPane.Selection.GoTo wdGoToLine, wdGoToFirst
End Sub

Public Sub RemoveHighlight()
    ' Holds the current pane.
    Dim CurrPane As Pane
    
    ' Make sure you can access the pane properly.
    Application.Windows("WordObjects.doc").View _
        = wdNormalView
    
    ' Access the test document pane.
    Set CurrPane = _
      Application.Windows("WordObjects.doc").ActivePane
   
   ' Go to the beginning of the document.
   CurrPane.Selection.GoTo wdGoToLine, wdGoToFirst
   
   ' Creates a search for the word.
   Dim DoSearch As Find
   Set DoSearch = CurrPane.Selection.Find
   
   ' Perform the search.
   With DoSearch
   
      ' Clear any existing formatting information.
      .ClearFormatting
      .Highlight = True
      .MatchCase = False
         
      ' Continue until there is nothing else to search.
      While DoSearch.Execute()
      
         ' Remove the highlight as needed.
         With CurrPane.Selection.FormattedText
            If .HighlightColorIndex = wdTurquoise Then
               .HighlightColorIndex = wdNoHighlight
            End If
         End With
      Wend
   End With
   
   ' Go to the beginning of the document.
   CurrPane.Selection.GoTo wdGoToLine, wdGoToFirst
End Sub
