/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(room == room_permanencia)
{
	if(estado == "pego")
	{
		array_push(global.itens, nome);
		instance_destroy();
	}

	if (distance_to_object(obj_player) > 40)
	{
		estado = noone;
	}
}