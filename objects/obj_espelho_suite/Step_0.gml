/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if!(global.scape_room)
{
	if(room == rm_suite)
	{
		global.scape_room = true;
		obj_porta_lado.desativar = true;
		scape_room = 1;
		
	}
}

if(interacao_espelho)
{
	destruido = true;
}

if(destruido)
{
	sprite = spr_espelho_suite_quebrado;
	
	var _larg = sprite_width;
	var _alt = sprite_height;
	
	if (point_in_rectangle(obj_player.x, obj_player.y, x - _larg/2, y - _alt + 20, x + _larg/2, y + _alt))
	{
		if (keyboard_check_pressed(ord("F")))
		{
			obj_player.x = destino_x;
			obj_player.y = destino_y;
			room_goto(destino_rm);
		}
	}
}