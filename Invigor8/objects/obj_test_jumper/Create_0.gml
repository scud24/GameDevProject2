/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F62E2F5
/// @DnDArgument : "code" "isPlayerCharacter = false;$(13_10)$(13_10)links_after = 0;$(13_10)next_link_object = obj_test_jumper;$(13_10)current_action = Action.neutral;$(13_10)movement = Movement.idle;$(13_10)jump_target = pointer_null;$(13_10)jump_started = false;$(13_10)dj_tried = false;$(13_10)$(13_10)$(13_10)current_formation = Formation.follow;$(13_10) $(13_10)//we will store all nodes from the path here$(13_10)//including the start and end nodes$(13_10)pathNodes = ds_list_create();$(13_10)maxRange = 250; //how far apart can the nodes be before they are too far away from each other$(13_10)found = false; //just a boolean if there is a current path found$(13_10)current_node = pointer_null;$(13_10)nodes_set_up = false;$(13_10)nodes_changed_since_calc = false;$(13_10)move_type = "";"
isPlayerCharacter = false;

links_after = 0;
next_link_object = obj_test_jumper;
current_action = Action.neutral;
movement = Movement.idle;
jump_target = pointer_null;
jump_started = false;
dj_tried = false;


current_formation = Formation.follow;
 
//we will store all nodes from the path here
//including the start and end nodes
pathNodes = ds_list_create();
maxRange = 250; //how far apart can the nodes be before they are too far away from each other
found = false; //just a boolean if there is a current path found
current_node = pointer_null;
nodes_set_up = false;
nodes_changed_since_calc = false;
move_type = "";

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 68C02717
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "4"
alarm_set(4, 1);

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 642E74BE
event_inherited();