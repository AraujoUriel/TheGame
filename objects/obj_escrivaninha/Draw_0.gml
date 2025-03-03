/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_sprite_ext(sprite, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha);

if(global.evento_quarto)
{
	if!(global.pegar_joia)
	{
		draw_sprite_ext(spr_joia, image_index, x - 1/4 * sprite_width, y/2 + 20, 1, 1, image_angle, image_blend, image_alpha);
	
		if(point_distance(obj_player.x, obj_player.y, x - 1/4 * sprite_width, y/2 + 20) < 70)
		{
			if (keyboard_check_pressed(ord("F")))
			{
				var _meu_array = global.itens;
				var _indice = -1;

				for (var _i = 0; _i < array_length(_meu_array); _i++)
				{
				    if (_meu_array[_i] == "joia") 
					{
				        _indice = _i;
				        break;
				    }
				}
	
				for (var _i = 0; _i < array_length(_meu_array); _i++)
				{
				    if (_meu_array[_i] == "joia2") 
					{
				        _indice = _i;
				        break;
				    }
				}

				if (_indice != -1)
				{
					if(_meu_array[_indice] == "joia2")
					{
						_meu_array[_indice] = "joia3";
					}
					else
					{
						_meu_array[_indice] = "joia2";
					}
				}
				else
				{
					array_push(global.itens, "joia");
				}
			
				global.pegar_joia = true;
			
				with(obj_cego)
				{
					image_index = 0;
					animacao = "levantando";
					estado = estado_animacao;
				}
			}
		}
	}
}