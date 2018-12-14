/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6196261A
/// @DnDArgument : "color" "$FF5CFF00"
draw_set_colour($FF5CFF00 & $ffffff);
draw_set_alpha(($FF5CFF00 >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5C045903
/// @DnDArgument : "x" "-14-camera_get_view_x(view_camera[0])"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2-camera_get_view_y(view_camera[0])"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.8"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "string(units_on_button)+"/"+string(units_to_activate)"
draw_text_transformed(x + -14-camera_get_view_x(view_camera[0]), y + 2-camera_get_view_y(view_camera[0]), "" + string(string(units_on_button)+"/"+string(units_to_activate)), 0.8, 0.8, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 324A73BD
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);