extends 'res://Script/ShapeTransformation.gd'


func _ready():
	VisualServer.set_default_clear_color(Color.white)


func _draw():
	
	#GEOMETRIC 1
	#First Coordinat
	persegi(Vector2(400, 140), 450, Color.black, 'weight');
	persegi(Vector2(367, 110), 513, Color.aquamarine, 'normal');
	
	#Horizontal
	line_dda(400, 290, 850, 290, Color.black, 'weight');
	line_dda(400, 440, 850, 440, Color.black, 'weight');
	#vertical
	line_dda(550, 140, 550, 590, Color.black, 'weight');
	line_dda(700, 140, 700, 590, Color.black, 'weight');
	
	#belah ketupat
	segi_lebihdari4_scale(70, 4, Vector2(475, 215), 0.0, Color.black, 1.5, 1.5, Vector2(475, 215));
	segi_lebihdari4_scale(70, 4, Vector2(575, 215), 0.0, Color.black, 1.5, 1.5, Vector2(475, 215));
	segi_lebihdari4_scale(70, 4, Vector2(675, 215), 0.0, Color.black, 1.5, 1.5, Vector2(475, 215));
	segi_lebihdari4_scale(70, 4, Vector2(475, 315), 0.0, Color.black, 1.5, 1.5, Vector2(475, 215));
	segi_lebihdari4_scale(70, 4, Vector2(575, 315), 0.0, Color.black, 1.5, 1.5, Vector2(475, 215));
	segi_lebihdari4_scale(70, 4, Vector2(675, 315), 0.0, Color.black, 1.5, 1.5, Vector2(475, 215));
	segi_lebihdari4_scale(70, 4, Vector2(475, 415), 0.0, Color.black, 1.5, 1.5, Vector2(475, 215));
	segi_lebihdari4_scale(70, 4, Vector2(575, 415), 0.0, Color.black, 1.5, 1.5, Vector2(475, 215));
	segi_lebihdari4_scale(70, 4, Vector2(675, 415), 0.0, Color.black, 1.5, 1.5, Vector2(475, 215));
	
	#Lingkaran Horizontal
	lingkaran_translation(475, 215, 105, Color.aquamarine, 0, 0);
	lingkaran_translation(475, 215, 110, Color.aquamarine, -145, 0);
	lingkaran_translation(475, 215, 105, Color.aquamarine, 145, 0);
	lingkaran_translation(475, 215, 105, Color.aquamarine, 290, 0);
	lingkaran_translation(475, 215, 110, Color.aquamarine, 435, 0);
	
	lingkaran_translation(475, 375, 105, Color.aquamarine, 0, 0);
	lingkaran_translation(475, 375, 110, Color.aquamarine, -145, 0);
	lingkaran_translation(475, 375, 105, Color.aquamarine, 145, 0);
	lingkaran_translation(475, 375, 105, Color.aquamarine, 290, 0);
	lingkaran_translation(475, 375, 110, Color.aquamarine, 435, 0);
	
	lingkaran_translation(475, 535, 105, Color.aquamarine, 0, 0);
	lingkaran_translation(475, 535, 110, Color.aquamarine, -145, 0);
	lingkaran_translation(475, 535, 105, Color.aquamarine, 145, 0);
	lingkaran_translation(475, 535, 105, Color.aquamarine, 290, 0);
	lingkaran_translation(475, 535, 110, Color.aquamarine, 435, 0);
	
	lingkaran_translation(475, 57, 105, Color.aquamarine, -2, 0);
	lingkaran_translation(475, 57, 105, Color.aquamarine, 147, 0);
	lingkaran_translation(475, 57, 105, Color.aquamarine, 294, 0);
	
	lingkaran_translation(475, 693, 105, Color.aquamarine, -2, 0);
	lingkaran_translation(475, 693, 105, Color.aquamarine, 147, 0);
	lingkaran_translation(475, 693, 105, Color.aquamarine, 294, 0);

	
	
	


func _on_Next2_pressed():
	get_tree().change_scene("res://Scene/Geometric2.tscn");


func _on_BackMenu_pressed():
	get_tree().change_scene("res://Scene/Menu.tscn");
