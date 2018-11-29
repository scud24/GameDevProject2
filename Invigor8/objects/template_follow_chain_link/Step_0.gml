/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BE18A4B
/// @DnDArgument : "var" "follow_started"
/// @DnDArgument : "value" "true"
if(follow_started == true)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 29B695F1
	/// @DnDParent : 0BE18A4B
	/// @DnDArgument : "code" "$(13_10)if(current_formation == Formation.follow)$(13_10){$(13_10)	current_movement = ds_queue_dequeue(movement_queue);$(13_10)	current_action = ds_queue_dequeue(action_queue);$(13_10)}$(13_10)else{$(13_10)	ds_queue_dequeue(movement_queue);$(13_10)	ds_queue_dequeue(action_queue);$(13_10)}$(13_10)$(13_10)//show_debug_message("Current queue size: " + string(ds_queue_size(movement_queue)));$(13_10)$(13_10)if(links_after>0)$(13_10){$(13_10)	if(child_link != pointer_null)$(13_10)	{$(13_10)		with(child_link)$(13_10)		{$(13_10)			ds_queue_enqueue(movement_queue, other.current_movement);$(13_10)			ds_queue_enqueue(action_queue, other.current_action);$(13_10)		}$(13_10)	}	$(13_10)}$(13_10)$(13_10)$(13_10)"
	
	if(current_formation == Formation.follow)
	{
		current_movement = ds_queue_dequeue(movement_queue);
		current_action = ds_queue_dequeue(action_queue);
	}
	else{
		ds_queue_dequeue(movement_queue);
		ds_queue_dequeue(action_queue);
	}
	
	//show_debug_message("Current queue size: " + string(ds_queue_size(movement_queue)));
	
	if(links_after>0)
	{
		if(child_link != pointer_null)
		{
			with(child_link)
			{
				ds_queue_enqueue(movement_queue, other.current_movement);
				ds_queue_enqueue(action_queue, other.current_action);
			}
		}	
	}
}