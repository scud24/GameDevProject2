/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01DB76FF
/// @DnDArgument : "code" "//target_node = instance_nearest(x,y, obj_moving_platform_target_node);$(13_10)if (place_meeting(x,y,obj_moving_platform_target_node))$(13_10){$(13_10)	node_active = true;	$(13_10)	image_blend = make_color_rgb(0, 255, 0);$(13_10)}$(13_10)else$(13_10){$(13_10)	node_active = false;$(13_10)	image_blend = make_color_rgb(255, 0, 0);$(13_10)}$(13_10)if(node_active != last_node_status)$(13_10){$(13_10)	with(obj_test_jumper)$(13_10)	{$(13_10)		nodes_changed_since_calc = true;$(13_10)	}$(13_10)}"
//target_node = instance_nearest(x,y, obj_moving_platform_target_node);
if (place_meeting(x,y,obj_moving_platform_target_node))
{
	node_active = true;	
	image_blend = make_color_rgb(0, 255, 0);
}
else
{
	node_active = false;
	image_blend = make_color_rgb(255, 0, 0);
}
if(node_active != last_node_status)
{
	with(obj_test_jumper)
	{
		nodes_changed_since_calc = true;
	}
}