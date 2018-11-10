/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35EFBAED
/// @DnDArgument : "code" "follow_started = true;$(13_10)if (links_after > 0)$(13_10){$(13_10)	//show_debug_message("Parent Started - Links after: " + string(links_after));$(13_10)	child_link = instance_create_layer(x,y,"Instances", next_link_object);$(13_10)	with (child_link)$(13_10)	{$(13_10)		depth = other.depth + 1;$(13_10)		links_after = other.links_after - 1;$(13_10)		//show_debug_message("Child Starting - Links after: " + string(links_after));$(13_10)		buffer_cycles = per_link_buffer;//other.buffer_cycles+per_link_buffer;$(13_10)		event_user(0);$(13_10)		$(13_10)		//show_debug_message("Buffer Cycles: " + string(buffer_cycles));$(13_10)		for(i=0; i < buffer_cycles; i++)$(13_10)		{$(13_10)			ds_queue_enqueue(movement_queue, Movement.idle);$(13_10)		}$(13_10)		for(i=0; i < buffer_cycles; i++)$(13_10)		{$(13_10)			ds_queue_enqueue(action_queue, Action.neutral);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)	"
follow_started = true;
if (links_after > 0)
{
	//show_debug_message("Parent Started - Links after: " + string(links_after));
	child_link = instance_create_layer(x,y,"Instances", next_link_object);
	with (child_link)
	{
		depth = other.depth + 1;
		links_after = other.links_after - 1;
		//show_debug_message("Child Starting - Links after: " + string(links_after));
		buffer_cycles = per_link_buffer;//other.buffer_cycles+per_link_buffer;
		event_user(0);
		
		//show_debug_message("Buffer Cycles: " + string(buffer_cycles));
		for(i=0; i < buffer_cycles; i++)
		{
			ds_queue_enqueue(movement_queue, Movement.idle);
		}
		for(i=0; i < buffer_cycles; i++)
		{
			ds_queue_enqueue(action_queue, Action.neutral);
		}
	}
	
}