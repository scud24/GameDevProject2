/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3E8AD75E
/// @DnDArgument : "code" "//get our dialogue lines$(13_10)$(13_10)//advance diaglogue$(13_10)var next = false;$(13_10)if ( keyboard_check_pressed(ord("X")) ) {$(13_10)	next = true;$(13_10)}$(13_10)$(13_10)$(13_10)scr_get_Dialogue(next); $(13_10)"
//get our dialogue lines

//advance diaglogue
var next = false;
if ( keyboard_check_pressed(ord("X")) ) {
	next = true;
}


scr_get_Dialogue(next);