extends 'res://Script/ShapeTransformation.gd'

const TOPMAX = 0
const BOTTOMMAX = 720
const increment = 50
var t_position = Vector2(0,0)
var position_now = Vector2(0,0)

func _physics_process(delta):
	
	for i in range(10):
		if Input.is_action_pressed("ui_up"):
			t_position.y = -increment
			position_now = t_position.y
		elif Input.is_action_pressed("ui_down"):
			position_now = increment
				
		update()
		set_process(true)

func _draw():
	
	var x = 1270
	var y = 440
	jajargenjang_composite(Vector2(x - 245, y - 130), 100, 60, Color.black, [["Rotation", 0, Vector2(x,y)], ["Translation", 0, t_position.y]])
	segitiga_composite(Vector2(x , y), 250, 100, Color.black, "ss", [["Rotation", 270, Vector2(x,y)], ["Translation", 0, t_position.y]])
	segitiga_composite(Vector2(x -150 , y - 64), 100, 60, Color.black, "ss", [["Rotation", 0, Vector2(x,y)], ["Translation", 0, t_position.y]])
	persegi_composite(Vector2(x, y - 150), 70, 70, Color.black, [["Rotation", 0, Vector2(x,y)], ["Translation", 0, t_position.y]])
	segitiga_siku_composite(Vector2(x + 70 , y - 150), 70, 80, Color.black, "sikukanan", [["Rotation", 90, Vector2(x + 70,y - 150)], ["Translation", 0, t_position.y]]) #sayap belakang
	segitiga_composite(Vector2(x + 70 , y - 150), 85, 70, Color.red, "sikukanan", [["Rotation", 0, Vector2(x,y)], ["Translation", 0, t_position.y]]) #sayap belakang

