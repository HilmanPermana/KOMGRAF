extends 'res://Script/ShapeTransformation.gd'

func _ready():
	VisualServer.set_default_clear_color(Color.skyblue)
	
func cloud_animation(now_position):
	
	#awan atas
	ellips_half_translate(100, 130, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(140, 160, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(240, 190, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(160, 100, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(295, 70, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(370, 100, 75, 30, Color.black, "top", now_position.x, 0)
	ellips_half_translate(350, 170, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(410, 150, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(440, 128, 40, 38, Color.black, "right",  now_position.x, 0)
	
	#awan atas
	ellips_half_translate(500, 630, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(540, 660, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(640, 690, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(560, 600, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(695, 570, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(770, 600, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(750, 670, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(810, 650, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(840, 628, 40, 38, Color.black, "right",  now_position.x, 0)
	

func cloud_animation2(now_position):
	
	#awan atas
	ellips_half_translate(400, 230, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(440, 260, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(540, 290, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(460, 200, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(595, 170, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(670, 200, 75, 30, Color.black, "top", now_position.x, 0)
	ellips_half_translate(650, 270, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(710, 250, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(740, 228, 40, 38, Color.black, "right",  now_position.x, 0)
	
	#awan atas
	ellips_half_translate(100, 430, 60, 30, Color.black, "left",  now_position.x, 0)
	ellips_half_translate(140, 460, 60, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(240, 490, 90, 30, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(160, 400, 75, 50, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(295, 370, 75, 30, Color.black, "top",  now_position.x, 0)
	ellips_half_translate(370, 400, 75, 30, Color.black, "top", now_position.x, 0)
	ellips_half_translate(350, 470, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(410, 450, 40, 20, Color.black, "bottom",  now_position.x, 0)
	ellips_half_translate(440, 428, 40, 38, Color.black, "right",  now_position.x, 0)

func airplane(positon_now):
	var x = 1270
	var y = 440
	jajargenjang_composite(Vector2(x - 245, y - 130), 100, 60, Color.black, [["Rotation", 0, Vector2(x,y)], ["Translation", 0, 0]])
	segitiga_composite(Vector2(x , y), 250, 100, Color.black, "ss", [["Rotation", 270, Vector2(x,y)], ["Translation", 0, 0]])
	segitiga_composite(Vector2(x -150 , y - 64), 100, 60, Color.black, "ss", [["Rotation", 0, Vector2(x,y)], ["Translation", 0, 0]])
	persegi_composite(Vector2(x, y - 150), 70, 70, Color.black, [["Rotation", 0, Vector2(x,y)], ["Translation", 0, 0]])
	segitiga_siku_composite(Vector2(x + 70 , y - 150), 70, 80, Color.black, "sikukanan", [["Rotation", 90, Vector2(x + 70,y - 150)], ["Translation", 0, 0]]) #sayap belakang
	segitiga_composite(Vector2(x + 70 , y - 150), 85, 70, Color.red, "sikukanan", [["Rotation", 0, Vector2(x,y)], ["Translation", 0, 0]]) #sayap belakang

	
