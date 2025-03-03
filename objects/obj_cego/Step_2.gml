/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if!(global.pegar_joia)
{
	if(mover)
	{
		for(var _i = 0; _i <= 100; _i++)
		{
			dir_x = random_range(-50, 50);
			dir_y = random_range(-30, 30);
	
			var _parede = instance_place(x + dir_x, y + dir_y, obj_colisao);
			var _obj = instance_place(x + dir_x, y + dir_y, obj_para_obj);
		
			if((x + dir_x >= 390) or (x + dir_x <= 260) or (y + dir_y >= 240) or (y + dir_y <= 140))
			{
				dir_x = 0;
				dir_y = 0;
			}
			else
			{
				mover = false;
				break;
			}
		
			if(_parede or _obj)
			{
				dir_x = 0;
				dir_y = 0;
			}
			else
			{
				mover = false;
				break;
			}
		}
	}
}
else
{
	if(global.levantado)
	{
		dir_x = obj_player.x;
		dir_y = obj_player.y;
	}
}

if!(pode_matar)
{
	if(instance_place(x, y, obj_player))
	{
		pode_matar = true;
	}
}
else
{
	dir_x = 0;
	dir_y = 0;
	
	animacao = "matando";
	estado = estado_animacao;
}