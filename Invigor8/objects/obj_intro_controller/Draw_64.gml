/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6167EE33
/// @DnDArgument : "code" "text_yoffset = text_yoffset -.5;$(13_10)draw_set_font(intro_font);$(13_10)draw_set_color(c_black);$(13_10)draw_text_ext(100, 740+text_yoffset, string_hash_to_newline(intro_text_show), 36, 850);$(13_10)$(13_10)$(13_10)intro_text_show = string_copy(intro_text, 1, dialogue_speed);$(13_10)dialogue_speed += .35;"
text_yoffset = text_yoffset -.5;
draw_set_font(intro_font);
draw_set_color(c_black);
draw_text_ext(100, 740+text_yoffset, string_hash_to_newline(intro_text_show), 36, 850);


intro_text_show = string_copy(intro_text, 1, dialogue_speed);
dialogue_speed += .35;