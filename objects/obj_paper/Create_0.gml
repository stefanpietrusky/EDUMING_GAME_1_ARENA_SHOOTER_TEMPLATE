var _paper_sprite = [];

_paper_sprite[0] = sDots1;
_paper_sprite[1] = sDots2;
_paper_sprite[2] = sDots3;

sprite_index = _paper_sprite[irandom_range(0, 2)];

var _scale = random_range(0.5, 1);

image_xscale = _scale;
image_yscale = _scale;

image_angle = random_range(0, 360);