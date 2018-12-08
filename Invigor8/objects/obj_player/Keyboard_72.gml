/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B5A1EDC
/// @DnDArgument : "code" "if(isGrounded)$(13_10){$(13_10)	if(obj_roomController.switch_effect_shade.visible == false)$(13_10)	{$(13_10)		links_following_after_split = links_after;$(13_10)	}$(13_10)	$(13_10)	current_formation = Formation.switch_prep;$(13_10)	obj_roomController.switch_effect_shade.visible = true;$(13_10)	show_switch_warning = false;$(13_10)}$(13_10)else$(13_10){$(13_10)	show_switch_warning = true;$(13_10)	alarm_set(1, 0.45*room_speed)$(13_10)}$(13_10)$(13_10)"
if(isGrounded)
{
	if(obj_roomController.switch_effect_shade.visible == false)
	{
		links_following_after_split = links_after;
	}
	
	current_formation = Formation.switch_prep;
	obj_roomController.switch_effect_shade.visible = true;
	show_switch_warning = false;
}
else
{
	show_switch_warning = true;
	alarm_set(1, 0.45*room_speed)
}