/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(ativar)
{
	if!(global.energia)
	{
		if(surface_exists(ambientizacao_surface))
		{
			surface_set_target(ambientizacao_surface);

			draw_set_color(c_black);
			draw_set_alpha(0.7);
			draw_rectangle(0, 0, room_width * 10000000, room_height * 10000000, 0);
			draw_set_alpha(1);
			draw_set_color(-1);

			surface_reset_target();
		}
		else
		{
			ambientizacao_surface = surface_create(room_width, room_height);
		}
		
		if(reset == true)
		{
			if(surface_exists(ambientizacao_surface))
			{
				surface_set_target(ambientizacao_surface);

				num += 0.01
				num = clamp(num, 0, 1);

				draw_set_color(c_black);
				draw_set_alpha(num);
				draw_rectangle(-200, -200, 10 * room_width, 10 * room_height, 0);
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
		else
		{
			num -= 0.01;
		}
		
		draw_surface(ambientizacao_surface, 0, 0);
	}
	else
	{
		if(room == rm_sala_principal and luz_sala == false)
		{
			if(surface_exists(ambientizacao_surface))
			{
				surface_set_target(ambientizacao_surface);

				draw_set_color(c_black);
				draw_set_alpha(0.7);
				draw_rectangle(0, 0, room_width * 2, room_height * 2, 0);
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
		
		if(room == rm_sotao and luz_sotao == false)
		{
			if(surface_exists(ambientizacao_surface))
			{
				surface_set_target(ambientizacao_surface);

				draw_set_color(c_black);
				draw_set_alpha(0.7);
				draw_rectangle(0, 0, room_width * 2, room_height * 2, 0);
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
	
		if(room == rm_corredor_principal and luz_corredor_principal == false)
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
	
		if(room == rm_quarto_principal and luz_quarto_principal == false)
		{
			if(surface_exists(ambientizacao_surface))
			{
				surface_set_target(ambientizacao_surface);

				draw_set_color(c_black);
				draw_set_alpha(0.7);
				draw_rectangle(0, 0, room_width * 2, room_height * 2, 0);
				draw_set_alpha(1);
				draw_set_color(-1);

				surface_reset_target();
			}
			else
			{
				ambientizacao_surface = surface_create(room_width * 2, room_height * 2);
			}
		
			draw_surface(ambientizacao_surface, 0, 0);
		}
	
		if(room == rm_garagem and luz_garagem == false)
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
	
		if(reset == true)
		{
			if(surface_exists(ambientizacao_surface))
			{
				surface_set_target(ambientizacao_surface);

				num += 0.01
				num = clamp(num, 0, 1);

				draw_set_color(c_black);
				draw_set_alpha(num);
				draw_rectangle(-200, -200, 10 * room_width, 10 * room_height, 0);
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
		else
		{
			num -= 0.01;
		}
	}
}