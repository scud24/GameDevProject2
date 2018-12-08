/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6B8E4098
/// @DnDArgument : "code" "//draw the path between all the nodes if it's found$(13_10)if (found && nodes_set_up)$(13_10){$(13_10)    for (var i=0;i<ds_list_size(pathNodes)-1;++i)$(13_10)    {$(13_10)        var inst1 = ds_list_find_value(pathNodes,i);$(13_10)        var inst2 = ds_list_find_value(pathNodes,i+1);$(13_10)        draw_line(inst1.x,inst1.y,inst2.x,inst2.y);$(13_10)    }$(13_10)}$(13_10)draw_text(x,y,move_type);$(13_10)draw_text(x,y+48,current_movement);$(13_10)if(current_node != pointer_null) draw_text(x,y+16,current_node.object_index);$(13_10)if(jump_target != pointer_null)$(13_10){$(13_10)	draw_text(x,y+32,jump_target.object_index);$(13_10)	draw_ellipse_color(jump_target.x-8,jump_target.y-8,jump_target.x+8,jump_target.y+8, c_blue, c_blue, false);$(13_10)	if(jump_target.object_index == obj_path_node || jump_target.object_index == obj_moving_platform_target_node)$(13_10)	{$(13_10)		if(jump_target.node_active)$(13_10)		{$(13_10)			draw_ellipse_color(x-24,y-8-32,x+8,y+8-32, c_green, c_green, false);$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			draw_ellipse_color(x-24,y-8-32,x-8,y+8-32, c_red, c_red, false);$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		draw_ellipse_color(x-24,y-8-32,x-8,y+8-32, c_yellow, c_yellow, false);$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)	draw_ellipse_color(x-24,y-8-32,x-8,y+8-32, c_yellow, c_yellow, false);$(13_10)}$(13_10)draw_text_transformed_color(x-23,y-8-32,"A",1,1,0,c_black,c_black,c_black,c_black,255);$(13_10)$(13_10)$(13_10)if(current_node!=pointer_null)$(13_10){$(13_10)	draw_ellipse_color(current_node.x-8,current_node.y-8,current_node.x+8,current_node.y+8, c_yellow, c_yellow, false);$(13_10)	if(current_node.node_active)$(13_10)	{$(13_10)		draw_ellipse_color(x-8,y-8-16,x+8,y+8-16, c_green, c_green, false);$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		draw_ellipse_color(x-8,y-8-16,x+8,y+8-16, c_red, c_red, false);$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)	draw_ellipse_color(x-8,y-8-16,x+8,y+8-16, c_yellow, c_yellow, false);$(13_10)}$(13_10)draw_text_transformed_color(x-7,y-8-16,"N",1,1,0,c_black,c_black,c_black,c_black,255);$(13_10)$(13_10)if(jump_target != pointer_null && current_node != pointer_null)$(13_10){$(13_10)	if(current_node.id == jump_target)$(13_10)	{$(13_10)		draw_ellipse_color(x-24,y-8-16,x-8,y+8-16, c_aqua, c_aqua, false);$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		draw_ellipse_color(x-24,y-8-16,x-8,y+8-16, c_fuchsia, c_fuchsia, false);$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)		draw_ellipse_color(x-24,y-8-16,x-8,y+8-16, c_maroon, c_maroon, false);$(13_10)}$(13_10)draw_text_transformed_color(x-23,y-8-16,"J",1,1,0,c_black,c_black,c_black,c_black,255);$(13_10)$(13_10)if(current_assemble_state == AssembleState.holding_for_node)$(13_10){	$(13_10)	draw_ellipse_color(x-8,y-8-32,x+8,y+8-32, c_orange, c_orange, false);$(13_10)}$(13_10)else$(13_10){	$(13_10)	draw_ellipse_color(x-8,y-8-32,x+8,y+8-32, c_purple, c_purple, false);$(13_10)}$(13_10)draw_text_transformed_color(x-7,y-8-32,"H",1,1,0,c_black,c_black,c_black,c_black,255);$(13_10)$(13_10)if(current_movement == Movement.idle)$(13_10){$(13_10)	draw_ellipse_color(x-8+16,y-8-16,x+8+16,y+8-16, c_red, c_red, false);$(13_10)}$(13_10)else$(13_10){$(13_10)	draw_ellipse_color(x-8+16,y-8-16,x+8+16,y+8-16, c_green, c_green, false);$(13_10)}$(13_10)draw_text_transformed_color(x-7+16,y-8-16,"M",1,1,0,c_black,c_black,c_black,c_black,255);"
//draw the path between all the nodes if it's found
if (found && nodes_set_up)
{
    for (var i=0;i<ds_list_size(pathNodes)-1;++i)
    {
        var inst1 = ds_list_find_value(pathNodes,i);
        var inst2 = ds_list_find_value(pathNodes,i+1);
        draw_line(inst1.x,inst1.y,inst2.x,inst2.y);
    }
}
draw_text(x,y,move_type);
draw_text(x,y+48,current_movement);
if(current_node != pointer_null) draw_text(x,y+16,current_node.object_index);
if(jump_target != pointer_null)
{
	draw_text(x,y+32,jump_target.object_index);
	draw_ellipse_color(jump_target.x-8,jump_target.y-8,jump_target.x+8,jump_target.y+8, c_blue, c_blue, false);
	if(jump_target.object_index == obj_path_node || jump_target.object_index == obj_moving_platform_target_node)
	{
		if(jump_target.node_active)
		{
			draw_ellipse_color(x-24,y-8-32,x+8,y+8-32, c_green, c_green, false);
		}
		else
		{
			draw_ellipse_color(x-24,y-8-32,x-8,y+8-32, c_red, c_red, false);
		}
	}
	else
	{
		draw_ellipse_color(x-24,y-8-32,x-8,y+8-32, c_yellow, c_yellow, false);
	}
}
else
{
	draw_ellipse_color(x-24,y-8-32,x-8,y+8-32, c_yellow, c_yellow, false);
}
draw_text_transformed_color(x-23,y-8-32,"A",1,1,0,c_black,c_black,c_black,c_black,255);


if(current_node!=pointer_null)
{
	draw_ellipse_color(current_node.x-8,current_node.y-8,current_node.x+8,current_node.y+8, c_yellow, c_yellow, false);
	if(current_node.node_active)
	{
		draw_ellipse_color(x-8,y-8-16,x+8,y+8-16, c_green, c_green, false);
	}
	else
	{
		draw_ellipse_color(x-8,y-8-16,x+8,y+8-16, c_red, c_red, false);
	}
}
else
{
	draw_ellipse_color(x-8,y-8-16,x+8,y+8-16, c_yellow, c_yellow, false);
}
draw_text_transformed_color(x-7,y-8-16,"N",1,1,0,c_black,c_black,c_black,c_black,255);

if(jump_target != pointer_null && current_node != pointer_null)
{
	if(current_node.id == jump_target)
	{
		draw_ellipse_color(x-24,y-8-16,x-8,y+8-16, c_aqua, c_aqua, false);
	}
	else
	{
		draw_ellipse_color(x-24,y-8-16,x-8,y+8-16, c_fuchsia, c_fuchsia, false);
	}
}
else
{
		draw_ellipse_color(x-24,y-8-16,x-8,y+8-16, c_maroon, c_maroon, false);
}
draw_text_transformed_color(x-23,y-8-16,"J",1,1,0,c_black,c_black,c_black,c_black,255);

if(current_assemble_state == AssembleState.holding_for_node)
{	
	draw_ellipse_color(x-8,y-8-32,x+8,y+8-32, c_orange, c_orange, false);
}
else
{	
	draw_ellipse_color(x-8,y-8-32,x+8,y+8-32, c_purple, c_purple, false);
}
draw_text_transformed_color(x-7,y-8-32,"H",1,1,0,c_black,c_black,c_black,c_black,255);

if(current_movement == Movement.idle)
{
	draw_ellipse_color(x-8+16,y-8-16,x+8+16,y+8-16, c_red, c_red, false);
}
else
{
	draw_ellipse_color(x-8+16,y-8-16,x+8+16,y+8-16, c_green, c_green, false);
}
draw_text_transformed_color(x-7+16,y-8-16,"M",1,1,0,c_black,c_black,c_black,c_black,255);