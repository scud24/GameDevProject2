/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C7709DB
/// @DnDArgument : "code" "if (transform_parent != pointer_null)$(13_10){$(13_10)	x = transform_parent.x+xoffset;$(13_10)	y = transform_parent.y+yoffset;$(13_10)	local_hspeed = transform_parent.local_hspeed;$(13_10)	local_vspeed = transform_parent.local_vspeed;$(13_10)}$(13_10)if(abs(local_hspeed) > hspeed_abs_min)$(13_10){$(13_10)	local_hspeed *= drag;$(13_10)}$(13_10)else$(13_10){$(13_10)	local_hspeed = 0;$(13_10)}$(13_10)image_angle = current_angle;"
if (transform_parent != pointer_null)
{
	x = transform_parent.x+xoffset;
	y = transform_parent.y+yoffset;
	local_hspeed = transform_parent.local_hspeed;
	local_vspeed = transform_parent.local_vspeed;
}
if(abs(local_hspeed) > hspeed_abs_min)
{
	local_hspeed *= drag;
}
else
{
	local_hspeed = 0;
}
image_angle = current_angle;

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1F28900C
event_inherited();