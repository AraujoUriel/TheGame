/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
num++;

if(num == 16)
{
	ativar_item = true;
}

if(num == 32)
{
	with(obj_player)
	{
		if(sprite != spr_protagonista_afogado)
		{
			animacao = "afogando";
			estado = estado_animacao;
			image_index = 0;
		}
	}
}

alarm[0] = 30;