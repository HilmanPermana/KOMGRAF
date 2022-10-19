extends 'res://Script/ShapeTransformation.gd'


func _ready():
	VisualServer.set_default_clear_color(Color.skyblue)
	
func _draw():
	
	var x = 1270
	var y = 440
	#persegi_panjang_rotate(Vector2(1200, 400), 200, 50, Color.black, 20, Vector2(1000, 480)) 
	segitiga_ss_rotate(Vector2(1200, 560), 230, 120, Color.black, 300, Vector2(1200, 560))
	segitiga_siku_rotate(Vector2(x + 130, y + 62), 71, 50, Color.black, "kiri", 202, Vector2(x + 130, y + 62))
	persegi_rotate(Vector2(x, y), 70, Color.black, "normal", 30, Vector2(x, y) )
	segitiga_ss_rotate(Vector2(x - 200, y + 10), 135, 60, Color.black, 35, Vector2(x - 140 , y - 13))
