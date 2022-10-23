extends 'res://Script/ShapeTransformation.gd'

const move = 2
var now_position = Vector2(0,0)

func _physics_process(delta):
	now_position.x += move
	update()

func _draw():
	ellips_half_translate(-840, 630, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(-540, 660, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-640, 690, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-560, 600, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(-695, 570, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(-770, 600, 75, 30, Color.black, "top", now_position.x, 0)
	ellips_half_translate(-750, 670, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-810, 650, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-500, 628, 40, 38, Color.black, "right",  now_position.x, 0)
	

	
