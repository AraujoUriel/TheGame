/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#region sair de ficar preso
	var _parede = instance_place(x, y, obj_colisao);
	var _obj = instance_place(x, y, obj_para_obj);
	var _npc = instance_place(x, y, obj_para_interacao);

	if (_parede or _npc or _obj)
	{
		var _colisao;
		
		if (_parede) _colisao = _parede;
		if (_obj) _colisao = _obj;
		if (_npc) _colisao = _npc;
		
		for(var _comprimento = 1; _comprimento < 500; _comprimento += 10;)
		{
			if!(place_meeting(x + _comprimento, y, _colisao))
			{
				x += _comprimento;
				break;
			}
			
			if!(place_meeting(x - _comprimento, y, _colisao))
			{
				x -= _comprimento;
				break;
			}
			
			if!(place_meeting(x - _comprimento, y + _comprimento, _colisao))
			{
				x -= _comprimento;
				y += _comprimento;
				break;
			}
			
			if!(place_meeting(x, y + _comprimento, _colisao))
			{
				y += _comprimento;
				break;
			}
			
			if!(place_meeting(x + _comprimento, y + _comprimento, _colisao))
			{
				x += _comprimento;
				y += _comprimento;
				break;
			}
		}
	}
	#endregion