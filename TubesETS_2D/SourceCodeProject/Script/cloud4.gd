extends 'res://Script/ShapeTransformation.gd'

const move = 2
var now_position = Vector2(0,0)

func _physics_process(delta):
	now_position.x += move
	update()

func _draw():
	ellips_half_translate(-1040, 230, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(-740, 260, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-840, 290, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-760, 200, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(-895, 170, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(-970, 200, 75, 30, Color.black, "top", now_position.x, 0)
	ellips_half_translate(-950, 270, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-1010, 250, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(-700, 228, 40, 38, Color.black, "right",  now_position.x, 0)
	

	
