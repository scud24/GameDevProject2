/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F614120
/// @DnDArgument : "code" "$(13_10)	switch_effect_shade.x = camera_get_view_x(view_camera[0]);$(13_10)	switch_effect_shade.y = camera_get_view_y(view_camera[0]);$(13_10)$(13_10)if(pause_game){$(13_10)    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);$(13_10)    draw_text(view_wview * 0.5, view_hview * 0.5, "Paused");$(13_10)}"

	switch_effect_shade.x = camera_get_view_x(view_camera[0]);
	switch_effect_shade.y = camera_get_view_y(view_camera[0]);

if(pause_game){
    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
    draw_text(view_wview * 0.5, view_hview * 0.5, "Paused");
}