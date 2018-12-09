/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 1BF279AA
/// @DnDArgument : "soundid" "snd_menu_music"
/// @DnDSaveInfo : "soundid" "eaaf4bb6-dfed-4cd2-9ccb-8c475950e272"
audio_stop_sound(snd_menu_music);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 64343448
/// @DnDArgument : "soundid" "smd_game_music"
/// @DnDSaveInfo : "soundid" "9c4a5a78-4200-4543-aee7-46e255b0b13a"
audio_play_sound(smd_game_music, 0, 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38706BEF
/// @DnDArgument : "code" "$(13_10)$(13_10)switch(menu_index) {$(13_10)	$(13_10)	case 0:$(13_10)		room_goto_next();$(13_10)		break;$(13_10)	case 1:$(13_10)		game_end();$(13_10)		break;$(13_10)}$(13_10)$(13_10)"


switch(menu_index) {
	
	case 0:
		room_goto_next();
		break;
	case 1:
		game_end();
		break;
}