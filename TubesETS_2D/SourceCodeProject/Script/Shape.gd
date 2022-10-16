extends "res://Script/Line.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func persegi(start, length, color, type):
	if type != 'weight':
		# Sisi Atas
		line_dda(start.x, start.y, start.x+length, start.y, color, type)
		# Sisi Bawah
		line_dda(start.x, start.y+length, start.x+length, start.y+length, color, type)
		# Sisi Kiri
		line_dda(start.x, start.y, start.x, start.y+length, color, type)	
		# Sisi Kanan
		line_dda(start.x+length, start.y, start.x+length, start.y+length, color, type)
	else:
		# Sisi Atas
		line_dda(start.x-1, start.y, start.x+length, start.y, color, type)
		# Sisi Bawah
		line_dda(start.x-1, start.y+length, start.x+length, start.y+length, color, type)
		# Sisi Kiri
		line_dda(start.x, start.y, start.x, start.y+length, color, type)	
		# Sisi Kanan
		line_dda(start.x+length-1, start.y, start.x+length-1, start.y+length, color, type)

func persegi_panjang(start, length, width, color, type):
	if type != 'weight':
		# Sisi Atas
		line_dda(start.x, start.y, start.x+length, start.y, color, type)
		# Sisi Bawah
		line_dda(start.x, start.y+width, start.x+length, start.y+width, color, type)
		# Sisi Kiri
		line_dda(start.x, start.y, start.x, start.y+width, color, type)	
		# Sisi Kanan
		line_dda(start.x+length, start.y, start.x+length, start.y+width, color, type)
	else:
		# Sisi Atas
		line_dda(start.x-1, start.y, start.x+length, start.y, color, type)
		# Sisi Bawah
		line_dda(start.x-1, start.y+width, start.x+length, start.y+width, color, type)
		# Sisi Kiri
		line_dda(start.x, start.y, start.x, start.y+width, color, type)	
		# Sisi Kanan
		line_dda(start.x+length-1, start.y, start.x+length-1, start.y+width, color, type)

func segitiga_siku(start, base, height, color, type):
	if type != 'weight':
		# Sisi Kiri
		line_dda(start.x, start.y, start.x, start.y+height, color, type)
		# Sisi Bawah
		line_dda(start.x, start.y+height, start.x+base, start.y+height, color, type)
		# Sisi Miring
		line_dda(start.x, start.y, start.x+base, start.y+height, color, type)
	else:
		# Sisi Kiri
		line_dda(start.x, start.y, start.x, start.y+height, color, type)
		# Sisi Bawah
		line_dda(start.x-1, start.y+height, start.x+base, start.y+height, color, type)
		# Sisi Miring
		line_dda(start.x, start.y, start.x+base, start.y+height, color, type)
		
func trapesium_siku(start, base_top, base_bottom, height, color, type):
	# Sisi Atas
	line_dda(start.x, start.y, start.x+base_top, start.y, color, type)
	# Sisi Bawah
	line_dda(start.x, start.y+height, start.x+base_top+((base_bottom-base_top)/2), start.y+height, color, type)
	# Sisi Kiri
	line_dda(start.x, start.y, start.x, start.y+height, color, type)
	# Sisi Kanan
	line_dda(start.x+base_top, start.y, start.x+base_top+((base_bottom-base_top)/2), start.y+height, color, type)
		
func trapesium(start, base_top, base_bottom, height, color, type):
	# Sisi Atas
	line_dda(start.x, start.y, start.x+base_top, start.y, color, type)
	# Sisi Bawah
	line_dda(start.x-((base_bottom-base_top)/2), start.y+height, start.x+base_top+((base_bottom-base_top)/2), start.y+height, color, type)
	# Sisi Kiri
	line_dda(start.x, start.y, start.x-((base_bottom-base_top)/2), start.y+height, color, type)
	# Sisi Kanan
	line_dda(start.x+base_top, start.y, start.x+base_top+((base_bottom-base_top)/2), start.y+height, color, type)

func ketupat(start, diag1, diag2, color, type):
	# Sisi Kiri Atas
	line_dda(start.x, start.y, start.x+(diag2/2), start.y-(diag1/2), color, type)
	# Sisi Kiri Bawah
	line_dda(start.x, start.y, start.x+(diag2/2), start.y+(diag1/2), color, type)
	# Sisi Kanan Atas
	line_dda(start.x+diag2, start.y, start.x+(diag2/2), start.y-(diag1/2), color, type)
	# Sisi Kanan Bawah
	line_dda(start.x+diag2, start.y, start.x+(diag2/2), start.y+(diag1/2), color, type)
	
func jajaran_genjang(start, base, height, color, type):
	# Sisi Bawah
	line_dda(start.x, start.y, start.x+base, start.y, color, type)
	# Sisi Atas
	line_dda(start.x+(height/2), start.y-height, start.x+base+(height/2), start.y-height, color, type)
	# Sisi Kiri
	line_dda(start.x, start.y, start.x+(height/2), start.y-height, color, type)
	# Sisi Kanan
	line_dda(start.x+base, start.y, start.x+base+(height/2), start.y-height, color, type)
	
func layang(start, diag1_top, diag1_bottom, diag2, color, type):
	# Sisi Kiri Atas
	line_dda(start.x, start.y, start.x+(diag2/2), start.y-diag1_top, color, type)
	# Sisi Kiri Bawah
	line_dda(start.x, start.y, start.x+(diag2/2), start.y+diag1_bottom, color, type)
	# Sisi Kanan Atas
	line_dda(start.x+diag2, start.y, start.x+(diag2/2), start.y-diag1_top, color, type)
	# Sisi Kanan Bawah
	line_dda(start.x+diag2, start.y, start.x+(diag2/2), start.y+diag1_bottom, color, type)

func lingkaran(x_center, y_center, radius, color):
	var x = 0
	var y = radius
	var p = 1 - radius
	
	lingkaran_plot_points(x_center, y_center, x, y, color)
	
	while x < y:
		x += 1
		if p < 0:
			p += 2 * x + 1
		else:
			y -= 1
			p += 2 * (x - y) + 1
		
		lingkaran_plot_points(x_center, y_center, x, y, color)

func lingkaran_plot_points(x_center, y_center, x, y, color):
	put_pixel(x_center+x, y_center+y, color)
	put_pixel(x_center-x, y_center+y, color)
	put_pixel(x_center+x, y_center-y, color)
	put_pixel(x_center-x, y_center-y, color)
	put_pixel(x_center+y, y_center+x, color)
	put_pixel(x_center-y, y_center+x, color)
	put_pixel(x_center+y, y_center-x, color)
	put_pixel(x_center-y, y_center-x, color)

func ellips(xCenter, yCenter, Rx, Ry, color):
	var Rx2 = Rx*Rx
	var Ry2 = Ry*Ry
	var twoRx2 = 2*Rx2
	var twoRy2 = 2*Ry2
	var p
	var x = 0
	var y = Ry
	var px = 0
	var py = twoRx2*y
	
	ellips_plot_points(xCenter, yCenter, x, y, color)
	
	# Region 1
	p = round(Ry2 - (Rx2*Ry) + (0.25 * Rx2))
	while (px < py):
		x += 1
		px += twoRy2
		if (p < 0):
			p += Ry2 + px
		else:
			y -= 1
			py -= twoRx2
			p += Ry2 + px - py
		ellips_plot_points(xCenter, yCenter, x, y, color)
		
	# Region 2
	p = round(Ry2*(x+0.5)*(x+0.5) + Rx2*(y-1)*(y-1) - Rx2*Ry2)
	while (y > 0):
		y -= 1
		py -= twoRx2
		if (p > 0):
			p += Rx2 - py
		else :
			x += 1
			px += twoRy2
			p += Rx2 - py + px
		ellips_plot_points(xCenter, yCenter, x, y, color)
		
func ellips_plot_points(xCenter, yCenter, x, y, color):
	put_pixel(xCenter + x, yCenter + y, color)
	put_pixel(xCenter - x, yCenter + y, color)
	put_pixel(xCenter + x, yCenter - y, color)
	put_pixel(xCenter - x, yCenter - y, color)
