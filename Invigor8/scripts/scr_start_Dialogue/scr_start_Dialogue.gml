/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 500A50E5
/// @DnDArgument : "code" "//create obj_dialgue_controller$(13_10)if(!instance_exists(obj_dialogue_controller)){$(13_10)	instance_create_depth( 0, 0, 0, obj_dialogue_controller);$(13_10)	obj_dialogue_controller.dialogue_lines = argument[0].dialogue;$(13_10)	obj_dialogue_controller.dialogue_line = argument[1];$(13_10)	obj_dialogue_controller.fetch = true;$(13_10)}"
//create obj_dialgue_controller
if(!instance_exists(obj_dialogue_controller)){
	instance_create_depth( 0, 0, 0, obj_dialogue_controller);
	obj_dialogue_controller.dialogue_lines = argument[0].dialogue;
	obj_dialogue_controller.dialogue_line = argument[1];
	obj_dialogue_controller.fetch = true;
}