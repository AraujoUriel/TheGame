/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if!(desativar)
{
	if (distance_to_object(obj_player) < 18)
	{
		if (keyboard_check_pressed(ord("F")))
		{
			if(global.scape_room and destino_rm == rm_closet)
			{
				destino_rm = rm_closet_suite;
			}
			
			obj_player.x = destino_x;
			obj_player.y = destino_y;
			room_goto(destino_rm);
		}
	}
}
else
{
	if (distance_to_object(obj_player) < 18)
	{
		if (keyboard_check_pressed(ord("F")))
		{
			image_index = 0;
			animar = true;
		}
	}
}

