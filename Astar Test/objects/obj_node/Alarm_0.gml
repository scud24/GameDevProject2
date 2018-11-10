/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 16CB62DF
/// @DnDArgument : "code" "$(13_10)			show_debug_message("node made");$(13_10)		while(place_meeting(x,y,obj_blocker))$(13_10)		{$(13_10)			show_debug_message("node moved");$(13_10)			x = random(room_width);$(13_10)			y = random(room_height);$(13_10)		}$(13_10)"

			show_debug_message("node made");
		while(place_meeting(x,y,obj_blocker))
		{
			show_debug_message("node moved");
			x = random(room_width);
			y = random(room_height);
		}