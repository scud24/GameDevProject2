/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2AE4D444
/// @DnDArgument : "code" "if(spawns_remaining > 0)$(13_10){$(13_10)	new_spawn = instance_create_layer(x,y,"carriables", spawn_target);$(13_10)	with(new_spawn)$(13_10)	{$(13_10)		spawn_parent = other;$(13_10)	}$(13_10)	spawns_remaining--;$(13_10)}"
if(spawns_remaining > 0)
{
	new_spawn = instance_create_layer(x,y,"carriables", spawn_target);
	with(new_spawn)
	{
		spawn_parent = other;
	}
	spawns_remaining--;
}