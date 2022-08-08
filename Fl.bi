#include once "Enumerations.bi"

'FLTK is written in C++, so we need to include C++ runtime as well
#inclib "stdc++"


#inclib "fltk"

#inclib "X11"
#inclib "Xrender"
#inclib "Xext"

#define FL_SOCKET long

type Fl_Widget_ as Fl_Widget
type Fl_Window_ as Fl_Window
type Fl_Image_ as  Fl_Image
type Fl_Label_ as  Fl_Label



extern fl_local_ctrl alias "fl_local_ctrl" as zstring ptr
extern fl_local_meta alias "fl_local_meta" as zstring ptr
extern fl_local_alt alias "fl_local_alt" as zstring ptr
extern fl_local_shift alias "fl_local_shift" as zstring ptr


extern "c++"
type Fl_Label_Draw_F as sub(label as const Fl_Label_ ptr, x as long, y as long, w as long, h as long, align as Fl_Align)
type Fl_Label_Measure_F as sub(label as const Fl_Label_ ptr, byref width_ as long, byref height as long)
type Fl_Box_Draw_F as sub(x as long, y as long, w as long, h as long, color_ as  Fl_Color)
type Fl_Timeout_Handler as sub(as any ptr) 
type Fl_Awake_Handler as sub(as any ptr)
type Fl_Idle_Handler as sub(as any ptr)
type Fl_Old_Idle_Handler as sub()
type Fl_FD_Handler as sub(fd as FL_SOCKET, as any ptr)
type Fl_Event_Handler as sub(event as long)
type Fl_System_Handler as function (event as any ptr, as any ptr) as long
type Fl_Abort_Handler as sub(format as const zstring ptr,...)
type Fl_Atclose_Handler as sub(window as Fl_Window_ ptr, as any ptr)
type Fl_Args_Handler as function(argc as long, argv as zstring ptr ptr, byref i as long) as long
type Fl_Event_Dispatch as function(event as long, w as Fl_Window_ ptr) as long
type Fl_Clipboard_Notify_Handler as sub (source as long, as any ptr)


type Fl extends object
private:
	static use_high_res_GL_ as long
public:
	static e_number as long
	static e_x as long
	static e_y as long
	static e_x_root as long
	static e_y_root as long
	static e_dx as long
	static e_dy as long
	static e_state as long
	static e_clicks as long
	static e_is_click as long
	static e_keysym as long
	static e_text as zstring ptr
	static e_length as long
	static e_clipboard_data as any ptr
	static e_clipboard_type as const zstring ptr
	static e_dispatch as Fl_Event_Dispatch
	static belowmouse_ as Fl_Widget_ ptr
	static pushed_ as Fl_Widget_ ptr
	static focus_ as Fl_Widget_ ptr
	static damage_ as long
	static selection_owner_ as Fl_Widget_ ptr
	static modal_ as Fl_Window_ ptr
	static grab_ as Fl_Window_ ptr
	static compose_state as long
	declare static sub call_screen_init()

	enum Fl_Option
		OPTION_ARROW_FOCUS = 0
		OPTION_VISIBLE_FOCUS
		OPTION_DND_TEXT
		OPTION_SHOW_TOOLTIPS
		OPTION_FNFC_USES_GTK
		OPTION_LAST
	end enum

	declare static function option(opt as Fl_Option) as boolean
	declare static sub option(opt as Fl_Option, val_ as boolean)

	static awake_ring_ as Fl_Awake_Handler ptr
	static awake_data_ as any ptr ptr
	static awake_ring_size_ as long
	static awake_ring_head_ as long
	static awake_ring_tail_ as long
	static scheme_ as const zstring ptr
	static scheme_bg_ as Fl_Image_ ptr

	static e_original_keysym as long
	static scrollbar_size_ as long


	declare static function version() as double
	declare static function api_version() as long
	declare static function abi_version() as long

	declare static function arg(argc as long, argv as zstring ptr ptr, byref i as long) as long
	declare static function args(argc as long, argv as zstring ptr ptr, byref i as long, cb as Fl_Args_Handler = 0) as long
	declare static sub args(argc as long, argv as zstring ptr ptr)

	static help as const zstring const ptr

	declare static sub display(as const zstring ptr)
	declare static function visual(as long) as long

	declare static function gl_visual(as long, alist as long ptr=0) as long
	declare static sub own_colormap()
	declare static sub get_system_colors()
	declare static sub foreground(as ubyte, as ubyte, as ubyte)
	declare static sub background(as ubyte, as ubyte, as ubyte)
	declare static sub background2(as ubyte, as ubyte, as ubyte)


	declare static function reload_scheme() as long
	declare static function scrollbar_size() as long
	declare static sub scrollbar_size(W as long)


	declare static function wait_ alias "wait"() as long
	declare static function wait_ alias "wait"(t as double) as double
	declare static function check() as long
	declare static function ready() as long
	declare static function run_ alias "run"() as double

	declare static sub add_timeout(t as double, as Fl_Timeout_Handler, as any ptr = 0)
	declare static sub repeat_timeout(t as double, as Fl_Timeout_Handler, as any ptr = 0)
	declare static function has_timeout(as Fl_Timeout_Handler, as any ptr = 0) as long
	declare static sub remove_timeout(as Fl_Timeout_Handler, as any ptr=0)
	declare static sub add_check(as Fl_Timeout_Handler, as any ptr = 0)
	declare static function has_check(as Fl_Timeout_Handler, as any ptr = 0) as long
	declare static sub remove_check(as Fl_Timeout_Handler, as any ptr)

	declare static function box_dx(as Fl_Boxtype) as long
	declare static function box_dy(as Fl_Boxtype) as long
	declare static function box_dw(as Fl_Boxtype) as long
	declare static function box_dh(as Fl_Boxtype) as long

	declare static function focus() as Fl_Widget_ ptr

end type

end extern

private function Fl.focus as Fl_Widget_ ptr
	return focus_
end function
