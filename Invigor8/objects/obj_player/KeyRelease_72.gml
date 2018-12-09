/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 742DFA66
/// @DnDArgument : "code" "if(formation_selection == 0)$(13_10){$(13_10)	show_debug_message("Player link " + string(id) + " calls follow formation with child_link: " + string(child_link))$(13_10)	with(template_hero)$(13_10)	{$(13_10)		current_formation = Formation.follow;$(13_10)		show_debug_message("begin following link " + string(parent_link) + " started: " + string(follow_started))$(13_10)	}$(13_10)}$(13_10)else if(formation_selection == 1)$(13_10){$(13_10)	show_debug_message("\n---------------- \n" +"Player link " + string(id) $(13_10)	+ " sets " + string(links_following_after_split) + " following, " +string(links_after-links_following_after_split) + " waiting");$(13_10)	scr_splitSetWait(links_following_after_split, links_after-links_following_after_split, 0);$(13_10)}$(13_10)else if(formation_selection == 2)$(13_10){$(13_10)	with(template_hero)$(13_10)	{$(13_10)		if(current_formation != Formation.follow||(x!=obj_player.x&&y!=obj_player.y))$(13_10)		{			$(13_10)			current_formation = Formation.assemble;		$(13_10)		}$(13_10)	}$(13_10)	with(obj_test_jumper)$(13_10)	{		$(13_10)		scr_setPathParams();$(13_10)	}$(13_10)	show_debug_message("\n---------------- \n" +"Player link " + string(id) + " calls assemble formation with child_link: " + string(child_link));$(13_10)	current_formation = Formation.follow;	$(13_10)}else if(formation_selection == 3)$(13_10){$(13_10)	current_formation = Formation.swap_lead;$(13_10)	ds_list_clear(lead_links);$(13_10)	with(template_hero)$(13_10)	{$(13_10)		if(parent_link == pointer_null)$(13_10)		{$(13_10)			ds_list_add(other.lead_links, id);$(13_10)		}$(13_10)	}$(13_10)	show_debug_message("\n---------------- \n" +"Player link " + string(id) + " attempts to swap lead");$(13_10)}$(13_10)else $(13_10){$(13_10)	show_debug_message("error selecting formation");$(13_10)}$(13_10)if(formation_selection != 3)$(13_10){$(13_10)	obj_roomController.switch_effect_shade.visible = false;$(13_10)}"
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
	show_debug_message("\n---------------- \n" +"Player link " + string(id) 
	+ " sets " + string(links_following_after_split) + " following, " +string(links_after-links_following_after_split) + " waiting");
	scr_splitSetWait(links_following_after_split, links_after-links_following_after_split, 0);
}
else if(formation_selection == 2)
{
	with(template_hero)
	{
		if(current_formation != Formation.follow||(x!=obj_player.x&&y!=obj_player.y))
		{			
			current_formation = Formation.assemble;		
		}
	}
	with(obj_test_jumper)
	{		
		scr_setPathParams();
	}
	show_debug_message("\n---------------- \n" +"Player link " + string(id) + " calls assemble formation with child_link: " + string(child_link));
	current_formation = Formation.follow;	
}else if(formation_selection == 3)
{
	current_formation = Formation.swap_lead;
	ds_list_clear(lead_links);
	with(template_hero)
	{
		if(parent_link == pointer_null)
		{
			ds_list_add(other.lead_links, id);
		}
	}
	show_debug_message("\n---------------- \n" +"Player link " + string(id) + " attempts to swap lead");
}
else 
{
	show_debug_message("error selecting formation");
}
if(formation_selection != 3)
{
	obj_roomController.switch_effect_shade.visible = false;
}