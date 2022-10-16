extends "res://Script/Shape.gd"


func kelopak_empat(center, radius_l, radius_e, color_l, color_e):
	var midpoint_l1 = Vector2(center.x/3, center.y)
	var midpoint_e1 = Vector2(center.x/3, center.y+(radius_e.y/2)+radius_e.y/2)
	
	print(midpoint_e1.x, " ", midpoint_e1.y)
	circleMidPoint(midpoint_l1.x, midpoint_l1.y, radius_l, color_l)
	ellipsMidPoint(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y , color_e)
	ellips_rotation(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 90, Vector2(midpoint_e1.x, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 180, Vector2(midpoint_e1.x, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 270, Vector2(midpoint_e1.x, midpoint_e1.y-radius_e.y))
	
	
	lingkaran_translation(midpoint_l1.x, midpoint_l1.y, radius_l, color_l, center.x/1.5, 0)
	ellips_rotation(midpoint_e1.x+center.x/1.5, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 45, Vector2(midpoint_e1.x+center.x/1.5, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x+center.x/1.5, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 135, Vector2(midpoint_e1.x+center.x/1.5, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x+center.x/1.5, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 225, Vector2(midpoint_e1.x+center.x/1.5, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x+center.x/1.5, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 315, Vector2(midpoint_e1.x+center.x/1.5, midpoint_e1.y-radius_e.y))
	
	lingkaran_translation(midpoint_l1.x, midpoint_l1.y, radius_l, color_l, center.x*1.3, 0)
	ellips_rotation(midpoint_e1.x+center.x*1.3, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 0, Vector2(midpoint_e1.x+center.x*1.3, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x+center.x*1.3, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 90, Vector2(midpoint_e1.x+center.x*1.3, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x+center.x*1.3, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 180, Vector2(midpoint_e1.x+center.x*1.3, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x+center.x*1.3, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 270, Vector2(midpoint_e1.x+center.x*1.3, midpoint_e1.y-radius_e.y))
	
	ellips_rotation(midpoint_e1.x+center.x*1.3, midpoint_e1.y, radius_e.x/2, radius_e.y/1.5, color_e, 45, Vector2(midpoint_e1.x+center.x*1.3, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x+center.x*1.3, midpoint_e1.y, radius_e.x/2, radius_e.y/1.5, color_e, 135, Vector2(midpoint_e1.x+center.x*1.3, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x+center.x*1.3, midpoint_e1.y, radius_e.x/2, radius_e.y/1.5, color_e, 225, Vector2(midpoint_e1.x+center.x*1.3, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x+center.x*1.3, midpoint_e1.y, radius_e.x/2, radius_e.y/1.5, color_e, 315, Vector2(midpoint_e1.x+center.x*1.3, midpoint_e1.y-radius_e.y))
	
func bunga_8_kelopak(center, radius_l, radius_e, color_l, color_e):
	var midpoint_l1 = Vector2(center.x, center.y)
	var midpoint_e1 = Vector2(center.x, center.y+(radius_e.y/2)+radius_e.y/2)
	
	circleMidPoint(midpoint_l1.x, midpoint_l1.y, radius_l, color_l)
	ellips(midpoint_e1.x, midpoint_e1.y, radius_e.x, radius_e.y, color_e)
	ellips_rotation(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 45, Vector2(midpoint_e1.x, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 90, Vector2(midpoint_e1.x, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 135, Vector2(midpoint_e1.x, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 180, Vector2(midpoint_e1.x, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 225, Vector2(midpoint_e1.x, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 270, Vector2(midpoint_e1.x, midpoint_e1.y-radius_e.y))
	ellips_rotation(midpoint_e1.x, midpoint_e1.y, radius_e.x + 10, radius_e.y, color_e, 315, Vector2(midpoint_e1.x, midpoint_e1.y-radius_e.y))
