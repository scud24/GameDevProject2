/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 20A6E598
/// @DnDArgument : "code" "if(found)$(13_10){$(13_10)	if(jump_target.object_index == obj_player)$(13_10)	{$(13_10)		found = false;$(13_10)		current_node = pointer_null;$(13_10)		jump_target = current_node;$(13_10)		current_formation = Formation.follow;$(13_10)		with(obj_player)$(13_10)		{$(13_10)			scr_addEndLink(other);$(13_10)		}$(13_10)	}$(13_10)	else if(current_node != pointer_null)$(13_10)	{$(13_10)		with (current_node)$(13_10)	    {$(13_10)			image_blend = c_blue;$(13_10)	    }$(13_10)			$(13_10)		if(current_node.parent != pointer_null)$(13_10)		{$(13_10)			$(13_10)		$(13_10)			if(current_node.parent.node_active)$(13_10)			{				$(13_10)		        current_node = current_node.parent;$(13_10)			$(13_10)			$(13_10)				var node_type = "";$(13_10)				if(current_node.object_index == obj_moving_platform_bounds_node)$(13_10)				{$(13_10)					node_type = "Bounds";$(13_10)				}$(13_10)				else if(current_node.object_index == obj_moving_platform_target_node)$(13_10)				{$(13_10)					node_type = "Platform";$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					node_type = "Normal";$(13_10)				}$(13_10)			$(13_10)				show_debug_message("Character: " + string(id) + " Next Node: " + string(current_node.id) + " Type: " + node_type);$(13_10)				current_node.image_blend = c_yellow;$(13_10)				$(13_10)				jump_target = current_node;$(13_10)				current_assemble_state = AssembleState.move_to_node;$(13_10)			}$(13_10)			else$(13_10)			{				$(13_10)				current_assemble_state = AssembleState.holding_for_node;$(13_10)				$(13_10)				//////////////////////////////////$(13_10)				if(current_node.object_index == obj_moving_platform_bounds_node && current_node.parent.object_index == obj_moving_platform_bounds_node)$(13_10)				{$(13_10)					/*$(13_10)					moving_node = collision_line(current_node.x, current_node.y, current_node.parent.x, current_node.parent.y, obj_moving_platform_target_node, false, true);$(13_10)					if(moving_node != pointer_null)$(13_10)					{$(13_10)						show_debug_message("Character: " + string(id) + " adds plat node to chain");$(13_10)						moving_node.parent = current_node.parent;$(13_10)						current_node.parent = moving_node;$(13_10)					}*/$(13_10)					$(13_10)					current_node = current_node.parent;$(13_10)					jump_target = current_node;$(13_10)				}$(13_10)				//////////////////////////////////$(13_10)			}$(13_10)			$(13_10)			/////////////////////////////////////////////////$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			show_debug_message("Character: " + string(id) + " Last node reached, moving to player");$(13_10)			jump_target = obj_player;$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		show_debug_message("Character: " + string(id) + " Last node reached, moving to player");$(13_10)		jump_target = obj_player;$(13_10)	}$(13_10)$(13_10)}$(13_10)"
if(found)
{
	if(jump_target.object_index == obj_player)
	{
		found = false;
		current_node = pointer_null;
		jump_target = current_node;
		current_formation = Formation.follow;
		with(obj_player)
		{
			scr_addEndLink(other);
		}
	}
	else if(current_node != pointer_null)
	{
		with (current_node)
	    {
			image_blend = c_blue;
	    }
			
		if(current_node.parent != pointer_null)
		{
			
		
			if(current_node.parent.node_active)
			{				
		        current_node = current_node.parent;
			
			
				var node_type = "";
				if(current_node.object_index == obj_moving_platform_bounds_node)
				{
					node_type = "Bounds";
				}
				else if(current_node.object_index == obj_moving_platform_target_node)
				{
					node_type = "Platform";
				}
				else
				{
					node_type = "Normal";
				}
			
				show_debug_message("Character: " + string(id) + " Next Node: " + string(current_node.id) + " Type: " + node_type);
				current_node.image_blend = c_yellow;
				
				jump_target = current_node;
				current_assemble_state = AssembleState.move_to_node;
			}
			else
			{				
				current_assemble_state = AssembleState.holding_for_node;
				
				//////////////////////////////////
				if(current_node.object_index == obj_moving_platform_bounds_node && current_node.parent.object_index == obj_moving_platform_bounds_node)
				{
					/*
					moving_node = collision_line(current_node.x, current_node.y, current_node.parent.x, current_node.parent.y, obj_moving_platform_target_node, false, true);
					if(moving_node != pointer_null)
					{
						show_debug_message("Character: " + string(id) + " adds plat node to chain");
						moving_node.parent = current_node.parent;
						current_node.parent = moving_node;
					}*/
					
					current_node = current_node.parent;
					jump_target = current_node;
				}
				//////////////////////////////////
			}
			
			/////////////////////////////////////////////////
		}
		else
		{
			show_debug_message("Character: " + string(id) + " Last node reached, moving to player");
			jump_target = obj_player;
		}
	}
	else
	{
		show_debug_message("Character: " + string(id) + " Last node reached, moving to player");
		jump_target = obj_player;
	}

}
/**/