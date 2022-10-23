extends 'res://Script/ShapeTransformation.gd'

const move = 2
var now_position = Vector2(0,0)

func _physics_process(delta):
	now_position.x += move
	update()

func _draw():
	ellips_half_translate(100, 130, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(140, 160, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(240, 190, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(160, 100, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(295, 70, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(370, 100, 75, 30, Color.black, "top", now_position.x, 0)
	ellips_half_translate(350, 170, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(410, 150, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(440, 128, 40, 38, Color.black, "right",  now_position.x, 0)
	
	ellips_half_translate(100, 630, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(140, 660, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(240, 690, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(160, 600, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(295, 570, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(370, 600, 75, 30, Color.black, "top", now_position.x, 0)
	ellips_half_translate(350, 670, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(410, 650, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(440, 628, 40, 38, Color.black, "right",  now_position.x, 0)
	
