/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 117279F9
/// @DnDArgument : "code" "current_carry_item = pointer_null;$(13_10)grab_distance = 50;$(13_10)child_link = pointer_null;$(13_10)current_sprite_state = HeroState.idleRight;$(13_10)animation_in_progress = false;$(13_10)last_direction = 1;$(13_10)current_stun_state = StunState.normal;$(13_10)$(13_10)enum HeroState$(13_10){$(13_10)		idleLeft,$(13_10)		idleRight,$(13_10)		moveLeft,$(13_10)		moveRight,$(13_10)		jumpLeft,$(13_10)		jumpRight,$(13_10)		carryLeft,$(13_10)		carryRight,$(13_10)		carryMoveLeft,$(13_10)		carryMoveRight,$(13_10)		grabLeft,$(13_10)		grabRight,$(13_10)		dropLeft,$(13_10)		dropRight,$(13_10)		knockbackStunLeft,$(13_10)		knockbackStunRight$(13_10)}$(13_10)enum StunState$(13_10){$(13_10)		normal,$(13_10)		knockbackStun$(13_10)}$(13_10)$(13_10)$(13_10)jump_sound = snd_jump;$(13_10)hit_sound = snd_hit;"
current_carry_item = pointer_null;
grab_distance = 50;
child_link = pointer_null;
current_sprite_state = HeroState.idleRight;
animation_in_progress = false;
last_direction = 1;
current_stun_state = StunState.normal;

enum HeroState
{
		idleLeft,
		idleRight,
		moveLeft,
		moveRight,
		jumpLeft,
		jumpRight,
		carryLeft,
		carryRight,
		carryMoveLeft,
		carryMoveRight,
		grabLeft,
		grabRight,
		dropLeft,
		dropRight,
		knockbackStunLeft,
		knockbackStunRight
}
enum StunState
{
		normal,
		knockbackStun
}


jump_sound = snd_jump;
hit_sound = snd_hit;

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 0D2B8A8B
event_inherited();