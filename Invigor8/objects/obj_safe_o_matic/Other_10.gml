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

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 772F70D2
/// @DnDArgument : "code" "if(other.object_index==obj_player)$(13_10){$(13_10)	audio_play_sound(door_sound, 10, false);$(13_10)}$(13_10)for(var i = 0; i < obj_roomController.downed_units; i++)$(13_10){$(13_10)	with(obj_player)$(13_10)	{$(13_10)		show_debug_message("Safe-o-matic attempts to spawn character");$(13_10)		new_link = instance_create_layer(x,y,"Instances", next_link_object);$(13_10)		scr_addEndLink(new_link);$(13_10)		new_link.follow_started = true;$(13_10)		obj_roomController.downed_units--;$(13_10)	}$(13_10)}"
if(other.object_index==obj_player)
{
	audio_play_sound(door_sound, 10, false);
}
for(var i = 0; i < obj_roomController.downed_units; i++)
{
	with(obj_player)
	{
		show_debug_message("Safe-o-matic attempts to spawn character");
		new_link = instance_create_layer(x,y,"Instances", next_link_object);
		scr_addEndLink(new_link);
		new_link.follow_started = true;
		obj_roomController.downed_units--;
	}
}