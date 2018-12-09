/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 326CFADA
/// @DnDArgument : "code" "isPlayerCharacter = true;$(13_10)$(13_10)links_after = 7;$(13_10)current_team_num = 1;$(13_10)next_link_object = obj_test_jumper;$(13_10)follow_started = true;$(13_10)current_action = Action.neutral;$(13_10)formation_selection = 0;$(13_10)selection_angle_offset = 0;$(13_10)links_following_after_split = 0;$(13_10)show_switch_warning = false;$(13_10)angle_substep = 0;$(13_10)angle_step = 0;$(13_10)substeps_remaining = 0;$(13_10)num_formations = 5;$(13_10)num_angle_substeps = 15;$(13_10)$(13_10)dialogue = [];$(13_10)dialogue_line=0;$(13_10)d_intro_text = $(13_10)	scr_add_Dialogue("Use the arrow keys to move",true, spr_X, false)$(13_10)	scr_add_Dialogue("Space to interact with objects", true, spr_X, false)$(13_10)	scr_add_Dialogue("Use left control to drop objects", true, spr_X, false)$(13_10)	scr_add_Dialogue("P to pause/unpause the game", false, spr_X, false);$(13_10)	$(13_10)d_mechanics_text=$(13_10)	scr_add_Dialogue("Hold h to select a formation", true, spr_X, false)$(13_10)	scr_add_Dialogue("Use the arrowkeys to itterate through the menu", true, spr_X, false)$(13_10)	scr_add_Dialogue("Assemble makes the split off clones path to you", false, spr_X, false);$(13_10)$(13_10)for(i = 0; i < gamepad_get_device_count(); i++)$(13_10){$(13_10)	show_debug_message(string(i) + gamepad_get_description(i));$(13_10)}$(13_10)$(13_10)show_debug_message("Num axises" + string(gamepad_axis_count(4)));"
isPlayerCharacter = true;

links_after = 7;
current_team_num = 1;
next_link_object = obj_test_jumper;
follow_started = true;
current_action = Action.neutral;
formation_selection = 0;
selection_angle_offset = 0;
links_following_after_split = 0;
show_switch_warning = false;
angle_substep = 0;
angle_step = 0;
substeps_remaining = 0;
num_formations = 5;
num_angle_substeps = 15;

dialogue = [];
dialogue_line=0;
d_intro_text = 
	scr_add_Dialogue("Use the arrow keys to move",true, spr_X, false)
	scr_add_Dialogue("Space to interact with objects", true, spr_X, false)
	scr_add_Dialogue("Use left control to drop objects", true, spr_X, false)
	scr_add_Dialogue("P to pause/unpause the game", false, spr_X, false);
	
d_mechanics_text=
	scr_add_Dialogue("Hold h to select a formation", true, spr_X, false)
	scr_add_Dialogue("Use the arrowkeys to itterate through the menu", true, spr_X, false)
	scr_add_Dialogue("Assemble makes the split off clones path to you", false, spr_X, false);

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