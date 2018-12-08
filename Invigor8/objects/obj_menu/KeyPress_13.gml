/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38706BEF
/// @DnDArgument : "code" "$(13_10)$(13_10)switch(menu_index) {$(13_10)	$(13_10)	case 0:$(13_10)		room_goto_next();$(13_10)		break;$(13_10)	case 1:$(13_10)		game_end();$(13_10)		break;$(13_10)}$(13_10)$(13_10)"


switch(menu_index) {
	
	case 0:
		room_goto_next();
		break;
	case 1:
		game_end();
		break;
}