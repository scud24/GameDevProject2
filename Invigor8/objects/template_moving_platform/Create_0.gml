/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 4A1ED2C4
/// @DnDArgument : "path" "path0"
/// @DnDArgument : "atend" "path_action_continue"
/// @DnDSaveInfo : "path" "794650d5-b26c-465a-b323-37cd091ac9c0"
path_start(path0, 1, path_action_continue, false);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 347A224A
/// @DnDArgument : "code" "child_node = instance_create_layer(x, y+ 0.5*sprite_height+spr_moving_platform_target_node.sprite_height,"wall_colliders", obj_moving_platform_target_node);$(13_10)with(child_node)$(13_10){$(13_10)	transform_parent = other;$(13_10)	xoffset = transform_parent.x-x;$(13_10)	yoffset = transform_parent.y-y;$(13_10)}"
child_node = instance_create_layer(x, y+ 0.5*sprite_height+spr_moving_platform_target_node.sprite_height,"wall_colliders", obj_moving_platform_target_node);
with(child_node)
{
	transform_parent = other;
	xoffset = transform_parent.x-x;
	yoffset = transform_parent.y-y;
}