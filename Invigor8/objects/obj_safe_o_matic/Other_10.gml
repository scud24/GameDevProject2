/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 32154D00
/// @DnDArgument : "spriteind" "spr_safe_o_matic_inside"
/// @DnDSaveInfo : "spriteind" "9e31e323-df83-4d16-a60d-a1e17def1a7f"
sprite_index = spr_safe_o_matic_inside;
image_index = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50B814EB
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "is_open"
is_open = true;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7DA1C37B
/// @DnDArgument : "steps" "1.5*room_speed"
alarm_set(0, 1.5*room_speed);