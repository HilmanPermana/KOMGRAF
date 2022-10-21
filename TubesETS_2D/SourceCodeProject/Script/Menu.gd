extends Node2D


func _on_GeoBttn_pressed():
	get_tree().change_scene("res://Scene/Geometric1.tscn");


func _on_Identitybttn_pressed():
	get_tree().change_scene("res://Scene/Identitas.tscn");


func _on_objFlybttn_pressed():
	get_tree().change_scene("res://Scene/Animation.tscn");
