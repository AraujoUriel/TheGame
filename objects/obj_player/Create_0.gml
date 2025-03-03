
event_inherited();

#region Movimentação e colisão
//Variaveis
velh = 0;
velv = 0;
velocidade = 3.6;
acel = 0.4;

#endregion

#region Animação

estado = noone;
face = 0;
sprite = sprite_index;
sprites = [];
val = 0;
direcao = "direita";
item = noone;
sprite_item = noone;
lado_item = 20;
num = 0;
animacao = noone;

sprites =	[
			  //Parado
			  [spr_protagonista_parada_down_right, spr_protagonista_parada_down_left, spr_protagonista_parada_up_left, spr_protagonista_parada_up_right],
			  //Andando
			  [spr_protagonista_andando_down_right, spr_protagonista_andando_down_left, spr_protagonista_andando_up, spr_protagonista_andando_up_right, spr_protagonista_andando_down_left],
			  //Parado_segurando
			  [spr_protagonista_parada_pegando_down_right, spr_protagonista_parada_pegando_down_left, spr_protagonista_parada_pegando_up_left, spr_protagonista_parada_pegando_up_right],
			  //Andando_segurando
			  [spr_protagonista_andando_pegando_down_right, spr_protagonista_andando_pegando_down_left, spr_protagonista_andando_pegando_up_left, spr_protagonista_andando_pegando_up_right, spr_protagonista_andando_pegando_down_left],
			];


estado_parado = function()
{
	var _up		= keyboard_check(vk_up);
	var _down	= keyboard_check(vk_down);
	var _left	= keyboard_check(vk_left);
	var _right	= keyboard_check(vk_right);
	
	velv = 0;
	velh = 0;
	
	if (face = 4) face = 1;
	
	if(array_length(global.itens) == 0)
	{
		sprite =  sprites[0][face];
	}
	else
	{
		sprite =  sprites[2][face];
	}
	
	val = 4;
	
	sprite_set_speed(sprite_index, val, spritespeed_framespersecond);
	
	if ((_up xor _down) or (_left xor _right))
	{
		estado = estado_movendo;
	}
}

estado_movendo = function()
{
	val = 11;
	acel = 0.4;
	
	/*if!(audio_is_playing(snd_passos))
	{
		audio_play_sound(snd_passos, 2, false);
	}*/
	
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
	
	if(array_length(global.itens) == 0)
	{
		sprite =  sprites[1][face];
	}
	else
	{
		sprite =  sprites[3][face];
	}
	
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
		case "afogando":
		
			if(sprite == spr_protagonista_afogado)
			{
				break;
			}
			
			sprite = spr_protagonista_afogando;
			val = 3;
			sprite_set_speed(sprite_index, val, spritespeed_framespersecond);
		
			if(image_index >= image_number - 5)
			{
				obj_ambientacao.reset = true; 
				animacao = noone;
				sprite = spr_protagonista_afogado;
				estado = estado_noone;
				image_index = 0;
			}
		break;
		
		case "fatiada":
		
			if(sprite == spr_protagonista_fatiada_right or sprite == spr_protagonista_fatiada_left)
			{
				break;
			}
		
			if(direcao = "direita")
			{
				sprite = spr_protagonista_morrendo_fatiada_right;
			}
			else
			{
				sprite = spr_protagonista_morrendo_fatiada_left;
			}
			
			val = 8;
			sprite_set_speed(sprite_index, val, spritespeed_framespersecond);
		
			if(image_index >= image_number - 1)
			{
				obj_ambientacao.reset = true; 
				animacao = noone;
				estado = estado_noone;
				image_index = 0;
				
				if(direcao = "direita")
				{
					sprite = spr_protagonista_fatiada_right;
				}
				else
				{
					sprite = spr_protagonista_fatiada_left;
				}
			}
		break;
	}
}

estado_noone = function(){}

estado = estado_parado

escolha_item = function()
{
	if(array_length(global.itens) != 0)
	{
		item = global.itens[num];
		
		if(mouse_wheel_up())
		{
			if(array_length(global.itens) - 1 > num)
			{
				num += 1;
			}
			else
			{
				num = 0;
			}
		}
	
		if(mouse_wheel_down())
		{
			if(num != 0)
			{
				num -= 1;
			}
			else
			{
				num = array_length(global.itens) - 1;
			}
		}
		
		switch(item)
		{
			case "chave":
				
				sprite_item = spr_chave;
		
				if (estado == estado_parado)
				{
					switch(face)
					{
						case 0: lado_item = 20; break;
						case 1: lado_item = -20; break;
						case 2: lado_item = -8; break;
						case 3: lado_item = 8; break;
					}
				}
		
				if (estado == estado_movendo)
				{
					switch(face)
					{
						case 0: lado_item = 20; break;
						case 1: lado_item = -20; break;
						case 2: lado_item = -8; break;
						case 3: lado_item = 8; break;
						case 4: lado_item = -20; break;
					}
				}
				
			break;
			
			case "joia":
				
				sprite_item = spr_joia;
		
				if (estado == estado_parado)
				{
					switch(face)
					{
						case 0: lado_item = 16; break;
						case 1: lado_item = -16; break;
						case 2: lado_item = -8; break;
						case 3: lado_item = 8; break;
					}
				}
		
				if (estado == estado_movendo)
				{
					switch(face)
					{
						case 0: lado_item = 16; break;
						case 1: lado_item = -16; break;
						case 2: lado_item = -8; break;
						case 3: lado_item = 8; break;
						case 4: lado_item = -16; break;
					}
				}
				
			break;
			
			case "joia2":
				
				sprite_item = spr_joia2;
		
				if (estado == estado_parado)
				{
					switch(face)
					{
						case 0: lado_item = 16; break;
						case 1: lado_item = -16; break;
						case 2: lado_item = -8; break;
						case 3: lado_item = 8; break;
					}
				}
		
				if (estado == estado_movendo)
				{
					switch(face)
					{
						case 0: lado_item = 16; break;
						case 1: lado_item = -18; break;
						case 2: lado_item = -8; break;
						case 3: lado_item = 8; break;
						case 4: lado_item = -18; break;
					}
				}
				
			break;
			
			case "joia3":
				
				sprite_item = spr_joia3;
		
				if (estado == estado_parado)
				{
					switch(face)
					{
						case 0: lado_item = 20; break;
						case 1: lado_item = -20; break;
						case 2: lado_item = -8; break;
						case 3: lado_item = 8; break;
					}
				}
		
				if (estado == estado_movendo)
				{
					switch(face)
					{
						case 0: lado_item = 20; break;
						case 1: lado_item = -20; break;
						case 2: lado_item = -8; break;
						case 3: lado_item = 8; break;
						case 4: lado_item = -20; break;
					}
				}
				
			break;
		}
		
		if(keyboard_check_pressed(ord("G")))
		{
			switch(item)
			{
				case "chave":
				
					var _obj = instance_create_layer(x, y + 20, "ins_objs", obj_chave);
					_obj.room_permanencia = room;
				
				break;
				
				case "joia":
				
					var _obj = instance_create_layer(x, y + 20, "ins_objs", obj_joia);
					_obj.room_permanencia = room;
				
				break;
				
				case "joia2":
				
					var _obj = instance_create_layer(x, y + 20, "ins_objs", obj_joia);
					_obj.nome = "joia2";
					_obj.sprite = spr_joia2;
					_obj.room_permanencia = room;
				
				break;
				
				case "joia3":
				
					var _obj = instance_create_layer(x, y + 20, "ins_objs", obj_joia);
					_obj.nome = "joia3";
					_obj.sprite = spr_joia3;
					_obj.room_permanencia = room;
				
				break;
			}
		
			array_delete(global.itens, num, num + 1);
			if(num != 0){num -= 1;}
		}
	}
	else
	{
		sprite_item = noone;
		lado_item = noone;
	}
}

#endregion