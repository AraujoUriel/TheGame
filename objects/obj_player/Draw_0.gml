/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(sprite_item != noone)
{
	draw_sprite_ext(sprite_item, image_index, x + lado_item, y - 40, 1, 1, image_angle, image_blend, image_alpha);
}

draw_sprite_ext(sprite, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha);

if (distance_to_object(obj_para_obj_coletavel) <= 40)
{
	var _obj = instance_nearest(x, y, obj_para_obj_coletavel);
	
	if(_obj.room_permanencia == room or _obj.room_permanencia == noone)
	{
		_obj.estado = "perto";
	
		if (keyboard_check_pressed(ord("F")))
		{
			_obj.estado = "pego";
		}
	}
}

if (distance_to_object(obj_para_interacao) <= 40)
{
	var _obj = instance_nearest(x, y, obj_para_interacao);
	
	if!(_obj == obj_espelho_suite)
	{
		if (keyboard_check_pressed(ord("F")))
		{
			_obj.interacao = true;
		}
	}
	
	if(distance_to_object(obj_espelho_suite) <= 30 and item == "martelo")
	{
		if (keyboard_check_pressed(ord("F")))
		{
			_obj.interacao_espelho = true;
		}
	}
}
