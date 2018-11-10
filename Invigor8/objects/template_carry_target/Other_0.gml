/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 748DC906
/// @DnDArgument : "code" "if(spawn_parent != pointer_null&&transform_parent==pointer_null)$(13_10){$(13_10)	spawn_parent.spawns_remaining++;	$(13_10)	instance_destroy(self);$(13_10)}"
if(spawn_parent != pointer_null&&transform_parent==pointer_null)
{
	spawn_parent.spawns_remaining++;	
	instance_destroy(self);
}