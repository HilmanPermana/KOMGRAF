extends 'res://Script/ShapeTransformation.gd'

const move = 2
var now_position = Vector2(0,0)

func _physics_process(delta):
	now_position.x += move
	update()

func _draw():
	ellips_half_translate(-1540, 230, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(-1240, 260, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-1140, 290, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-1260, 200, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(-1195, 170, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(-1170, 200, 75, 30, Color.black, "top", now_position.x, 0)
	ellips_half_translate(-1150, 270, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-1510, 250, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-1200, 228, 40, 38, Color.black, "right",  now_position.x, 0)
	
	ellips_half_translate(-1840, 230, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(-1540, 260, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-1640, 290, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-1560, 200, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(-1695, 170, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(-1770, 200, 75, 30, Color.black, "top", now_position.x, 0)
	ellips_half_translate(-1750, 270, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-1810, 250, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-1900, 228, 40, 38, Color.black, "right",  now_position.x, 0)
	

	
