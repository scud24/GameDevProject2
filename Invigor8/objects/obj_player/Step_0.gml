/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28877585
/// @DnDArgument : "code" "if(keyboard_check(vk_left)|| gamepad_axis_value(4,0) < -0.1)$(13_10){$(13_10)	if(keyboard_check(vk_up)|| gamepad_axis_value(4,1) < -0.1 || gamepad_button_check_pressed(4,0))$(13_10)	{$(13_10)		//Character moves up and left$(13_10)		current_movement = Movement.diagUpLeft;$(13_10)		$(13_10)	}$(13_10)	else if(keyboard_check(vk_down)|| gamepad_axis_value(4,1) > 0.1)$(13_10)	{$(13_10)		//Character moves down and left$(13_10)		current_movement = Movement.diagDownLeft;$(13_10)		$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//Character left		$(13_10)		current_movement = Movement.left;$(13_10)	}$(13_10)}$(13_10)//Right Press checks for diagonals.$(13_10)else if(keyboard_check(vk_right)|| gamepad_axis_value(4,0) > 0.1)$(13_10){$(13_10)	if(keyboard_check(vk_up)|| gamepad_axis_value(4,1) < -0.1 || gamepad_button_check_pressed(4,0))$(13_10)	{$(13_10)		//Character moves up and right$(13_10)		current_movement = Movement.diagUpRight;$(13_10)		$(13_10)	}$(13_10)	else if(keyboard_check(vk_down)|| gamepad_axis_value(4,1) > 0.1)$(13_10)	{$(13_10)		//Character moves down and right$(13_10)		current_movement = Movement.diagDownRight;$(13_10)		$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//Character moves right$(13_10)		current_movement = Movement.right;$(13_10)		$(13_10)	}$(13_10)}$(13_10)else if(keyboard_check(vk_up) || gamepad_axis_value(4,1) < -0.1 || gamepad_button_check_pressed(4,0))$(13_10){$(13_10)	//Character moves up$(13_10)		current_movement = Movement.up;$(13_10)	$(13_10)}$(13_10)else if(keyboard_check(vk_down)|| gamepad_axis_value(4,0) > 0.1)$(13_10){$(13_10)	//Character moves down$(13_10)		current_movement = Movement.down;$(13_10)	$(13_10)}$(13_10)else$(13_10){$(13_10)	//Character does not move$(13_10)	current_movement = Movement.idle;$(13_10)}$(13_10)$(13_10)if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(4,3))$(13_10){$(13_10)	$(13_10)	current_action = Action.attempt_grab;$(13_10)	/*$(13_10)	switch(current_action)$(13_10)	{$(13_10)		case Action.neutral:$(13_10)		current_action = Action.attempt_grab;$(13_10)			break;$(13_10)		case Action.carrying:$(13_10)		current_action = Action.attempt_grab;$(13_10)			break;$(13_10)	}$(13_10)	*/$(13_10)}$(13_10)else if(keyboard_check_pressed(vk_alt)|| gamepad_button_check_pressed(4,2))$(13_10){$(13_10)		current_action = Action.attempt_drop;$(13_10)	/*if(current_action == Action.carrying)$(13_10)	{$(13_10)		current_action = Action.attempt_drop;$(13_10)	}*/$(13_10)}$(13_10)else$(13_10){$(13_10)	current_action = Action.neutral;	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)//show_debug_message("A0: " + string(gamepad_axis_value(4,0))+" A1: " + string(gamepad_axis_value(4,1))+" A2: " + string(gamepad_axis_value(4,2)));$(13_10)$(13_10)$(13_10)if(current_formation == Formation.switch_prep)$(13_10){$(13_10)    current_action = Action.neutral;$(13_10)	current_movement = Movement.idle;$(13_10)	if(keyboard_check_pressed(vk_up))$(13_10)	{$(13_10)		formation_selection--;$(13_10)		substeps_remaining = num_angle_substeps;$(13_10)		angle_substep = ((formation_selection*angle_step) - ((formation_selection+1)*angle_step))/num_angle_substeps;$(13_10)		if(formation_selection<0)$(13_10)		{$(13_10)			formation_selection=3;$(13_10)			angle_substep = (angle_step*3 - (formation_selection*angle_step))/num_angle_substeps;$(13_10)		}$(13_10)	}$(13_10)	else if(keyboard_check_pressed(vk_down))$(13_10)	{$(13_10)		formation_selection++;$(13_10)		substeps_remaining = 10;$(13_10)		angle_substep = ((formation_selection*angle_step)- ((formation_selection-1)*angle_step))/num_angle_substeps;$(13_10)		if(formation_selection>3)$(13_10)		{$(13_10)			formation_selection=0;$(13_10)			angle_substep = (0 - (formation_selection*angle_step))/num_angle_substeps;$(13_10)		}$(13_10)	}$(13_10)	if(formation_selection == 1)$(13_10)	{$(13_10)		if(keyboard_check_pressed(vk_left))$(13_10)		{$(13_10)			links_following_after_split--;$(13_10)			if(links_following_after_split<0)$(13_10)			{$(13_10)				links_following_after_split=links_after;$(13_10)			}$(13_10)		}$(13_10)		else if(keyboard_check_pressed(vk_right))$(13_10)		{$(13_10)			links_following_after_split++;$(13_10)			if(links_following_after_split>links_after)$(13_10)			{$(13_10)				links_following_after_split=0;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)if(current_formation == Formation.swap_lead)$(13_10){$(13_10)    current_action = Action.neutral;$(13_10)	current_movement = Movement.idle;$(13_10)	if(keyboard_check_pressed(vk_left))$(13_10)	{$(13_10)		selected_character_index--;$(13_10)		if(selected_character_index<0)$(13_10)		{$(13_10)			selected_character_index=ds_list_size(lead_links)-1;$(13_10)		}$(13_10)	}$(13_10)	else if(keyboard_check_pressed(vk_right))$(13_10)	{$(13_10)		selected_character_index++;$(13_10)		if(selected_character_index>ds_list_size(lead_links)-1)$(13_10)		{$(13_10)			selected_character_index=0;$(13_10)		}$(13_10)	}$(13_10)	else if(keyboard_check_pressed(vk_space))$(13_10)	{$(13_10)		if(selected_character!=pointer_null)$(13_10)		{$(13_10)			scr_swapCharacters(selected_character);$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)ds_queue_enqueue(movement_queue, current_movement);$(13_10)ds_queue_enqueue(action_queue, current_action);$(13_10)$(13_10)"
if(keyboard_check(vk_left)|| gamepad_axis_value(4,0) < -0.1)
{
	if(keyboard_check(vk_up)|| gamepad_axis_value(4,1) < -0.1 || gamepad_button_check_pressed(4,0))
	{
		//Character moves up and left
		current_movement = Movement.diagUpLeft;
		
	}
	else if(keyboard_check(vk_down)|| gamepad_axis_value(4,1) > 0.1)
	{
		//Character moves down and left
		current_movement = Movement.diagDownLeft;
		
	}
	else
	{
		//Character left		
		current_movement = Movement.left;
	}
}
//Right Press checks for diagonals.
else if(keyboard_check(vk_right)|| gamepad_axis_value(4,0) > 0.1)
{
	if(keyboard_check(vk_up)|| gamepad_axis_value(4,1) < -0.1 || gamepad_button_check_pressed(4,0))
	{
		//Character moves up and right
		current_movement = Movement.diagUpRight;
		
	}
	else if(keyboard_check(vk_down)|| gamepad_axis_value(4,1) > 0.1)
	{
		//Character moves down and right
		current_movement = Movement.diagDownRight;
		
	}
	else
	{
		//Character moves right
		current_movement = Movement.right;
		
	}
}
else if(keyboard_check(vk_up) || gamepad_axis_value(4,1) < -0.1 || gamepad_button_check_pressed(4,0))
{
	//Character moves up
		current_movement = Movement.up;
	
}
else if(keyboard_check(vk_down)|| gamepad_axis_value(4,0) > 0.1)
{
	//Character moves down
		current_movement = Movement.down;
	
}
else
{
	//Character does not move
	current_movement = Movement.idle;
}

if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(4,3))
{
	
	current_action = Action.attempt_grab;
	/*
	switch(current_action)
	{
		case Action.neutral:
		current_action = Action.attempt_grab;
			break;
		case Action.carrying:
		current_action = Action.attempt_grab;
			break;
	}
	*/
}
else if(keyboard_check_pressed(vk_alt)|| gamepad_button_check_pressed(4,2))
{
		current_action = Action.attempt_drop;
	/*if(current_action == Action.carrying)
	{
		current_action = Action.attempt_drop;
	}*/
}
else
{
	current_action = Action.neutral;	
}



//show_debug_message("A0: " + string(gamepad_axis_value(4,0))+" A1: " + string(gamepad_axis_value(4,1))+" A2: " + string(gamepad_axis_value(4,2)));


if(current_formation == Formation.switch_prep)
{
    current_action = Action.neutral;
	current_movement = Movement.idle;
	if(keyboard_check_pressed(vk_up))
	{
		formation_selection--;
		substeps_remaining = num_angle_substeps;
		angle_substep = ((formation_selection*angle_step) - ((formation_selection+1)*angle_step))/num_angle_substeps;
		if(formation_selection<0)
		{
			formation_selection=3;
			angle_substep = (angle_step*3 - (formation_selection*angle_step))/num_angle_substeps;
		}
	}
	else if(keyboard_check_pressed(vk_down))
	{
		formation_selection++;
		substeps_remaining = 10;
		angle_substep = ((formation_selection*angle_step)- ((formation_selection-1)*angle_step))/num_angle_substeps;
		if(formation_selection>3)
		{
			formation_selection=0;
			angle_substep = (0 - (formation_selection*angle_step))/num_angle_substeps;
		}
	}
	if(formation_selection == 1)
	{
		if(keyboard_check_pressed(vk_left))
		{
			links_following_after_split--;
			if(links_following_after_split<0)
			{
				links_following_after_split=links_after;
			}
		}
		else if(keyboard_check_pressed(vk_right))
		{
			links_following_after_split++;
			if(links_following_after_split>links_after)
			{
				links_following_after_split=0;
			}
		}
	}
	
}
if(current_formation == Formation.swap_lead)
{
    current_action = Action.neutral;
	current_movement = Movement.idle;
	if(keyboard_check_pressed(vk_left))
	{
		selected_character_index--;
		if(selected_character_index<0)
		{
			selected_character_index=ds_list_size(lead_links)-1;
		}
	}
	else if(keyboard_check_pressed(vk_right))
	{
		selected_character_index++;
		if(selected_character_index>ds_list_size(lead_links)-1)
		{
			selected_character_index=0;
		}
	}
	else if(keyboard_check_pressed(vk_space))
	{
		if(selected_character!=pointer_null)
		{
			scr_swapCharacters(selected_character);
		}
	}
}


ds_queue_enqueue(movement_queue, current_movement);
ds_queue_enqueue(action_queue, current_action);

/**/

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 4F521845
event_inherited();