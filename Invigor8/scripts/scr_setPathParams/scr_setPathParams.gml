/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B9024B4
/// @DnDArgument : "code" "//randomize();$(13_10)	with(obj_player)$(13_10)	{		$(13_10)		other.startNode = scr_getNearestNode(1000);$(13_10)	}$(13_10)	endNode = scr_getNearestNode(1000);$(13_10)	$(13_10)	var px = obj_player.x;$(13_10)	var py = obj_player.y;$(13_10)	if(startNode != pointer_null && endNode != pointer_null)$(13_10)	{$(13_10)		scr_setupCharacterPath();$(13_10)		if(found && current_node != pointer_null)$(13_10)		{	$(13_10)			if(point_distance(x,y, px, py) <= point_distance(current_node.x,current_node.y, px, py))$(13_10)			{					$(13_10)				scr_getNextNode();$(13_10)			}$(13_10)		}		$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		show_debug_message("Error: Could not find start/end node");$(13_10)		if(!collision_line(x,y,px,py,obj_blocker,false, true))$(13_10)		{$(13_10)			jump_target = obj_player;$(13_10)		}$(13_10)		else show_debug_message("Error: Could not find path");$(13_10)	}"
//randomize();
	with(obj_player)
	{		
		other.startNode = scr_getNearestNode(1000);
	}
	endNode = scr_getNearestNode(1000);
	
	var px = obj_player.x;
	var py = obj_player.y;
	if(startNode != pointer_null && endNode != pointer_null)
	{
		scr_setupCharacterPath();
		if(found && current_node != pointer_null)
		{	
			if(point_distance(x,y, px, py) <= point_distance(current_node.x,current_node.y, px, py))
			{					
				scr_getNextNode();
			}
		}		
	}
	else
	{
		show_debug_message("Error: Could not find start/end node");
		if(!collision_line(x,y,px,py,obj_blocker,false, true))
		{
			jump_target = obj_player;
		}
		else show_debug_message("Error: Could not find path");
	}