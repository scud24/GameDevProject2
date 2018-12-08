/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C2F4B5C
/// @DnDArgument : "code" "///scr_findPath(startNode, endNode, ds_list<obj_node>, max range)$(13_10) $(13_10)var startNode = argument0;$(13_10)var endNode = argument1;$(13_10)var pathNodes = argument2;$(13_10)var maxRange = argument3;$(13_10) $(13_10)var openSet = ds_list_create(); //create open set$(13_10)var closedSet = ds_list_create(); //create closed set$(13_10)$(13_10)	//show_debug_message("start: " + string(startNode));$(13_10)	//show_debug_message("end: " + string(endNode));$(13_10)ds_list_add(openSet,startNode); //add starting node to open set$(13_10) $(13_10)//while there are nodes in the open set, do the algorithm$(13_10)//otherwise return false (path not found)$(13_10) $(13_10)while(ds_list_size(openSet) > 0)$(13_10){$(13_10)    //here we get the node with the lowest F cost (G cost + H cost)$(13_10)    //from all the nodes in the open set$(13_10)    //and remove it from the open set and$(13_10)    //add it to the closed set$(13_10)    var currentNode = ds_list_find_value(openSet,0);$(13_10)    var index = 0;$(13_10)	//show_debug_message("pathNodes: " + string(ds_list_size(pathNodes)));$(13_10)	//show_debug_message("arg: " + string(ds_list_size(argument2)));$(13_10)    for (var i=0;i<ds_list_size(openSet);++i)$(13_10)    {$(13_10)        var tmpNode = ds_list_find_value(openSet,i);$(13_10)		//show_debug_message("tmp: " + string(tmpNode) + " currentNode: " + string(currentNode));$(13_10)        if (tmpNode.fCost < currentNode.fCost)$(13_10)        {$(13_10)            currentNode = tmpNode;$(13_10)            index = i;$(13_10)        }$(13_10)    }$(13_10)    ds_list_delete(openSet,index);$(13_10)    ds_list_add(closedSet,currentNode);$(13_10)   $(13_10)    //if our current node (from the open set) is our end node$(13_10)    //return true (path found) and retrace path from end to start$(13_10)    //and add nodes to the list$(13_10)    if (currentNode == endNode)$(13_10)    {$(13_10)        ds_list_destroy(openSet);$(13_10)        ds_list_destroy(closedSet);$(13_10)       $(13_10)        var currentNode = endNode;$(13_10)       $(13_10)        while (currentNode != startNode)$(13_10)        {$(13_10)            ds_list_insert(pathNodes,0,currentNode);$(13_10)            currentNode = currentNode.parent;$(13_10)        }$(13_10)        ds_list_insert(pathNodes,0,startNode);$(13_10)        return true;$(13_10)    }$(13_10)   $(13_10)    //get neighbour nodes from current node$(13_10)    var neighbours = scr_getNeighbours(currentNode,maxRange);$(13_10)   $(13_10)    //for each neighbour$(13_10)    for (var i=0;i<ds_list_size(neighbours);++i)$(13_10)    {$(13_10)        var neighbourNode = ds_list_find_value(neighbours,i);$(13_10)       $(13_10)        //if the neighbour nodes is in the closed set$(13_10)        //set the boolean closedSetContains to true, else false$(13_10)        var closedSetContains = false;$(13_10)        for (var j=0;j<ds_list_size(closedSet);++j)$(13_10)        {$(13_10)            var tmpNode = ds_list_find_value(closedSet,j);$(13_10)            if (tmpNode == neighbourNode)$(13_10)            {$(13_10)                closedSetContains = true;$(13_10)                break;$(13_10)            }$(13_10)        }$(13_10)       $(13_10)        //if the neighbour node isn't in the closed set$(13_10)        if (!closedSetContains)$(13_10)        {$(13_10)            //calculates new distance for the node$(13_10)            var newMovementCost = currentNode.gCost + scr_getDistance(currentNode,neighbourNode);$(13_10)           $(13_10)            //if the neighbour nodes is in the open set$(13_10)            //set the boolean openSetContains to true, else false$(13_10)            var openSetContains = false;$(13_10)            for (var j=0;j<ds_list_size(openSet);++j)$(13_10)            {$(13_10)                var tmpNode = ds_list_find_value(openSet,j);$(13_10)                if (tmpNode == neighbourNode)$(13_10)                {$(13_10)                    openSetContains = true;$(13_10)                    break;$(13_10)                }$(13_10)            }$(13_10)           $(13_10)            //if our new calculated movement cost is smaller than$(13_10)            //the neighbour node G cost, OR the neighbour node is not$(13_10)            //in the open set, then$(13_10)            if (newMovementCost < neighbourNode.gCost || !openSetContains)$(13_10)            {$(13_10)                //recalculate all the costs$(13_10)                neighbourNode.gCost = newMovementCost;$(13_10)                neighbourNode.hCost = scr_getDistance(neighbourNode,endNode);$(13_10)                neighbourNode.fCost = neighbourNode.gCost + neighbourNode.hCost;$(13_10)               $(13_10)                //set the parent to our current node (so we can retrace later)$(13_10)                neighbourNode.parent = currentNode;$(13_10)               $(13_10)                //and finally, if the neighbour node is not in the open set$(13_10)                //add it to the open set$(13_10)                if (!openSetContains)$(13_10)                    ds_list_add(openSet,neighbourNode);$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)   $(13_10)    //destroying temporary ds_list otherwise we will get a memory leak$(13_10)    ds_list_destroy(neighbours);$(13_10)}$(13_10) $(13_10)//destroying temporary ds_lists otherwise we will get a memory leak$(13_10)ds_list_destroy(openSet);$(13_10)ds_list_destroy(closedSet);$(13_10) $(13_10)//if our code doesn't return in the while statement,$(13_10)//a path has not been found - return false;$(13_10)return false;$(13_10)"
///scr_findPath(startNode, endNode, ds_list<obj_node>, max range)
 
var startNode = argument0;
var endNode = argument1;
var pathNodes = argument2;
var maxRange = argument3;
 
var openSet = ds_list_create(); //create open set
var closedSet = ds_list_create(); //create closed set

	//show_debug_message("start: " + string(startNode));
	//show_debug_message("end: " + string(endNode));
ds_list_add(openSet,startNode); //add starting node to open set
 
//while there are nodes in the open set, do the algorithm
//otherwise return false (path not found)
 
while(ds_list_size(openSet) > 0)
{
    //here we get the node with the lowest F cost (G cost + H cost)
    //from all the nodes in the open set
    //and remove it from the open set and
    //add it to the closed set
    var currentNode = ds_list_find_value(openSet,0);
    var index = 0;
	//show_debug_message("pathNodes: " + string(ds_list_size(pathNodes)));
	//show_debug_message("arg: " + string(ds_list_size(argument2)));
    for (var i=0;i<ds_list_size(openSet);++i)
    {
        var tmpNode = ds_list_find_value(openSet,i);
		//show_debug_message("tmp: " + string(tmpNode) + " currentNode: " + string(currentNode));
        if (tmpNode.fCost < currentNode.fCost)
        {
            currentNode = tmpNode;
            index = i;
        }
    }
    ds_list_delete(openSet,index);
    ds_list_add(closedSet,currentNode);
   
    //if our current node (from the open set) is our end node
    //return true (path found) and retrace path from end to start
    //and add nodes to the list
    if (currentNode == endNode)
    {
        ds_list_destroy(openSet);
        ds_list_destroy(closedSet);
       
        var currentNode = endNode;
       
        while (currentNode != startNode)
        {
            ds_list_insert(pathNodes,0,currentNode);
            currentNode = currentNode.parent;
        }
        ds_list_insert(pathNodes,0,startNode);
        return true;
    }
   
    //get neighbour nodes from current node
    var neighbours = scr_getNeighbours(currentNode,maxRange);
   
    //for each neighbour
    for (var i=0;i<ds_list_size(neighbours);++i)
    {
        var neighbourNode = ds_list_find_value(neighbours,i);
       
        //if the neighbour nodes is in the closed set
        //set the boolean closedSetContains to true, else false
        var closedSetContains = false;
        for (var j=0;j<ds_list_size(closedSet);++j)
        {
            var tmpNode = ds_list_find_value(closedSet,j);
            if (tmpNode == neighbourNode)
            {
                closedSetContains = true;
                break;
            }
        }
       
        //if the neighbour node isn't in the closed set
        if (!closedSetContains)
        {
            //calculates new distance for the node
            var newMovementCost = currentNode.gCost + scr_getDistance(currentNode,neighbourNode);
           
            //if the neighbour nodes is in the open set
            //set the boolean openSetContains to true, else false
            var openSetContains = false;
            for (var j=0;j<ds_list_size(openSet);++j)
            {
                var tmpNode = ds_list_find_value(openSet,j);
                if (tmpNode == neighbourNode)
                {
                    openSetContains = true;
                    break;
                }
            }
           
            //if our new calculated movement cost is smaller than
            //the neighbour node G cost, OR the neighbour node is not
            //in the open set, then
            if (newMovementCost < neighbourNode.gCost || !openSetContains)
            {
                //recalculate all the costs
                neighbourNode.gCost = newMovementCost;
                neighbourNode.hCost = scr_getDistance(neighbourNode,endNode);
                neighbourNode.fCost = neighbourNode.gCost + neighbourNode.hCost;
               
                //set the parent to our current node (so we can retrace later)
                neighbourNode.parent = currentNode;
               
                //and finally, if the neighbour node is not in the open set
                //add it to the open set
                if (!openSetContains)
                    ds_list_add(openSet,neighbourNode);
            }
        }
    }
   
    //destroying temporary ds_list otherwise we will get a memory leak
    ds_list_destroy(neighbours);
}
 
//destroying temporary ds_lists otherwise we will get a memory leak
ds_list_destroy(openSet);
ds_list_destroy(closedSet);
 
//if our code doesn't return in the while statement,
//a path has not been found - return false;
return false;