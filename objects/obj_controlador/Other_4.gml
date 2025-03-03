/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(room == rm_quarto_principal)
{
	if(global.evento_quarto == false)
	{
		if(global.horas == 3)
		{
			var _num = random_range(num, 100);
		
			if(_num > 90)
			{
				global.evento_quarto = true;
			}
			else
			{
				num += 5;
			}
		}
		else if(global.horas >= 4)
		{
			var _num = random_range(num, 100);
		
			if(_num > 90)
			{
				global.evento_quarto = true;
			}
			else
			{
				num += 25;
				num = clamp(num, 0, 100);
			}
		}
	}
	
	if(global.evento_quarto)
	{
		switch(room_anterior)
		{
			case rm_corredor_principal:
				if!(instance_exists(obj_cego))
				{
					instance_create_layer(326, 137, "ins_objs", obj_cego);
				}
			break;
			
			case rm_suite:
				if!(instance_exists(obj_cego))
				{
					instance_create_layer(326, 137, "ins_objs", obj_cego);
				}
			break;
			
			case rm_closet:
				if!(instance_exists(obj_cego))
				{
					instance_create_layer(200, 270, "ins_objs", obj_cego);
				}
			break;
			
			case rm_closet_suite:
				if!(instance_exists(obj_cego))
				{
					instance_create_layer(200, 270, "ins_objs", obj_cego);
				}
			break;
		}
	}
}