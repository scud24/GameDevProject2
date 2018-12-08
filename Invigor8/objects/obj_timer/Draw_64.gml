/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B1C3D29
/// @DnDArgument : "code" "var drawSec$(13_10)drawSec = floor(global.seconds);$(13_10)$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_set_color(c_yellow);$(13_10)$(13_10)draw_text(room_width/2,room_height/2,"Completion Time: " + string(global.minutes)+":"+string(global.seconds)+string(drawSec));"
var drawSec
drawSec = floor(global.seconds);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);

draw_text(room_width/2,room_height/2,"Completion Time: " + string(global.minutes)+":"+string(global.seconds)+string(drawSec));