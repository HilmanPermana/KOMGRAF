extends 'res://Script/Shape.gd'

func _ready():
	VisualServer.set_default_clear_color(Color.darkred);

func _draw():

	segi_lebihdari4_rotate(250, 8, Vector2(640, 360), 0.0, Color.gold, 67, Vector2(640,360));
	ellips(640, 360, 500, 235, Color.gold);
<<<<<<< HEAD
	put_pixel_all(segitiga_sembarang(), Color.gold)
=======
	segi_lebihdari4_rotate(130, 3, Vector2(640, 360), 0.0, Color.gold, 120, Vector2(640,360));
>>>>>>> origin
	

func _on_Back2_pressed():
	get_tree().change_scene("res://Scene/Geometric2.tscn");
