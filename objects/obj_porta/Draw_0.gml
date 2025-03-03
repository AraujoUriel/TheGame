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
	
	if(point_in_rectangle(obj_player.x, obj_player.y, x - _larg/2, y - _alt, x + _larg/2 - 1, y))
	{
		alpha -= 0.02;
	}
	else
	{
		alpha += 0.02;
	}
	
	alpha = clamp(alpha, 0.3, 1);
	
	draw_sprite_ext(sprite, image_index, x, y, 1, 1, image_angle, image_blend, alpha);
}
