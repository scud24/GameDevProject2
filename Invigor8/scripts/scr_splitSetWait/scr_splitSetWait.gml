/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34504C42
/// @DnDArgument : "code" "///scr_splitSetWait(num_following, num_waiting, num_checked)$(13_10)/// @function scr_splitSetWait(num_following, num_waiting, num_checked)$(13_10)/// @description Sets a given number of links waiting after split$(13_10)/// @param {real} num_following Number of links following after split$(13_10)/// @param {real} num_waiting Number of links waiting after split$(13_10)/// @param {real} num_checked Number of links checked so far$(13_10)$(13_10)$(13_10)var num_active = argument0;$(13_10)var num_waiting = argument1;$(13_10)var num_checked = argument2;$(13_10)$(13_10)show_debug_message("Link: " + string(id) + " ssw- num_active: " + string(num_active) $(13_10)						+ " num_waiting: " + string(num_waiting) + " num_checked: " + string(num_checked));$(13_10)$(13_10)if(object_index!=obj_player)$(13_10){$(13_10)	if(num_active > 0)$(13_10)	{$(13_10)		current_formation =Formation.follow;$(13_10)		num_active--;$(13_10)		num_checked++;$(13_10)		if(child_link != pointer_null)$(13_10)		{$(13_10)			with(child_link)$(13_10)			{$(13_10)				scr_splitSetWait(num_active, num_waiting, num_checked);$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			show_debug_message("No child link, stopping split");$(13_10)		}$(13_10)	}$(13_10)	else if (num_waiting > 0)$(13_10)	{$(13_10)		if(parent_link!= pointer_null)$(13_10)		{$(13_10)			with(parent_link)$(13_10)			{$(13_10)				for(var i = 0; i < num_waiting; i++)$(13_10)				{$(13_10)					scr_shiftLinksForward();$(13_10)				}$(13_10)				if(current_formation!=Formation.wait)$(13_10)				{$(13_10)					child_link=pointer_null;$(13_10)				}$(13_10)				show_debug_message("Last follower- links_after: " + string(links_after));$(13_10)			}$(13_10)			if(parent_link.current_formation!=Formation.wait)$(13_10)			{$(13_10)				parent_link=pointer_null;$(13_10)			}$(13_10)		}$(13_10)		current_formation =Formation.wait;$(13_10)		num_waiting--;$(13_10)		num_checked++;$(13_10)		show_debug_message("Link " + string(id) + " set to wait. num_waiting: " + string(num_waiting) + " num_checked: " + string(num_checked));$(13_10)		if(child_link != pointer_null)$(13_10)		{$(13_10)			with(child_link)$(13_10)			{$(13_10)				scr_splitSetWait(num_active, num_waiting, num_checked);$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			show_debug_message("No child link, stopping split");$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		show_debug_message("Error: link " + string(id) + " abandoned");$(13_10)		/*$(13_10)		if(parent_link!= pointer_null)$(13_10)		{$(13_10)			with(parent_link)$(13_10)			{$(13_10)				scr_shiftLinksForward();$(13_10)				if(current_formation!=Formation.wait)$(13_10)				{$(13_10)					child_link=pointer_null;$(13_10)				}$(13_10)			}$(13_10)			if(parent_link.current_formation!=Formation.wait)$(13_10)			{$(13_10)				parent_link=pointer_null;$(13_10)			}$(13_10)		}*/$(13_10)	}$(13_10)}$(13_10)else//Player always active so we skip if num_checked == 0$(13_10){$(13_10)	current_formation =Formation.follow;$(13_10)	if(num_checked < obj_roomController.total_links)$(13_10)	{$(13_10)		if(child_link != pointer_null)$(13_10)		{$(13_10)			show_debug_message("New num active: " + string(num_active));$(13_10)			with(child_link)$(13_10)			{$(13_10)				scr_splitSetWait(num_active, num_waiting, num_checked);$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			show_debug_message("No child link, stopping split");$(13_10)		}$(13_10)	}$(13_10)}"
///scr_splitSetWait(num_following, num_waiting, num_checked)
/// @function scr_splitSetWait(num_following, num_waiting, num_checked)
/// @description Sets a given number of links waiting after split
/// @param {real} num_following Number of links following after split
/// @param {real} num_waiting Number of links waiting after split
/// @param {real} num_checked Number of links checked so far


var num_active = argument0;
var num_waiting = argument1;
var num_checked = argument2;

show_debug_message("Link: " + string(id) + " ssw- num_active: " + string(num_active) 
						+ " num_waiting: " + string(num_waiting) + " num_checked: " + string(num_checked));

if(object_index!=obj_player)
{
	if(num_active > 0)
	{
		current_formation =Formation.follow;
		num_active--;
		num_checked++;
		if(child_link != pointer_null)
		{
			with(child_link)
			{
				scr_splitSetWait(num_active, num_waiting, num_checked);
			}
		}
		else
		{
			show_debug_message("No child link, stopping split");
		}
	}
	else if (num_waiting > 0)
	{
		if(parent_link!= pointer_null)
		{
			with(parent_link)
			{
				for(var i = 0; i < num_waiting; i++)
				{
					scr_shiftLinksForward();
				}
				if(current_formation!=Formation.wait)
				{
					child_link=pointer_null;
				}
				show_debug_message("Last follower- links_after: " + string(links_after));
			}
			if(parent_link.current_formation!=Formation.wait)
			{
				parent_link=pointer_null;
			}
		}
		current_formation =Formation.wait;
		num_waiting--;
		num_checked++;
		show_debug_message("Link " + string(id) + " set to wait. num_waiting: " + string(num_waiting) + " num_checked: " + string(num_checked));
		if(child_link != pointer_null)
		{
			with(child_link)
			{
				scr_splitSetWait(num_active, num_waiting, num_checked);
			}
		}
		else
		{
			show_debug_message("No child link, stopping split");
		}
	}
	else
	{
		show_debug_message("Error: link " + string(id) + " abandoned");
		/*
		if(parent_link!= pointer_null)
		{
			with(parent_link)
			{
				scr_shiftLinksForward();
				if(current_formation!=Formation.wait)
				{
					child_link=pointer_null;
				}
			}
			if(parent_link.current_formation!=Formation.wait)
			{
				parent_link=pointer_null;
			}
		}*/
	}
}
else//Player always active so we skip if num_checked == 0
{
	current_formation =Formation.follow;
	if(num_checked < obj_roomController.total_links)
	{
		if(child_link != pointer_null)
		{
			show_debug_message("New num active: " + string(num_active));
			with(child_link)
			{
				scr_splitSetWait(num_active, num_waiting, num_checked);
			}
		}
		else
		{
			show_debug_message("No child link, stopping split");
		}
	}
}/**/