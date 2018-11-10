/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4EA5AC96
/// @DnDArgument : "code" "if(spawns_remaining == total_spawns)$(13_10){$(13_10)	sprite_index = full_sprite;$(13_10)}$(13_10)else if(spawns_remaining == 0)$(13_10){$(13_10)	sprite_index = empty_sprite;$(13_10)}$(13_10)else$(13_10){$(13_10)	sprite_index = normal_sprite;$(13_10)}"
if(spawns_remaining == total_spawns)
{
	sprite_index = full_sprite;
}
else if(spawns_remaining == 0)
{
	sprite_index = empty_sprite;
}
else
{
	sprite_index = normal_sprite;
}