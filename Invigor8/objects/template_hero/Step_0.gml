/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 33797ACE
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 435FCACD
/// @DnDArgument : "code" "$(13_10)$(13_10)switch(current_action)$(13_10){$(13_10)	case Action.attempt_grab:$(13_10)		respawner_target = instance_nearest(x,y, obj_safe_o_matic);$(13_10)		if(distance_to_object(respawner_target) < grab_distance)//If item is in grab range$(13_10)		{$(13_10)			with(respawner_target)$(13_10)			{$(13_10)				event_user(0);$(13_10)			}$(13_10)		}$(13_10)		spawner_target = instance_nearest(x,y,obj_carrytarget_spawner);$(13_10)		if(distance_to_object(spawner_target) < grab_distance)//If item is in grab range$(13_10)		{$(13_10)			with(spawner_target)$(13_10)			{$(13_10)				event_user(0);$(13_10)			}$(13_10)		}$(13_10)		carry_target = instance_nearest(x,y,template_carry_target);$(13_10)		if(distance_to_object(carry_target) < grab_distance)//If item is in grab range$(13_10)		{$(13_10)			if(carry_target.transform_parent == pointer_null)//If item is not already being carried$(13_10)			{$(13_10)				grab_item();$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			current_action = Action.neutral;$(13_10)			if(current_carry_item != pointer_null)$(13_10)			{$(13_10)				//set sprite state$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				//set sprite state$(13_10)			}$(13_10)		}$(13_10)	//check if sprite is in grab state and set it if not$(13_10)	//if not carrying item attempt to grab one$(13_10)		break;$(13_10)	case Action.attempt_drop:	$(13_10)		carry_target = pointer_null;$(13_10)		if(current_carry_item != pointer_null)$(13_10)		{$(13_10)				with (current_carry_item)$(13_10)				{$(13_10)					transform_parent = pointer_null;$(13_10)					xoffset = 0;$(13_10)					yoffset = 0;$(13_10)					current_angle = normal_angle;$(13_10)				}$(13_10)				current_carry_item = pointer_null;$(13_10)		}$(13_10)		current_action = Action.neutral;$(13_10)	//check if sprite is in drop state and set it if not$(13_10)	//if carrying item drop it$(13_10)		break;$(13_10)}$(13_10)//$(13_10)if(current_action == Action.neutral && current_movement == Movement.idle)$(13_10){$(13_10)	if(current_carry_item == pointer_null)$(13_10)	{$(13_10)		if(last_direction >= 0) current_sprite_state = HeroState.idleRight;$(13_10)		else current_sprite_state = HeroState.idleLeft;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		if(last_direction >= 0) current_sprite_state = HeroState.carryRight;$(13_10)		else current_sprite_state = HeroState.carryLeft;$(13_10)	}$(13_10)}$(13_10)else if(current_action == Action.neutral && !isGrounded && current_carry_item == pointer_null)$(13_10){$(13_10)	if(last_direction >= 0) current_sprite_state = HeroState.jumpRight;$(13_10)	else current_sprite_state = HeroState.jumpLeft;$(13_10)}$(13_10)else if(current_action == Action.attempt_grab)$(13_10){$(13_10)	if(last_direction >= 0) current_sprite_state = HeroState.grabRight;$(13_10)	else current_sprite_state = HeroState.grabLeft;$(13_10)}$(13_10)else if(current_action == Action.attempt_drop)$(13_10){$(13_10)	if(last_direction >= 0) current_sprite_state = HeroState.dropRight;$(13_10)	else current_sprite_state = HeroState.dropLeft;$(13_10)}$(13_10)else if(current_action == Action.neutral && current_movement != Movement.idle && local_hspeed !=0)$(13_10){$(13_10)	if(current_carry_item == pointer_null)$(13_10)	{$(13_10)		//show_debug_message("local_hspeed: " + string(local_hspeed) +" local_vspeed: " + string(local_vspeed) +" movestate: " + string(current_movement));$(13_10)		if(last_direction >= 0) current_sprite_state = HeroState.moveRight;$(13_10)		else current_sprite_state = HeroState.moveLeft;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		if(last_direction >= 0) current_sprite_state = HeroState.carryMoveRight;$(13_10)		else current_sprite_state = HeroState.carryMoveLeft;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(!animation_in_progress)$(13_10){$(13_10)	$(13_10)	switch(current_sprite_state)$(13_10)	{$(13_10)		case HeroState.idleLeft:$(13_10)		sprite_index = spr_hero_idle;$(13_10)		image_xscale = -1;$(13_10)		break;$(13_10)		case HeroState.idleRight:$(13_10)		sprite_index = spr_hero_idle;$(13_10)		image_xscale = 1;$(13_10)		break;$(13_10)		case HeroState.moveLeft:$(13_10)		sprite_index = spr_hero_move;$(13_10)		image_xscale = -1;$(13_10)		break;$(13_10)		case HeroState.moveRight:$(13_10)		sprite_index = spr_hero_move;$(13_10)		image_xscale = 1;$(13_10)		break;$(13_10)		case HeroState.jumpLeft:$(13_10)		sprite_index = spr_hero_jump;$(13_10)		image_xscale = -1;$(13_10)		break;$(13_10)		case HeroState.jumpRight:$(13_10)		sprite_index = spr_hero_jump;$(13_10)		image_xscale = 1;$(13_10)		break;$(13_10)		case HeroState.carryLeft:$(13_10)		sprite_index = spr_hero_carry;$(13_10)		image_xscale = -1;$(13_10)		break;$(13_10)		case HeroState.carryRight:$(13_10)		sprite_index = spr_hero_carry;$(13_10)		image_xscale = 1;$(13_10)		break;$(13_10)		case HeroState.carryMoveLeft:$(13_10)		sprite_index = spr_hero_carry_move;$(13_10)		image_xscale = -1;$(13_10)		break;$(13_10)		case HeroState.carryMoveRight:$(13_10)		sprite_index = spr_hero_carry_move;$(13_10)		image_xscale = 1;$(13_10)		break;$(13_10)		case HeroState.grabLeft:$(13_10)		sprite_index = spr_hero_grab;$(13_10)		image_xscale = -1;$(13_10)		animation_in_progress = true;$(13_10)		break;$(13_10)		case HeroState.grabRight:$(13_10)		sprite_index = spr_hero_grab;$(13_10)		image_xscale = 1;$(13_10)		animation_in_progress = true;$(13_10)		break;$(13_10)		case HeroState.dropLeft:$(13_10)		sprite_index = spr_hero_drop;$(13_10)		image_xscale = -1;$(13_10)		animation_in_progress = true;$(13_10)		break;$(13_10)		case HeroState.dropRight:$(13_10)		sprite_index = spr_hero_drop;$(13_10)		image_xscale = 1;$(13_10)		animation_in_progress = true;$(13_10)		break;$(13_10)	}$(13_10)}"


switch(current_action)
{
	case Action.attempt_grab:
		respawner_target = instance_nearest(x,y, obj_safe_o_matic);
		if(distance_to_object(respawner_target) < grab_distance)//If item is in grab range
		{
			with(respawner_target)
			{
				event_user(0);
			}
		}
		spawner_target = instance_nearest(x,y,obj_carrytarget_spawner);
		if(distance_to_object(spawner_target) < grab_distance)//If item is in grab range
		{
			with(spawner_target)
			{
				event_user(0);
			}
		}
		carry_target = instance_nearest(x,y,template_carry_target);
		if(distance_to_object(carry_target) < grab_distance)//If item is in grab range
		{
			if(carry_target.transform_parent == pointer_null)//If item is not already being carried
			{
				grab_item();
			}
		}
		else
		{
			current_action = Action.neutral;
			if(current_carry_item != pointer_null)
			{
				//set sprite state
			}
			else
			{
				//set sprite state
			}
		}
	//check if sprite is in grab state and set it if not
	//if not carrying item attempt to grab one
		break;
	case Action.attempt_drop:	
		carry_target = pointer_null;
		if(current_carry_item != pointer_null)
		{
				with (current_carry_item)
				{
					transform_parent = pointer_null;
					xoffset = 0;
					yoffset = 0;
					current_angle = normal_angle;
				}
				current_carry_item = pointer_null;
		}
		current_action = Action.neutral;
	//check if sprite is in drop state and set it if not
	//if carrying item drop it
		break;
}
//
if(current_action == Action.neutral && current_movement == Movement.idle)
{
	if(current_carry_item == pointer_null)
	{
		if(last_direction >= 0) current_sprite_state = HeroState.idleRight;
		else current_sprite_state = HeroState.idleLeft;
	}
	else
	{
		if(last_direction >= 0) current_sprite_state = HeroState.carryRight;
		else current_sprite_state = HeroState.carryLeft;
	}
}
else if(current_action == Action.neutral && !isGrounded && current_carry_item == pointer_null)
{
	if(last_direction >= 0) current_sprite_state = HeroState.jumpRight;
	else current_sprite_state = HeroState.jumpLeft;
}
else if(current_action == Action.attempt_grab)
{
	if(last_direction >= 0) current_sprite_state = HeroState.grabRight;
	else current_sprite_state = HeroState.grabLeft;
}
else if(current_action == Action.attempt_drop)
{
	if(last_direction >= 0) current_sprite_state = HeroState.dropRight;
	else current_sprite_state = HeroState.dropLeft;
}
else if(current_action == Action.neutral && current_movement != Movement.idle && local_hspeed !=0)
{
	if(current_carry_item == pointer_null)
	{
		//show_debug_message("local_hspeed: " + string(local_hspeed) +" local_vspeed: " + string(local_vspeed) +" movestate: " + string(current_movement));
		if(last_direction >= 0) current_sprite_state = HeroState.moveRight;
		else current_sprite_state = HeroState.moveLeft;
	}
	else
	{
		if(last_direction >= 0) current_sprite_state = HeroState.carryMoveRight;
		else current_sprite_state = HeroState.carryMoveLeft;
	}
}

if(!animation_in_progress)
{
	
	switch(current_sprite_state)
	{
		case HeroState.idleLeft:
		sprite_index = spr_hero_idle;
		image_xscale = -1;
		break;
		case HeroState.idleRight:
		sprite_index = spr_hero_idle;
		image_xscale = 1;
		break;
		case HeroState.moveLeft:
		sprite_index = spr_hero_move;
		image_xscale = -1;
		break;
		case HeroState.moveRight:
		sprite_index = spr_hero_move;
		image_xscale = 1;
		break;
		case HeroState.jumpLeft:
		sprite_index = spr_hero_jump;
		image_xscale = -1;
		break;
		case HeroState.jumpRight:
		sprite_index = spr_hero_jump;
		image_xscale = 1;
		break;
		case HeroState.carryLeft:
		sprite_index = spr_hero_carry;
		image_xscale = -1;
		break;
		case HeroState.carryRight:
		sprite_index = spr_hero_carry;
		image_xscale = 1;
		break;
		case HeroState.carryMoveLeft:
		sprite_index = spr_hero_carry_move;
		image_xscale = -1;
		break;
		case HeroState.carryMoveRight:
		sprite_index = spr_hero_carry_move;
		image_xscale = 1;
		break;
		case HeroState.grabLeft:
		sprite_index = spr_hero_grab;
		image_xscale = -1;
		animation_in_progress = true;
		break;
		case HeroState.grabRight:
		sprite_index = spr_hero_grab;
		image_xscale = 1;
		animation_in_progress = true;
		break;
		case HeroState.dropLeft:
		sprite_index = spr_hero_drop;
		image_xscale = -1;
		animation_in_progress = true;
		break;
		case HeroState.dropRight:
		sprite_index = spr_hero_drop;
		image_xscale = 1;
		animation_in_progress = true;
		break;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6C5AF377
/// @DnDDisabled : 1
/// @DnDArgument : "var" "current_action"
/// @DnDArgument : "value" "Action.neutral"
/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4C28A73D
/// @DnDDisabled : 1
/// @DnDParent : 6C5AF377

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F13958C
/// @DnDDisabled : 1
/// @DnDArgument : "var" "current_action"
/// @DnDArgument : "value" "Action.attempt_grab"
/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 415AFC26
/// @DnDDisabled : 1
/// @DnDParent : 4F13958C
/// @DnDArgument : "colour" "$FF0000FF"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FDA3A2D
/// @DnDDisabled : 1
/// @DnDArgument : "var" "current_action"
/// @DnDArgument : "value" "Action.attempt_drop"
/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4AB66E86
/// @DnDDisabled : 1
/// @DnDParent : 4FDA3A2D
/// @DnDArgument : "colour" "$FF00FFFF"