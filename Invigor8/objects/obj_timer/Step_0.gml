/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D965197
/// @DnDArgument : "code" "global.seconds += 1/room_speed;$(13_10)$(13_10)$(13_10)if (global.seconds < 60) and (global.seconds > 59.9)$(13_10){$(13_10)	global.seconds = 0;$(13_10)	global.minutes += 1;$(13_10)}"
global.seconds += 1/room_speed;


if (global.seconds < 60) and (global.seconds > 59.9)
{
	global.seconds = 0;
	global.minutes += 1;
}