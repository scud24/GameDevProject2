/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 347005B8
/// @DnDArgument : "code" "new_link = argument0;$(13_10)$(13_10)if(links_after > 0)$(13_10){$(13_10)	links_after++;$(13_10)	with(child_link)$(13_10)	{$(13_10)		scr_addEndLink(other.new_link);$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)	links_after++;$(13_10)	child_link = new_link;$(13_10)	with(child_link)$(13_10)	{$(13_10)		child_link = pointer_null;$(13_10)		links_after = 0;$(13_10)		current_formation = other.current_formation;$(13_10)		$(13_10)		parent_link = other;$(13_10)		depth = other.depth + 1;$(13_10)		buffer_cycles = per_link_buffer;$(13_10)		$(13_10)		ds_queue_clear(movement_queue);$(13_10)		ds_queue_clear(action_queue);$(13_10)		for(i=0; i < buffer_cycles; i++)$(13_10)		{$(13_10)			ds_queue_enqueue(movement_queue, Movement.idle);$(13_10)		}$(13_10)		for(i=0; i < buffer_cycles; i++)$(13_10)		{$(13_10)			ds_queue_enqueue(action_queue, Action.neutral);$(13_10)		}$(13_10)		show_debug_message("Link rejoined at position " + string(obj_roomController.total_links-links_after));$(13_10)	}$(13_10)}"
new_link = argument0;

if(links_after > 0)
{
	links_after++;
	with(child_link)
	{
		scr_addEndLink(other.new_link);
	}
}
else
{
	links_after++;
	child_link = new_link;
	with(child_link)
	{
		child_link = pointer_null;
		links_after = 0;
		current_formation = other.current_formation;
		
		parent_link = other;
		depth = other.depth + 1;
		buffer_cycles = per_link_buffer;
		
		ds_queue_clear(movement_queue);
		ds_queue_clear(action_queue);
		for(i=0; i < buffer_cycles; i++)
		{
			ds_queue_enqueue(movement_queue, Movement.idle);
		}
		for(i=0; i < buffer_cycles; i++)
		{
			ds_queue_enqueue(action_queue, Action.neutral);
		}
		show_debug_message("Link rejoined at position " + string(obj_roomController.total_links-links_after));
	}
}