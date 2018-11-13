/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F4E7E70
/// @DnDArgument : "code" "if(found)$(13_10)	{$(13_10)		if(current_node != pointer_null)$(13_10)		{$(13_10)			$(13_10)			if(current_node.parent != pointer_null)$(13_10)			{$(13_10)				with (obj_astar.current_node)$(13_10)	            {$(13_10)	                image_blend = c_blue;$(13_10)					if(self == obj_astar.endNode)$(13_10)					{$(13_10)						image_blend = c_red;	$(13_10)					}$(13_10)	            }$(13_10)           $(13_10)				show_debug_message("Next Node: " + string(current_node.parent));$(13_10)	            obj_astar.current_node = current_node.parent;$(13_10)				$(13_10)				current_node.image_blend = c_yellow;$(13_10)			}$(13_10)		}$(13_10)	}"
if(found)
	{
		if(current_node != pointer_null)
		{
			
			if(current_node.parent != pointer_null)
			{
				with (obj_astar.current_node)
	            {
	                image_blend = c_blue;
					if(self == obj_astar.endNode)
					{
						image_blend = c_red;	
					}
	            }
           
				show_debug_message("Next Node: " + string(current_node.parent));
	            obj_astar.current_node = current_node.parent;
				
				current_node.image_blend = c_yellow;
			}
		}
	}