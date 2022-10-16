extends 'res://Script/Shape.gd'


func _ready():
	VisualServer.set_default_clear_color(Color.white)


func _draw():
	persegi(100, 200, Color.black, 'weight');
	
