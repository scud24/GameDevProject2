/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 347005B8
/// @DnDArgument : "code" "new_link = argument0;$(13_10)$(13_10)if(links_after > 0)$(13_10){$(13_10)	show_debug_message("Link" +  string(id) + " at position " + string(obj_roomController.total_links-links_after-obj_roomController.downed_units) + " passes back link " +string(new_link) + "to " + string(child_link) + ". Links after: " + string(links_after));$(13_10)	links_after++;$(13_10)	with(child_link)$(13_10)	{$(13_10)		show_debug_message("Child Link- self: " + string(id) + " child: " +string(child_link));$(13_10)		scr_addEndLink(other.new_link);$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)	$(13_10)	show_debug_message("Adding new link after pos " + string(obj_roomController.total_links-links_after-obj_roomController.downed_units) );$(13_10)	links_after++;$(13_10)	child_link = new_link.id;$(13_10)	with(child_link)$(13_10)	{$(13_10)		child_link = pointer_null;$(13_10)		links_after = 0;$(13_10)		current_formation = other.current_formation;$(13_10)		$(13_10)		parent_link = other.id;$(13_10)		depth = other.depth + 1;$(13_10)		buffer_cycles = per_link_buffer;$(13_10)		$(13_10)		ds_queue_clear(movement_queue);$(13_10)		ds_queue_clear(action_queue);$(13_10)		for(i=0; i < buffer_cycles; i++)$(13_10)		{$(13_10)			ds_queue_enqueue(movement_queue, Movement.idle);$(13_10)		}$(13_10)		for(i=0; i < buffer_cycles; i++)$(13_10)		{$(13_10)			ds_queue_enqueue(action_queue, Action.neutral);$(13_10)		}$(13_10)		show_debug_message("Link rejoined at position " + string(obj_roomController.total_links-links_after-obj_roomController.downed_units));$(13_10)	}$(13_10)}"
new_link = argument0;

if(links_after > 0)
{
	show_debug_message("Link" +  string(id) + " at position " + string(obj_roomController.total_links-links_after-obj_roomController.downed_units) + " passes back link " +string(new_link) + "to " + string(child_link) + ". Links after: " + string(links_after));
	links_after++;
	with(child_link)
	{
		show_debug_message("Child Link- self: " + string(id) + " child: " +string(child_link));
		scr_addEndLink(other.new_link);
	}
}
else
{
	
	show_debug_message("Adding new link after pos " + string(obj_roomController.total_links-links_after-obj_roomController.downed_units) );
	links_after++;
	child_link = new_link.id;
	with(child_link)
	{
		child_link = pointer_null;
		links_after = 0;
		current_formation = other.current_formation;
		
		parent_link = other.id;
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
		show_debug_message("Link rejoined at position " + string(obj_roomController.total_links-links_after-obj_roomController.downed_units));
	}
}