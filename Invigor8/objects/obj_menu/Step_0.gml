/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1DEE2273
/// @DnDArgument : "code" "$(13_10)$(13_10)menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);$(13_10)$(13_10)menu_index += menu_move;$(13_10)if (menu_index < 0) menu_index = buttons - 1;$(13_10)if (menu_index > buttons -1) menu_index = 0;$(13_10)$(13_10)var i = 0;$(13_10)repeat(buttons) {$(13_10)	if (unfold[i] == 1) i++;$(13_10)	if (i < buttons) unfold[i] = min(1, unfold[i] + 0.04);$(13_10)	if (i + 1 < buttons) unfold[i+1] = min(1, unfold[i+1] + 0.005);$(13_10)}$(13_10)$(13_10)if (menu_index != last_selected) {$(13_10)	audio_play_sound(snd_menu_switch, 1, false);$(13_10)	part_particles_create(particle_effects, menu_x, menu_y + button_h/2 + (button_h + button_padding) * menu_index, box_flash, 1);$(13_10)}$(13_10)$(13_10)last_selected = menu_index;$(13_10)$(13_10)$(13_10)"


menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons -1) menu_index = 0;

var i = 0;
repeat(buttons) {
	if (unfold[i] == 1) i++;
	if (i < buttons) unfold[i] = min(1, unfold[i] + 0.04);
	if (i + 1 < buttons) unfold[i+1] = min(1, unfold[i+1] + 0.005);
}

if (menu_index != last_selected) {
	audio_play_sound(snd_menu_switch, 1, false);
	part_particles_create(particle_effects, menu_x, menu_y + button_h/2 + (button_h + button_padding) * menu_index, box_flash, 1);
}

last_selected = menu_index;