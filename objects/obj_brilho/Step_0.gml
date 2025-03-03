/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(instance_exists(obj_ambientacao))
{
	if(global.energia == false or room == rm)
	{
		if(estado == "pego")
		{
			var _meu_array = global.itens;
			var _indice = -1;

			for (var _i = 0; _i < array_length(_meu_array); _i++)
			{
			    if (_meu_array[_i] == "joia") 
				{
			        _indice = _i;
			        break;
			    }
			}
	
			for (var _i = 0; _i < array_length(_meu_array); _i++)
			{
			    if (_meu_array[_i] == "joia2") 
				{
			        _indice = _i;
			        break;
			    }
			}

			if (_indice != -1)
			{
				if(_meu_array[_indice] == "joia2")
				{
					_meu_array[_indice] = "joia3";
				}
				else
				{
					_meu_array[_indice] = "joia2";
				}
			}
			else
			{
				array_push(global.itens, nome);
			}

			instance_destroy();
		}

		if (distance_to_object(obj_player) > 40)
		{
			estado = noone;
		}
	}
}