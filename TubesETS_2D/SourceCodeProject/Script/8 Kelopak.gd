extends "res://Script/Kelopak.gd"

func _ready():
	VisualServer.set_default_clear_color(Color.antiquewhite)


func _draw():
	var center_x = get_viewport_rect().size.x / 2
	var center_y = get_viewport_rect().size.y / 2
	
	bunga_8_kelopak(Vector2(center_x,center_y), 40, Vector2(40, 80), Color.orangered, Color.darkgreen)


func _on_Back_pressed():
	get_tree().change_scene("res://scene/MainMenu.tscn")
