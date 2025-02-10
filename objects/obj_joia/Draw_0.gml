/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(room_permanencia == room)
{
	var _cor;
	var _transicao_de_cor = 0.1;

	if(estado == "perto")
	{
		if(mudanca_de_cor)
		{
			_cor = merge_color(c_white, #eeeedd, _transicao_de_cor);
		}
		else
		{
			_cor = merge_color(#dddddd, c_white, _transicao_de_cor);
		}
	}
	else
	{
		_cor = c_white;
	}

	draw_sprite_ext(sprite, 0, x, y, 1, 1, 0, _cor, 1);
}
else
{
	instance_deactivate_object(id)
}