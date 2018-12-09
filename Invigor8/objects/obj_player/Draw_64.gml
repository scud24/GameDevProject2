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
/// @DnDArgument : "code" "if(show_switch_warning)$(13_10){	$(13_10)	draw_text_transformed(x+48,y+4, "Can't switch", 1, 1, 0);$(13_10)	draw_text_transformed(x+42,y+16, "formation in air", 1, 1, 0);$(13_10)}$(13_10)else if(current_formation = Formation.switch_prep)$(13_10){$(13_10)	var xoffset = 32;$(13_10)	var yoffset = 16;$(13_10)	if(room_width-x< 32+128)//32 + spr_formation_select_mask.sprite_width$(13_10)	{$(13_10)		xoffset = -32 - 128;//-32 - spr_formation_select_mask.sprite_width$(13_10)	}$(13_10)	$(13_10)	gpu_set_blendenable(false)$(13_10)	gpu_set_colorwriteenable(false,false,false,true);$(13_10)	draw_set_alpha(0);$(13_10)	draw_rectangle(0,0, room_width,room_height, false);$(13_10)	draw_set_alpha(1);$(13_10)	draw_sprite(spr_formation_select_mask,0, x+xoffset,y+yoffset);$(13_10)	gpu_set_blendenable(true);$(13_10)	gpu_set_colorwriteenable(true,true,true,true);$(13_10)	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);$(13_10)	gpu_set_alphatestenable(true);$(13_10)	draw_sprite(spr_formation_text1,0, x+xoffset,y+yoffset);$(13_10)	$(13_10)	angle_step = 360/num_formations;$(13_10)	var base_angle = 0;$(13_10)	var arrow_draw_angle = 0;//base_angle+formation_selection*angle_step;$(13_10)	selection_angle_offset = base_angle + (formation_selection * angle_step) - (substeps_remaining * angle_substep);$(13_10)	if(substeps_remaining > 0)$(13_10)	{$(13_10)		substeps_remaining--;$(13_10)	}$(13_10)	draw_set_valign(fa_middle);$(13_10)	draw_set_halign(fa_right);$(13_10)	draw_text_transformed(x+xoffset+120*dcos(selection_angle_offset-(0*angle_step)),y+yoffset+120*dsin(selection_angle_offset-(0*angle_step)), "Follow", 1.0, 1.0, 0);$(13_10)	draw_text_transformed(x+xoffset+120*dcos(selection_angle_offset-(1*angle_step)),y+yoffset+120*dsin(selection_angle_offset-(1*angle_step)), "Split", 1.0, 1.0, 0);$(13_10)	draw_text_transformed(x+xoffset+120*dcos(selection_angle_offset-(2*angle_step)),y+yoffset+120*dsin(selection_angle_offset-(2*angle_step)), "Assemble",1.0, 1.0, 0);$(13_10)	draw_text_transformed(x+xoffset+120*dcos(selection_angle_offset-(3*angle_step)),y+yoffset+120*dsin(selection_angle_offset-(3*angle_step)), "Swap Leader", 1.0, 1.0, 0);$(13_10)	//draw_text_transformed(x+xoffset+120*dcos(selection_angle_offset-(4*angle_step)),y+yoffset+120*dsin(selection_angle_offset-(4*angle_step)), "Coordinated",1.0, 1.0, 0);$(13_10)	$(13_10)	gpu_set_alphatestenable(false);$(13_10)	gpu_set_blendmode(bm_normal);$(13_10)	$(13_10)	$(13_10)	draw_text_transformed(x+xoffset+140,y+yoffset-20, formation_selection, 1.0, 1.0, 0);$(13_10)	if(formation_selection == 0)$(13_10)	{$(13_10)		draw_arrow(x+xoffset+ 140*dcos(arrow_draw_angle),y+yoffset+8+ 140*dsin(arrow_draw_angle),x+xoffset+ 120*dcos(arrow_draw_angle),y+yoffset+8+ 120*dsin(arrow_draw_angle), 16);$(13_10)	}$(13_10)	else if(formation_selection == 1)$(13_10)	{$(13_10)		draw_arrow(x+xoffset+ 140*dcos(arrow_draw_angle),y+yoffset+8+ 140*dsin(arrow_draw_angle),x+xoffset+ 120*dcos(arrow_draw_angle),y+yoffset+8+ 120*dsin(arrow_draw_angle), 16);$(13_10)	}$(13_10)	else if(formation_selection == 2)$(13_10)	{$(13_10)		draw_arrow(x+xoffset+ 140*dcos(arrow_draw_angle),y+yoffset+8+ 140*dsin(arrow_draw_angle),x+xoffset+ 120*dcos(arrow_draw_angle),y+yoffset+8+ 120*dsin(arrow_draw_angle), 16);$(13_10)	}$(13_10)	$(13_10)	draw_set_valign(fa_top);$(13_10)	draw_set_halign(fa_left);$(13_10)	$(13_10)	if(formation_selection == 1)$(13_10)	{$(13_10)		draw_set_halign(fa_right)$(13_10)		draw_text_transformed(x+xoffset+176,y+yoffset-10, "Wait", 1.0, 1.0,0);$(13_10)		draw_set_halign(fa_left)$(13_10)		draw_text_transformed(x+xoffset+180,y+yoffset-10, "Follow", 1.0, 1.0, 0);$(13_10)		$(13_10)		draw_set_halign(fa_right)$(13_10)		draw_text_transformed(x+xoffset+176,y+yoffset-0, string(links_after-links_following_after_split), 1.0, 1.0,0);$(13_10)		draw_set_halign(fa_left)$(13_10)		draw_text_transformed(x+xoffset+180,y+yoffset-0, string(links_following_after_split), 1.0, 1.0, 0);$(13_10)	}$(13_10)$(13_10)	$(13_10)}$(13_10)if(current_formation=Formation.swap_lead)$(13_10){$(13_10)	draw_text(x,y-60, selected_character_index);	$(13_10)	draw_text(x+30,y-60, ds_list_size(lead_links));$(13_10)	if(selected_character != pointer_null)$(13_10)	{$(13_10)		//selected_character.image_blend = c_white;$(13_10)	}$(13_10)	selected_character = ds_list_find_value(lead_links, selected_character_index);$(13_10)	//selected_character.image_blend = make_color_rgb(255,255,100);$(13_10)	var yoffset_sprite = ((selected_character.sprite_height*1.1)-selected_character.sprite_height)/2;$(13_10)	draw_sprite_ext(selected_character.sprite_index,-1, selected_character.x, selected_character.y-yoffset_sprite, 1.1, 1.1,0,c_yellow, 255);$(13_10)}"
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
	
	angle_step = 360/num_formations;
	var base_angle = 0;
	var arrow_draw_angle = 0;//base_angle+formation_selection*angle_step;
	selection_angle_offset = base_angle + (formation_selection * angle_step) - (substeps_remaining * angle_substep);
	if(substeps_remaining > 0)
	{
		substeps_remaining--;
	}
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	draw_text_transformed(x+xoffset+120*dcos(selection_angle_offset-(0*angle_step)),y+yoffset+120*dsin(selection_angle_offset-(0*angle_step)), "Follow", 1.0, 1.0, 0);
	draw_text_transformed(x+xoffset+120*dcos(selection_angle_offset-(1*angle_step)),y+yoffset+120*dsin(selection_angle_offset-(1*angle_step)), "Split", 1.0, 1.0, 0);
	draw_text_transformed(x+xoffset+120*dcos(selection_angle_offset-(2*angle_step)),y+yoffset+120*dsin(selection_angle_offset-(2*angle_step)), "Assemble",1.0, 1.0, 0);
	draw_text_transformed(x+xoffset+120*dcos(selection_angle_offset-(3*angle_step)),y+yoffset+120*dsin(selection_angle_offset-(3*angle_step)), "Swap Leader", 1.0, 1.0, 0);
	//draw_text_transformed(x+xoffset+120*dcos(selection_angle_offset-(4*angle_step)),y+yoffset+120*dsin(selection_angle_offset-(4*angle_step)), "Coordinated",1.0, 1.0, 0);
	
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	
	draw_text_transformed(x+xoffset+140,y+yoffset-20, formation_selection, 1.0, 1.0, 0);
	if(formation_selection == 0)
	{
		draw_arrow(x+xoffset+ 140*dcos(arrow_draw_angle),y+yoffset+8+ 140*dsin(arrow_draw_angle),x+xoffset+ 120*dcos(arrow_draw_angle),y+yoffset+8+ 120*dsin(arrow_draw_angle), 16);
	}
	else if(formation_selection == 1)
	{
		draw_arrow(x+xoffset+ 140*dcos(arrow_draw_angle),y+yoffset+8+ 140*dsin(arrow_draw_angle),x+xoffset+ 120*dcos(arrow_draw_angle),y+yoffset+8+ 120*dsin(arrow_draw_angle), 16);
	}
	else if(formation_selection == 2)
	{
		draw_arrow(x+xoffset+ 140*dcos(arrow_draw_angle),y+yoffset+8+ 140*dsin(arrow_draw_angle),x+xoffset+ 120*dcos(arrow_draw_angle),y+yoffset+8+ 120*dsin(arrow_draw_angle), 16);
	}
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	if(formation_selection == 1)
	{
		draw_set_halign(fa_right)
		draw_text_transformed(x+xoffset+176,y+yoffset-10, "Wait", 1.0, 1.0,0);
		draw_set_halign(fa_left)
		draw_text_transformed(x+xoffset+180,y+yoffset-10, "Follow", 1.0, 1.0, 0);
		
		draw_set_halign(fa_right)
		draw_text_transformed(x+xoffset+176,y+yoffset-0, string(links_after-links_following_after_split), 1.0, 1.0,0);
		draw_set_halign(fa_left)
		draw_text_transformed(x+xoffset+180,y+yoffset-0, string(links_following_after_split), 1.0, 1.0, 0);
	}

	
}
if(current_formation=Formation.swap_lead)
{
	draw_text(x,y-60, selected_character_index);	
	draw_text(x+30,y-60, ds_list_size(lead_links));
	if(selected_character != pointer_null)
	{
		//selected_character.image_blend = c_white;
	}
	selected_character = ds_list_find_value(lead_links, selected_character_index);
	//selected_character.image_blend = make_color_rgb(255,255,100);
	var yoffset_sprite = ((selected_character.sprite_height*1.1)-selected_character.sprite_height)/2;
	draw_sprite_ext(selected_character.sprite_index,-1, selected_character.x, selected_character.y-yoffset_sprite, 1.1, 1.1,0,c_yellow, 255);
}