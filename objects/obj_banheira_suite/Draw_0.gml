/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_sprite_ext(sprite, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha);

if(instance_exists(obj_agua))
{
	if(obj_agua.ativar_item)
	{
		if!(instance_exists(obj_brilho2))
		{
			instance_create_layer(191, 248, "ins_objs", obj_brilho2);
		}
		
		draw_sprite_ext(spr_brilho, obj_brilho2.image_index, 191, 280 - obj_agua.num * 2, 1, 1, image_angle, image_blend, image_alpha);
	}
}