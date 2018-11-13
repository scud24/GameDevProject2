/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7AD70EF3
/// @DnDArgument : "code" "if (keyboard_check_pressed(vk_space))$(13_10){$(13_10)    //reset the previous path - make blue nodes white$(13_10)    //and recolour start and end nodes$(13_10)    for (var i=0;i<ds_list_size(pathNodes);++i)$(13_10)    {$(13_10)        var inst = ds_list_find_value(pathNodes,i);$(13_10)        with (inst)$(13_10)        {$(13_10)            image_blend = c_white;$(13_10)        }$(13_10)    }$(13_10)    with (startNode)$(13_10)    {$(13_10)        image_blend = c_green;$(13_10)    }$(13_10)   $(13_10)    with (endNode)$(13_10)    {$(13_10)        image_blend = c_red;$(13_10)    }$(13_10)   $(13_10)    ds_list_clear(pathNodes); //clear the list of nodes$(13_10)    //find the path between start and end nodes$(13_10)    //and make the variable true if a path is found, else false$(13_10)    found = scr_findPath(startNode,endNode,pathNodes,maxRange);$(13_10)    //colour all the nodes between the start and end nodes with a blue colour$(13_10)    for (var i=1;i<ds_list_size(pathNodes)-1;++i)$(13_10)    {$(13_10)        var inst = ds_list_find_value(pathNodes,i);$(13_10)        with (inst)$(13_10)        {$(13_10)            image_blend = c_blue;$(13_10)        }$(13_10)    }$(13_10)	startNode.parent = pointer_null;$(13_10)	current_node = endNode;$(13_10)    current_node.image_blend = c_yellow;$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(vk_enter))$(13_10){$(13_10)	event_user(0);$(13_10)}$(13_10) $(13_10)//left click = make selected node a start node$(13_10)if (mouse_check_button_pressed(mb_left))$(13_10){$(13_10)    var inst = instance_nearest(mouse_x,mouse_y,obj_node);$(13_10)   $(13_10)    with (inst)$(13_10)    {$(13_10)        if (distance_to_point(mouse_x,mouse_y) <= radius)$(13_10)        {$(13_10)            with (obj_astar.startNode)$(13_10)            {$(13_10)                image_blend = c_white;$(13_10)            }$(13_10)           $(13_10)            obj_astar.startNode = inst;$(13_10)            image_blend = c_green;$(13_10)        }$(13_10)    }$(13_10)}$(13_10) $(13_10)//left click = make selected node an end node$(13_10)if (mouse_check_button_pressed(mb_right))$(13_10){$(13_10)    var inst = instance_nearest(mouse_x,mouse_y,obj_node);$(13_10)   $(13_10)    with (inst)$(13_10)    {$(13_10)        if (distance_to_point(mouse_x,mouse_y) <= radius)$(13_10)        {$(13_10)            with (obj_astar.endNode)$(13_10)            {$(13_10)                image_blend = c_white;$(13_10)            }$(13_10)           $(13_10)            obj_astar.endNode = inst;$(13_10)            image_blend = c_red;$(13_10)        }$(13_10)    }$(13_10)}"
if (keyboard_check_pressed(vk_space))
{
    //reset the previous path - make blue nodes white
    //and recolour start and end nodes
    for (var i=0;i<ds_list_size(pathNodes);++i)
    {
        var inst = ds_list_find_value(pathNodes,i);
        with (inst)
        {
            image_blend = c_white;
        }
    }
    with (startNode)
    {
        image_blend = c_green;
    }
   
    with (endNode)
    {
        image_blend = c_red;
    }
   
    ds_list_clear(pathNodes); //clear the list of nodes
    //find the path between start and end nodes
    //and make the variable true if a path is found, else false
    found = scr_findPath(startNode,endNode,pathNodes,maxRange);
    //colour all the nodes between the start and end nodes with a blue colour
    for (var i=1;i<ds_list_size(pathNodes)-1;++i)
    {
        var inst = ds_list_find_value(pathNodes,i);
        with (inst)
        {
            image_blend = c_blue;
        }
    }
	startNode.parent = pointer_null;
	current_node = endNode;
    current_node.image_blend = c_yellow;
}

if (keyboard_check_pressed(vk_enter))
{
	event_user(0);
}
 
//left click = make selected node a start node
if (mouse_check_button_pressed(mb_left))
{
    var inst = instance_nearest(mouse_x,mouse_y,obj_node);
   
    with (inst)
    {
        if (distance_to_point(mouse_x,mouse_y) <= radius)
        {
            with (obj_astar.startNode)
            {
                image_blend = c_white;
            }
           
            obj_astar.startNode = inst;
            image_blend = c_green;
        }
    }
}
 
//left click = make selected node an end node
if (mouse_check_button_pressed(mb_right))
{
    var inst = instance_nearest(mouse_x,mouse_y,obj_node);
   
    with (inst)
    {
        if (distance_to_point(mouse_x,mouse_y) <= radius)
        {
            with (obj_astar.endNode)
            {
                image_blend = c_white;
            }
           
            obj_astar.endNode = inst;
            image_blend = c_red;
        }
    }
}