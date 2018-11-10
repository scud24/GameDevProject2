/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C34D2CA
/// @DnDApplyTo : d1b0109d-c5ce-4c66-8483-f7cc1312dc6f
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "deliveries_remaining"
with(obj_roomController) {
deliveries_remaining += 1;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7A4828AF
/// @DnDApplyTo : d1b0109d-c5ce-4c66-8483-f7cc1312dc6f
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "deliveries_spawned"
with(obj_roomController) {
deliveries_spawned = true;

}