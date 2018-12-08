/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3BA2E362
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43944EC5
/// @DnDArgument : "code" "if (local_vspeed < max_fall_speed) local_vspeed += local_grav;$(13_10)$(13_10)	local_hspeed = 0;$(13_10)if(place_meeting(x,y+1,obj_wall_blank))$(13_10){$(13_10)	isGrounded = true;$(13_10)	local_vspeed = 0;$(13_10)	double_jump_used = false;$(13_10)	if(current_stun_state == StunState.knockbackStun)$(13_10)	{$(13_10)		current_stun_state = StunState.normal;	$(13_10)		if(object_index == obj_test_jumper)$(13_10)		{$(13_10)			scr_setPathParams();$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	$(13_10)	if(place_meeting(x,y+1,template_moving_platform))$(13_10)	{$(13_10)		transform_parent = instance_place(x, y+1, template_moving_platform);$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		transform_parent = pointer_null;$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)	isGrounded = false;	$(13_10)}$(13_10)if(current_formation == Formation.assemble && current_assemble_state == AssembleState.holding_for_node)$(13_10){$(13_10)	current_movement=Movement.idle;$(13_10)	if(current_node.node_active)$(13_10)	{$(13_10)		current_assemble_state = AssembleState.move_to_node;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(current_formation == Formation.wait)$(13_10){$(13_10)	if(object_index != obj_player)$(13_10)	{$(13_10)		current_movement=Movement.idle;$(13_10)	}$(13_10)}$(13_10)$(13_10)//show_debug_message("Movement at platform link: " + string(current_movement));$(13_10)//	Movement switch statement. Changes sprite and direction based on the movement state.$(13_10)//show_debug_message(string(links_after)+ " " + string(current_movement));$(13_10)if(current_stun_state == StunState.normal)$(13_10){$(13_10)	switch (current_movement)$(13_10)	{$(13_10)	   case Movement.left:$(13_10)			//direction = 180;$(13_10)			//sprite_index = spr_ChainLeft;$(13_10)			local_hspeed = -speed_scale;$(13_10)			//local_vspeed = 0;$(13_10)			break;$(13_10)		case Movement.diagUpLeft:$(13_10)			//direction = 135;$(13_10)			//sprite_index = spr_ChainLeft;$(13_10)			local_hspeed = -speed_scale;$(13_10)			if(isGrounded||(!double_jump_used&&!jump_continuous))$(13_10)			{$(13_10)				if(!isGrounded)$(13_10)				{$(13_10)					double_jump_used = true;$(13_10)					instance_create_layer(x,y, "Instances", obj_double_jump_blast);$(13_10)				}$(13_10)				local_vspeed = -jump_speed;$(13_10)				jump_continuous = true;$(13_10)			}$(13_10)			break;$(13_10)		case Movement.up:$(13_10)			//direction = 90;$(13_10)			//sprite_index = spr_ChainUp;$(13_10)			local_hspeed = 0;$(13_10)			if(isGrounded||(!double_jump_used&&!jump_continuous))$(13_10)			{$(13_10)				if(!isGrounded)$(13_10)				{$(13_10)					double_jump_used = true;$(13_10)					instance_create_layer(x,y, "Instances", obj_double_jump_blast);$(13_10)				}$(13_10)				local_vspeed = -jump_speed;$(13_10)				jump_continuous = true;$(13_10)			}$(13_10)			break;$(13_10)		case Movement.diagUpRight:$(13_10)			//direction = 45;$(13_10)			//sprite_index = spr_ChainRight;$(13_10)			local_hspeed = speed_scale;$(13_10)			if(isGrounded||(!double_jump_used&&!jump_continuous))$(13_10)			{$(13_10)				if(!isGrounded)$(13_10)				{$(13_10)					double_jump_used = true;$(13_10)					instance_create_layer(x,y, "Instances", obj_double_jump_blast);$(13_10)				}$(13_10)				local_vspeed = -jump_speed;$(13_10)				jump_continuous = true;$(13_10)			}$(13_10)			break;$(13_10)		case Movement.right:$(13_10)			//direction = 0;$(13_10)			//sprite_index = spr_ChainRight;$(13_10)			local_hspeed = speed_scale;$(13_10)			//vspeed = 0;$(13_10)			break;$(13_10)		case Movement.diagDownRight:$(13_10)			//direction = 315;$(13_10)			//sprite_index = spr_ChainRight;$(13_10)			local_hspeed = speed_scale;$(13_10)			//vspeed = speed_scale;$(13_10)			break;$(13_10)		case Movement.down:$(13_10)			//direction = 270;$(13_10)			//sprite_index = spr_ChainDown;$(13_10)			local_hspeed = 0;$(13_10)			//vspeed = speed_scale;$(13_10)			break;$(13_10)		case Movement.diagDownLeft:$(13_10)			//direction = 225;$(13_10)			//sprite_index = spr_ChainLeft;$(13_10)			local_hspeed = -speed_scale;$(13_10)			//vspeed = speed_scale;$(13_10)			break;$(13_10)		case Movement.idle:		$(13_10)			local_hspeed = 0;$(13_10)			//vspeed = 0;$(13_10)		$(13_10)			break;$(13_10)	}$(13_10)}$(13_10)if(current_movement != Movement.up &&current_movement != Movement.diagUpLeft &&current_movement != Movement.diagUpRight)$(13_10){$(13_10)	jump_continuous = false;$(13_10)}$(13_10)$(13_10)if(!isGrounded)$(13_10){$(13_10)	transform_parent = pointer_null;$(13_10)}$(13_10)if(transform_parent != pointer_null)$(13_10){$(13_10)	local_vspeed += transform_parent.local_vspeed;	$(13_10)	local_hspeed += transform_parent.local_hspeed;	$(13_10)}$(13_10)$(13_10)if(place_meeting(x+local_hspeed,y,obj_wall_blank))$(13_10){$(13_10)	$(13_10)		//if(place_meeting(x,y,obj_wall_blank)) show_debug_message("ping s x: inside");$(13_10)	while(!place_meeting(x+sign(local_hspeed), y, obj_wall_blank))$(13_10)	{$(13_10)		x+=sign(local_hspeed);$(13_10)	}$(13_10)	local_hspeed = 0;$(13_10)	$(13_10)		//if(place_meeting(x,y,obj_wall_blank)) show_debug_message("ping f x: inside");$(13_10)}$(13_10)$(13_10)if(place_meeting(x,y+local_vspeed,obj_wall_blank))$(13_10){$(13_10)	if(local_vspeed<0)$(13_10)	{$(13_10)		//show_debug_message("ping: hit wall above");$(13_10)	}$(13_10)	//if(place_meeting(x,y,obj_wall_blank)) show_debug_message("ping s y: inside");$(13_10)	while(!place_meeting(x, y+sign(local_vspeed), obj_wall_blank))$(13_10)	{$(13_10)		y+=sign(local_vspeed);$(13_10)	}$(13_10)	local_vspeed = 0;$(13_10)	$(13_10)	//if(place_meeting(x,y,obj_wall_blank)) show_debug_message("ping f y: inside");$(13_10)}/*else if(instance_exists(template_moving_platform))$(13_10){$(13_10)	var nearest_platform = instance_nearest(x,y+local_vspeed,template_moving_platform);$(13_10)	if(place_meeting(x,y+local_vspeed+nearest_platform.vspeed,template_moving_platform))$(13_10)	{$(13_10)		show_debug_message("ping y");$(13_10)		while(!place_meeting(x, y+sign(local_vspeed)-nearest_platform.vspeed, template_moving_platform))$(13_10)		{$(13_10)			y+=sign(local_vspeed);$(13_10)		}$(13_10)		if(abs(local_vspeed) < abs(nearest_platform.vspeed))$(13_10)		{$(13_10)			local_vspeed +=nearest_platform.hspeed;$(13_10)		}$(13_10)	}$(13_10)}*/$(13_10)$(13_10)if(local_hspeed!=0)last_direction = sign(local_hspeed);$(13_10)x += local_hspeed;$(13_10)y += local_vspeed;$(13_10)"
if (local_vspeed < max_fall_speed) local_vspeed += local_grav;

	local_hspeed = 0;
if(place_meeting(x,y+1,obj_wall_blank))
{
	isGrounded = true;
	local_vspeed = 0;
	double_jump_used = false;
	if(current_stun_state == StunState.knockbackStun)
	{
		current_stun_state = StunState.normal;	
		if(object_index == obj_test_jumper)
		{
			scr_setPathParams();
		}
	}
	
	
	if(place_meeting(x,y+1,template_moving_platform))
	{
		transform_parent = instance_place(x, y+1, template_moving_platform);
	}
	else
	{
		transform_parent = pointer_null;
	}
}
else
{
	isGrounded = false;	
}
if(current_formation == Formation.assemble && current_assemble_state == AssembleState.holding_for_node)
{
	current_movement=Movement.idle;
	if(current_node.node_active)
	{
		current_assemble_state = AssembleState.move_to_node;
	}
}

if(current_formation == Formation.wait)
{
	if(object_index != obj_player)
	{
		current_movement=Movement.idle;
	}
}

//show_debug_message("Movement at platform link: " + string(current_movement));
//	Movement switch statement. Changes sprite and direction based on the movement state.
//show_debug_message(string(links_after)+ " " + string(current_movement));
if(current_stun_state == StunState.normal)
{
	switch (current_movement)
	{
	   case Movement.left:
			//direction = 180;
			//sprite_index = spr_ChainLeft;
			local_hspeed = -speed_scale;
			//local_vspeed = 0;
			break;
		case Movement.diagUpLeft:
			//direction = 135;
			//sprite_index = spr_ChainLeft;
			local_hspeed = -speed_scale;
			if(isGrounded||(!double_jump_used&&!jump_continuous))
			{
				if(!isGrounded)
				{
					double_jump_used = true;
					instance_create_layer(x,y, "Instances", obj_double_jump_blast);
				}
				local_vspeed = -jump_speed;
				jump_continuous = true;
			}
			break;
		case Movement.up:
			//direction = 90;
			//sprite_index = spr_ChainUp;
			local_hspeed = 0;
			if(isGrounded||(!double_jump_used&&!jump_continuous))
			{
				if(!isGrounded)
				{
					double_jump_used = true;
					instance_create_layer(x,y, "Instances", obj_double_jump_blast);
				}
				local_vspeed = -jump_speed;
				jump_continuous = true;
			}
			break;
		case Movement.diagUpRight:
			//direction = 45;
			//sprite_index = spr_ChainRight;
			local_hspeed = speed_scale;
			if(isGrounded||(!double_jump_used&&!jump_continuous))
			{
				if(!isGrounded)
				{
					double_jump_used = true;
					instance_create_layer(x,y, "Instances", obj_double_jump_blast);
				}
				local_vspeed = -jump_speed;
				jump_continuous = true;
			}
			break;
		case Movement.right:
			//direction = 0;
			//sprite_index = spr_ChainRight;
			local_hspeed = speed_scale;
			//vspeed = 0;
			break;
		case Movement.diagDownRight:
			//direction = 315;
			//sprite_index = spr_ChainRight;
			local_hspeed = speed_scale;
			//vspeed = speed_scale;
			break;
		case Movement.down:
			//direction = 270;
			//sprite_index = spr_ChainDown;
			local_hspeed = 0;
			//vspeed = speed_scale;
			break;
		case Movement.diagDownLeft:
			//direction = 225;
			//sprite_index = spr_ChainLeft;
			local_hspeed = -speed_scale;
			//vspeed = speed_scale;
			break;
		case Movement.idle:		
			local_hspeed = 0;
			//vspeed = 0;
		
			break;
	}
}
if(current_movement != Movement.up &&current_movement != Movement.diagUpLeft &&current_movement != Movement.diagUpRight)
{
	jump_continuous = false;
}

if(!isGrounded)
{
	transform_parent = pointer_null;
}
if(transform_parent != pointer_null)
{
	local_vspeed += transform_parent.local_vspeed;	
	local_hspeed += transform_parent.local_hspeed;	
}

if(place_meeting(x+local_hspeed,y,obj_wall_blank))
{
	
		//if(place_meeting(x,y,obj_wall_blank)) show_debug_message("ping s x: inside");
	while(!place_meeting(x+sign(local_hspeed), y, obj_wall_blank))
	{
		x+=sign(local_hspeed);
	}
	local_hspeed = 0;
	
		//if(place_meeting(x,y,obj_wall_blank)) show_debug_message("ping f x: inside");
}

if(place_meeting(x,y+local_vspeed,obj_wall_blank))
{
	if(local_vspeed<0)
	{
		//show_debug_message("ping: hit wall above");
	}
	//if(place_meeting(x,y,obj_wall_blank)) show_debug_message("ping s y: inside");
	while(!place_meeting(x, y+sign(local_vspeed), obj_wall_blank))
	{
		y+=sign(local_vspeed);
	}
	local_vspeed = 0;
	
	//if(place_meeting(x,y,obj_wall_blank)) show_debug_message("ping f y: inside");
}/*else if(instance_exists(template_moving_platform))
{
	var nearest_platform = instance_nearest(x,y+local_vspeed,template_moving_platform);
	if(place_meeting(x,y+local_vspeed+nearest_platform.vspeed,template_moving_platform))
	{
		show_debug_message("ping y");
		while(!place_meeting(x, y+sign(local_vspeed)-nearest_platform.vspeed, template_moving_platform))
		{
			y+=sign(local_vspeed);
		}
		if(abs(local_vspeed) < abs(nearest_platform.vspeed))
		{
			local_vspeed +=nearest_platform.hspeed;
		}
	}
}*/

if(local_hspeed!=0)last_direction = sign(local_hspeed);
x += local_hspeed;
y += local_vspeed;
/**/

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CA4F28A
/// @DnDArgument : "var" "isGrounded"
/// @DnDArgument : "value" "true"
if(isGrounded == true)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 732EEB7D
	/// @DnDDisabled : 1
	/// @DnDParent : 2CA4F28A
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1CC956A0
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 46A1A4B8
	/// @DnDDisabled : 1
	/// @DnDParent : 1CC956A0
	/// @DnDArgument : "colour" "$FF0000FF"
}