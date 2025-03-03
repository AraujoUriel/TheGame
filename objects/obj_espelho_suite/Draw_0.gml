/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if!(destruido)
{
	switch(scape_room)
	{
		case 1: 
			sprite = spr_espelho_animacao; 
			scape_room = 2; 
	
		break;
	
		case 2:
	
			if(image_index > image_number - 1)
			{
				sprite = spr_espelho_animacao_chorando; 
				scape_room = 3;
				image_index = 0; 
			}
		
		break;
	
		case 3: 
	
			if(image_index > 21)
			{
				sprite = spr_espelho_animacao_chorando_looping; 
				scape_room = 4;
			}

		break;
	
		case 4:
	
			for (var _i = 81; _i < 396; _i += 2)
			{
				instance_create_layer(123, _i, "ins_agua", obj_agua);
			
				if(_i = 395)
				{
					scape_room = 5;
				}
			}
	
		break;
	}
}

if(room == rm_closet_suite)
{
	sprite = spr_espelho_closet_quebrado;

	
	var _larg = sprite_width;
	var _alt = sprite_height;
	
	if(point_in_rectangle(obj_player.x, obj_player.y, x - _larg/2, y - _alt + 20, x + _larg/2, y + _alt))
	{
		alpha += 0.02;
	}
	else
	{
		alpha -= 0.02;
	}
	
	alpha = clamp(alpha, 0, 0.3);
	
	draw_sprite_ext(sprite, image_index, x, y, 1, 1, image_angle, image_blend, alpha);
}
else
{
	draw_sprite_ext(sprite, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha);
}