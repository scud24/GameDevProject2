/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20BB67E0
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "isGrounded"
isGrounded = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 25FCE99D
/// @DnDArgument : "var" "local_hspeed"
local_hspeed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33AE2049
/// @DnDArgument : "var" "local_vspeed"
local_vspeed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20EBBC98
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "max_fall_speed"
max_fall_speed = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26F6E284
/// @DnDArgument : "expr" "7"
/// @DnDArgument : "var" "jump_speed"
jump_speed = 7;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1F63B523
/// @DnDArgument : "expr" "0.2"
/// @DnDArgument : "var" "local_grav"
local_grav = 0.2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7655ABB0
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "double_jump_used"
double_jump_used = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6F912C06
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "jump_continuous"
jump_continuous = false;

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 42884557
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7AC47FF3
/// @DnDArgument : "code" "transform_parent = pointer_null;"
transform_parent = pointer_null;