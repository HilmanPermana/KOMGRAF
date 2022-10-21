extends 'res://Script/ObjectAnimation.gd'

var increment_translation = 10
var position_now = Vector2(0,0)

func _process(delta):
	position_now.x += increment_translation
	if(position_now.x == 1500):
		position_now = Vector2(0, 0)
	
	update()


func _draw():
	var center_x = get_viewport_rect().size.x / 2
	var center_y = get_viewport_rect().size.y / 2
	var center_v = Vector2(center_x, center_y)
	
	cloud_animation(position_now)
	if(position_now.x == 1280):
		cloud_animation2(position_now)
	airplane(position_now)
