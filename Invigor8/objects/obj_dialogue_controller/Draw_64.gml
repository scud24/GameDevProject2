/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 44C2DF78
/// @DnDArgument : "code" "if( !fetch ){$(13_10)	$(13_10)	draw_set_font (fnt_dialogue);$(13_10)	$(13_10)	var x_offset = 0;$(13_10)	if(dialogue_avatar != "") {$(13_10)		if(dialogue_leftSide) {$(13_10)			x_offset = -32$(13_10)		} else $(13_10)			x_offset = 32$(13_10)	}$(13_10)	$(13_10)	var x_pos = camera_get_view_width(view_camera[0]) / 2  - 96 - x_offset;$(13_10)	var y_pos = camera_get_view_height(view_camera[0]) -100 ;$(13_10)	$(13_10)	//draw diag box$(13_10)	draw_set_halign(fa_left); //make font left alligned$(13_10)	draw_sprite(spr_diagbox, 0, x_pos, y_pos);$(13_10)	draw_text_ext(x_pos+10, y_pos + 6, string_hash_to_newline(dialogue_output), 16, 175)$(13_10)	$(13_10)	//draw avatar$(13_10)	if(dialogue_avatar != ""){$(13_10)		if(dialogue_leftSide) {$(13_10)			//draw_sprite(spr_portrait_box, 1, x_pos - 61, y_pos);$(13_10)			draw_sprite(dialogue_avatar, 0, x_pos - 56, y_pos + 4);$(13_10)		} else{$(13_10)			//draw_sprite(spr_portrait_box, 0, x_pos + 186, y_pos);$(13_10)			draw_sprite_ext(dialogue_avatar, 0, x_pos + 248 , y_pos + 4, -1 , 1, 0, c_white, 1);$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}"
if( !fetch ){
	
	draw_set_font (fnt_dialogue);
	
	var x_offset = 0;
	if(dialogue_avatar != "") {
		if(dialogue_leftSide) {
			x_offset = -32
		} else 
			x_offset = 32
	}
	
	var x_pos = camera_get_view_width(view_camera[0]) / 2  - 96 - x_offset;
	var y_pos = camera_get_view_height(view_camera[0]) -100 ;
	
	//draw diag box
	draw_set_halign(fa_left); //make font left alligned
	draw_sprite(spr_diagbox, 0, x_pos, y_pos);
	draw_text_ext(x_pos+10, y_pos + 6, string_hash_to_newline(dialogue_output), 16, 175)
	
	//draw avatar
	if(dialogue_avatar != ""){
		if(dialogue_leftSide) {
			//draw_sprite(spr_portrait_box, 1, x_pos - 61, y_pos);
			draw_sprite(dialogue_avatar, 0, x_pos - 56, y_pos + 4);
		} else{
			//draw_sprite(spr_portrait_box, 0, x_pos + 186, y_pos);
			draw_sprite_ext(dialogue_avatar, 0, x_pos + 248 , y_pos + 4, -1 , 1, 0, c_white, 1);
		}
	}
	
}