/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F614120
/// @DnDArgument : "code" "if(instance_exists(obj_switch_effect_filter)&&object_exists(obj_player))$(13_10){$(13_10)	switch_effect_shade.x = obj_player.x-3000;$(13_10)	switch_effect_shade.y = obj_player.y-3000;$(13_10)}$(13_10)if(pause_game){$(13_10)    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);$(13_10)    draw_text(view_wview * 0.5, view_hview * 0.5, "Paused");$(13_10)}"
if(instance_exists(obj_switch_effect_filter)&&object_exists(obj_player))
{
	switch_effect_shade.x = obj_player.x-3000;
	switch_effect_shade.y = obj_player.y-3000;
}
if(pause_game){
    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
    draw_text(view_wview * 0.5, view_hview * 0.5, "Paused");
}