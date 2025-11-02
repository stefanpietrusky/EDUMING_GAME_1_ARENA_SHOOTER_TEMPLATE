draw_sprite_ext(sPlayerShadow, 0,x, y, 1.0, 1.0, body_angle, c_white, image_alpha);

if (is_flashed)
{
	draw_sprite_ext(sPlayerGunShadow, 0, x, y, 1.0, 1.0, gun_angle, c_white, image_alpha);
}

image_index = is_flashed;
draw_self();

if (!is_flashed)
{
	draw_sprite_ext(sPlayerGunShadow, 0,x, y, 1.0, 1.0, gun_angle, c_white, image_alpha);
}
draw_sprite_ext(sPlayerGun, is_flashed,x, y, 1.0, 1.0, gun_angle, c_white, image_alpha);

if (letters) && (A) draw_sprite_ext(sLA,0,x,y-110,1,1,0,c_white,1);
if (letters) && (B) draw_sprite_ext(sLB,0,x,y-110,1,1,0,c_white,1);
if (letters) && (C) draw_sprite_ext(sLC,0,x,y-110,1,1,0,c_white,1);
if (letters) && (D) draw_sprite_ext(sLD,0,x,y-110,1,1,0,c_white,1);
if (letters) && (E) draw_sprite_ext(sLE,0,x,y-110,1,1,0,c_white,1);