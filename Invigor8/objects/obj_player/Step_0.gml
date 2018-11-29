/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28877585
/// @DnDArgument : "code" "if(keyboard_check(vk_left)|| gamepad_axis_value(4,0) < -0.1)$(13_10){$(13_10)	if(keyboard_check(vk_up)|| gamepad_axis_value(4,1) < -0.1 || gamepad_button_check_pressed(4,0))$(13_10)	{$(13_10)		//Character moves up and left$(13_10)		current_movement = Movement.diagUpLeft;$(13_10)		$(13_10)	}$(13_10)	else if(keyboard_check(vk_down)|| gamepad_axis_value(4,1) > 0.1)$(13_10)	{$(13_10)		//Character moves down and left$(13_10)		current_movement = Movement.diagDownLeft;$(13_10)		$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//Character left		$(13_10)		current_movement = Movement.left;$(13_10)	}$(13_10)}$(13_10)//Right Press checks for diagonals.$(13_10)else if(keyboard_check(vk_right)|| gamepad_axis_value(4,0) > 0.1)$(13_10){$(13_10)	if(keyboard_check(vk_up)|| gamepad_axis_value(4,1) < -0.1 || gamepad_button_check_pressed(4,0))$(13_10)	{$(13_10)		//Character moves up and right$(13_10)		current_movement = Movement.diagUpRight;$(13_10)		$(13_10)	}$(13_10)	else if(keyboard_check(vk_down)|| gamepad_axis_value(4,1) > 0.1)$(13_10)	{$(13_10)		//Character moves down and right$(13_10)		current_movement = Movement.diagDownRight;$(13_10)		$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//Character moves right$(13_10)		current_movement = Movement.right;$(13_10)		$(13_10)	}$(13_10)}$(13_10)else if(keyboard_check(vk_up) || gamepad_axis_value(4,1) < -0.1 || gamepad_button_check_pressed(4,0))$(13_10){$(13_10)	//Character moves up$(13_10)		current_movement = Movement.up;$(13_10)	$(13_10)}$(13_10)else if(keyboard_check(vk_down)|| gamepad_axis_value(4,0) > 0.1)$(13_10){$(13_10)	//Character moves down$(13_10)		current_movement = Movement.down;$(13_10)	$(13_10)}$(13_10)else$(13_10){$(13_10)	//Character does not move$(13_10)	current_movement = Movement.idle;$(13_10)}$(13_10)$(13_10)if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(4,3))$(13_10){$(13_10)	$(13_10)	current_action = Action.attempt_grab;$(13_10)	/*$(13_10)	switch(current_action)$(13_10)	{$(13_10)		case Action.neutral:$(13_10)		current_action = Action.attempt_grab;$(13_10)			break;$(13_10)		case Action.carrying:$(13_10)		current_action = Action.attempt_grab;$(13_10)			break;$(13_10)	}$(13_10)	*/$(13_10)}$(13_10)else if(keyboard_check_pressed(vk_alt)|| gamepad_button_check_pressed(4,2))$(13_10){$(13_10)		current_action = Action.attempt_drop;$(13_10)	/*if(current_action == Action.carrying)$(13_10)	{$(13_10)		current_action = Action.attempt_drop;$(13_10)	}*/$(13_10)}$(13_10)else$(13_10){$(13_10)	current_action = Action.neutral;	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)//show_debug_message("A0: " + string(gamepad_axis_value(4,0))+" A1: " + string(gamepad_axis_value(4,1))+" A2: " + string(gamepad_axis_value(4,2)));$(13_10)$(13_10)$(13_10)if(current_formation == Formation.switch_prep)$(13_10){$(13_10)    current_action = Action.neutral;$(13_10)	current_movement = Movement.idle;$(13_10)	if(keyboard_check_pressed(vk_up))$(13_10)	{$(13_10)		formation_selection--;$(13_10)		if(formation_selection<0)$(13_10)		{$(13_10)			formation_selection=2;$(13_10)		}$(13_10)	}$(13_10)	else if(keyboard_check_pressed(vk_down))$(13_10)	{$(13_10)		formation_selection++;$(13_10)		if(formation_selection>2)$(13_10)		{$(13_10)			formation_selection=0;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)ds_queue_enqueue(movement_queue, current_movement);$(13_10)ds_queue_enqueue(action_queue, current_action);"
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
		if(formation_selection<0)
		{
			formation_selection=2;
		}
	}
	else if(keyboard_check_pressed(vk_down))
	{
		formation_selection++;
		if(formation_selection>2)
		{
			formation_selection=0;
		}
	}
	
}


ds_queue_enqueue(movement_queue, current_movement);
ds_queue_enqueue(action_queue, current_action);/**/

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 4F521845
event_inherited();