#include once "Fl.bi"
#include once "Fl_Group.bi"

#inclib "fltk_forms"

extern "c++"

type Fl_Image_ as Fl_Image
type Fl_RGB_Image_ as Fl_RGB_Image
type Fl_Window_ as Fl_Window

type Fl_Window  extends Fl_Group 
	static default_xclass_ as zstring ptr
''#if FLTK_ABI_VERSION >= 10301
	no_fullscreen_x as long
	no_fullscreen_y as long
	no_fullscreen_w as long
	no_fullscreen_h as long
	fullscreen_screen_top as long
	fullscreen_screen_bottom as long
	fullscreen_screen_left as long
	fullscreen_screen_right as long
''#endif



	declare constructor (byref w as const Fl_Window)
	declare operator let (byref w as const Fl_Window)

	declare virtual sub draw()
	declare virtual sub flush()

	i as any ptr 'Fl_X

	iconlabel_ as zstring ptr
	xclass_ as zstring ptr
	icon_ as Fl_RGB_Image_ ptr ptr 	'icon_data
	as long minw, minh, maxw, maxh
	as long dw, dh, aspect
	size_range_set as ubyte

	'cursor stuff

	cursor_default as long

	shape_data_ as any ptr

	declare sub shape(img as Fl_Image_ ptr)
private:
	declare sub size_range_ ()
public:

	declare constructor(w as long, h as long, title as const zstring ptr)
	declare constructor(x as long, y as long, w as long, h as long, title as const zstring ptr)

	declare virtual destructor

	declare virtual function handle(h as long) as long
	declare virtual sub resize(x as long, y as long, w as long, x as long) 
	declare sub border (b as long)
	declare sub clear_border ()
	declare function border () as unsigned long
	declare sub set_override ()
	declare function override () as unsigned long
	declare sub set_modal ()
	declare function modal () as unsigned long
	declare sub set_non_modal ()
	declare function non_modal () as unsigned long
	declare sub clear_modal_states ()
	declare sub set_menu_window ()
	declare function menu_window () as unsigned long
	declare sub set_tooltip_window ()
	declare function tooltip_window () as unsigned long

	declare sub hotspot (x as long, y as long, offset as long=0)
	declare sub hotspot (p as const Fl_Widget ptr, offset as long=0)
	declare sub hotspot (byref p as Fl_Widget, offset as long=0)
	declare sub free_position ()
	declare sub size_range (minw as long, minh as long, maxw as long=0, maxh as long=0, dw as long=0, dh as long=0, aspect as long=0)

	declare function label () as const zstring ptr
	declare function iconlabel () as const zstring ptr
	declare sub label (l as const zstring ptr)
	declare sub iconlabel (l as const zstring ptr)
	declare sub label (l as const zstring ptr, l1 as const zstring ptr)
	declare sub copy_label (l as const zstring ptr)

	declare static sub default_xclass (l as const zstring ptr)
	declare static function default_xclass () as const zstring ptr

	declare sub xclass (l as const zstring ptr)
	declare function xclass () as const zstring ptr

	declare static sub default_icon (l as const Fl_RGB_Image_ ptr)
	declare static sub default_icons (l as const Fl_RGB_Image_ ptr ptr, n as long)

	declare sub icon (l as const Fl_RGB_Image_ ptr)
	declare sub icons (l as const Fl_RGB_Image_ ptr ptr, n as long)

	declare function shown() as long
	declare virtual sub show()
 	declare virtual sub hide()

 	declare sub show(argc as long, argv as zstring ptr ptr)
	declare sub wait_for_expose()

	declare sub fullscreen()
	declare sub fullscreen_off(x as long, y as long, w as long, h as long)
	declare function fullscreen_active() as unsigned long
	declare sub fullscreen_screens(x as long, y as long, w as long, h as long)

	declare sub iconize()

	declare function x_root() as const long
	declare function y_root() as const long

	declare static function current () as const Fl_Window_ ptr
	declare sub make_current()

	declare virtual function as_window() as Fl_Window_ ptr

	declare sub cursor(c as Fl_Cursor)
	declare sub cursor (l as const Fl_RGB_Image_ ptr, a as long, b as long)
	declare sub default_cursor(c as Fl_Cursor)

	declare static sub default_callback(w as Fl_Window_ ptr, v as any ptr)

	declare function decorated_w() as long
	declare function decorated_h() as long

end type
end extern

private sub Fl_Window.clear_border() 
	flags_ = flags_ or 1 shl 3
end sub

private function Fl_Window.border() as unsigned long
	return (flags_ and 1 shl 3)=0
end function

private sub Fl_Window.set_override () 
	flags_ = flags_ or 1 shl 3 or 1 shl 8
end sub

private function Fl_Window.override() as unsigned long
	return flags_ and 1 shl 8
end function

private sub Fl_Window.set_modal () 
	flags_ = flags_ or 1 shl 14
end sub

private function Fl_Window.modal() as unsigned long
	return flags_ and 1 shl 14
end function

private sub Fl_Window.set_non_modal () 
	flags_ = flags_ or 1 shl 5
end sub

private function Fl_Window.non_modal() as unsigned long
	return flags_ and (1 shl 14 or 1 shl 5)
end function

private sub Fl_Window.clear_modal_states () 
	flags_ = flags_ and not (1 shl 14 or 1 shl 5)
end sub

private sub Fl_Window.set_menu_window () 
	flags_ = flags_ or 1 shl 12
end sub

private function Fl_Window.menu_window() as unsigned long
	return flags_ and (1 shl 12)
end function

private sub Fl_Window.set_tooltip_window () 
	flags_ = (flags_ or 1 shl 13) and not (1 shl 12)
end sub

private function Fl_Window.tooltip_window() as unsigned long
	return flags_ and (1 shl 13)
end function

private sub Fl_Window.hotspot (byref p as Fl_Widget, offset as long=0)
	hotspot (@p, offset)
end sub

private sub Fl_Window.free_position ()
	flags_ = flags_ and not (1 shl 4)
end sub

private sub Fl_Window.size_range (minw as long, minh as long, maxw as long=0, maxh as long=0, dw as long=0, dh as long=0, aspect as long=0)
	this.minw   = minw
	this.minh   = minh
	this.maxw   = maxw
	this.maxh   = maxh
	this.dw     = dw
	this.dh     = dh
	this.aspect = aspect
	size_range_()
end sub

private function Fl_Window.label () as const zstring ptr
	return base.base.label()
end function

private function Fl_Window.iconlabel () as const zstring ptr
	return iconlabel_
end function

private function Fl_Window.shown () as long
	return i<>0
end function

private function Fl_Window.fullscreen_active () as unsigned long
	return flags_ and 1 shl 18
end function

private function Fl_Window.as_window() as Fl_Window_ ptr
	return @this
end function

