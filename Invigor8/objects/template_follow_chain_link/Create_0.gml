/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1B01A496
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "per_link_buffer"
per_link_buffer = 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1612AAFB
/// @DnDArgument : "var" "buffer_cycles"
buffer_cycles = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5A04EC7A
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "follow_started"
follow_started = false;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D9384D8
/// @DnDArgument : "code" "enum Movement $(13_10){$(13_10)	up,$(13_10)	diagUpLeft,$(13_10)	diagUpRight,$(13_10)	down,$(13_10)	diagDownLeft,$(13_10)	diagDownRight,$(13_10)	left,$(13_10)	right,$(13_10)	idle$(13_10)}$(13_10)enum Action$(13_10){$(13_10)	neutral,$(13_10)	attempt_grab,$(13_10)	attempt_drop$(13_10)}$(13_10)$(13_10)enum Formation{$(13_10)	switch_prep,$(13_10)	assemble,$(13_10)	follow,$(13_10)	wait,$(13_10)	tower$(13_10)}$(13_10)enum AssembleState{$(13_10)	move_to_node,$(13_10)	holding_for_node,$(13_10)	move_with_node,	$(13_10)}$(13_10)$(13_10)movement_queue = ds_queue_create();$(13_10)action_queue = ds_queue_create();$(13_10)current_movement = Movement.idle;$(13_10)current_action = Action.neutral;$(13_10)current_formation = Formation.follow;$(13_10)current_assemble_state = AssembleState.move_to_node;$(13_10)speed_scale = 3;$(13_10)$(13_10)child_link = pointer_null;$(13_10)parent_link = pointer_null;$(13_10)current_team_num = 0;$(13_10)show_debug_message("Link created at: " + string(id));"
enum Movement 
{
	up,
	diagUpLeft,
	diagUpRight,
	down,
	diagDownLeft,
	diagDownRight,
	left,
	right,
	idle
}
enum Action
{
	neutral,
	attempt_grab,
	attempt_drop
}

enum Formation{
	switch_prep,
	assemble,
	follow,
	wait,
	tower
}
enum AssembleState{
	move_to_node,
	holding_for_node,
	move_with_node,	
}

movement_queue = ds_queue_create();
action_queue = ds_queue_create();
current_movement = Movement.idle;
current_action = Action.neutral;
current_formation = Formation.follow;
current_assemble_state = AssembleState.move_to_node;
speed_scale = 3;

child_link = pointer_null;
parent_link = pointer_null;
current_team_num = 0;
show_debug_message("Link created at: " + string(id));