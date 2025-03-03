/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _grid = global.grid_profundidade;
var _num = instance_number(obj_para_obj);

ds_grid_resize(_grid, 2, _num);

var _i = 0;
with(obj_para_obj)
{
	_grid[# 0, _i] = id;
	_grid[# 1, _i] = y;
	_i++;
}

ds_grid_sort(_grid, 1, true);

for (var _j = 0; _j < ds_grid_height(_grid); _j++)
{
	var _inst = _grid[# 0, _j];
	with(_inst)
	{
		event_perform(ev_draw, 0);
	}
}