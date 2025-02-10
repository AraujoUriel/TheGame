/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(ativar)
{
	if(room == rm_sala_principal and luz_sala == false)
	{
		if(surface_exists(ambientizacao_surface))
		{
			surface_set_target(ambientizacao_surface);

			draw_set_color(c_black);
			draw_set_alpha(0.7);
			draw_rectangle(0, 0, room_width, room_height, 0);
			draw_set_alpha(1);
			draw_set_color(-1);

			surface_reset_target();
		}
		else
		{
			ambientizacao_surface = surface_create(room_width, room_height);
		}
		
		draw_surface(ambientizacao_surface, 0, 0);
	}
	
	if(room == rm_cozinha and luz_cozinha == false)
	{
		if(surface_exists(ambientizacao_surface))
		{
			surface_set_target(ambientizacao_surface);

			draw_set_color(c_black);
			draw_set_alpha(0.7);
			draw_rectangle(0, 0, room_width, room_height, 0);
			draw_set_alpha(1);
			draw_set_color(-1);

			surface_reset_target();
		}
		else
		{
			ambientizacao_surface = surface_create(room_width, room_height);
		}
		
		draw_surface(ambientizacao_surface, 0, 0);
	}
	
	if(room == rm_dispenca)
	{
		if(surface_exists(ambientizacao_surface))
		{
			surface_set_target(ambientizacao_surface);

			draw_set_color(c_black);
			draw_set_alpha(0.7);
			draw_rectangle(0, 0, room_width, room_height, 0);
			draw_set_alpha(1);
			draw_set_color(-1);

			surface_reset_target();
		}
		else
		{
			ambientizacao_surface = surface_create(room_width, room_height);
		}
		
		draw_surface(ambientizacao_surface, 0, 0);
	}
}