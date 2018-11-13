/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E341704
/// @DnDArgument : "code" "randomize(); //get random node positions for the sake of this example$(13_10) $(13_10)//add 100 nodes to the room$(13_10)for (var i=0; i<100;++i)$(13_10){$(13_10)    new_node = instance_create_layer(random(room_width),random(room_height), "Instances", obj_node);$(13_10)	with(new_node)$(13_10)	{$(13_10)		alarm_set(0,2);$(13_10)		parent = pointer_null;$(13_10)	}$(13_10)}$(13_10) $(13_10)//get a random start and end node from all the nodes$(13_10)startNode = instance_id[irandom(instance_number(obj_node)-1)];$(13_10)endNode = instance_id[irandom(instance_number(obj_node)-1)];$(13_10) $(13_10)//start node is green, end node is red$(13_10)with (startNode)$(13_10){$(13_10)    image_blend = c_green;$(13_10)}$(13_10) $(13_10)with (endNode)$(13_10){$(13_10)    image_blend = c_red;$(13_10)}$(13_10) $(13_10)//we will store all nodes from the path here$(13_10)//including the start and end nodes$(13_10)pathNodes = ds_list_create();$(13_10)maxRange = 128; //how far apart can the nodes be before they are too far away from each other$(13_10)found = false; //just a boolean if there is a current path found$(13_10)current_node = pointer_null;"
randomize(); //get random node positions for the sake of this example
 
//add 100 nodes to the room
for (var i=0; i<100;++i)
{
    new_node = instance_create_layer(random(room_width),random(room_height), "Instances", obj_node);
	with(new_node)
	{
		alarm_set(0,2);
		parent = pointer_null;
	}
}
 
//get a random start and end node from all the nodes
startNode = instance_id[irandom(instance_number(obj_node)-1)];
endNode = instance_id[irandom(instance_number(obj_node)-1)];
 
//start node is green, end node is red
with (startNode)
{
    image_blend = c_green;
}
 
with (endNode)
{
    image_blend = c_red;
}
 
//we will store all nodes from the path here
//including the start and end nodes
pathNodes = ds_list_create();
maxRange = 128; //how far apart can the nodes be before they are too far away from each other
found = false; //just a boolean if there is a current path found
current_node = pointer_null;