extends 'res://Script/ObjectAnimation.gd'

const increment_translation = 10
var position_now = Vector2(0,0)
var cloud = preload('res://Script/ObjectAnimation.gd')

func _process(delta):
	
	position_now.x += increment_translation
	
	update()


func _draw():
	var center_x = get_viewport_rect().size.x / 2
	var center_y = get_viewport_rect().size.y / 2
	var center_v = Vector2(center_x, center_y)

