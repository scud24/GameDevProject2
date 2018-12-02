/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01DB76FF
/// @DnDArgument : "code" "if(transform_parent != pointer_null)$(13_10){$(13_10)	x = transform_parent.x+xoffset;$(13_10)	y = transform_parent.y+yoffset;$(13_10)}$(13_10)else$(13_10){$(13_10)	show_debug_message("Error: orphaned moving platform target node");$(13_10)}"
if(transform_parent != pointer_null)
{
	x = transform_parent.x+xoffset;
	y = transform_parent.y+yoffset;
}
else
{
	show_debug_message("Error: orphaned moving platform target node");
}