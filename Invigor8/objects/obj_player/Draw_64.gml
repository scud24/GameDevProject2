/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 28151F67
/// @DnDArgument : "caption" ""Units following player: ""
/// @DnDArgument : "text" "links_after"
draw_text_transformed(0, 0, string("Units following player: ") + string(links_after), 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 784E6785
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""Child_Link: ""
/// @DnDArgument : "text" "child_link"
draw_text_transformed(0, 30, string("Child_Link: ") + string(child_link), 1, 1, 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 48358BDC
/// @DnDArgument : "code" "if(show_switch_warning)$(13_10){	$(13_10)	draw_text_transformed(x+48,y+4, "Can't switch", 1, 1, 0);$(13_10)	draw_text_transformed(x+42,y+16, "formation in air", 1, 1, 0);$(13_10)}$(13_10)else if(current_formation = Formation.switch_prep)$(13_10){$(13_10)	var xoffset = 32;$(13_10)	var yoffset = 16;$(13_10)	if(room_width-x< 32+128)//32 + spr_formation_select_mask.sprite_width$(13_10)	{$(13_10)		xoffset = -32 - 128;//-32 - spr_formation_select_mask.sprite_width$(13_10)	}$(13_10)	$(13_10)	gpu_set_blendenable(false)$(13_10)	gpu_set_colorwriteenable(false,false,false,true);$(13_10)	draw_set_alpha(0);$(13_10)	draw_rectangle(0,0, room_width,room_height, false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_sprite(spr_formation_select_mask,0, x+xoffset,y+yoffset);$(13_10)	gpu_set_blendenable(true);$(13_10)	gpu_set_colorwriteenable(true,true,true,true);$(13_10)	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);$(13_10)	gpu_set_alphatestenable(true);$(13_10)	draw_sprite(spr_formation_text1,0, x+xoffset,y+yoffset);$(13_10)	gpu_set_alphatestenable(false);$(13_10)	gpu_set_blendmode(bm_normal);$(13_10)	$(13_10)	draw_set_valign(fa_middle);$(13_10)	draw_text_transformed(x+xoffset+40*dcos(-32),y+yoffset+40*dsin(-32), "Follow", 1.3, 1.3, 32);$(13_10)	draw_text_transformed(x+xoffset+62*dcos(0),y+yoffset+62*dsin(0), "Wait", 1.5, 1.5, 0);$(13_10)	draw_text_transformed(x+xoffset+36*dcos(32),y+yoffset+36*dsin(32), "Assemble",1.2, 1.2, -32);$(13_10)	$(13_10)	var angle_step = 32;$(13_10)	var base_angle = -32;$(13_10)	var draw_angle = base_angle+formation_selection*angle_step;$(13_10)	if(formation_selection == 0)$(13_10)	{$(13_10)		draw_arrow(x+xoffset+ 140*dcos(draw_angle),y+yoffset+8+ 140*dsin(draw_angle),x+xoffset+ 120*dcos(draw_angle),y+yoffset+8+ 120*dsin(draw_angle), 16);$(13_10)	}$(13_10)	else if(formation_selection == 1)$(13_10)	{$(13_10)		draw_arrow(x+xoffset+ 140*dcos(draw_angle),y+yoffset+8+ 140*dsin(draw_angle),x+xoffset+ 120*dcos(draw_angle),y+yoffset+8+ 120*dsin(draw_angle), 16);$(13_10)	}$(13_10)	else if(formation_selection == 2)$(13_10)	{$(13_10)		draw_arrow(x+xoffset+ 140*dcos(draw_angle),y+8+ 140*dsin(draw_angle),x+xoffset+ 120*dcos(draw_angle),y+8+ 120*dsin(draw_angle), 16);$(13_10)	}$(13_10)}"
if(show_switch_warning)
{	
	draw_text_transformed(x+48,y+4, "Can't switch", 1, 1, 0);
	draw_text_transformed(x+42,y+16, "formation in air", 1, 1, 0);
}
else if(current_formation = Formation.switch_prep)
{
	var xoffset = 32;
	var yoffset = 16;
	if(room_width-x< 32+128)//32 + spr_formation_select_mask.sprite_width
	{
		xoffset = -32 - 128;//-32 - spr_formation_select_mask.sprite_width
	}
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0, room_width,room_height, false);
	draw_set_alpha(1);
	draw_sprite(spr_formation_select_mask,0, x+xoffset,y+yoffset);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite(spr_formation_text1,0, x+xoffset,y+yoffset);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	draw_set_valign(fa_middle);
	draw_text_transformed(x+xoffset+40*dcos(-32),y+yoffset+40*dsin(-32), "Follow", 1.3, 1.3, 32);
	draw_text_transformed(x+xoffset+62*dcos(0),y+yoffset+62*dsin(0), "Wait", 1.5, 1.5, 0);
	draw_text_transformed(x+xoffset+36*dcos(32),y+yoffset+36*dsin(32), "Assemble",1.2, 1.2, -32);
	
	var angle_step = 32;
	var base_angle = -32;
	var draw_angle = base_angle+formation_selection*angle_step;
	if(formation_selection == 0)
	{
		draw_arrow(x+xoffset+ 140*dcos(draw_angle),y+yoffset+8+ 140*dsin(draw_angle),x+xoffset+ 120*dcos(draw_angle),y+yoffset+8+ 120*dsin(draw_angle), 16);
	}
	else if(formation_selection == 1)
	{
		draw_arrow(x+xoffset+ 140*dcos(draw_angle),y+yoffset+8+ 140*dsin(draw_angle),x+xoffset+ 120*dcos(draw_angle),y+yoffset+8+ 120*dsin(draw_angle), 16);
	}
	else if(formation_selection == 2)
	{
		draw_arrow(x+xoffset+ 140*dcos(draw_angle),y+8+ 140*dsin(draw_angle),x+xoffset+ 120*dcos(draw_angle),y+8+ 120*dsin(draw_angle), 16);
	}
}