#include once "Fl.bi"
#include once "Fl_Double_Window.bi"
#include once "Fl_Group.bi"
#include once "Fl_Button.bi"
#include once "Fl_Input.bi"
#include once "Fl_Box.bi"
#include once "Fl_Help_View.bi"

extern "c++"
type Fl_Help_Dialog
private:
	index_ as long
	max_ as long
	line_(99) as long
	file_(99,FL_PATH_MAX-1) as byte
	find_pos_ as long
public:
	declare constructor()
private:
	window_ as Fl_Double_Window ptr
	back_ as Fl_Button ptr
	'inline void cb_back__i(Fl_Button*, void*);
	declare static sub cb_back_(as Fl_Button ptr, as any ptr)
	forward_ as Fl_Button ptr
	'inline void cb_forward__i(Fl_Button*, void*);
	declare static sub cb_forward_(as Fl_Button ptr, as any ptr)
	smaller_ as Fl_Button ptr
	'inline void cb_smaller__i(Fl_Button*, void*);
	declare static sub cb_smaller_(as Fl_Button ptr, as any ptr)
	larger_ as Fl_Button ptr
	'inline void cb_larger__i(Fl_Button*, void*);
	declare static sub cb_larger_(as Fl_Button ptr, as any ptr)
	find_ as Fl_Input ptr
	'inline void cb_find__i(Fl_Input*, void*);
	declare static sub cb_find_(as Fl_Input ptr, as any ptr)
	view_ as Fl_Help_View ptr
	'inline void cb_view__i(Fl_Help_View*, void*);
	declare static sub cb_view_(as Fl_Help_View, as any ptr)

public:
	declare destructor()
	declare function h() as long
	declare sub hide()
	declare sub load(f as const zstring ptr)
	declare sub position(xx as long, yy as long)
	declare sub resize(xx as long, yy as long, ww as long, hh as long)
	declare sub show()
	declare sub show(argc as long, argv as zstring ptr ptr)
	declare sub textsize(s as Fl_Fontsize)
	declare function textsize() as Fl_Fontsize
	declare sub topline(n as const zstring ptr)
	declare sub topline(n as long)
	declare sub value(f as const zstring ptr)
	declare const function value() as const zstring ptr
	declare function visible() as long
	declare function w() as long
	declare function x() as long
	declare function y() as long

end type
end extern
