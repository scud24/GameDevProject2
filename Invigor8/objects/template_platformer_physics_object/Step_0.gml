/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A9DB7FD
/// @DnDArgument : "code" "if (local_vspeed < max_fall_speed) local_vspeed += local_grav;$(13_10)$(13_10)if(place_meeting(x+local_hspeed,y,obj_wall_blank))$(13_10){$(13_10)	while(!place_meeting(x+sign(local_hspeed), y, obj_wall_blank))$(13_10)	{$(13_10)		x+=sign(local_hspeed);$(13_10)	}$(13_10)	local_hspeed = 0;$(13_10)}$(13_10)$(13_10)if(place_meeting(x,y+local_vspeed,obj_wall_blank))$(13_10){$(13_10)	while(!place_meeting(x, y+sign(local_vspeed), obj_wall_blank))$(13_10)	{$(13_10)		y+=sign(local_vspeed);$(13_10)	}$(13_10)	local_vspeed = 0;$(13_10)}$(13_10)$(13_10)x += local_hspeed;$(13_10)y += local_vspeed;"
if (local_vspeed < max_fall_speed) local_vspeed += local_grav;

if(place_meeting(x+local_hspeed,y,obj_wall_blank))
{
	while(!place_meeting(x+sign(local_hspeed), y, obj_wall_blank))
	{
		x+=sign(local_hspeed);
	}
	local_hspeed = 0;
}

if(place_meeting(x,y+local_vspeed,obj_wall_blank))
{
	while(!place_meeting(x, y+sign(local_vspeed), obj_wall_blank))
	{
		y+=sign(local_vspeed);
	}
	local_vspeed = 0;
}

x += local_hspeed;
y += local_vspeed;