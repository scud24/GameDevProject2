/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 117279F9
/// @DnDArgument : "code" "current_carry_item = pointer_null;$(13_10)grab_distance = 50;$(13_10)child_link = pointer_null;$(13_10)current_sprite_state = HeroState.idleRight;$(13_10)animation_in_progress = false;$(13_10)last_direction = 1;$(13_10)$(13_10)enum HeroState$(13_10){$(13_10)		idleLeft,$(13_10)		idleRight,$(13_10)		moveLeft,$(13_10)		moveRight,$(13_10)		jumpLeft,$(13_10)		jumpRight,$(13_10)		carryLeft,$(13_10)		carryRight,$(13_10)		carryMoveLeft,$(13_10)		carryMoveRight,$(13_10)		grabLeft,$(13_10)		grabRight,$(13_10)		dropLeft,$(13_10)		dropRight$(13_10)}$(13_10)"
current_carry_item = pointer_null;
grab_distance = 50;
child_link = pointer_null;
current_sprite_state = HeroState.idleRight;
animation_in_progress = false;
last_direction = 1;

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
		dropRight
}

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 0D2B8A8B
event_inherited();