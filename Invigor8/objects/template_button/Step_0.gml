/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59642D0F
/// @DnDArgument : "code" "units_on_button = 0;$(13_10)var left = x-sprite_xoffset;$(13_10)var right = x-sprite_xoffset+sprite_width;$(13_10)var top = y-sprite_yoffset-sprite_height;$(13_10)var bottom = y-sprite_yoffset;$(13_10)var collisions_list = ds_list_create();$(13_10)var num_collisions = collision_rectangle_list(left, top, right, bottom, template_hero, false, true, collisions_list, true);$(13_10)for(var i = 0; i < num_collisions; i++)$(13_10){$(13_10)	if(collisions_list[|i].isGrounded)$(13_10)	{$(13_10)		units_on_button++;$(13_10)	}	$(13_10)}$(13_10)"
units_on_button = 0;
var left = x-sprite_xoffset;
var right = x-sprite_xoffset+sprite_width;
var top = y-sprite_yoffset-sprite_height;
var bottom = y-sprite_yoffset;
var collisions_list = ds_list_create();
var num_collisions = collision_rectangle_list(left, top, right, bottom, template_hero, false, true, collisions_list, true);
for(var i = 0; i < num_collisions; i++)
{
	if(collisions_list[|i].isGrounded)
	{
		units_on_button++;
	}	
}