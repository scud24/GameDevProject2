/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 77AB1D04
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "deliveries_spawned"
deliveries_spawned = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CAF791B
/// @DnDArgument : "var" "deliveries_remaining"
deliveries_remaining = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5BEFDF7C
/// @DnDArgument : "var" "total_links"
total_links = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65A89384
/// @DnDArgument : "var" "downed_units"
downed_units = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4FCDFCBD
/// @DnDArgument : "code" "switch_effect_shade = instance_create_layer(0,0,"Level_Effects", obj_switch_effect_filter);$(13_10)switch_effect_shade.visible = false;$(13_10)$(13_10)num_teams = 1;"
switch_effect_shade = instance_create_layer(0,0,"Level_Effects", obj_switch_effect_filter);
switch_effect_shade.visible = false;

num_teams = 1;