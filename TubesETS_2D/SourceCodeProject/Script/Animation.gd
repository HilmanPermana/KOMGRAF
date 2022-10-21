extends 'res://Script/ObjectAnimation.gd'

var increment_translation = 10
var position_scene1 = Vector2(0,0)
var position_scene2 = Vector2(0,0)
var airplane_position = Vector2(0,0)

func _process(delta):
	position_scene1.x += increment_translation
	position_scene2.x == 1500
	
	
	
	
	update()


func _draw():
	var center_x = get_viewport_rect().size.x / 2
	var center_y = get_viewport_rect().size.y / 2
	var center_v = Vector2(center_x, center_y)
	
	airplane(position_scene1)
	cloud_animation1(position_now)
	if(position_now.x == 1000):
		cloud_animation2(position_now)
