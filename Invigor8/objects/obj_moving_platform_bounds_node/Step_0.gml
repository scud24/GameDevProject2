/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01DB76FF
/// @DnDArgument : "code" "target_node = instance_nearest(x,y, obj_moving_platform_target_node)$(13_10)if (point_distance(x,y,target_node.x, target_node.y) < 32)$(13_10){$(13_10)	node_active = true;	$(13_10)}$(13_10)else$(13_10){$(13_10)	node_active = false;$(13_10)}$(13_10)if(node_active != last_node_status)$(13_10){$(13_10)	with(obj_test_jumper)$(13_10)	{$(13_10)		nodes_changed_since_calc = true;$(13_10)	}$(13_10)}"
target_node = instance_nearest(x,y, obj_moving_platform_target_node)
if (point_distance(x,y,target_node.x, target_node.y) < 32)
{
	node_active = true;	
}
else
{
	node_active = false;
}
if(node_active != last_node_status)
{
	with(obj_test_jumper)
	{
		nodes_changed_since_calc = true;
	}
}