extends 'res://Script/Line.gd'


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

func segitiga_sembarang():
	var titik_awal = Vector2(310,450)
	var panjang_sisi = 130

	var res = PoolVector2Array()
	res.append_array(line_dda(titik_awal.x - 60 , titik_awal.y, titik_awal.x + panjang_sisi, titik_awal.y, Color.gold, "weight")) #sisi atas
	res.append_array(line_dda(titik_awal.x - 60, titik_awal.y, titik_awal.x + panjang_sisi/2, titik_awal.y + panjang_sisi, Color.gold, "weight")) #sisi kiri
	res.append_array(line_dda(titik_awal.x + panjang_sisi, titik_awal.y, titik_awal.x + panjang_sisi/2 , titik_awal.y + panjang_sisi, Color.gold, "weight")) #sisi kanan
	return res


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

func segitiga_ss(start, base, height, color, type):
	
	if type != 'weight':
		# Sisi Kiri
		line_dda(start.x, start.y, start.x, start.y+height, color, type)
		# Sisi Bawah
		line_dda(start.x, start.y+height, start.x+base, start.y+height, color, type)
		# Sisi Miring
		line_dda(start.x, start.y, start.x+base, start.y+height, color, type)
	else:
		# Sisi Kiri
		line_dda(start.x + 100, start.y, start.x, start.y+height, color, type)
		# Sisi Bawah
		line_dda(start.x-1, start.y+height, start.x+base, start.y+height, color, type)
		# Sisi Miring
		line_dda(start.x + 100, start.y, start.x + 200, start.y+height, color, type)
		
		
func layang(start, diag1_top, diag1_bottom, diag2, color, type):
	# Sisi Kiri Atas
	line_dda(start.x, start.y, start.x+(diag2/2), start.y-diag1_top, color, type)
	# Sisi Kiri Bawah
	line_dda(start.x, start.y, start.x+(diag2/2), start.y+diag1_bottom, color, type)
	# Sisi Kanan Atas
	line_dda(start.x+diag2, start.y, start.x+(diag2/2), start.y-diag1_top, color, type)
	# Sisi Kanan Bawah
	line_dda(start.x+diag2, start.y, start.x+(diag2/2), start.y+diag1_bottom, color, type)

	
func segi_lebihdari4(radius, sisi, center, theta, color):
	var x = []
	var y = []
	var pi = 3.14
	theta = theta / sisi
	for i in sisi:
		x.append(radius * cos(2*pi*(i+1)/sisi + theta) + center.x)
		y.append(radius * sin(2*pi*(i+1)/sisi + theta) + center.y)
		
	for i in sisi:
		if i == sisi - 1:
			line_dda(x[i], y[i], x[0], y[0], color, "weight")
		else:
			line_dda(x[i], y[i], x[i+1], y[i+1], color, "weight")
	
	
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
	
func ellips_half_plot_points(xCenter, yCenter, x, y, color, type):
	
	if(type == "left"):
		put_pixel(xCenter - x, yCenter + y, color)
		put_pixel(xCenter - x, yCenter - y, color)
		
	elif(type == "bottom"):
		put_pixel(xCenter + x, yCenter + y, color)
		put_pixel(xCenter - x, yCenter + y, color)
		
	elif(type == "right"):
		put_pixel(xCenter + x, yCenter + y, color)
		put_pixel(xCenter + x, yCenter - y, color)
		
	else:
		put_pixel(xCenter + x, yCenter - y, color)
		put_pixel(xCenter - x, yCenter - y, color)
	
func ellips_plot_points_rotation(xCenter, yCenter, x, y, color, degree, refpt):
	var matrix = init_matrix(m_width, m_height)
	matrix_identitas(matrix)
	
	# Rotate 1
	matrix[0][2] = xCenter + x
	matrix[1][2] = yCenter + y
	matrix = rotateM(matrix, degree, Vector2(refpt.x,refpt.y))
	put_pixel(matrix[0][2], matrix[1][2], color)
	
	# Rotate 2
	matrix[0][2] = xCenter - x
	matrix[1][2] = yCenter + y
	matrix = rotateM(matrix, degree, Vector2(refpt.x,refpt.y))
	put_pixel(matrix[0][2], matrix[1][2], color)
	
	# Rotate 3
	matrix[0][2] = xCenter + x
	matrix[1][2] = yCenter - y
	matrix = rotateM(matrix, degree, Vector2(refpt.x,refpt.y))
	put_pixel(matrix[0][2], matrix[1][2], color)
	
	# Rotate 4
	matrix[0][2] = xCenter - x
	matrix[1][2] = yCenter - y
	matrix = rotateM(matrix, degree, Vector2(refpt.x,refpt.y))
	put_pixel(matrix[0][2], matrix[1][2], color)


