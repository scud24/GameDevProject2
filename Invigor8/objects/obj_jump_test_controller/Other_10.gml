/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B75128B
/// @DnDDisabled : 1
/// @DnDArgument : "code" "jump_target = other;$(13_10)show_debug_message("Set controller jump target to: " + string(jump_target));$(13_10)with(obj_test_jumper)$(13_10){$(13_10)	jump_target = other.jump_target;$(13_10)	show_debug_message("Set jumper jump target to: " + string(jump_target));$(13_10)	if(abs(jump_target.y-y) < 10) move_type = "run";$(13_10)	else move_type = "jump";$(13_10)}"