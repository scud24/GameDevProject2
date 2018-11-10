/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4C8894B4
/// @DnDArgument : "expr" "deliveries_remaining == 0 && deliveries_spawned == true"
if(deliveries_remaining == 0 && deliveries_spawned == true)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 205D2349
	/// @DnDParent : 4C8894B4
	room_goto_next();
}