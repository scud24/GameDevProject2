/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 742DFA66
/// @DnDArgument : "code" "if(formation_selection == 0)$(13_10){$(13_10)	show_debug_message("Player link " + string(id) + " calls follow formation with child_link: " + string(child_link))$(13_10)	with(template_hero)$(13_10)	{$(13_10)		current_formation = Formation.follow;$(13_10)		show_debug_message("begin following link " + string(parent_link) + " started: " + string(follow_started))$(13_10)	}$(13_10)}$(13_10)else if(formation_selection == 1)$(13_10){$(13_10)	with(template_hero)$(13_10)	{$(13_10)		current_formation = Formation.wait;	$(13_10)	}$(13_10)}$(13_10)else if(formation_selection == 2)$(13_10){$(13_10)	with(template_hero)$(13_10)	{$(13_10)		current_formation = Formation.assemble;		$(13_10)	}$(13_10)	with(obj_test_jumper)$(13_10)	{		$(13_10)		scr_setPathParams();$(13_10)	}$(13_10)}$(13_10)else $(13_10){$(13_10)	show_debug_message("error selecting formation");$(13_10)}"
if(formation_selection == 0)
{
	show_debug_message("Player link " + string(id) + " calls follow formation with child_link: " + string(child_link))
	with(template_hero)
	{
		current_formation = Formation.follow;
		show_debug_message("begin following link " + string(parent_link) + " started: " + string(follow_started))
	}
}
else if(formation_selection == 1)
{
	with(template_hero)
	{
		current_formation = Formation.wait;	
	}
}
else if(formation_selection == 2)
{
	with(template_hero)
	{
		current_formation = Formation.assemble;		
	}
	with(obj_test_jumper)
	{		
		scr_setPathParams();
	}
}
else 
{
	show_debug_message("error selecting formation");
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34494238
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "obj_roomController.switch_effect_shade.visible"
obj_roomController.switch_effect_shade.visible = false;