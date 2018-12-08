/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19C04F00
/// @DnDArgument : "code" "var dialogue_part = [];$(13_10)var dialogue_text = "";			$(13_10)	if (argument_count >= 1) dialogue_text = argument[0];$(13_10)var dialogue_continue = false; $(13_10)	if (argument_count >= 2) dialogue_continue = argument[1];$(13_10)var dialogue_avatar = "";$(13_10)	if (argument_count >= 3) dialogue_avatar = argument[2];$(13_10)var dialogue_leftSide = true;$(13_10)	if (argument_count >= 4) dialogue_leftSide = argument[3];$(13_10)$(13_10)$(13_10)//put values in array$(13_10)dialogue_part[0] = dialogue_text;$(13_10)dialogue_part[1] = dialogue_continue;$(13_10)dialogue_part[2] = dialogue_avatar;$(13_10)dialogue_part[3] = dialogue_leftSide;$(13_10)$(13_10)//save array to dialogue$(13_10)dialogue[dialogue_line] = dialogue_part;$(13_10)dialogue_line += 1;$(13_10)$(13_10)return dialogue_line -1;"
var dialogue_part = [];
var dialogue_text = "";			
	if (argument_count >= 1) dialogue_text = argument[0];
var dialogue_continue = false; 
	if (argument_count >= 2) dialogue_continue = argument[1];
var dialogue_avatar = "";
	if (argument_count >= 3) dialogue_avatar = argument[2];
var dialogue_leftSide = true;
	if (argument_count >= 4) dialogue_leftSide = argument[3];


//put values in array
dialogue_part[0] = dialogue_text;
dialogue_part[1] = dialogue_continue;
dialogue_part[2] = dialogue_avatar;
dialogue_part[3] = dialogue_leftSide;

//save array to dialogue
dialogue[dialogue_line] = dialogue_part;
dialogue_line += 1;

return dialogue_line -1;