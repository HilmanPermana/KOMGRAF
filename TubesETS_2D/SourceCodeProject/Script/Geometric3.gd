extends 'res://Script/Shape.gd'

func _ready():
	VisualServer.set_default_clear_color(Color.darkred);

func _draw():

	segi_lebihdari4_rotate(250, 8, Vector2(640, 360), 0.0, Color.gold, 67, Vector2(640,360));
	ellips(640, 360, 500, 235, Color.gold);
	segitiga_ss(Vector2(640, 360), 150, Color.gold, "weight");
	




func _on_Back2_pressed():
	get_tree().change_scene("res://Scene/Geometric2.tscn");
