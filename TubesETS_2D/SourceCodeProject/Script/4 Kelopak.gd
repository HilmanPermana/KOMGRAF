extends "res://Script/Kelopak.gd"


func _ready():
	VisualServer.set_default_clear_color(Color.black)


func _draw():
	var center_x = get_viewport_rect().size.x / 2
	var center_y = get_viewport_rect().size.y / 2
	
	kelopak_empat(Vector2(center_x,center_y), 30, Vector2(30, 60), Color.silver, Color.gold)


func _on_back_pressed():
	get_tree().change_scene("res://scene/MainMenu.tscn")
