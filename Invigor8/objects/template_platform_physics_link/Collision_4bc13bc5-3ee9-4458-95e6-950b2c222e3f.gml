/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 459AC5A6
/// @DnDArgument : "code" "if(place_meeting(x,y,obj_wall_blank))$(13_10)	{ $(13_10)		if(other.object_index == template_moving_platform)$(13_10)		{$(13_10)			if(abs(other.vspeed) > 0 && other.hspeed==0)$(13_10)			{$(13_10)				var timeslooped = 0;$(13_10)				while(place_meeting(x, y+sign(other.y-y), obj_wall_blank))$(13_10)				{$(13_10)					y+=sign(y-other.y);$(13_10)					timeslooped++;$(13_10)					if(timeslooped> 20)$(13_10)					{$(13_10)						show_debug_message("loop fail- y:" + string(y) + " other.y: " + string(other.y));$(13_10)					}$(13_10)				}			$(13_10)				y+=sign(y-other.y);$(13_10)				if(sign(local_vspeed) == sign(other.vspeed))$(13_10)				{$(13_10)					local_vspeed = other.vspeed;$(13_10)				}$(13_10)			}$(13_10)			 if(abs(other.hspeed)>0 && other.vspeed==0)$(13_10)			{$(13_10)				var timeslooped = 0;$(13_10)				while(place_meeting(x+sign(other.x-x), y, obj_wall_blank))$(13_10)				{$(13_10)					x+=sign(x-other.x);$(13_10)					timeslooped++;$(13_10)					if(timeslooped> 20)$(13_10)					{$(13_10)						show_debug_message("loop fail- x:" + string(x) + " other.x: " + string(other.x));$(13_10)					}$(13_10)				}			$(13_10)				x+=sign(x-other.x);$(13_10)				if(sign(local_hspeed) == sign(other.hspeed))$(13_10)				{$(13_10)					local_hspeed = other.hspeed;$(13_10)				}$(13_10)			}$(13_10)			$(13_10)			$(13_10)			$(13_10)		}$(13_10)		$(13_10)	}"
if(place_meeting(x,y,obj_wall_blank))
	{ 
		if(other.object_index == template_moving_platform)
		{
			if(abs(other.vspeed) > 0 && other.hspeed==0)
			{
				var timeslooped = 0;
				while(place_meeting(x, y+sign(other.y-y), obj_wall_blank))
				{
					y+=sign(y-other.y);
					timeslooped++;
					if(timeslooped> 20)
					{
						show_debug_message("loop fail- y:" + string(y) + " other.y: " + string(other.y));
					}
				}			
				y+=sign(y-other.y);
				if(sign(local_vspeed) == sign(other.vspeed))
				{
					local_vspeed = other.vspeed;
				}
			}
			 if(abs(other.hspeed)>0 && other.vspeed==0)
			{
				var timeslooped = 0;
				while(place_meeting(x+sign(other.x-x), y, obj_wall_blank))
				{
					x+=sign(x-other.x);
					timeslooped++;
					if(timeslooped> 20)
					{
						show_debug_message("loop fail- x:" + string(x) + " other.x: " + string(other.x));
					}
				}			
				x+=sign(x-other.x);
				if(sign(local_hspeed) == sign(other.hspeed))
				{
					local_hspeed = other.hspeed;
				}
			}
			
			
			
		}
		
	}