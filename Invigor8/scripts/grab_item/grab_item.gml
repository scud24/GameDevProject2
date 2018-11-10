/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D1552B9
/// @DnDArgument : "code" "/// @function grab_item()$(13_10)/// @description attempts to grab carry_target, passing held item to child link if applicable$(13_10)$(13_10)$(13_10)			if(current_carry_item != pointer_null)//If holding item already$(13_10)				{$(13_10)					if(child_link != pointer_null)//If not last in chain$(13_10)					{$(13_10)						with(child_link)$(13_10)						{$(13_10)							carry_target=other.current_carry_item;$(13_10)							grab_item();$(13_10)						}$(13_10)					}$(13_10)				}$(13_10)				current_carry_item = carry_target;//set carry_target to be current carry item$(13_10)				with (current_carry_item)//grab current carry item$(13_10)				{$(13_10)					transform_parent = other;$(13_10)					//xoffset = other.x-x;$(13_10)					//yoffset = other.y-y;$(13_10)					current_angle = carry_angle;$(13_10)				}$(13_10)				current_action = Action.neutral;"
/// @function grab_item()
/// @description attempts to grab carry_target, passing held item to child link if applicable


			if(current_carry_item != pointer_null)//If holding item already
				{
					if(child_link != pointer_null)//If not last in chain
					{
						with(child_link)
						{
							carry_target=other.current_carry_item;
							grab_item();
						}
					}
				}
				current_carry_item = carry_target;//set carry_target to be current carry item
				with (current_carry_item)//grab current carry item
				{
					transform_parent = other;
					//xoffset = other.x-x;
					//yoffset = other.y-y;
					current_angle = carry_angle;
				}
				current_action = Action.neutral;