/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02D4FF7E
/// @DnDArgument : "code" "$(13_10)var i = 0;$(13_10)draw_set_font(font_main);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)$(13_10)repeat(buttons) {$(13_10)	$(13_10)	xx = menu_x;$(13_10)	yy = menu_y + (button_h + button_padding) * i + 256 * (1-unfold[i]);$(13_10)	draw_set_color(c_dkgray);$(13_10)	draw_rectangle(xx - button_w/2, yy, xx - button_w/2 + button_w, yy + button_h, false);$(13_10)	$(13_10)	draw_set_color(c_ltgray);$(13_10)	$(13_10)	if (menu_index == i) draw_set_color(c_green);$(13_10)	$(13_10)	draw_text(xx, yy + button_h/2, button[i]);$(13_10)	$(13_10)	i++;$(13_10)	$(13_10)}$(13_10)$(13_10)"

var i = 0;
draw_set_font(font_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

repeat(buttons) {
	
	xx = menu_x;
	yy = menu_y + (button_h + button_padding) * i + 256 * (1-unfold[i]);
	draw_set_color(c_dkgray);
	draw_rectangle(xx - button_w/2, yy, xx - button_w/2 + button_w, yy + button_h, false);
	
	draw_set_color(c_ltgray);
	
	if (menu_index == i) draw_set_color(c_green);
	
	draw_text(xx, yy + button_h/2, button[i]);
	
	i++;
	
}