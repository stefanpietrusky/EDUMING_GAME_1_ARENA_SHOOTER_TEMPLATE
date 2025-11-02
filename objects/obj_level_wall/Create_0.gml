enum FACE_TYPE
{
	TOP_LEFT,
	TOP,
	TOP_RIGHT,
	RIGHT,
	BOTTOM_RIGHT,
	BOTTOM,
	BOTTOM_LEFT,
	LEFT,
	TOP_GAP,
	RIGHT_GAP,
	BOTTOM_GAP,
	LEFT_GAP,
	SIZE
}

curr_face_type = FACE_TYPE.SIZE;

set_sprite = function()
{
	switch (curr_face_type)
	{
		case FACE_TYPE.TOP_LEFT:
			sprite_index = sFloor1TopLeft;
		break;
		case FACE_TYPE.TOP:
			sprite_index = sFloor1Top;
		break;
		case FACE_TYPE.TOP_RIGHT:
			sprite_index = sFloor1TopRight;
		break;
		case FACE_TYPE.RIGHT:
			sprite_index = sFloor1Right;
		break;
		case FACE_TYPE.BOTTOM_RIGHT:
			sprite_index = sFloor1BottomRight;
		break;
		case FACE_TYPE.BOTTOM:
			sprite_index = sFloor1Bottom;
		break;
		case FACE_TYPE.BOTTOM_LEFT:
			sprite_index = sFloor1BottomLeft;
		break;
		case FACE_TYPE.LEFT:
			sprite_index = sFloor1Left;
		break;
		case FACE_TYPE.TOP_GAP:
			sprite_index = sFloor1TopGap;
		break;
		case FACE_TYPE.RIGHT_GAP:
			sprite_index = sFloor1RightGap;
		break;
		case FACE_TYPE.BOTTOM_GAP:
			sprite_index = sFloor1BottomGap;
		break;
		case FACE_TYPE.LEFT_GAP:
			sprite_index = sFloor1LeftGap;
		break;
	}
}