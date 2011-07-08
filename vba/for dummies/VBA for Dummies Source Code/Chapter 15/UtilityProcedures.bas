Attribute VB_Name = "UtilityProcedures"
Option Compare Database
Option Explicit

Public Function SetAcronymLabel()
    'Check the status of the Acronym check box.
    If Forms![DataCon Word List]![IsAcronym] = True Then
        Forms![DataCon Word List]![Acronym Label].Visible = True
        Forms![DataCon Word List]![Acronym].Visible = True
    Else
        Forms![DataCon Word List]![Acronym Label].Visible = False
        Forms![DataCon Word List]![Acronym].Visible = False
    End If
End Function

Public Function Create_Record_Copy()
    'Create some variables.
    Dim strWord As String
    Dim strAcronym As String
    Dim strDefinition As String
    Dim strDate As String
    Dim RecordDate As Date
    
    'Some records will start out with a null date that indicates it
    'hasn't been checked since the check was implemented.
    Forms![DataCon Word List]![Last_Updated].SetFocus
    If Forms![DataCon Word List]![Last_Updated].Text = "" Then
        MsgBox "This definition hasn't been checked before, so ask John to check it!", vbOKOnly, "Must Check Definition"
        Forms![DataCon Word List]![Copy_Text] = " "
        Exit Function
    End If
    
    'Get the last updated date from the record.
    strDate = Forms![DataCon Word List]![Last_Updated]
    RecordDate = DateValue(Forms![DataCon Word List]![Last_Updated])
    
    'If there is a date, add 366 to it to represent one year.
    RecordDate = RecordDate + 366
    
    'The date on some records will be too old, which means it's time
    'for another check.
    If RecordDate < Now() Then
        MsgBox "The definition dated " + strDate + " is too old, add word to the list!", vbOKOnly, "Time to Redefine"
        Forms![DataCon Word List]![Copy_Text] = " "
        Exit Function
    End If
    
    'Set the last used field to today.
    Forms![DataCon Word List]![Last_Used] = Now()
    
    'Get the values of the word and defintion since they'll always be present.
    strWord = Forms![DataCon Word List]![Word]
    strDefinition = Forms![DataCon Word List]![Definition]
    
    'Place the data we want to copy on the form.
    Forms![DataCon Word List]![Copy_Text] = strWord + " -- " + strDefinition
    
    'Check to see if we need to store the acronym value as well.
    If Forms![DataCon Word List]![IsAcronym] = True Then
    
        'If we do need to store the acronym, then place it in a variable.
        strAcronym = Forms![DataCon Word List]![Acronym]
        
        'Check to see if there is a definition for this acronym.
        If UCase(strDefinition) = "N/A" Then
        
            'If not, then simply place the word and it's meaning on the clipboard.
            Forms![DataCon Word List]![Copy_Text] = strAcronym + " -- " + strWord
        Else
        
            'Otherwise, place the acronym and associated definition on the clipboard.
            Forms![DataCon Word List]![Copy_Text] = strAcronym + " -- See " + strWord + Chr(13) + Chr(10) + strWord + " (" + strAcronym + ") -- " + strDefinition
        End If
    End If
End Function

Public Function PerformAcronymSearch()
    'Create some variables.
    Dim SearchStr As String
    Dim NotFound As Boolean
    
    'Get the search string.
    SearchStr = InputBox("Enter an acronym:", "Acronym Search")
    
    'Make the Acronym field visible before setting foucus.
    'The focus must be set before the search begins.
    Forms![DataCon Word List]![Acronym Label].Visible = True
    Forms![DataCon Word List]![Acronym].Visible = True
    Forms![DataCon Word List]![Acronym].SetFocus
    
    'Perform the search.
    DoCmd.FindRecord SearchStr, acAnywhere, False, acSearchAll, False, acCurrent, True
    
    'Make sure the acronym label is set correctly
    SetWordFocus
    SetAcronymLabel
End Function

Public Function SetWordFocus()
    'Set the focus to the Word field.
    Forms![DataCon Word List]![Word].SetFocus
End Function
