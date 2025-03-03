/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if!(global.energia and instance_exists(obj_brilho))
{
	if!(global.item_quadro)
	{
		var _obj = instance_create_layer(x + 2, y + sprite_height/2, "ins_objs", obj_brilho);
		_obj.rm = room;
		global.item_quadro = true;
	}
}
