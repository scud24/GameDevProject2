/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 769DF86C
/// @DnDArgument : "code" "//draw the path between all the nodes if it's found$(13_10)if (found && nodes_set_up)$(13_10){$(13_10)    for (var i=0;i<ds_list_size(pathNodes)-1;++i)$(13_10)    {$(13_10)        var inst1 = ds_list_find_value(pathNodes,i);$(13_10)        var inst2 = ds_list_find_value(pathNodes,i+1);$(13_10)        draw_line(inst1.x,inst1.y,inst2.x,inst2.y);$(13_10)    }$(13_10)}$(13_10)"
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