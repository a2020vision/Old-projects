Attribute VB_Name = "ObjectLinkingAndEmbedding"
Option Explicit

Public Sub AddOle()
   ' Create a reference to the current objects.
   Dim Objs As OLEObjects
   Set Objs = Sheet3.OLEObjects
   
   ' Add a new object.
   Objs.Add Filename:=ThisWorkbook.Path + "\Cuckoo.wav", _
      Link:=False, Top:=20, Left:=40, _
      IconLabel:="The Cuckoo Sound"
End Sub

Public Sub AddOLE2()
   ' Create the worksheet reference.
   Dim WS As Worksheet
   Set WS = Worksheets(3)
   
   ' Add a new object.
   WS.Shapes.AddOLEObject _
      Filename:=ThisWorkbook.Path + "\Cuckoo.wav", _
      Link:=False, Top:=20, Left:=40, _
      IconLabel:="The Cuckoo Sound"
End Sub
