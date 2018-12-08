/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 044245B8
/// @DnDArgument : "code" "if(links_after > 0 && child_link != pointer_null)$(13_10){$(13_10)	with(child_link)$(13_10)	{		$(13_10)		coordinated_path_started = true;$(13_10)		with(obj_player)$(13_10)		{$(13_10)			num_coordinated_follower_active++;$(13_10)		}$(13_10)	}$(13_10)}"
if(links_after > 0 && child_link != pointer_null)
{
	with(child_link)
	{		
		coordinated_path_started = true;
		with(obj_player)
		{
			num_coordinated_follower_active++;
		}
	}
}