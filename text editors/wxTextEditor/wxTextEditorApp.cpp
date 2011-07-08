/***************************************************************
 * Name:      wxTextEditorApp.cpp
 * Purpose:   Code for Application Class
 * Author:    Nick Leep (nleep3@gmail.com)
 * Created:   2011-03-30
 * Copyright: Nick Leep (http://nickleep3.com/)
 * License:
 **************************************************************/

#include "wxTextEditorApp.h"

//(*AppHeaders
#include "wxTextEditorMain.h"
#include <wx/image.h>
//*)

IMPLEMENT_APP(wxTextEditorApp);

bool wxTextEditorApp::OnInit()
{
    //(*AppInitialize
    bool wxsOK = true;
    wxInitAllImageHandlers();
    if ( wxsOK )
    {
    	wxTextEditorFrame* Frame = new wxTextEditorFrame(0);
    	Frame->Show();
    	SetTopWindow(Frame);
    }
    //*)
    return wxsOK;

}
