/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F62E2F5
/// @DnDArgument : "code" "links_after = 0;$(13_10)next_link_object = obj_shadow;$(13_10)current_action = Action.neutral;$(13_10)movement = Movement.idle;$(13_10)jump_target = pointer_null;$(13_10)jump_started = false;$(13_10)dj_tried = false;"
links_after = 0;
next_link_object = obj_shadow;
current_action = Action.neutral;
movement = Movement.idle;
jump_target = pointer_null;
jump_started = false;
dj_tried = false;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 68C02717
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "4"
alarm_set(4, 1);

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 642E74BE
event_inherited();