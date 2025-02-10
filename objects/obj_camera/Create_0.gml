/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
alvo = noone;
estado = noone;
cam_x = 0;
cam_y = 0;
cam_w = 384;
cam_h = 216;


camera_set_view_size(view_camera[0], cam_w, cam_h);

segue_player = function()
{
	if (alvo == noone)
	{
		if(instance_exists(obj_player))
		{
			alvo = obj_player;
		}
		else
		{
			estado = sem_alvo;
		}
	}
	
	var _view_w = camera_get_view_width(view_camera[0]);
	var _view_h = camera_get_view_height(view_camera[0]);
	
	cam_x = alvo.x - _view_w/2;
	cam_y = alvo.y - sprite_get_height(spr_protagonista_parada_down_right)/2 - _view_h/2;
	
	cam_x = clamp(cam_x, 0, room_width - _view_w);
	cam_y = clamp(cam_y, 0, room_height - _view_h);
	
	camera_set_view_pos(view_camera[0], cam_x, cam_y);
	
	x = lerp(x, alvo.x, 0.2);
	y = lerp(y, alvo.y, 0.2);
}

sem_alvo = function()
{
	alvo = noone;
}


estado = segue_player;