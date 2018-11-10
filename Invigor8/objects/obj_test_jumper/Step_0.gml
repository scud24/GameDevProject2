/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 586E2BFA
/// @DnDArgument : "code" "current_movement = Movement.idle;$(13_10)follow_started = true;$(13_10)$(13_10)if(place_meeting(x,y+2,obj_wall_blank))$(13_10){$(13_10)	isGrounded = true;$(13_10)}$(13_10)if(isGrounded && jump_started)$(13_10){$(13_10)	with (jump_target) event_user(0);$(13_10)	jump_target = pointer_null;	$(13_10)	show_debug_message("Set set to null: " + string(jump_target));$(13_10)	jump_started = false;$(13_10)}$(13_10)if(jump_target != pointer_null)$(13_10){$(13_10)	$(13_10)	if(move_type = "jump")$(13_10)	{$(13_10)		$(13_10)		if(local_vspeed >= 0)$(13_10)		{$(13_10)			//var t_double_jump = abs(jump_speed/local_grav);$(13_10)			//var y_double_jump = y -(local_vspeed)*t_double_jump + 0.5*(local_grav)*(t_double_jump*t_double_jump);$(13_10)			var t_final = abs((jump_target.x - x)/speed_scale);$(13_10)			var y_final = y +(-local_vspeed)*t_final + 0.5*(local_grav)*(t_final*t_final);	$(13_10)			if(y_final > jump_target.y)$(13_10)			{		$(13_10)				if (!double_jump_used)$(13_10)				{$(13_10)					jump_continuous = false;	$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					if(!dj_tried)$(13_10)					{$(13_10)						show_debug_message("Tried to jump out of double jump range.");$(13_10)						dj_tried = true;$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	$(13_10)		//show_debug_message("Jumping- " + string(ds_queue_size(movement_queue)));$(13_10)		if(abs((jump_target.x-x)/local_hspeed) < 1)$(13_10)		{$(13_10)			x = jump_target.x;$(13_10)		}$(13_10)		if(x<jump_target.x) current_movement = Movement.diagUpRight;$(13_10)		else if(x>jump_target.x) current_movement = Movement.diagUpLeft;$(13_10)		else current_movement = Movement.up;$(13_10)		//show_debug_message("Movement set to: " + string(movement));$(13_10)	$(13_10)		if(!isGrounded)$(13_10)		{$(13_10)			jump_started = true;$(13_10)		}$(13_10)		else{$(13_10)			var t_double_jump = abs(jump_speed/local_grav);$(13_10)			//show_debug_message("t_double_jump: " + string(t_double_jump));$(13_10)			var y_double_jump = y +(-jump_speed)*t_double_jump + 0.5*(local_grav)*(t_double_jump*t_double_jump);$(13_10)			$(13_10)			//show_debug_message("v*t dj: " + string((-jump_speed)*t_double_jump));	$(13_10)			//show_debug_message("0.5at^2 dj: " + string(0.5*(local_grav)*(t_double_jump*t_double_jump)));$(13_10)		$(13_10)			//show_debug_message("y_double_jump: " + string(y_double_jump));$(13_10)			var x_double_jump_offset = speed_scale * t_double_jump;$(13_10)			//show_debug_message("dx_double_jump_offset: " + string(abs(x_double_jump_offset)) + " dx_target: " + string(abs(jump_target.x-x))+ " dx_target-djo: " + string(abs(jump_target.x-x)-x_double_jump_offset));$(13_10)			if(abs(x_double_jump_offset) < abs(jump_target.x-x))$(13_10)			{		$(13_10)				var t_final = (abs(jump_target.x-x)-x_double_jump_offset)/speed_scale;$(13_10)				show_debug_message("1: " + string(abs(jump_target.x -x)-x_double_jump_offset) + " 2: " + string((abs(jump_target.x-x)-x_double_jump_offset)/speed_scale));$(13_10)				$(13_10)				show_debug_message("t_final: " + string(t_final));$(13_10)				var y_final = y_double_jump +(-jump_speed)*t_final + 0.5*(local_grav)*(t_final*t_final);		$(13_10)				//show_debug_message("v*t: " + string((-jump_speed)*t_final));	$(13_10)				//show_debug_message("0.5at^2: " + string(0.5*(local_grav)*(t_final*t_final)));$(13_10)				if(y_final > jump_target.y)$(13_10)				{		$(13_10)					show_debug_message("Jump target too far. Jump cancelled");$(13_10)					show_debug_message("Target y: " + string(jump_target.y) + " y_final: " + string(y_final));$(13_10)					with (jump_target) event_user(1);$(13_10)					jump_target = pointer_null;$(13_10)					current_movement = Movement.idle;$(13_10)				}$(13_10)			}$(13_10)			else{			$(13_10)				//show_debug_message("Jump target is good");$(13_10)				with (jump_target) event_user(2);$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		if(abs((jump_target.x-x)/local_hspeed) < 1)$(13_10)		{$(13_10)			x = jump_target.x;$(13_10)		}$(13_10)		if(x<jump_target.x) current_movement = Movement.right;$(13_10)		else if(x>jump_target.x) current_movement = Movement.left;$(13_10)		else show_debug_message("Error: at node?");$(13_10)		if(!place_meeting(x+local_hspeed,y+2,obj_wall_blank))$(13_10)		{$(13_10)			$(13_10)			if(x<jump_target.x) current_movement = Movement.diagUpRight;$(13_10)			else if(x>jump_target.x) current_movement = Movement.diagUpLeft;$(13_10)			else current_movement = Movement.up;			$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)//ds_queue_enqueue(movement_queue, movement);$(13_10)current_action = Action.neutral;$(13_10)//ds_queue_enqueue(action_queue, current_action);$(13_10)//show_debug_message("Movement queue " + string(ds_queue_size(movement_queue)));$(13_10)"
current_movement = Movement.idle;
follow_started = true;

if(place_meeting(x,y+2,obj_wall_blank))
{
	isGrounded = true;
}
if(isGrounded && jump_started)
{
	with (jump_target) event_user(0);
	jump_target = pointer_null;	
	show_debug_message("Set set to null: " + string(jump_target));
	jump_started = false;
}
if(jump_target != pointer_null)
{
	
	if(move_type = "jump")
	{
		
		if(local_vspeed >= 0)
		{
			//var t_double_jump = abs(jump_speed/local_grav);
			//var y_double_jump = y -(local_vspeed)*t_double_jump + 0.5*(local_grav)*(t_double_jump*t_double_jump);
			var t_final = abs((jump_target.x - x)/speed_scale);
			var y_final = y +(-local_vspeed)*t_final + 0.5*(local_grav)*(t_final*t_final);	
			if(y_final > jump_target.y)
			{		
				if (!double_jump_used)
				{
					jump_continuous = false;	
				}
				else
				{
					if(!dj_tried)
					{
						show_debug_message("Tried to jump out of double jump range.");
						dj_tried = true;
					}
				}
			}
		}
	
		//show_debug_message("Jumping- " + string(ds_queue_size(movement_queue)));
		if(abs((jump_target.x-x)/local_hspeed) < 1)
		{
			x = jump_target.x;
		}
		if(x<jump_target.x) current_movement = Movement.diagUpRight;
		else if(x>jump_target.x) current_movement = Movement.diagUpLeft;
		else current_movement = Movement.up;
		//show_debug_message("Movement set to: " + string(movement));
	
		if(!isGrounded)
		{
			jump_started = true;
		}
		else{
			var t_double_jump = abs(jump_speed/local_grav);
			//show_debug_message("t_double_jump: " + string(t_double_jump));
			var y_double_jump = y +(-jump_speed)*t_double_jump + 0.5*(local_grav)*(t_double_jump*t_double_jump);
			
			//show_debug_message("v*t dj: " + string((-jump_speed)*t_double_jump));	
			//show_debug_message("0.5at^2 dj: " + string(0.5*(local_grav)*(t_double_jump*t_double_jump)));
		
			//show_debug_message("y_double_jump: " + string(y_double_jump));
			var x_double_jump_offset = speed_scale * t_double_jump;
			//show_debug_message("dx_double_jump_offset: " + string(abs(x_double_jump_offset)) + " dx_target: " + string(abs(jump_target.x-x))+ " dx_target-djo: " + string(abs(jump_target.x-x)-x_double_jump_offset));
			if(abs(x_double_jump_offset) < abs(jump_target.x-x))
			{		
				var t_final = (abs(jump_target.x-x)-x_double_jump_offset)/speed_scale;
				show_debug_message("1: " + string(abs(jump_target.x -x)-x_double_jump_offset) + " 2: " + string((abs(jump_target.x-x)-x_double_jump_offset)/speed_scale));
				
				show_debug_message("t_final: " + string(t_final));
				var y_final = y_double_jump +(-jump_speed)*t_final + 0.5*(local_grav)*(t_final*t_final);		
				//show_debug_message("v*t: " + string((-jump_speed)*t_final));	
				//show_debug_message("0.5at^2: " + string(0.5*(local_grav)*(t_final*t_final)));
				if(y_final > jump_target.y)
				{		
					show_debug_message("Jump target too far. Jump cancelled");
					show_debug_message("Target y: " + string(jump_target.y) + " y_final: " + string(y_final));
					with (jump_target) event_user(1);
					jump_target = pointer_null;
					current_movement = Movement.idle;
				}
			}
			else{			
				//show_debug_message("Jump target is good");
				with (jump_target) event_user(2);
			}
		}
	}
	else
	{
		if(abs((jump_target.x-x)/local_hspeed) < 1)
		{
			x = jump_target.x;
		}
		if(x<jump_target.x) current_movement = Movement.right;
		else if(x>jump_target.x) current_movement = Movement.left;
		else show_debug_message("Error: at node?");
		if(!place_meeting(x+local_hspeed,y+2,obj_wall_blank))
		{
			
			if(x<jump_target.x) current_movement = Movement.diagUpRight;
			else if(x>jump_target.x) current_movement = Movement.diagUpLeft;
			else current_movement = Movement.up;			
		}
	}
}


//ds_queue_enqueue(movement_queue, movement);
current_action = Action.neutral;
//ds_queue_enqueue(action_queue, current_action);
//show_debug_message("Movement queue " + string(ds_queue_size(movement_queue)));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29447756
/// @DnDArgument : "var" "jump_target"
/// @DnDArgument : "value" "pointer_null"
if(jump_target == pointer_null)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5F6C3ED9
	/// @DnDParent : 29447756
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 47A9A40B
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 33992A95
	/// @DnDParent : 47A9A40B
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2F1B94E6
event_inherited();