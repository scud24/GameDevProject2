/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4538D0FC
/// @DnDArgument : "code" "$(13_10)if(sprite_offset <768){$(13_10)sprite_offset +=0.3;$(13_10)} else {$(13_10)layer_vspeed("Background", 0);$(13_10)room_goto_next();$(13_10)}$(13_10)"

if(sprite_offset <768){
sprite_offset +=0.3;
} else {
layer_vspeed("Background", 0);
room_goto_next();
}