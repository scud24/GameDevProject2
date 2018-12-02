/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1340C6A1
/// @DnDArgument : "code" "///scr_getNeighbours(node, max range)$(13_10) $(13_10)//gets all neighbour nodes that are close to the$(13_10)//current node (determined by maxRange) and adds$(13_10)//them to a ds_list of nodes$(13_10) $(13_10)var node = argument0;$(13_10)var maxRange = argument1;$(13_10)var neighbours = ds_list_create();$(13_10) $(13_10)with (obj_path_node)$(13_10){$(13_10)    if (id != node.id)$(13_10)    {$(13_10)		if(object_index == obj_moving_platform_bounds_node && node.object_index == obj_moving_platform_bounds_node)$(13_10)		{			$(13_10)	       $(13_10)			if(!collision_line(x,y,node.x,node.y,obj_blocker,false, true))$(13_10)			{$(13_10)				if(collision_line(x,y,node.x,node.y,obj_moving_platform_target_node,false, true))$(13_10)				{$(13_10)					ds_list_add(neighbours,id);$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)	        if (distance_to_object(node) <= maxRange)$(13_10)	        {$(13_10)				if(!collision_line(x,y,node.x,node.y,obj_blocker,false, true))$(13_10)				{$(13_10)					ds_list_add(neighbours,id);$(13_10)				}$(13_10)	        }			$(13_10)		}$(13_10)    }$(13_10)}$(13_10) $(13_10)return neighbours;$(13_10)"
///scr_getNeighbours(node, max range)
 
//gets all neighbour nodes that are close to the
//current node (determined by maxRange) and adds
//them to a ds_list of nodes
 
var node = argument0;
var maxRange = argument1;
var neighbours = ds_list_create();
 
with (obj_path_node)
{
    if (id != node.id)
    {
		if(object_index == obj_moving_platform_bounds_node && node.object_index == obj_moving_platform_bounds_node)
		{			
	       
			if(!collision_line(x,y,node.x,node.y,obj_blocker,false, true))
			{
				if(collision_line(x,y,node.x,node.y,obj_moving_platform_target_node,false, true))
				{
					ds_list_add(neighbours,id);
				}
			}
		}
		else
		{
	        if (distance_to_object(node) <= maxRange)
	        {
				if(!collision_line(x,y,node.x,node.y,obj_blocker,false, true))
				{
					ds_list_add(neighbours,id);
				}
	        }			
		}
    }
}
 
return neighbours;