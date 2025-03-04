
if(animacao == noone)
{
	keyboard_set_map(ord("W"), vk_up);
	keyboard_set_map(ord("S"), vk_down);
	keyboard_set_map(ord("A"), vk_left);
	keyboard_set_map(ord("D"), vk_right);

	var _up		= keyboard_check(vk_up);
	var _down	= keyboard_check(vk_down);
	var _left	= keyboard_check(vk_left);
	var _right	= keyboard_check(vk_right);

	if ((_up xor _down) or (_left xor _right))
	{
		var _dir = point_direction(0,0, (_right - _left), (_down - _up));

		var _max_velh = lengthdir_x(velocidade, _dir);
		velh = lerp(velh, _max_velh, acel);

		var _max_velv = lengthdir_y(velocidade, _dir);
		velv = lerp(velv, _max_velv, acel);
	}
	else
	{
		velh = 0;
		velv = 0;
	}

	#region faces
	
	if (_left) direcao = "esquerda";
	if (_right) direcao = "direita";

	if(direcao = "esquerda")
	{
		if (_left) face = 1;
		if (_up) face = 2;
		if (_down) face = 4;
	}
	else if (direcao = "direita")
	{
		if (_right) face = 0;
		if (_up) face = 3;
		if (_down) face = 0;
	}
}

#endregion
estado();

if(animacao == noone)
{
	escolha_item();
}
