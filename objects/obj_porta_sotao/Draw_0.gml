/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(inverter_x)
{
	draw_sprite_ext(sprite, 0, x, y, -1, 1, image_angle, image_blend, image_alpha);
}
else
{
	var _larg = sprite_width;
	var _alt = sprite_height;
	
	if(room == rm_sotao)
	{
		draw_sprite_ext(sprite, 0, x, y, 1, 1, image_angle, image_blend, 1);
		
		if (distance_to_object(obj_player) <= _larg + 22)
		{
			if (keyboard_check_pressed(ord("F")))
			{
				obj_player.x = destino_x;
				obj_player.y = destino_y;
				room_goto(destino_rm);
			}
		}
	}
	else
	{
		if(point_in_rectangle(obj_player.x, obj_player.y, x - _larg/2, y - _alt/2, x + _larg/2 - 1, y + _alt))
		{
			alpha += 0.02;
			
			if (keyboard_check_pressed(ord("F")))
			{
				obj_player.x = destino_x;
				obj_player.y = destino_y;
				room_goto(destino_rm);
			}
		}
		else
		{
			alpha -= 0.02;
		}
		
		alpha = clamp(alpha, 0, 0.3);
		
		draw_sprite_ext(sprite, 1, x, y, 1, 1, image_angle, image_blend, alpha);
	}
}
