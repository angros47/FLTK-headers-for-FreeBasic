extern "c++"

type ID_ as any ptr

type Fl_Preferences_ as Fl_Preferences

type _Entry
	name as zstring ptr
	value as zstring ptr
end type

type RootNode_
private:
	enum Root
		SYSTEM=0
		USER
	end enum  

	prefs_ as Fl_Preferences_ ptr
	filename_ as zstring ptr
	as zstring ptr vendor_, application_
public:
	declare constructor( as Fl_Preferences_ ptr, root as Root, vendor as const zstring ptr,application as const zstring ptr )
	declare constructor( as Fl_Preferences_ ptr, path as const zstring ptr, vendor as const zstring ptr,application as const zstring ptr )
	declare constructor( as Fl_Preferences_ ptr )
	declare destructor()
	declare function read() as long
	declare function write() as long
	declare function getPath(path as zstring ptr, pathlen as long ) as byte
end type

type Node_

	as Node_ ptr child_, next_
	union
		parent_ as Node_ ptr
		root_ as RootNode_ ptr
	end union
	path_ as zstring ptr
	entry_ as _Entry ptr
	as long nEntry_, NEntry__
	dirty_:1 as unsigned byte
	top_:1 as unsigned byte
	indexed_:1 as unsigned byte

	index_ as Node_ ptr ptr
	as long nIndex_, NIndex__
	declare sub createIndex()
	declare sub updateIndex()
	declare sub deleteIndex()
public:
	static lastEntrySet as long
public:
	declare constructor( path_ as const zstring ptr )
	declare destructor()

	declare function name() as const zstring ptr
	declare function path()  as const zstring ptr
end type

private function Node_.name() as const zstring ptr
	if path_=0 then return 0
	dim r as integer= instrrev(*path_,"/") 
	return path_+r
end function

private function Node_.path()  as const zstring ptr
	return path_
end function

type Fl_Preferences extends object

public: 
	enum Root
		SYSTEM=0
		USER
	end enum  

	declare static function newUUID() as const zstring ptr

	declare constructor( root_ as Root, vendor as  const zstring ptr, application as const zstring ptr )
	declare constructor( path_ as const zstring ptr, vendor as const zstring ptr, application as const zstring ptr )
	declare constructor( byref parent as Fl_Preferences, group as const zstring ptr)
	declare constructor( parent as Fl_Preferences ptr, group as const zstring ptr)
	declare constructor( byref parent as Fl_Preferences, groupIndex as long)
	declare constructor( parent as Fl_Preferences ptr, groupIndex as long)
	declare constructor( byref as const Fl_Preferences)
	declare constructor( _id as ID_ )
	declare virtual destructor()
  
	declare function id() as ID_
  
	declare static function remove(_id as ID_) as byte

	declare function name() as const zstring ptr
  
	declare function path() as const zstring ptr
  
	declare function groups() as long
	declare function group(num_group as long)as const zstring ptr
	declare function groupExists( key_ as const zstring ptr ) as byte 'alias "char"
	declare function deleteGroup( group as const zstring ptr) as byte 'alias "char"
	declare function deleteAllGroups() as byte 'alias "char"

	declare function entries() as long
	declare function entry(index as long) as const zstring ptr
	declare function entryExists( key as const zstring ptr ) as byte 'alias "char"
	declare function deleteEntry( entry as const zstring ptr ) as byte 'alias "char"
	declare function deleteAllEntries() as byte 'alias "char"
  
	declare function clear() as byte 'alias "char"

	declare function set( entry as const zstring ptr, value as long ) as byte 'alias "char"
	declare function set( entry as const zstring ptr, value as single ) as byte 'alias "char"
	declare function set( entry as const zstring ptr, value as single, precision as long ) as byte 'alias "char"
	declare function set( entry as const zstring ptr, value as double ) as byte 'alias "char"
	declare function set( entry as const zstring ptr, value as double, precision as long ) as byte 'alias "char"
	declare function set( entry as const zstring ptr, value as const zstring ptr ) as byte 'alias "char"
	declare function set( entry as const zstring ptr, value as const any ptr, size as long ) as byte 'alias "char"
  
	declare function get( entry as const zstring ptr, byref value as long, defaultValue as long ) as byte 'alias "char"
	declare function get( entry as const zstring ptr, byref value as single, defaultValue as single ) as byte 'alias "char"
	declare function get( entry as const zstring ptr, byref value as double, defaultValue as double ) as byte 'alias "char"
	declare function get( entry as const zstring ptr, byref value as zstring ptr, defaultValue as const zstring ptr ) as byte 'alias "char"
	declare function get( entry as const zstring ptr, value as zstring ptr, defaultValue as const zstring ptr,  maxSize as long ) as byte 'alias "char"
	declare function get( entry as const zstring ptr, byref value as any ptr,  defaultValue as const any ptr, defaultSize as long ) as byte 'alias "char"
	declare function get( entry as const zstring ptr, value as any ptr,   defaultValue as const any ptr, defaultSize as long, maxSize as long ) as byte 'alias "char"

	declare function size( entry as const zstring ptr ) as long

	declare function getUserdataPath( path as zstring ptr, pathlen as long ) as byte 'alias "char"

	declare sub flush()


private: 
	declare constructor()
	declare operator @ as Fl_Preferences ptr

	static nameBuffer(127) as byte
	static uuidBuffer(39) as byte
	static runtimePrefs as Fl_Preferences ptr

protected:
	node as Node_ ptr
	rootNode as RootNode_ ptr
end type

private function Fl_Preferences.id() as ID_
	return cast(ID_,node)
end function

extern "c"
declare function _ZN14Fl_Preferences4Node6removeEv(as Node_ ptr) as byte
end extern

private function Fl_Preferences.remove(_id as ID_) as byte
	'demangle
	'return cast(Node_ ptr,_id)->remove()
	return _ZN14Fl_Preferences4Node6removeEv(cast(Node_ ptr,_id))
end function

private function Fl_Preferences.name() as const zstring ptr
	return node->name()
end function

private function Fl_Preferences.path()  as const zstring ptr
	return node->path()
end function

private constructor Fl_Preferences
end constructor




end extern