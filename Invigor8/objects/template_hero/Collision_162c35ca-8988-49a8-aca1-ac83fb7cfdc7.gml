/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 52597FA6
/// @DnDArgument : "code" "if(!other.is_saved&&current_carry_item != pointer_null)$(13_10){$(13_10)	other.is_saved = true;$(13_10)	other.sprite_index=other.post_delivery_sprite;$(13_10)	instance_destroy(current_carry_item);$(13_10)	current_carry_item = pointer_null;$(13_10)	carry_target = pointer_null;$(13_10)	current_action = Action.neutral;$(13_10)	obj_roomController.deliveries_remaining--;$(13_10)}"
if(!other.is_saved&&current_carry_item != pointer_null)
{
	other.is_saved = true;
	other.sprite_index=other.post_delivery_sprite;
	instance_destroy(current_carry_item);
	current_carry_item = pointer_null;
	carry_target = pointer_null;
	current_action = Action.neutral;
	obj_roomController.deliveries_remaining--;
}