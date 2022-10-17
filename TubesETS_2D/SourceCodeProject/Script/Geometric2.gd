extends 'res://Script/Shape.gd'

func _ready():
	VisualServer.set_default_clear_color(Color.black);

func _draw():
	segi_lebihdari4_rotate(100, 6, Vector2(640, 360), 0.0, Color.red, 30, Vector2(640,360));
	lingkaran(640, 360, 50, Color.orangered);
	segi_lebihdari4_rotate(300, 6, Vector2(640, 360), 0.0, Color.gold, 30, Vector2(640,360));
	segi_lebihdari4_rotate(300, 3, Vector2(640, 360), 0.0, Color.silver, 30, Vector2(640,360));
	segi_lebihdari4_rotate(300, 3, Vector2(640, 360), 0.0, Color.silver, 90, Vector2(640,360));
	segi_lebihdari4_rotate(300, 3, Vector2(640, 360), 0.0, Color.silver, 120, Vector2(640,360));
	segi_lebihdari4_rotate(300, 3, Vector2(640, 360), 0.0, Color.silver, 300, Vector2(640,360));
	layang(Vector2(380, 210), 150, 150, 520, Color.gold, "weight");
	line_dda(640, 360, 640, 660, Color.gold, "weight");
	lingkaran(640, 360, 300, Color.green);


func _on_Next3_pressed():
	get_tree().change_scene("res://Scene/Geometric3.tscn");


func _on_Back1_pressed():
	get_tree().change_scene("res://Scene/Geometric1.tscn");
