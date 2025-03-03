/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
switch(global.iniciar)
{
	case 0:
		image_index = 0;
		sprite = spr_protagonista_acordando;
		sprite_set_speed(sprite_index, 12, spritespeed_framespersecond);
		global.iniciar = 1;
	break;
	
	case 1:
		if(image_index >= image_number - 1)
		{
			image_index = 0;
			sprite = spr_protagonista_acordando2;
			sprite_set_speed(sprite_index, 8, spritespeed_framespersecond);
			global.iniciar = 2;
		}
	break;
	
	case 2:
		if(image_index >= image_number - 1)
		{
			image_index = 0;
			sprite = spr_cama_baguncada;
			sprite_set_speed(sprite_index, 8, spritespeed_framespersecond);
			instance_create_layer(103, 121, "ins_objs", obj_player);
			global.iniciar = 3;
			
			with(obj_camera)
			{
				estado = segue_player;
			}
		}
	break;
}