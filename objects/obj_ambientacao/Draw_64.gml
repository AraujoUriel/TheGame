/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _guih = display_get_gui_height();
var _guiw = display_get_gui_width();
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if(num == 1)
{
	if(musica == 0)
	{
		audio_play_sound(snd_momento_morte, 1, 0);
		musica = 1;
	}
	if(musica ==1)
	{
		if!(audio_is_playing(snd_momento_morte))
		{
			audio_play_sound(snd_momento_morte_looping, 1, true);
			musica = 2;
		}
	}
	
	draw_sprite_ext(spr_wake_up, 0, _guiw/2, _guih/2, 10, 10, image_angle, image_blend, alpha);
	
	var _wake_upw = sprite_get_width(spr_wake_up) * 10;
	var _wake_uph = sprite_get_height(spr_wake_up) * 10;
	
	if(point_in_rectangle(_mx, _my, _guiw/2 - _wake_upw/2, _guih/2 - _wake_uph/2, _guiw/2 + _wake_upw/2, _guih/2 + _wake_uph/2 + 10))
	{
		alpha = lerp(alpha, 1, 0.1);
		
		if (mouse_check_button_pressed(mb_left)) 
		{
			global.reset = true;
		}
	}
	else
	{
		alpha = lerp(alpha, 0.7, 0.1);
	}
}