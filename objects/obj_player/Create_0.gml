
event_inherited();

#region Movimentação e colisão
//Variaveis
velh = 0;
velv = 0;
velocidade = 1.8;
acel = 0.2;

#endregion

#region Animação

estado = noone;
face = 0;
sprite = sprite_index;
sprites = [];
val = 0;
direcao = "direita";

sprites =	[
			  //Parado
			  [spr_protagonista_parada_down_right, spr_protagonista_parada_down_left, spr_protagonista_parada_up_left, spr_protagonista_parada_up_right],
			  //Andando
			  [spr_protagonista_andando_down_right, spr_protagonista_andando_up, spr_protagonista_andando_down_left, spr_protagonista_andando_down_left, spr_protagonista_andando_up_right],
			];


estado_parado = function()
{
	var _up		= keyboard_check(vk_up);
	var _down	= keyboard_check(vk_down);
	var _left	= keyboard_check(vk_left);
	var _right	= keyboard_check(vk_right);
	
	velv = 0;
	velh = 0;
	
	if (face = 4) face = 3;
	
	if(direcao = "esquerda" and face = 2)
	{
		face = 1;
	}
	
	val = 4;
	sprite =  sprites[0][face];
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
	
	if(direcao == noone)
	{
		if(face == 1 or face == 2) direcao = "esquerda";
		if(face == 3 or face == 0) direcao = "direita";
		
		var _up		= keyboard_check(vk_up);
		var _down	= keyboard_check(vk_down);
		var _left	= keyboard_check(vk_left);
		var _right	= keyboard_check(vk_right);

		if(direcao = "esquerda")
		{
			if (_left) face = 2;
			if (_up) face = 1;
			if (_down) face = 3;
		}
		else if (direcao = "direita")
		{
			if (_right) face = 0;
			if (_up) face = 4;
			if (_down) face = 0;
		}
	}
	
	sprite =  sprites[1][face];
	sprite_set_speed(sprite_index, val, spritespeed_framespersecond);
	
	if (abs(velv) < 0.2 and abs(velh) < 0.2)
	{
		estado = estado_parado;
		
		
		if (direcao = "esquerda" and face = 1) 
		{
			face = 2;
			direcao = noone;
		}
		else if (direcao = "esquerda" and face = 3 or face = 2)
		{
			face = 1;
			direcao = noone;
		}
	}
}

estado = estado_parado

#endregion