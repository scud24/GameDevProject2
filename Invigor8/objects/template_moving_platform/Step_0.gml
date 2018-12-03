/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 57060445
/// @DnDArgument : "code" "$(13_10)local_hspeed = lengthdir_x(path_speed, direction);$(13_10)local_vspeed = lengthdir_y(path_speed, direction);$(13_10)$(13_10)if (local_hspeed > 0) image_xscale = 1;$(13_10)else image_xscale = -1;"

local_hspeed = lengthdir_x(path_speed, direction);
local_vspeed = lengthdir_y(path_speed, direction);

if (local_hspeed > 0) image_xscale = 1;
else image_xscale = -1;