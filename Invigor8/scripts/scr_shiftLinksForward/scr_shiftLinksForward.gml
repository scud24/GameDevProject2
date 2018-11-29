/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 52FBE795
/// @DnDArgument : "code" "links_after--;$(13_10)if(parent_link != pointer_null)$(13_10){$(13_10)	with(parent_link)$(13_10)	{$(13_10)		scr_shiftLinksForward();$(13_10)	}$(13_10)}$(13_10)"
links_after--;
if(parent_link != pointer_null)
{
	with(parent_link)
	{
		scr_shiftLinksForward();
	}
}