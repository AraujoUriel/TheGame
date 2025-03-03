/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(instance_exists(obj_ambientacao))
{
	if(obj_ambientacao.reset == false)
	{
		alarm[0] = 1800;
		global.horas++;
	}
}