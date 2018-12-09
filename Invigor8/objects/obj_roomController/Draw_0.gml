/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F614120
/// @DnDArgument : "code" "if(pause_game){$(13_10)    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);$(13_10)    draw_text(view_wview * 0.5, view_hview * 0.5, "Paused");$(13_10)}"
if(pause_game){
    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
    draw_text(view_wview * 0.5, view_hview * 0.5, "Paused");
}