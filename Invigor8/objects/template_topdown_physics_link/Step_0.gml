/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 0A295256
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6590608C
/// @DnDArgument : "code" "$(13_10)$(13_10)//	Movement switch statement. Changes sprite and direction based on the movement state.$(13_10)switch (current_movement)$(13_10){$(13_10)   case Movement.left:$(13_10)		//direction = 180;$(13_10)		//sprite_index = spr_ChainLeft;$(13_10)		hspeed = -speed_scale;$(13_10)		vspeed = 0;$(13_10)		break;$(13_10)	case Movement.diagUpLeft:$(13_10)		//direction = 135;$(13_10)		//sprite_index = spr_ChainLeft;$(13_10)		hspeed = -speed_scale;$(13_10)		vspeed = -speed_scale;$(13_10)		break;$(13_10)	case Movement.up:$(13_10)		//direction = 90;$(13_10)		//sprite_index = spr_ChainUp;$(13_10)		hspeed = 0;$(13_10)		vspeed = -speed_scale;$(13_10)		break;$(13_10)	case Movement.diagUpRight:$(13_10)		//direction = 45;$(13_10)		//sprite_index = spr_ChainRight;$(13_10)		hspeed = speed_scale;$(13_10)		vspeed = -speed_scale;$(13_10)		break;$(13_10)	case Movement.right:$(13_10)		//direction = 0;$(13_10)		//sprite_index = spr_ChainRight;$(13_10)		hspeed = speed_scale;$(13_10)		vspeed = 0;$(13_10)		break;$(13_10)	case Movement.diagDownRight:$(13_10)		//direction = 315;$(13_10)		//sprite_index = spr_ChainRight;$(13_10)		hspeed = speed_scale;$(13_10)		vspeed = speed_scale;$(13_10)		break;$(13_10)	case Movement.down:$(13_10)		//direction = 270;$(13_10)		//sprite_index = spr_ChainDown;$(13_10)		hspeed = 0;$(13_10)		vspeed = speed_scale;$(13_10)		break;$(13_10)	case Movement.diagDownLeft:$(13_10)		//direction = 225;$(13_10)		//sprite_index = spr_ChainLeft;$(13_10)		hspeed = -speed_scale;$(13_10)		vspeed = speed_scale;$(13_10)		break;$(13_10)	case Movement.idle:		$(13_10)		hspeed = 0;$(13_10)		vspeed = 0;$(13_10)		$(13_10)		break;$(13_10)$(13_10)}$(13_10)$(13_10)"


//	Movement switch statement. Changes sprite and direction based on the movement state.
switch (current_movement)
{
   case Movement.left:
		//direction = 180;
		//sprite_index = spr_ChainLeft;
		hspeed = -speed_scale;
		vspeed = 0;
		break;
	case Movement.diagUpLeft:
		//direction = 135;
		//sprite_index = spr_ChainLeft;
		hspeed = -speed_scale;
		vspeed = -speed_scale;
		break;
	case Movement.up:
		//direction = 90;
		//sprite_index = spr_ChainUp;
		hspeed = 0;
		vspeed = -speed_scale;
		break;
	case Movement.diagUpRight:
		//direction = 45;
		//sprite_index = spr_ChainRight;
		hspeed = speed_scale;
		vspeed = -speed_scale;
		break;
	case Movement.right:
		//direction = 0;
		//sprite_index = spr_ChainRight;
		hspeed = speed_scale;
		vspeed = 0;
		break;
	case Movement.diagDownRight:
		//direction = 315;
		//sprite_index = spr_ChainRight;
		hspeed = speed_scale;
		vspeed = speed_scale;
		break;
	case Movement.down:
		//direction = 270;
		//sprite_index = spr_ChainDown;
		hspeed = 0;
		vspeed = speed_scale;
		break;
	case Movement.diagDownLeft:
		//direction = 225;
		//sprite_index = spr_ChainLeft;
		hspeed = -speed_scale;
		vspeed = speed_scale;
		break;
	case Movement.idle:		
		hspeed = 0;
		vspeed = 0;
		
		break;

}