/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
alvo = noone;
estado = noone;
escala = 1;
cam_x = 0;
cam_y = 0;
cam_w = 320;
cam_h = 180;

zoom = function()
{
	escala = clamp(escala, 0.6, 1.2);
	
	camera_set_view_size(view_camera[0], cam_w * escala, cam_h * escala);
	
	if(mouse_wheel_down())
	{
		escala += 0.05;
	}
	
	if(mouse_wheel_up())
	{
		escala -= 0.05;
	}
}

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
	cam_y = alvo.y - _view_h/2;
	
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