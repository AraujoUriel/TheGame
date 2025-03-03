/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(global.pegar_joia)
{
	velocidade = 1;
	acel = 0.3;
}

if(dir_x != 0 or dir_y != 0)
{
	var _dir;
	
	if!(global.pegar_joia)
	{
		_dir = point_direction(x, y, x + dir_x, y + dir_y);
	}
	else
	{
		_dir = point_direction(x, y, dir_x, dir_y);
	}

	var _max_velh = lengthdir_x(velocidade, _dir);
	velh = lerp(velh, _max_velh, acel);

	var _max_velv = lengthdir_y(velocidade, _dir);
	velv = lerp(velv, _max_velv, acel);
	
	if!(global.pegar_joia)
	{
		dir_x = lerp(dir_x, 0, 0.2);
		dir_y = lerp(dir_y, 0, 0.2);
	}

	x += velh;
	y += velv;
	
	if(velh >= 0)
	{
		face = 0;
	}
	else
	{
		face = 1;
	}
}
else
{
	velh = 0;
	velv = 0;
}

estado();