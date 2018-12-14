/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3CCD62EC
/// @DnDArgument : "soundid" "snd_menu_music"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "eaaf4bb6-dfed-4cd2-9ccb-8c475950e272"
audio_play_sound(snd_menu_music, 0, 1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C108CA5
/// @DnDArgument : "code" "layer_vspeed("Background",-0.3);$(13_10)text_yoffset = 0;$(13_10)intro_text = "Invigor City is under siege from an unhinged menace: the supervillain known only as The Sandman. "$(13_10)			+"This mad scientist spreads terror among the city"+chr(39)+"s drivers, construction workers, and other workers"$(13_10)			+" as he works to put them to sleep in life-threatening situations. \n"$(13_10)			+"\nHowever all is not lost, \n"$(13_10)			+"\nA group of 8 heroes fight to save the city from the dangers of exhaustion. "$(13_10)			+"The Invigor 8 as they are called are the only thing standing between The Sandman"+chr(39)+"s attempts"$(13_10)			+" to cause untold devastation to the city.";$(13_10)intro_text_show = "";$(13_10)dialogue_speed = 0;$(13_10)sprite_offset =0;"
layer_vspeed("Background",-0.3);
text_yoffset = 0;
intro_text = "Invigor City is under siege from an unhinged menace: the supervillain known only as The Sandman. "
			+"This mad scientist spreads terror among the city"+chr(39)+"s drivers, construction workers, and other workers"
			+" as he works to put them to sleep in life-threatening situations. \n"
			+"\nHowever all is not lost, \n"
			+"\nA group of 8 heroes fight to save the city from the dangers of exhaustion. "
			+"The Invigor 8 as they are called are the only thing standing between The Sandman"+chr(39)+"s attempts"
			+" to cause untold devastation to the city.";
intro_text_show = "";
dialogue_speed = 0;
sprite_offset =0;