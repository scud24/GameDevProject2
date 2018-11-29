/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51B7BA8A
/// @DnDArgument : "var" "obj_roomController.downed_units"
/// @DnDArgument : "op" "2"
if(obj_roomController.downed_units > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 448FAF8A
	/// @DnDParent : 51B7BA8A
	/// @DnDArgument : "spriteind" "spr_safe_o_matic_active"
	/// @DnDSaveInfo : "spriteind" "94e98de4-ca70-47fc-84ca-cd4b81d2d03a"
	sprite_index = spr_safe_o_matic_active;
	image_index = 0;
}