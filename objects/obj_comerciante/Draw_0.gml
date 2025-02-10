/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_sprite_ext(sprite, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha);

if(interacao)
{
	var _meu_array = global.itens;
	var _indice = -1;

	for (var _i = 0; _i < array_length(_meu_array); _i++)
	{
	    if (_meu_array[_i] == "joia3") 
		{
	        _indice = _i;
	        break;
	    }
	}
	
	if(_indice == -1)
	{
		num += 0.04;
		draw_sprite_ext(spr_balao_comerciante, 0, x + sprite_width/2, y - sprite_height + 20, 1, 1, 0, c_white, num);
	}
}