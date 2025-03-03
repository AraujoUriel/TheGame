/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

velh = 0;
velv = 0;
velocidade = 0.5;
acel = 0.1;


estado = noone;
face = 0;
sprite = sprite_index;
sprites = [];
val = 0;
direcao = "direita";
num = 0;
animacao = noone;
dir_x = 0;
dir_y = 0;
mover = false;
pode_matar = false;
alarm[0] = true;

sprites =	[
			  //Parado
			  [spr_monstro_cego_parado_right, spr_monstro_cego_parado_left],
			  //Parado Levantado
			  [spr_monstro_cego_parado_levantado_right, spr_monstro_cego_parado_levantado_left],
			  //Andando
			  [spr_monstro_cego_andando_right, spr_monstro_cego_andando_left],
			  //Andando Levantado
			  [spr_monstro_cego_andando_levantado_right, spr_monstro_cego_andando_levantado_left],
			];
	
estado_parado = function()
{
	if(global.levantado)
	{
		sprite =  sprites[1][face];
		val = 5;
	}
	else
	{
		sprite =  sprites[0][face];
		val = 3;
	}

	sprite_set_speed(sprite_index, val, spritespeed_framespersecond);
	
	if ((velv != 0) or (velh != 0))
	{
		estado = estado_movendo;
	}
}

estado_movendo = function()
{
	if(global.levantado)
	{
		sprite =  sprites[3][face];
	}
	else
	{
		sprite =  sprites[2][face];
	}
	
	val = 3;
	sprite_set_speed(sprite_index, val, spritespeed_framespersecond);
	
	if (abs(velv) < 0.2 and abs(velh) < 0.2)
	{
		estado = estado_parado;
	}
}

estado_animacao = function()
{
	switch(animacao)
	{
		case "levantando": 
		
		dir_x = 0;
		dir_y = 0;
		
		if(face)
		{
			sprite = spr_monstro_cego_levantando_left;
		}
		else
		{
			sprite = spr_monstro_cego_levantando_right;
		}
		
		val = 10;
		sprite_set_speed(sprite_index, val, spritespeed_framespersecond);
		
		if(image_index >= image_number - 1)
		{ 
			animacao = noone;
			estado = estado_parado;
			global.levantado = true;
		}
		
		break;
		
		case "matando": 
		
		if(sprite == spr_monstro_cego_levantado_matando_parado_left or sprite == spr_monstro_cego_levantado_matando_parado_right or sprite == spr_monstro_cego_matando_parado_left or sprite == spr_monstro_cego_matando_parado_right)
		{
			break;
		}
		
		dir_x = 0;
		dir_y = 0;
		
		if(global.levantado)
		{
			if(face)
			{
				sprite = spr_monstro_cego_levantado_matando_left;
			}
			else
			{
				sprite = spr_monstro_cego_levantado_matando_right;
			}
		}
		else
		{
			if(face)
			{
				sprite = spr_monstro_cego_matando_left;
			}
			else
			{
				sprite = spr_monstro_cego_matando_right;
			}
		}
		
		val = 10;
		sprite_set_speed(sprite_index, val, spritespeed_framespersecond);
		
		with(obj_player)
		{
			if(animacao = noone)
			{
				animacao = "fatiada";
				estado = estado_animacao;
				image_index = 0;
			}
		}
		
		if(image_index >= image_number - 5)
		{ 
			animacao = noone;
			estado = estado_noone;
			image_index = 0;
			
			if(global.levantado)
			{
				if(face)
				{
					sprite = spr_monstro_cego_levantado_matando_parado_left;
				}
				else
				{
					sprite = spr_monstro_cego_levantado_matando_parado_right;
				}
			}
			else
			{
				if(face)
				{
					sprite = spr_monstro_cego_matando_parado_left;
				}
				else
				{
					sprite = spr_monstro_cego_matando_parado_right;
				}
			}
		}
		
		break;
	}
}

estado_noone = function(){}

estado = estado_parado;