extends Node2D


var cloud = preload('res://Scene/Cloud1.tscn')
func _ready():
	VisualServer.set_default_clear_color(Color.skyblue)
	
	#cloud_reset()

#func cloud_reset():
	#var cloud_instance = cloud.instance()
	#cloud_instance.position = Vector2(rand_range(0, 1200), rand_range(50, 670))
	#get_parent().call_deferred("add_child", cloud_instance)
	

