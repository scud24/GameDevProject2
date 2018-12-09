/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C62435E
/// @DnDArgument : "code" "if(room_get_name(room) == "room_weighted_button"){$(13_10)	if(template_button.units_on_button>0){$(13_10)		if(obj_button_2.units_on_button>0){$(13_10)			if(obj_button_3.units_on_button>0){$(13_10)				instance_destroy(obj_door);$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)if(room_get_name(room) == "room_more_weighted_buttons"){$(13_10)	if(template_button.units_on_button>0){$(13_10)		if(obj_button_2.units_on_button>0){$(13_10)			instance_destroy(obj_door2);$(13_10)			if(obj_button_3.units_on_button>0){$(13_10)				instance_destroy(obj_door);$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}"
if(room_get_name(room) == "room_weighted_button"){
	if(template_button.units_on_button>0){
		if(obj_button_2.units_on_button>0){
			if(obj_button_3.units_on_button>0){
				instance_destroy(obj_door);
			}
		}
	}
}
if(room_get_name(room) == "room_more_weighted_buttons"){
	if(template_button.units_on_button>0){
		if(obj_button_2.units_on_button>0){
			instance_destroy(obj_door2);
			if(obj_button_3.units_on_button>0){
				instance_destroy(obj_door);
			}
		}
	}
}

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