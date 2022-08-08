#define FL_PATH_MAX 2048

extern "c"
type dirent
	d_name as zstring *1
end type

declare function fl_alphasort(as dirent ptr ptr, as dirent ptr ptr) as long
declare function fl_casealphasort(as dirent ptr ptr, as dirent ptr ptr) as long
declare function fl_casenumericsort(as dirent ptr ptr, as dirent ptr ptr) as long
declare function fl_numericsort(as dirent ptr ptr, as dirent ptr ptr) as long


type Fl_File_Sort_F as function(as dirent ptr ptr, as dirent ptr ptr) as long

end extern
