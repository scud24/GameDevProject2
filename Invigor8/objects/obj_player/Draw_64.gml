/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 28151F67
/// @DnDArgument : "caption" ""Units following player: ""
/// @DnDArgument : "text" "links_after"
draw_text_transformed(0, 0, string("Units following player: ") + string(links_after), 1, 1, 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 48358BDC
/// @DnDArgument : "code" "if(current_formation = Formation.switch_prep)$(13_10){$(13_10)	gpu_set_blendenable(false)$(13_10)	gpu_set_colorwriteenable(false,false,false,true);$(13_10)	draw_set_alpha(0);$(13_10)	draw_rectangle(0,0, room_width,room_height, false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_sprite(spr_formation_select_mask,0, x+32,y+16);$(13_10)	gpu_set_blendenable(true);$(13_10)	gpu_set_colorwriteenable(true,true,true,true);$(13_10)	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);$(13_10)	gpu_set_alphatestenable(true);$(13_10)	draw_sprite(spr_formation_text,0, x+32,y+16);$(13_10)	gpu_set_alphatestenable(false);$(13_10)	gpu_set_blendmode(bm_normal);$(13_10)	$(13_10)	$(13_10)	draw_text_transformed(x+42,y+4, "Follow", 1.3, 1.3, 45);$(13_10)	draw_text_transformed(x+38,y+2, "  Wait", 1.5, 1.5, 0);$(13_10)	draw_text_transformed(x+48,y+2, "Assemble",1.2, 1.2, -45);$(13_10)	$(13_10)	if(formation_selection == 0)$(13_10)	{$(13_10)		draw_arrow(x+32+ 140*dcos(-25),y+8+ 140*dsin(-25),x+32+ 120*dcos(-25),y+8+ 120*dsin(-25), 16);$(13_10)	}$(13_10)	else if(formation_selection == 1)$(13_10)	{$(13_10)		draw_arrow(x+32+ 140*dcos(0),y+8+ 140*dsin(0),x+32+ 120*dcos(0),y+8+ 120*dsin(0), 16);$(13_10)	}$(13_10)	else if(formation_selection == 2)$(13_10)	{$(13_10)		draw_arrow(x+32+ 140*dcos(25),y+8+ 140*dsin(25),x+32+ 120*dcos(25),y+8+ 120*dsin(25), 16);$(13_10)	}$(13_10)}"
if(current_formation = Formation.switch_prep)
{
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0, room_width,room_height, false);
	draw_set_alpha(1);
	draw_sprite(spr_formation_select_mask,0, x+32,y+16);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite(spr_formation_text,0, x+32,y+16);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	
	draw_text_transformed(x+42,y+4, "Follow", 1.3, 1.3, 45);
	draw_text_transformed(x+38,y+2, "  Wait", 1.5, 1.5, 0);
	draw_text_transformed(x+48,y+2, "Assemble",1.2, 1.2, -45);
	
	if(formation_selection == 0)
	{
		draw_arrow(x+32+ 140*dcos(-25),y+8+ 140*dsin(-25),x+32+ 120*dcos(-25),y+8+ 120*dsin(-25), 16);
	}
	else if(formation_selection == 1)
	{
		draw_arrow(x+32+ 140*dcos(0),y+8+ 140*dsin(0),x+32+ 120*dcos(0),y+8+ 120*dsin(0), 16);
	}
	else if(formation_selection == 2)
	{
		draw_arrow(x+32+ 140*dcos(25),y+8+ 140*dsin(25),x+32+ 120*dcos(25),y+8+ 120*dsin(25), 16);
	}
}