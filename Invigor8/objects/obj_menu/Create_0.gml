/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 5D16A45C
/// @DnDArgument : "soundid" "snd_menu_music"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "eaaf4bb6-dfed-4cd2-9ccb-8c475950e272"
audio_play_sound(snd_menu_music, 0, 1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 522818A5
/// @DnDArgument : "code" "$(13_10)menu_x = room_width/2;$(13_10)menu_y = y+390;$(13_10)menu_y_spacing = 10;$(13_10)button_h = 32;$(13_10)button_w = 256;$(13_10)button_padding = 8;$(13_10)text_scale = 1;$(13_10)$(13_10)// buttons$(13_10)button[0] = "Start Game";$(13_10)button[1] = "Exit Game";$(13_10)buttons = array_length_1d(button);$(13_10)$(13_10)menu_index = 0;$(13_10)last_selected = 0;$(13_10)$(13_10)var i = 0;$(13_10)repeat(buttons) {$(13_10)	unfold[i] = 0;$(13_10)	i++;$(13_10)}$(13_10)$(13_10)particle_effects = part_system_create();$(13_10)part_system_depth(particle_effects,-1000);$(13_10)$(13_10)box_flash = part_type_create();$(13_10)part_type_shape(box_flash, pt_shape_line);$(13_10)part_type_size(box_flash, 5, 5, -.02, 0);$(13_10)part_type_color3(box_flash, make_color_rgb(128, 255, 0), make_color_rgb(0, 128, 255), make_color_rgb(0, 0, 0));$(13_10)part_type_alpha3(box_flash, .3, 0.5, 0);$(13_10)part_type_blend(box_flash, true);$(13_10)part_type_life(box_flash, 20, 20);$(13_10)"

menu_x = room_width/2;
menu_y = y+390;
menu_y_spacing = 10;
button_h = 32;
button_w = 256;
button_padding = 8;
text_scale = 1;

// buttons
button[0] = "Start Game";
button[1] = "Exit Game";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

var i = 0;
repeat(buttons) {
	unfold[i] = 0;
	i++;
}

particle_effects = part_system_create();
part_system_depth(particle_effects,-1000);

box_flash = part_type_create();
part_type_shape(box_flash, pt_shape_line);
part_type_size(box_flash, 5, 5, -.02, 0);
part_type_color3(box_flash, make_color_rgb(128, 255, 0), make_color_rgb(0, 128, 255), make_color_rgb(0, 0, 0));
part_type_alpha3(box_flash, .3, 0.5, 0);
part_type_blend(box_flash, true);
part_type_life(box_flash, 20, 20);