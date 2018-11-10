/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 45FEE8F3
/// @DnDArgument : "colour" "$FF00FFFF"
image_blend = $FF00FFFF & $ffffff;
image_alpha = ($FF00FFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 0A76051B
/// @DnDApplyTo : f5bb027f-b971-4dc6-8b58-f18faaab7ad5
with(obj_jump_test_controller) {
event_user(0);
}