extends 'res://Script/Shape.gd'


func _ready():
	VisualServer.set_default_clear_color(Color.white)


func _draw():
	#First Coordinat
	persegi(Vector2(400, 140), 450, Color.black, 'weight');
	#Horizontal
	line_dda(400, 290, 850, 290, Color.black, 'weight');
	line_dda(400, 440, 850, 440, Color.black, 'weight');
	#vertical
	line_dda(550, 140, 550, 590, Color.black, 'weight');
	line_dda(700, 140, 700, 590, Color.black, 'weight');
