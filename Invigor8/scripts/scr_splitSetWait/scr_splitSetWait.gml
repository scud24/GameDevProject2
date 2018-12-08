/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34504C42
/// @DnDArgument : "code" "var num_active = argument0;$(13_10)var num_waiting = argument1;$(13_10)var num_checked = argument2;$(13_10)if(num_checked > 0)$(13_10){$(13_10)	if(num_active > 0)$(13_10)	{$(13_10)		num_active--;$(13_10)		num_checked++;$(13_10)		with(child_link)$(13_10)		{$(13_10)			scr_splitSetWait(num_active, num_waiting, num_checked);$(13_10)		}$(13_10)	}$(13_10)	else if (num_waiting > 0)$(13_10)	{$(13_10)		num_waiting--;$(13_10)		num_checked++;$(13_10)		with(child_link)$(13_10)		{$(13_10)			scr_splitSetWait(num_active, num_waiting, num_checked);$(13_10)		}$(13_10)	}$(13_10)}$(13_10)else//Player always active so we skip if num_checked == 0$(13_10){$(13_10)	num_checked++;$(13_10)	if(num_checked < obj_roomController.total_links)$(13_10)	{$(13_10)		if(child_link != pointer_null)$(13_10)		{$(13_10)			num_active--;$(13_10)			with(child_link)$(13_10)			{$(13_10)				scr_splitSetWait(num_active, num_waiting, num_checked);$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			show_debug_message("No child link, stopping split");$(13_10)		}$(13_10)	}$(13_10)}"
var num_active = argument0;
var num_waiting = argument1;
var num_checked = argument2;
if(num_checked > 0)
{
	if(num_active > 0)
	{
		num_active--;
		num_checked++;
		with(child_link)
		{
			scr_splitSetWait(num_active, num_waiting, num_checked);
		}
	}
	else if (num_waiting > 0)
	{
		num_waiting--;
		num_checked++;
		with(child_link)
		{
			scr_splitSetWait(num_active, num_waiting, num_checked);
		}
	}
}
else//Player always active so we skip if num_checked == 0
{
	num_checked++;
	if(num_checked < obj_roomController.total_links)
	{
		if(child_link != pointer_null)
		{
			num_active--;
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
}