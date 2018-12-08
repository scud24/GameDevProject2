/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E674771
/// @DnDArgument : "code" "pause_game = !pause_game;$(13_10)if(!sprite_exists(screenShot)){$(13_10)        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    $(13_10)    }$(13_10)if(pause_game)$(13_10){$(13_10)	instance_deactivate_all(1);$(13_10)}$(13_10)else$(13_10){$(13_10)	if(sprite_exists(screenShot)){$(13_10)        sprite_delete(screenShot);$(13_10)    }$(13_10)	instance_activate_all();$(13_10)}"
pause_game = !pause_game;
if(!sprite_exists(screenShot)){
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
    }
if(pause_game)
{
	instance_deactivate_all(1);
}
else
{
	if(sprite_exists(screenShot)){
        sprite_delete(screenShot);
    }
	instance_activate_all();
}