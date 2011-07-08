/***************************************************************
 * Name:      wxTextEditorMain.h
 * Purpose:   Defines Application Frame
 * Author:    Nick Leep (nleep3@gmail.com)
 * Created:   2011-03-30
 * Copyright: Nick Leep (http://nickleep3.com/)
 * License:
 **************************************************************/

#ifndef WXTEXTEDITORMAIN_H
#define WXTEXTEDITORMAIN_H

//(*Headers(wxTextEditorFrame)
#include <wx/menu.h>
#include <wx/statusbr.h>
#include <wx/frame.h>
#include <wx/textctrl.h>
//*)

class wxTextEditorFrame: public wxFrame
{
    public:

        wxTextEditorFrame(wxWindow* parent,wxWindowID id = -1);
        virtual ~wxTextEditorFrame();

    private:

        //(*Handlers(wxTextEditorFrame)
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        //*)

        //(*Identifiers(wxTextEditorFrame)
        static const long ID_TEXTCTRL1;
        static const long idMenuQuit;
        static const long idMenuAbout;
        static const long ID_STATUSBAR1;
        //*)

        //(*Declarations(wxTextEditorFrame)
        wxTextCtrl* xTextBox;
        wxStatusBar* StatusBar1;
        //*)

        DECLARE_EVENT_TABLE()
};

#endif // WXTEXTEDITORMAIN_H
