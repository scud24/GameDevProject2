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
	/// @DnDArgument : "code" "$(13_10)if(current_formation == Formation.follow)$(13_10){$(13_10)	current_movement = ds_queue_dequeue(movement_queue);$(13_10)	current_action = ds_queue_dequeue(action_queue);$(13_10)}$(13_10)else if(current_formation != Formation.coordinated){$(13_10)	ds_queue_dequeue(movement_queue);$(13_10)	ds_queue_dequeue(action_queue);$(13_10)}$(13_10)else if(current_formation == Formation.coordinated && coordinated_path_started)$(13_10){$(13_10)	if(!ds_queue_empty(movement_queue) || !ds_queue_empty(action_queue))$(13_10)	{$(13_10)		current_movement = ds_queue_dequeue(movement_queue);$(13_10)		current_action = ds_queue_dequeue(action_queue);$(13_10)	}$(13_10)	else$(13_10)	{		$(13_10)		num_coordinated_follower_active--;$(13_10)		coordinated_path_started = false;$(13_10)	}$(13_10)}$(13_10)if(current_formation = Formation.coordinated && last_formation != Formation.coordinated)$(13_10){$(13_10)	ds_queue_clear(movement_queue);$(13_10)	ds_queue_clear(action_queue);$(13_10)}$(13_10)$(13_10)//show_debug_message("Current queue size: " + string(ds_queue_size(movement_queue)));$(13_10)$(13_10)if(links_after>0)$(13_10){$(13_10)	if(child_link != pointer_null)$(13_10)	{$(13_10)		with(child_link)$(13_10)		{$(13_10)			ds_queue_enqueue(movement_queue, other.current_movement);$(13_10)			ds_queue_enqueue(action_queue, other.current_action);$(13_10)		}$(13_10)	}	$(13_10)}$(13_10)if(current_formation == Formation.wait && last_formation != Formation.wait)$(13_10){$(13_10)	show_debug_message("Link " + string(id) + " started waiting");$(13_10)}$(13_10)if(current_formation == Formation.assemble && last_formation != Formation.assemble)$(13_10){$(13_10)	show_debug_message("Link " + string(id) + " started assembling");$(13_10)	scr_removeLink(self);$(13_10)}$(13_10)$(13_10)last_formation = current_formation;"
	
	if(current_formation == Formation.follow)
	{
		current_movement = ds_queue_dequeue(movement_queue);
		current_action = ds_queue_dequeue(action_queue);
	}
	else if(current_formation != Formation.coordinated){
		ds_queue_dequeue(movement_queue);
		ds_queue_dequeue(action_queue);
	}
	else if(current_formation == Formation.coordinated && coordinated_path_started)
	{
		if(!ds_queue_empty(movement_queue) || !ds_queue_empty(action_queue))
		{
			current_movement = ds_queue_dequeue(movement_queue);
			current_action = ds_queue_dequeue(action_queue);
		}
		else
		{		
			num_coordinated_follower_active--;
			coordinated_path_started = false;
		}
	}
	if(current_formation = Formation.coordinated && last_formation != Formation.coordinated)
	{
		ds_queue_clear(movement_queue);
		ds_queue_clear(action_queue);
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
	if(current_formation == Formation.wait && last_formation != Formation.wait)
	{
		show_debug_message("Link " + string(id) + " started waiting");
	}
	if(current_formation == Formation.assemble && last_formation != Formation.assemble)
	{
		show_debug_message("Link " + string(id) + " started assembling");
		scr_removeLink(self);
	}
	
	last_formation = current_formation;
}