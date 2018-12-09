/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6196261A
/// @DnDArgument : "color" "$FF5CFF00"
draw_set_colour($FF5CFF00 & $ffffff);
var l6196261A_0=($FF5CFF00 >> 24);
draw_set_alpha(l6196261A_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5C045903
/// @DnDArgument : "x" "-4-camera_get_view_x(view_camera[0])"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0-camera_get_view_y(view_camera[0])"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "units_on_button"
draw_text_transformed(x + -4-camera_get_view_x(view_camera[0]), y + 0-camera_get_view_y(view_camera[0]), "" + string(units_on_button), 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 324A73BD
draw_set_colour($FFFFFFFF & $ffffff);
var l324A73BD_0=($FFFFFFFF >> 24);
draw_set_alpha(l324A73BD_0 / $ff);