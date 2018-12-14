/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F452F1F
/// @DnDArgument : "code" "if(child_link != pointer_null)$(13_10){$(13_10)	scr_swapCharacters(child_link);$(13_10)}$(13_10)else$(13_10){$(13_10)	if(instance_exists(obj_test_jumper))$(13_10)	{$(13_10)		scr_swapCharacters(instance_nearest(x,y,obj_test_jumper))$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		show_debug_message("Player died");$(13_10)		if(current_carry_item!=pointer_null)$(13_10)		{$(13_10)			current_carry_item.transfom_parent = pointer_null	$(13_10)		}$(13_10)		instance_destroy(self, true);$(13_10)		alarm_set(2, room_speed*2);$(13_10)	}$(13_10)}"
if(child_link != pointer_null)
{
	scr_swapCharacters(child_link);
}
else
{
	if(instance_exists(obj_test_jumper))
	{
		scr_swapCharacters(instance_nearest(x,y,obj_test_jumper))
	}
	else
	{
		show_debug_message("Player died");
		if(current_carry_item!=pointer_null)
		{
			current_carry_item.transfom_parent = pointer_null	
		}
		instance_destroy(self, true);
		alarm_set(2, room_speed*2);
	}
}