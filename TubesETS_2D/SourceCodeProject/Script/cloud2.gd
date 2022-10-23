extends 'res://Script/ShapeTransformation.gd'

const move = 2
var now_position = Vector2(0,0)

func _physics_process(delta):
	now_position.x += move
	update()

func _draw():
	ellips_half_translate(-640, 430, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(-340, 460, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-440, 490, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-360, 400, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(-495, 370, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(-570, 400, 75, 30, Color.black, "top", now_position.x, 0)
	ellips_half_translate(-550, 470, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-610, 450, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-300, 428, 40, 38, Color.black, "right",  now_position.x, 0)
	

	
