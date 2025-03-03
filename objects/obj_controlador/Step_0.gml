/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if!(instance_exists(obj_ambientacao)){instance_create_layer(1, 1000, "ins_efeitos", obj_ambientacao);}
if!(instance_exists(obj_profundidade)){instance_create_layer(1, 1, "ins_objs", obj_profundidade);}
if!(instance_exists(obj_camera)){instance_create_layer(1, 1, "ins_objs", obj_camera);}
if!(instance_exists(obj_tempo)){instance_create_layer(1, 0, "ins_objs", obj_tempo);}

if(global.reset)
{
	global.avanco = false;
	global.itens = [];
	global.horas = 2;
	global.energia = true;
	global.item_quadro = false;
	global.scape_room = false;
	global.pegar_joia = false;
	global.levantado = false;
	global.reset = false;
	global.iniciar = 0;
	global.evento_quarto = false;
	game_restart();
}

