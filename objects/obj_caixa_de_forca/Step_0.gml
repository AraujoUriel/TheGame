/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (distance_to_object(obj_player) <= 30)
{
	if (keyboard_check_pressed(ord("F")))
	{
		if(num == 0)
		{
			num = 2;
		}
		else if(num == 1)
		{
			num = 2;
			global.energia =! global.energia;
		}
		else if(num == 2)
		{
			num = 1;
			global.energia =! global.energia;
		}
	}
}

if!(global.energia)
{
	num = 1;
}

if(room != rm_garagem)
{
	instance_deactivate_object(id)
}
