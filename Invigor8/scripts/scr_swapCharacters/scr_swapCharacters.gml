/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4374983B
/// @DnDArgument : "code" "var swap_target = argument0;$(13_10)$(13_10)var temp_x = x;$(13_10)var temp_y = y;$(13_10)var temp_local_hspeed = local_hspeed;$(13_10)var temp_local_vspeed = local_vspeed;$(13_10)$(13_10)var temp_parent_link = parent_link;$(13_10)var temp_child_link = child_link;$(13_10)var temp_links_after = links_after;$(13_10)$(13_10)var temp_formation = current_formation;$(13_10)var temp_movement = current_movement;$(13_10)var temp_carry_item = current_carry_item;$(13_10)var temp_action = current_action;$(13_10)var temp_stun_state = current_stun_state;$(13_10)var temp_sprite_state = current_sprite_state;$(13_10)$(13_10)$(13_10)x = swap_target.x;$(13_10)y = swap_target.y;$(13_10)local_hspeed = swap_target.local_hspeed;$(13_10)local_vspeed = swap_target.local_vspeed;$(13_10)current_formation = swap_target.current_formation;$(13_10)current_movement = swap_target.current_movement;$(13_10)current_action = swap_target.current_action;$(13_10)current_stun_state = swap_target.current_stun_state;$(13_10)current_sprite_state = swap_target.current_sprite_state;$(13_10)links_after = swap_target.links_after$(13_10)$(13_10)current_carry_item = swap_target.current_carry_item;$(13_10)show_debug_message("Set caller carry item to " + string(current_carry_item))$(13_10)if(current_carry_item!=pointer_null)$(13_10){$(13_10)	with(current_carry_item)$(13_10)	{		$(13_10)		transform_parent = other.id;$(13_10)		show_debug_message("Set carry item " + string(id) + " parent to " + string(transfom_parent))$(13_10)	}$(13_10)}$(13_10)$(13_10)if(swap_target.parent_link != id)$(13_10){	$(13_10)	parent_link = swap_target.parent_link$(13_10)}$(13_10)else$(13_10){$(13_10)	parent_link = pointer_null$(13_10)}$(13_10)if(parent_link != pointer_null)$(13_10){$(13_10)	with(parent_link)$(13_10)	{$(13_10)		child_link = other.id;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)if(swap_target.child_link != id)$(13_10){	$(13_10)	child_link = swap_target.child_link$(13_10)}$(13_10)else$(13_10){$(13_10)	parent_link = pointer_null$(13_10)}$(13_10)if(child_link != pointer_null)$(13_10){$(13_10)	with(child_link)$(13_10)	{$(13_10)		parent_link = other.id;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)swap_target.x = temp_x;$(13_10)swap_target.y = temp_y;$(13_10)swap_target.local_hspeed = temp_local_hspeed;$(13_10)swap_target.local_vspeed = temp_local_vspeed;$(13_10)swap_target.current_formation = temp_formation;$(13_10)swap_target.current_movement = temp_movement;$(13_10)swap_target.current_action = temp_action;$(13_10)swap_target.current_stun_state = temp_stun_state;$(13_10)swap_target.current_sprite_state = temp_sprite_state;$(13_10)$(13_10)swap_target.current_carry_item = temp_carry_item;$(13_10)show_debug_message("Set swap target carry item to " + string(swap_target.current_carry_item))$(13_10)with(swap_target)$(13_10){$(13_10)	show_debug_message("swap target carry item: " + string(current_carry_item))$(13_10)	if(current_carry_item!=pointer_null)$(13_10)	{$(13_10)		show_debug_message("swap target carry item not null: " + string(current_carry_item))$(13_10)		show_debug_message("Set swap target carry item tp " + string(current_carry_item.transform_parent))$(13_10)		with(current_carry_item)$(13_10)		{			$(13_10)			show_debug_message("Set swap target carry item tp " + string(transform_parent))$(13_10)			show_debug_message(string(object_index == template_carry_target))$(13_10)			//show_debug_message("carry item " + string(id) + " parent starts as " + string(transfom_parent))$(13_10)			show_debug_message("other.id: " + string(other.id))$(13_10)			transform_parent = other.id;$(13_10)			show_debug_message("Set carry item " + string(id) + " parent to " + string(transform_parent))$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if(swap_target != temp_parent_link)$(13_10){$(13_10)	swap_target.parent_link = temp_parent_link$(13_10)}$(13_10)else$(13_10){$(13_10)	swap_target.parent_link = id$(13_10)}$(13_10)$(13_10)with(swap_target)$(13_10){$(13_10)	if(parent_link != pointer_null && parent_link!=other.id)$(13_10)	{$(13_10)		with(parent_link)$(13_10)		{$(13_10)			child_link = other.id;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if(swap_target != temp_child_link)$(13_10){$(13_10)	swap_target.child_link = temp_child_link$(13_10)}$(13_10)else$(13_10){$(13_10)	swap_target.child_link = id$(13_10)	if(object_index == obj_player)$(13_10)	{$(13_10)		show_debug_message("caller is player so Swap Target drops child link")$(13_10)		show_debug_message("Swap target child link: " + string(swap_target.child_link) + " caller child link: " + string(child_link))$(13_10)		swap_target.child_link = pointer_null;$(13_10)	}$(13_10)}$(13_10)with(swap_target)$(13_10){$(13_10)	if(child_link != pointer_null && child_link != other.id)$(13_10)	{$(13_10)		with(child_link)$(13_10)		{$(13_10)			parent_link = other.id;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if(object_index == obj_player)$(13_10){$(13_10)	$(13_10)	if(parent_link != pointer_null)$(13_10)	{$(13_10)		scr_removeLink(parent_link);$(13_10)		scr_addEndLink(parent_link)$(13_10)	}$(13_10)}"
var swap_target = argument0;

var temp_x = x;
var temp_y = y;
var temp_local_hspeed = local_hspeed;
var temp_local_vspeed = local_vspeed;

var temp_parent_link = parent_link;
var temp_child_link = child_link;
var temp_links_after = links_after;

var temp_formation = current_formation;
var temp_movement = current_movement;
var temp_carry_item = current_carry_item;
var temp_action = current_action;
var temp_stun_state = current_stun_state;
var temp_sprite_state = current_sprite_state;


x = swap_target.x;
y = swap_target.y;
local_hspeed = swap_target.local_hspeed;
local_vspeed = swap_target.local_vspeed;
current_formation = swap_target.current_formation;
current_movement = swap_target.current_movement;
current_action = swap_target.current_action;
current_stun_state = swap_target.current_stun_state;
current_sprite_state = swap_target.current_sprite_state;
links_after = swap_target.links_after

current_carry_item = swap_target.current_carry_item;
show_debug_message("Set caller carry item to " + string(current_carry_item))
if(current_carry_item!=pointer_null)
{
	with(current_carry_item)
	{		
		transform_parent = other.id;
		show_debug_message("Set carry item " + string(id) + " parent to " + string(transfom_parent))
	}
}

if(swap_target.parent_link != id)
{	
	parent_link = swap_target.parent_link
}
else
{
	parent_link = pointer_null
}
if(parent_link != pointer_null)
{
	with(parent_link)
	{
		child_link = other.id;
	}
}


if(swap_target.child_link != id)
{	
	child_link = swap_target.child_link
}
else
{
	parent_link = pointer_null
}
if(child_link != pointer_null)
{
	with(child_link)
	{
		parent_link = other.id;
	}
}


swap_target.x = temp_x;
swap_target.y = temp_y;
swap_target.local_hspeed = temp_local_hspeed;
swap_target.local_vspeed = temp_local_vspeed;
swap_target.current_formation = temp_formation;
swap_target.current_movement = temp_movement;
swap_target.current_action = temp_action;
swap_target.current_stun_state = temp_stun_state;
swap_target.current_sprite_state = temp_sprite_state;

swap_target.current_carry_item = temp_carry_item;
show_debug_message("Set swap target carry item to " + string(swap_target.current_carry_item))
with(swap_target)
{
	show_debug_message("swap target carry item: " + string(current_carry_item))
	if(current_carry_item!=pointer_null)
	{
		show_debug_message("swap target carry item not null: " + string(current_carry_item))
		show_debug_message("Set swap target carry item tp " + string(current_carry_item.transform_parent))
		with(current_carry_item)
		{			
			show_debug_message("Set swap target carry item tp " + string(transform_parent))
			show_debug_message(string(object_index == template_carry_target))
			//show_debug_message("carry item " + string(id) + " parent starts as " + string(transfom_parent))
			show_debug_message("other.id: " + string(other.id))
			transform_parent = other.id;
			show_debug_message("Set carry item " + string(id) + " parent to " + string(transform_parent))
		}
	}
}

if(swap_target != temp_parent_link)
{
	swap_target.parent_link = temp_parent_link
}
else
{
	swap_target.parent_link = id
}

with(swap_target)
{
	if(parent_link != pointer_null && parent_link!=other.id)
	{
		with(parent_link)
		{
			child_link = other.id;
		}
	}
}

if(swap_target != temp_child_link)
{
	swap_target.child_link = temp_child_link
}
else
{
	swap_target.child_link = id
	if(object_index == obj_player)
	{
		show_debug_message("caller is player so Swap Target drops child link")
		show_debug_message("Swap target child link: " + string(swap_target.child_link) + " caller child link: " + string(child_link))
		swap_target.child_link = pointer_null;
	}
}
with(swap_target)
{
	if(child_link != pointer_null && child_link != other.id)
	{
		with(child_link)
		{
			parent_link = other.id;
		}
	}
}

if(object_index == obj_player)
{
	
	if(parent_link != pointer_null)
	{
		scr_removeLink(parent_link);
		scr_addEndLink(parent_link)
	}
}