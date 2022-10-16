extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first ti
func put_pixel(x, y, color):
	draw_primitive(PoolVector2Array([Vector2(x, y)]), PoolColorArray([color]), PoolVector2Array())
