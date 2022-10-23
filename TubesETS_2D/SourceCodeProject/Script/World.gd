extends Node2D

var newCloud = load("Cloud1.tscn")
var cloud = []; var speed = -2; var rnd = 0

func _ready():
	VisualServer.set_default_clear_color(Color.skyblue)
	var offset = 0
	for c in range(6):
		cloud.append(newCloud.instance())
		if rnd < 300: rnd = rand_range(310,501)
		else: rnd = rand_range(100, 291)
		cloud[c].set_pos(Vector2(1024+offset, rnd))
		offset += 300
		add_child(cloud[c])
	set_process(true)

func _process(delta):
	for c in range(6): cloud[c].set_pos(cloud[c].get_pos()+Vector2(speed,0))
	if cloud[5].get_pos().x < 1024:
		remove_child(cloud[0])
		cloud[0] = newCloud.instance()
		if rnd < 300: rnd = rand_range(310, 501)
		else: rnd = rand_range(100, 291)
		cloud[0].set_pos(Vector2(1024-300,rnd))
		add_child(cloud[0])
		cloud.push_back(cloud[0]); cloud.pop_front()
