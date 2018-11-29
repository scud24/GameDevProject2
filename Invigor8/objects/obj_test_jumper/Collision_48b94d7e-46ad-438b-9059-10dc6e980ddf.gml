/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F816388
/// @DnDApplyTo : d1b0109d-c5ce-4c66-8483-f7cc1312dc6f
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "downed_units"
with(obj_roomController) {
downed_units += 1;

}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B19912D
/// @DnDArgument : "code" "if(parent_link!=pointer_null&&child_link!=pointer_null)$(13_10){	$(13_10)	show_debug_message("despawning link: " + string(instance_id)+ " " + string(id));$(13_10)	with(parent_link)$(13_10)	{$(13_10)		child_link = other.child_link.id;$(13_10)		show_debug_message("Parent-" + string(id)+ " old child:" + string(other.id) + " new child: " +string(child_link));$(13_10)		scr_shiftLinksForward();$(13_10)	}$(13_10)	$(13_10)	with(child_link)$(13_10)	{$(13_10)		parent_link = other.parent_link.id;$(13_10)		show_debug_message("Child-" +  string(id)+ " old parent:" + string(other.id) + " new parent: " +string(parent_link));$(13_10)	}$(13_10)	//child_link.parent_link = parent_link;$(13_10)	//parent_link.child_link = child_link;$(13_10)	show_debug_message("Child-" + string(id)+ " new parent" + string(child_link.parent_link));$(13_10)	$(13_10)}$(13_10)else if(parent_link!=pointer_null)$(13_10){$(13_10)	parent_link.child_link = pointer_null;		$(13_10)	scr_shiftLinksForward();$(13_10)}$(13_10)else$(13_10){$(13_10)	show_debug_message("Link " + string(id) + "destroyed weird");$(13_10)}$(13_10)$(13_10)	show_debug_message("Units downed: " + string(obj_roomController.downed_units));"
if(parent_link!=pointer_null&&child_link!=pointer_null)
{	
	show_debug_message("despawning link: " + string(instance_id)+ " " + string(id));
	with(parent_link)
	{
		child_link = other.child_link.id;
		show_debug_message("Parent-" + string(id)+ " old child:" + string(other.id) + " new child: " +string(child_link));
		scr_shiftLinksForward();
	}
	
	with(child_link)
	{
		parent_link = other.parent_link.id;
		show_debug_message("Child-" +  string(id)+ " old parent:" + string(other.id) + " new parent: " +string(parent_link));
	}
	//child_link.parent_link = parent_link;
	//parent_link.child_link = child_link;
	show_debug_message("Child-" + string(id)+ " new parent" + string(child_link.parent_link));
	
}
else if(parent_link!=pointer_null)
{
	parent_link.child_link = pointer_null;		
	scr_shiftLinksForward();
}
else
{
	show_debug_message("Link " + string(id) + "destroyed weird");
}

	show_debug_message("Units downed: " + string(obj_roomController.downed_units));

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5B260B38
instance_destroy();