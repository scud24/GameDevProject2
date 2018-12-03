/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6196261A
/// @DnDArgument : "color" "$FF5CFF00"
draw_set_colour($FF5CFF00 & $ffffff);
draw_set_alpha(($FF5CFF00 >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5C045903
/// @DnDArgument : "x" "-4"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "units_on_button"
draw_text_transformed(x + -4, y + 0, "" + string(units_on_button), 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 324A73BD
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);