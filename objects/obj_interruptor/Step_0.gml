/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
switch(room)
{
	case rm_sala_principal: aceso = obj_ambientacao.luz_sala; break;
	case rm_cozinha: aceso = obj_ambientacao.luz_cozinha; num = 52; break;
}

if (distance_to_object(obj_player) < num)
{
	if (keyboard_check_pressed(ord("F")))
	{
		aceso =! aceso;
		
		switch(room)
		{
			case rm_sala_principal: obj_ambientacao.luz_sala =! obj_ambientacao.luz_sala; break;
			case rm_cozinha: obj_ambientacao.luz_cozinha =! obj_ambientacao.luz_cozinha; break;
		}
	}
}