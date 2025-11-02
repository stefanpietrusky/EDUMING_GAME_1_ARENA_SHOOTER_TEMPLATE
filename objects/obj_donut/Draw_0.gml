if (sprite_index == sDonut)
{
	draw_sprite_ext(sPlayerShadow, 0, x, y, 1.0, 1.0, 0, c_white, image_alpha); 
	draw_self();

	if (!surface_exists(surf))
	{
		surf = surface_create(sprite_width, sprite_height);
	}
	surface_set_target(surf);
	draw_sprite(sprite_index, image_index, sprite_xoffset, sprite_yoffset);
	gpu_set_colorwriteenable(1,1,1,0);
	draw_sprite_stretched_ext(sOverlay,overlaycycle,0,0,sprite_width,sprite_height,c_white,0.5);
	gpu_set_colorwriteenable(1,1,1,1);
	surface_reset_target();
	draw_surface(surf,x-sprite_xoffset,y-sprite_yoffset);
}