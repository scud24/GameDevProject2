/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 468100F9
/// @DnDArgument : "code" "$(13_10)var nearestDist = argument0;$(13_10)var targetNode = pointer_null; $(13_10) $(13_10)with (obj_path_node)$(13_10){$(13_10)    if (id != other.id)$(13_10)    {$(13_10)		var nodeDist = distance_to_object(other);$(13_10)        if (nodeDist <= nearestDist)$(13_10)        {$(13_10)			if(!collision_line(x,y, other.x, other.y,obj_blocker,false, true))$(13_10)			{$(13_10)				nearestDist = nodeDist;$(13_10)				targetNode = id;$(13_10)			}$(13_10)        }$(13_10)    }$(13_10)}$(13_10) $(13_10)return targetNode;$(13_10)"

var nearestDist = argument0;
var targetNode = pointer_null; 
 
with (obj_path_node)
{
    if (id != other.id)
    {
		var nodeDist = distance_to_object(other);
        if (nodeDist <= nearestDist)
        {
			if(!collision_line(x,y, other.x, other.y,obj_blocker,false, true))
			{
				nearestDist = nodeDist;
				targetNode = id;
			}
        }
    }
}
 
return targetNode;