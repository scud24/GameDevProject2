/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0688871D
/// @DnDArgument : "code" "//if(place_meeting(x,y,other))$(13_10)//{$(13_10)	var collider_width = bbox_right-bbox_left;$(13_10)	var collider_height = bbox_bottom-bbox_top;$(13_10)	if(!place_meeting(x, y-(collider_height/16), other))$(13_10)	{$(13_10)		y = y- (bbox_bottom-other.bbox_top)-1;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		var timeslooped = 0;$(13_10)		while(!place_meeting(x+sign(x-other.x), y, template_moving_platform))$(13_10)		{$(13_10)			x+=sign(x-other.x);$(13_10)			timeslooped++;$(13_10)			if(timeslooped>20)$(13_10)			{$(13_10)				show_debug_message("Loop fail");$(13_10)				break;$(13_10)			}$(13_10)		}$(13_10)		current_stun_state = StunState.knockbackStun;$(13_10)		current_formation = Formation.wait;$(13_10)		local_hspeed = sign(x-other.x) * 2 * abs(other.local_hspeed);$(13_10)		current_action = Action.attempt_drop;$(13_10)	}$(13_10)//}"
//if(place_meeting(x,y,other))
//{
	var collider_width = bbox_right-bbox_left;
	var collider_height = bbox_bottom-bbox_top;
	if(!place_meeting(x, y-(collider_height/16), other))
	{
		y = y- (bbox_bottom-other.bbox_top)-1;
	}
	else
	{
		var timeslooped = 0;
		while(!place_meeting(x+sign(x-other.x), y, template_moving_platform))
		{
			x+=sign(x-other.x);
			timeslooped++;
			if(timeslooped>20)
			{
				show_debug_message("Loop fail");
				break;
			}
		}
		current_stun_state = StunState.knockbackStun;
		current_formation = Formation.wait;
		local_hspeed = sign(x-other.x) * 2 * abs(other.local_hspeed);
		current_action = Action.attempt_drop;
	}
//}