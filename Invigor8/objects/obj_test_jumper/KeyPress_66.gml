/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 048F4987
/// @DnDArgument : "value" "endNode"
var temp = endNode;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38C81DD6
/// @DnDArgument : "expr" "startNode"
/// @DnDArgument : "var" "endNode"
endNode = startNode;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48EFAC71
/// @DnDArgument : "expr" "temp"
/// @DnDArgument : "var" "startNode"
startNode = temp;

/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 02EE50C7
/// @DnDArgument : "event" "2"
event_user(2);