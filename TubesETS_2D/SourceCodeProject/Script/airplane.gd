extends 'res://Script/ShapeTransformation.gd'


func _ready():
	VisualServer.set_default_clear_color(Color.skyblue)
	
	var x = 1270
	var y = 440
	
func _draw():
	var x = 1270
	var y = 440
	jajargenjang_composite(Vector2(x - 245, y - 130), 100, 60, Color.black, [["Rotation", 0, Vector2(x,y)], ["Translation", 0, 0]])
	segitiga_composite(Vector2(x , y), 250, 100, Color.black, "ss", [["Rotation", 270, Vector2(x,y)], ["Translation", 0, 0]])
	segitiga_composite(Vector2(x -150 , y - 64), 100, 60, Color.black, "ss", [["Rotation", 0, Vector2(x,y)], ["Translation", 0, 0]])
	persegi_composite(Vector2(x, y - 150), 70, 70, Color.black, [["Rotation", 0, Vector2(x,y)], ["Translation", 0, 0]])
	segitiga_siku_composite(Vector2(x + 70 , y - 150), 70, 80, Color.black, "sikukanan", [["Rotation", 90, Vector2(x + 70,y - 150)], ["Translation", 0, 0]]) #sayap belakang
	segitiga_composite(Vector2(x + 70 , y - 150), 85, 70, Color.red, "sikukanan", [["Rotation", 0, Vector2(x,y)], ["Translation", 0, 0]]) #sayap belakang
