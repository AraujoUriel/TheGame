/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#region Movimentação e colisão

// colisão horizontal
var _parede = instance_place(x + velh, y, obj_colisao);
var _obj = instance_place(x + velh, y, obj_para_obj);

if (_parede or _obj)
{	
	velh = 0
}
x += velh;

// colisão vertical
_parede = instance_place(x, y + velv, obj_colisao);
_obj = instance_place(x, y + velv, obj_para_obj);
	
if (_parede or _obj)
{
	velv = 0
}

y += velv;

#endregion