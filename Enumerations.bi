extern "c++"
enum Fl_Event
	FL_NO_EVENT		= 0
	FL_PUSH			= 1
	FL_RELEASE		= 2
	FL_ENTER		= 3
	FL_LEAVE		= 4
	FL_DRAG			= 5
	FL_FOCUS		= 6
	FL_UNFOCUS		= 7
	FL_KEYDOWN		= 8
	FL_KEYBOARD		= 8
	FL_KEYUP		= 9
	FL_CLOSE		= 10
	FL_MOVE			= 11
	FL_SHORTCUT		= 12
	FL_DEACTIVATE		= 13
	FL_ACTIVATE		= 14
	FL_HIDE			= 15
	FL_SHOW			= 16
	FL_PASTE		= 17
	FL_SELECTIONCLEAR	= 18
	FL_MOUSEWHEEL		= 19
	FL_DND_ENTER		= 20
	FL_DND_DRAG		= 21
	FL_DND_LEAVE		= 22
	FL_DND_RELEASE		= 23
	FL_SCREEN_CONFIGURATION_CHANGED = 24
	FL_FULLSCREEN         = 25
	FL_ZOOM_GESTURE	= 26
end enum

enum Fl_When
	FL_WHEN_NEVER		= 0
	FL_WHEN_CHANGED		= 1
	FL_WHEN_NOT_CHANGED	= 2
	FL_WHEN_RELEASE		= 4
	FL_WHEN_RELEASE_ALWAYS	= 6
	FL_WHEN_ENTER_KEY	= 8
	FL_WHEN_ENTER_KEY_ALWAYS=10
	FL_WHEN_ENTER_KEY_CHANGED=11
end enum

enum Fl_Boxtype
	FL_NO_BOX = 0
	FL_FLAT_BOX
	FL_UP_BOX
	FL_DOWN_BOX
	FL_UP_FRAME
	FL_DOWN_FRAME
	FL_THIN_UP_BOX
	FL_THIN_DOWN_BOX
	FL_THIN_UP_FRAME
	FL_THIN_DOWN_FRAME
	FL_ENGRAVED_BOX
	FL_EMBOSSED_BOX
	FL_ENGRAVED_FRAME
	FL_EMBOSSED_FRAME
	FL_BORDER_BOX
	_FL_SHADOW_BOX
	FL_BORDER_FRAME
	_FL_SHADOW_FRAME
	_FL_ROUNDED_BOX
	_FL_RSHADOW_BOX
	_FL_ROUNDED_FRAME
	_FL_RFLAT_BOX
	_FL_ROUND_UP_BOX
	_FL_ROUND_DOWN_BOX
	_FL_DIAMOND_UP_BOX
	_FL_DIAMOND_DOWN_BOX
	_FL_OVAL_BOX
	_FL_OSHADOW_BOX
	_FL_OVAL_FRAME
	_FL_OFLAT_BOX
	_FL_PLASTIC_UP_BOX
	_FL_PLASTIC_DOWN_BOX
	_FL_PLASTIC_UP_FRAME
	_FL_PLASTIC_DOWN_FRAME
	_FL_PLASTIC_THIN_UP_BOX
	_FL_PLASTIC_THIN_DOWN_BOX
	_FL_PLASTIC_ROUND_UP_BOX
	_FL_PLASTIC_ROUND_DOWN_BOX
	_FL_GTK_UP_BOX
	_FL_GTK_DOWN_BOX
	_FL_GTK_UP_FRAME
	_FL_GTK_DOWN_FRAME
	_FL_GTK_THIN_UP_BOX
	_FL_GTK_THIN_DOWN_BOX
	_FL_GTK_THIN_UP_FRAME
	_FL_GTK_THIN_DOWN_FRAME
	_FL_GTK_ROUND_UP_BOX
	_FL_GTK_ROUND_DOWN_BOX
	_FL_GLEAM_UP_BOX
	_FL_GLEAM_DOWN_BOX
	_FL_GLEAM_UP_FRAME
	_FL_GLEAM_DOWN_FRAME
	_FL_GLEAM_THIN_UP_BOX
	_FL_GLEAM_THIN_DOWN_BOX
	_FL_GLEAM_ROUND_UP_BOX
	_FL_GLEAM_ROUND_DOWN_BOX
	FL_FREE_BOXTYPE
end enum

declare function fl_define_FL_ROUND_UP_BOX() as Fl_Boxtype
#define FL_ROUND_UP_BOX fl_define_FL_ROUND_UP_BOX()
#define FL_ROUND_DOWN_BOX (Fl_Boxtype)(fl_define_FL_ROUND_UP_BOX()+1)
declare function fl_define_FL_SHADOW_BOX() as Fl_Boxtype
#define FL_SHADOW_BOX fl_define_FL_SHADOW_BOX()
#define FL_SHADOW_FRAME (Fl_Boxtype)(fl_define_FL_SHADOW_BOX()+2)
declare function fl_define_FL_ROUNDED_BOX() as Fl_Boxtype
#define FL_ROUNDED_BOX fl_define_FL_ROUNDED_BOX()
#define FL_ROUNDED_FRAME (Fl_Boxtype)(fl_define_FL_ROUNDED_BOX()+2)
declare function fl_define_FL_RFLAT_BOX() as Fl_Boxtype
#define FL_RFLAT_BOX fl_define_FL_RFLAT_BOX()
declare function fl_define_FL_RSHADOW_BOX() as Fl_Boxtype
#define FL_RSHADOW_BOX fl_define_FL_RSHADOW_BOX()
declare function fl_define_FL_DIAMOND_BOX() as Fl_Boxtype
#define FL_DIAMOND_UP_BOX fl_define_FL_DIAMOND_BOX()
#define FL_DIAMOND_DOWN_BOX (Fl_Boxtype)(fl_define_FL_DIAMOND_BOX()+1)
declare function fl_define_FL_OVAL_BOX() as Fl_Boxtype
#define FL_OVAL_BOX fl_define_FL_OVAL_BOX()
#define FL_OSHADOW_BOX (Fl_Boxtype)(fl_define_FL_OVAL_BOX()+1)
#define FL_OVAL_FRAME (Fl_Boxtype)(fl_define_FL_OVAL_BOX()+2)
#define FL_OFLAT_BOX (Fl_Boxtype)(fl_define_FL_OVAL_BOX()+3)

declare function fl_define_FL_PLASTIC_UP_BOX() as Fl_Boxtype
#define FL_PLASTIC_UP_BOX fl_define_FL_PLASTIC_UP_BOX()
#define FL_PLASTIC_DOWN_BOX (Fl_Boxtype)(fl_define_FL_PLASTIC_UP_BOX()+1)
#define FL_PLASTIC_UP_FRAME (Fl_Boxtype)(fl_define_FL_PLASTIC_UP_BOX()+2)
#define FL_PLASTIC_DOWN_FRAME (Fl_Boxtype)(fl_define_FL_PLASTIC_UP_BOX()+3)
#define FL_PLASTIC_THIN_UP_BOX (Fl_Boxtype)(fl_define_FL_PLASTIC_UP_BOX()+4)
#define FL_PLASTIC_THIN_DOWN_BOX (Fl_Boxtype)(fl_define_FL_PLASTIC_UP_BOX()+5)
#define FL_PLASTIC_ROUND_UP_BOX (Fl_Boxtype)(fl_define_FL_PLASTIC_UP_BOX()+6)
#define FL_PLASTIC_ROUND_DOWN_BOX (Fl_Boxtype)(fl_define_FL_PLASTIC_UP_BOX()+7)

declare function fl_define_FL_GTK_UP_BOX() as Fl_Boxtype
#define FL_GTK_UP_BOX fl_define_FL_GTK_UP_BOX()
#define FL_GTK_DOWN_BOX (Fl_Boxtype)(fl_define_FL_GTK_UP_BOX()+1)
#define FL_GTK_UP_FRAME (Fl_Boxtype)(fl_define_FL_GTK_UP_BOX()+2)
#define FL_GTK_DOWN_FRAME (Fl_Boxtype)(fl_define_FL_GTK_UP_BOX()+3)
#define FL_GTK_THIN_UP_BOX (Fl_Boxtype)(fl_define_FL_GTK_UP_BOX()+4)
#define FL_GTK_THIN_DOWN_BOX (Fl_Boxtype)(fl_define_FL_GTK_UP_BOX()+5)
#define FL_GTK_THIN_UP_FRAME (Fl_Boxtype)(fl_define_FL_GTK_UP_BOX()+6)
#define FL_GTK_THIN_DOWN_FRAME (Fl_Boxtype)(fl_define_FL_GTK_UP_BOX()+7)
#define FL_GTK_ROUND_UP_BOX (Fl_Boxtype)(fl_define_FL_GTK_UP_BOX()+8)
#define FL_GTK_ROUND_DOWN_BOX (Fl_Boxtype)(fl_define_FL_GTK_UP_BOX()+9)

declare function fl_define_FL_GLEAM_UP_BOX() as Fl_Boxtype


enum Fl_Labeltype
	FL_NORMAL_LABEL	= 0
	FL_NO_LABEL
	_FL_SHADOW_LABEL
	_FL_ENGRAVED_LABEL
	_FL_EMBOSSED_LABEL
	_FL_MULTI_LABEL
	_FL_ICON_LABEL
	_FL_IMAGE_LABEL

	FL_FREE_LABELTYPE
end enum

const FL_ALIGN_CENTER = 0
const FL_ALIGN_TOP = 1
const FL_ALIGN_BOTTOM = 2
const FL_ALIGN_LEFT = 4
const FL_ALIGN_RIGHT = 8
const FL_ALIGN_INSIDE = 16
const FL_ALIGN_TEXT_OVER_IMAGE	= &h0020
const FL_ALIGN_IMAGE_OVER_TEXT	= &h0000
const FL_ALIGN_CLIP		= 64
const FL_ALIGN_WRAP		= 128
const FL_ALIGN_IMAGE_NEXT_TO_TEXT = &h0100
const FL_ALIGN_TEXT_NEXT_TO_IMAGE = &h0120
const FL_ALIGN_IMAGE_BACKDROP  = &h0200
const FL_ALIGN_TOP_LEFT	= FL_ALIGN_TOP or FL_ALIGN_LEFT
const FL_ALIGN_TOP_RIGHT	= FL_ALIGN_TOP or FL_ALIGN_RIGHT
const FL_ALIGN_BOTTOM_LEFT	= FL_ALIGN_BOTTOM or FL_ALIGN_LEFT
const FL_ALIGN_BOTTOM_RIGHT	= FL_ALIGN_BOTTOM or FL_ALIGN_RIGHT
const FL_ALIGN_LEFT_TOP	= &h0007
const FL_ALIGN_RIGHT_TOP	= &h000b
const FL_ALIGN_LEFT_BOTTOM	= &h000d
const FL_ALIGN_RIGHT_BOTTOM	= &h000e
const FL_ALIGN_NOWRAP		= 0
const FL_ALIGN_POSITION_MASK   = &h000f
const FL_ALIGN_IMAGE_MASK      = &h0320


enum Fl_Cursor 
	FL_CURSOR_DEFAULT    =  0
	FL_CURSOR_ARROW      = 35
	FL_CURSOR_CROSS      = 66
	FL_CURSOR_WAIT       = 76
	FL_CURSOR_INSERT     = 77
	FL_CURSOR_HAND       = 31
	FL_CURSOR_HELP       = 47
	FL_CURSOR_MOVE       = 27

	FL_CURSOR_NS         = 78
	FL_CURSOR_WE         = 79
	FL_CURSOR_NWSE       = 80
	FL_CURSOR_NESW       = 81
	FL_CURSOR_N          = 70
	FL_CURSOR_NE         = 69
	FL_CURSOR_E          = 49
	FL_CURSOR_SE         =  8
	FL_CURSOR_S          =  9
	FL_CURSOR_SW         =  7
	FL_CURSOR_W          = 36
	FL_CURSOR_NW         = 68

	FL_CURSOR_NONE       =255
end enum

enum Fl_Mode  
	FL_RGB		= 0
	FL_INDEX	= 1
	FL_SINGLE	= 0
	FL_DOUBLE	= 2
	FL_ACCUM	= 4
	FL_ALPHA	= 8
	FL_DEPTH	= 16
	FL_STENCIL	= 32
	FL_RGB8		= 64
	FL_MULTISAMPLE= 128
	FL_STEREO     = 256
	FL_FAKE_SINGLE = 512
	FL_OPENGL3    = 1024
end enum

enum Fl_Damage 
	FL_DAMAGE_CHILD    = &h01
	FL_DAMAGE_EXPOSE   = &h02
	FL_DAMAGE_SCROLL   = &h04
	FL_DAMAGE_OVERLAY  = &h08
	FL_DAMAGE_USER1    = &h10
	FL_DAMAGE_USER2    = &h20
	FL_DAMAGE_ALL      = &h80
end enum

type Fl_Align as unsigned long

type Fl_Color as unsigned long
const FL_GRAY0   = 32
const FL_DARK3   = 39
const FL_DARK2   = 45
const FL_DARK1   = 47
const FL_BACKGROUND_COLOR  = 49
const FL_LIGHT1  = 50
const FL_LIGHT2  = 52
const FL_LIGHT3  = 54
const FL_BLACK   = 56
const FL_RED     = 88
const FL_GREEN   = 63
const FL_YELLOW  = 95
const FL_BLUE    = 216
const FL_MAGENTA = 248
const FL_CYAN    = 223
const FL_DARK_RED = 72

const FL_DARK_GREEN    = 60
const FL_DARK_YELLOW   = 76
const FL_DARK_BLUE     = 136
const FL_DARK_MAGENTA  = 152
const FL_DARK_CYAN     = 140

const FL_WHITE         = 255


#define FL_FREE_COLOR     cast(Fl_Color,16)
#define FL_NUM_FREE_COLOR 16
#define FL_GRAY_RAMP      cast(Fl_Color,32)
#define FL_NUM_GRAY       24
#define FL_GRAY           FL_BACKGROUND_COLOR
#define FL_COLOR_CUBE     cast(Fl_Color,56)
#define FL_NUM_RED        5
#define FL_NUM_GREEN      8
#define FL_NUM_BLUE       5

declare function fl_inactive(c as Fl_Color) as Fl_Color

declare function fl_contrast(fg as Fl_Color, bg as Fl_Color) as Fl_Color

declare function fl_color_average(c1 as Fl_Color, c2 as Fl_Color, weight as single) as Fl_Color



type Fl_Font as long
type Fl_Fontsize as long

extern FL_NORMAL_SIZE as Fl_Fontsize

end extern
