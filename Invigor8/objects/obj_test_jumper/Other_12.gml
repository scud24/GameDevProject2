/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4AF6E20E
/// @DnDArgument : "code" "//reset the previous path - make blue nodes white$(13_10)    //and recolour start and end nodes$(13_10)    for (var i=0;i<ds_list_size(pathNodes);++i)$(13_10)    {$(13_10)        var inst = ds_list_find_value(pathNodes,i);$(13_10)        with (inst)$(13_10)        {$(13_10)            image_blend = c_white;$(13_10)        }$(13_10)    }$(13_10)    with (startNode)$(13_10)    {$(13_10)        image_blend = c_green;$(13_10)    }$(13_10)   $(13_10)    with (endNode)$(13_10)    {$(13_10)        image_blend = c_red;$(13_10)    }$(13_10)   $(13_10)    ds_list_clear(pathNodes); //clear the list of nodes$(13_10)    //find the path between start and end nodes$(13_10)    //and make the variable true if a path is found, else false$(13_10)    found = scr_findPath(startNode,endNode,pathNodes,maxRange);$(13_10)    //colour all the nodes between the start and end nodes with a blue colour$(13_10)    for (var i=1;i<ds_list_size(pathNodes)-1;++i)$(13_10)    {$(13_10)        var inst = ds_list_find_value(pathNodes,i);$(13_10)        with (inst)$(13_10)        {$(13_10)            image_blend = c_blue;$(13_10)        }$(13_10)    }$(13_10)	startNode.parent = pointer_null;$(13_10)	current_node = endNode;$(13_10)    current_node.image_blend = c_yellow;	$(13_10)	nodes_set_up = true;$(13_10)	//sprite_index = $(13_10)	jump_target = current_node;"
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
	nodes_set_up = true;
	//sprite_index = 
	jump_target = current_node;