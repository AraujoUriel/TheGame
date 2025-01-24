
event_inherited();

#region Movimentação e colisão
//Variaveis
velh = 0;
velv = 0;
velocidade = 3;
acel = 0.2;

#endregion

#region Animação

estado = noone;
face = 0;
sprite = sprite_index;
sprites = [];
val = 0;

sprites =	[
			  //Parado
			  [spr_protagonista_andando_down_right, spr_protagonista_andando_up, spr_protagonista_andando_down_left, spr_protagonista_andando_down_right, spr_protagonista_andando_up_right],
			  //Andando
			  [spr_protagonista_parada_down, spr_protagonista_parada_up, spr_protagonista_parada_down, spr_protagonista_parada_down],
			];


estado_parado = function()
{
	var _up		= keyboard_check(vk_up);
	var _down	= keyboard_check(vk_down);
	var _left	= keyboard_check(vk_left);
	var _right	= keyboard_check(vk_right);
	
	if(face = 4) face = 1;

	velv = 0;
	velh = 0;
	
	val = 4;

	sprite =  sprites[1][face];
	sprite_set_speed(sprite_index, val, spritespeed_framespersecond);
	
	if ((_up xor _down) or (_left xor _right))
	{
		estado = estado_movendo;
	}
}

estado_movendo = function()
{
	val = 11;
	acel = 0.2;
	
	sprite_set_speed(sprite_index, val, spritespeed_framespersecond);
	sprite =  sprites[0][face];
	
	if (abs(velv) <= 0.2 and abs(velh) <= 0.2)
	{
		estado = estado_parado;
	}
}

estado = estado_parado

#endregion