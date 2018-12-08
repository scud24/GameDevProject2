/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 760C1A18
/// @DnDArgument : "code" "/// @description get dialogue pieces from object$(13_10)/// @param start_line$(13_10)$(13_10)$(13_10)$(13_10)if(fetch) {$(13_10)	dialogue_output = "";$(13_10)	dialogue_output_speed = 0;$(13_10)	var dialogue_data = dialogue_lines[dialogue_line];$(13_10)	$(13_10)$(13_10)	dialogue_text = dialogue_data[0];$(13_10)	dialogue_continue = dialogue_data[1];$(13_10)	dialogue_avatar = dialogue_data[2];$(13_10)	dialogue_leftSide = dialogue_data[3];$(13_10)	$(13_10)	fetch = false; //stop the script$(13_10)} else {$(13_10)	if(argument[0]) {$(13_10)		if(string_length(dialogue_text) > string_length(dialogue_output)){$(13_10)			dialogue_output_speed = 1000;$(13_10)		} else {$(13_10)			if (dialogue_continue){$(13_10)				dialogue_line += 1;$(13_10)				fetch = true;$(13_10)			} else {$(13_10)				instance_destroy();$(13_10)				obj_hero.hasSelection = false;$(13_10)			}	$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	$(13_10)	dialogue_output = string_copy(dialogue_text, 1, dialogue_output_speed );$(13_10)	dialogue_output_speed += 0.8;$(13_10)$(13_10)}"
/// @description get dialogue pieces from object
/// @param start_line



if(fetch) {
	dialogue_output = "";
	dialogue_output_speed = 0;
	var dialogue_data = dialogue_lines[dialogue_line];
	

	dialogue_text = dialogue_data[0];
	dialogue_continue = dialogue_data[1];
	dialogue_avatar = dialogue_data[2];
	dialogue_leftSide = dialogue_data[3];
	
	fetch = false; //stop the script
} else {
	if(argument[0]) {
		if(string_length(dialogue_text) > string_length(dialogue_output)){
			dialogue_output_speed = 1000;
		} else {
			if (dialogue_continue){
				dialogue_line += 1;
				fetch = true;
			} else {
				instance_destroy();
				obj_hero.hasSelection = false;
			}	
		}
	}
	
	
	dialogue_output = string_copy(dialogue_text, 1, dialogue_output_speed );
	dialogue_output_speed += 0.8;

}