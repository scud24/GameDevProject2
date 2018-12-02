/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 326CFADA
/// @DnDArgument : "code" "isPlayerCharacter = true;$(13_10)$(13_10)links_after = 7;$(13_10)next_link_object = obj_test_jumper;$(13_10)follow_started = true;$(13_10)current_action = Action.neutral;$(13_10)formation_selection = 0;$(13_10)show_switch_warning = false;$(13_10)$(13_10)for(i = 0; i < gamepad_get_device_count(); i++)$(13_10){$(13_10)show_debug_message(string(i) + gamepad_get_description(i));$(13_10)}$(13_10)$(13_10)show_debug_message("Num axises" + string(gamepad_axis_count(4)));"
isPlayerCharacter = true;

links_after = 7;
next_link_object = obj_test_jumper;
follow_started = true;
current_action = Action.neutral;
formation_selection = 0;
show_switch_warning = false;

for(i = 0; i < gamepad_get_device_count(); i++)
{
show_debug_message(string(i) + gamepad_get_description(i));
}

show_debug_message("Num axises" + string(gamepad_axis_count(4)));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0353E7D3
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 355664C9
event_inherited();