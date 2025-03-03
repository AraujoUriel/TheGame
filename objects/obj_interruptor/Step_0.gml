/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(instance_exists(obj_ambientacao))
{
	switch(room)
	{
		case rm_sala_principal: aceso = obj_ambientacao.luz_sala; break;
		case rm_cozinha: aceso = obj_ambientacao.luz_cozinha; num = 52; break;
		case rm_corredor_principal: aceso = obj_ambientacao.luz_corredor_principal; break;
		case rm_quarto_principal: aceso = obj_ambientacao.luz_quarto_principal; break;
		case rm_sotao: aceso = obj_ambientacao.luz_sotao; break;
		case rm_garagem: aceso = obj_ambientacao.luz_garagem; num = 42; break;
	}
}

if!(global.energia)
{
	aceso = false;
}

if (distance_to_object(obj_player) < num and global.energia)
{
	if (keyboard_check_pressed(ord("F")))
	{
		aceso =! aceso;
		
		switch(room)
		{
			case rm_sala_principal: obj_ambientacao.luz_sala =! obj_ambientacao.luz_sala; break;
			case rm_cozinha: obj_ambientacao.luz_cozinha =! obj_ambientacao.luz_cozinha; break;
			case rm_corredor_principal: obj_ambientacao.luz_corredor_principal =! obj_ambientacao.luz_corredor_principal; break;
			case rm_quarto_principal: obj_ambientacao.luz_quarto_principal =! obj_ambientacao.luz_quarto_principal; break;
			case rm_sotao: obj_ambientacao.luz_sotao =! obj_ambientacao.luz_sotao; break;
			case rm_garagem: obj_ambientacao.luz_garagem =! obj_ambientacao.luz_garagem; break;
		}
	}
}