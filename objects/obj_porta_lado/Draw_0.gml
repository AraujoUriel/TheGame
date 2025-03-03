/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if!(animar)
{
	if(inverter_x)
	{
		draw_sprite_ext(sprite, 0, x, y, -1, 1, image_angle, image_blend, image_alpha);
	}
	else
	{
		draw_sprite_ext(sprite, 0, x, y, 1, 1, image_angle, image_blend, image_alpha);
	}
}
else
{
	if(inverter_x)
	{
		draw_sprite_ext(sprite, image_index, x, y, -1, 1, image_angle, image_blend, image_alpha);
	}
	else
	{
		draw_sprite_ext(sprite, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha);
	}
	
	if(image_index > image_number - 1)
	{
		animar = false;
	}
}