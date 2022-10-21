extends 'res://Script/Shape.gd'

### LINE ###
func line_dda_rotate(start, end, color, type, degree, refpt):
	var matrix1 = init_matrix(3, 3)
	matrix_identitas(matrix1)
	var matrix2 = init_matrix(3, 3)
	matrix_identitas(matrix2)

	matrix1[0][2] = start.x
	matrix1[1][2] = start.y
	if (typeof(degree) != 19):
		matrix1 = rotateM(matrix1, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix1 = rotateM(matrix1, degree[idx], refpt[idx])
	matrix2[0][2] = end.x
	matrix2[1][2] = end.y
	if (typeof(degree) != 19):
		matrix2 = rotateM(matrix2, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix2 = rotateM(matrix2, degree[idx], refpt[idx])
	
	line_dda(matrix1[0][2], matrix1[1][2], matrix2[0][2], matrix2[1][2], color, type)
	
func line_dda_composite(start, end, color, type, transform_el):
	var matrix1 = init_matrix(3, 3)
	matrix_identitas(matrix1)
	var matrix2 = init_matrix(3, 3)
	matrix_identitas(matrix2)

	matrix1[0][2] = start.x
	matrix1[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix1 = translation(matrix1, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix1 = rotateM(matrix1, transform_el[idx][1], transform_el[idx][2])
	matrix2[0][2] = end.x
	matrix2[1][2] = end.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix2 = translation(matrix2, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix2 = rotateM(matrix2, transform_el[idx][1], transform_el[idx][2])
	
	line_dda(matrix1[0][2], matrix1[1][2], matrix2[0][2], matrix2[1][2], color, type)

### PERSEGI ###
func persegi_translate(start, length, color, type, tx, ty):
	var matrix1 = init_matrix(3, 3)
	matrix_identitas(matrix1)
	var matrix2 = init_matrix(3, 3)
	matrix_identitas(matrix2)
	
	# Sisi Atas
	matrix1[0][2] = start.x
	matrix1[1][2] = start.y
	matrix1 = translation(matrix1, tx, ty)
	matrix2[0][2] = start.x + length
	matrix2[1][2] = start.y
	matrix2 = translation(matrix2, tx, ty)
	line_dda(matrix1[0][2], matrix1[1][2], matrix2[0][2], matrix2[1][2], color, type)
	
	# Sisi Bawah
	matrix1[0][2] = start.x
	matrix1[1][2] = start.y + length
	matrix1 = translation(matrix1, tx, ty)
	matrix2[0][2] = start.x + length
	matrix2[1][2] = start.y + length
	matrix2 = translation(matrix2, tx, ty)
	line_dda(matrix1[0][2], matrix1[1][2], matrix2[0][2], matrix2[1][2], color, type)
	
	# Sisi Kiri
	matrix1[0][2] = start.x
	matrix1[1][2] = start.y
	matrix1 = translation(matrix1, tx, ty)
	matrix2[0][2] = start.x
	matrix2[1][2] = start.y + length
	matrix2 = translation(matrix2, tx, ty)
	line_dda(matrix1[0][2], matrix1[1][2], matrix2[0][2], matrix2[1][2], color, type)
	
	# Sisi Kanan
	matrix1[0][2] = start.x + length
	matrix1[1][2] = start.y
	matrix1 = translation(matrix1, tx, ty)
	matrix2[0][2] = start.x + length
	matrix2[1][2] = start.y + length
	matrix2 = translation(matrix2, tx, ty)
	line_dda(matrix1[0][2], matrix1[1][2], matrix2[0][2], matrix2[1][2], color, type)
		
func persegi_rotate(start, length, color, type, degree, refpt):
	var matrix1 = init_matrix(3, 3)
	matrix_identitas(matrix1)
	var matrix2 = init_matrix(3, 3)
	matrix_identitas(matrix2)
	
	# Sisi Atas
	matrix1[0][2] = start.x
	matrix1[1][2] = start.y
	matrix1 = rotateM(matrix1, degree, refpt)
	matrix2[0][2] = start.x + length
	matrix2[1][2] = start.y
	matrix2 = rotateM(matrix2, degree, refpt)
	line_dda(matrix1[0][2], matrix1[1][2], matrix2[0][2], matrix2[1][2], color, type)
	
	# Sisi Bawah
	matrix1[0][2] = start.x
	matrix1[1][2] = start.y + length
	matrix1 = rotateM(matrix1, degree, refpt)
	matrix2[0][2] = start.x + length
	matrix2[1][2] = start.y + length
	matrix2 = rotateM(matrix2, degree, refpt)
	line_dda(matrix1[0][2], matrix1[1][2], matrix2[0][2], matrix2[1][2], color, type)
	
	# Sisi Kiri
	matrix1[0][2] = start.x
	matrix1[1][2] = start.y
	matrix1 = rotateM(matrix1, degree, refpt)
	matrix2[0][2] = start.x
	matrix2[1][2] = start.y + length
	matrix2 = rotateM(matrix2, degree, refpt)
	line_dda(matrix1[0][2], matrix1[1][2], matrix2[0][2], matrix2[1][2], color, type)
	
	# Sisi Kanan
	matrix1[0][2] = start.x + length
	matrix1[1][2] = start.y
	matrix1 = rotateM(matrix1, degree, refpt)
	matrix2[0][2] = start.x + length
	matrix2[1][2] = start.y + length
	matrix2 = rotateM(matrix2, degree, refpt)
	line_dda(matrix1[0][2], matrix1[1][2], matrix2[0][2], matrix2[1][2], color, type)
	

### PERSEGI PANJANG ###
func persegi_panjang_rotate(start, length, width, color, degree, refpt):
	var matrix = init_matrix(3, 3)
	matrix_identitas(matrix)
	var a
	var b
	var c
	var d
	
	# Sisi Atas
	matrix[0][2] = start.x
	matrix[1][2] = start.y
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a, b, c, d, color, "normal")
	
	# Sisi Bawah
	matrix[0][2] = start.x
	matrix[1][2] = start.y+width
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y+width
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a, b, c, d, color, "normal")
	
	# Sisi Kiri
	matrix[0][2] = start.x
	matrix[1][2] = start.y
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x
	matrix[1][2] = start.y+width
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a, b, c, d, color, "normal")
	
	# Sisi Kanan
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y+width
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a, b, c, d, color, "normal")
	
func persegi_composite(start, length, width, color, transform_el):
	var matrix = init_matrix(3, 3)
	matrix_identitas(matrix)
	var a
	var b
	var c
	var d
	
	# Sisi Atas
	matrix[0][2] = start.x
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a, b, c, d, color, "normal")
	
	# Sisi Bawah
	matrix[0][2] = start.x
	matrix[1][2] = start.y+width
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y+width
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a, b, c, d, color, "normal")
	
	# Sisi Kiri
	matrix[0][2] = start.x
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x
	matrix[1][2] = start.y+width
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a, b, c, d, color, "normal")
	
	# Sisi Kanan
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y+width
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a, b, c, d, color, "normal")

func jajargenjang_composite(start, length, width, color, transform_el):
	var matrix = init_matrix(3, 3)
	matrix_identitas(matrix)
	var a
	var b
	var c
	var d
	
	# Sisi Atas
	matrix[0][2] = start.x
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a + 50, b, c + 50, d, color, "normal")
	
	# Sisi Bawah
	matrix[0][2] = start.x
	matrix[1][2] = start.y+width
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y+width
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a, b, c, d, color, "normal")
	
	# Sisi Kiri
	matrix[0][2] = start.x
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x
	matrix[1][2] = start.y+width
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a + 50, b, c, d, color, "normal")
	
	# Sisi Kanan
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	a = matrix[0][2]
	b = matrix[1][2]
	
	matrix[0][2] = start.x+length
	matrix[1][2] = start.y+width
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	c = matrix[0][2]
	d = matrix[1][2]
	line_dda(a + 50, b, c, d, color, "normal")
	
###POLYGON###
func segi_lebihdari4_translation(radius, sisi, center, theta, color, tx, ty):
	var matrix = init_matrix(m_width, m_height)
	matrix_identitas(matrix)
	
	var x = []
	var y = []
	var pi = 3.14
	theta = theta / sisi
	for i in sisi:
		x.append(radius * cos(2*pi*(i+1)/sisi + theta) + center.x)
		y.append(radius * sin(2*pi*(i+1)/sisi + theta) + center.y)
		
	for i in sisi:
		# Translation Process
		matrix[0][2] = x[i]
		matrix[1][2] = y[i]
		matrix = translation(matrix, tx, ty)
		x[i] = matrix[0][2]
		y[i] = matrix[1][2]
		
	for i in sisi:
		if i == sisi - 1:
			line_dda(x[i], y[i], x[0], y[0], color, "normal")
		else:
			line_dda(x[i], y[i], x[i+1], y[i+1], color, "normal")
			
func segi_lebihdari4_scale(radius, sisi, center, theta, color, sx, sy, refpt):
	var matrix = init_matrix(m_width, m_height)
	matrix_identitas(matrix)
	
	var x = []
	var y = []
	var pi = 3.14
	theta = theta / sisi
	for i in sisi:
		x.append(radius * cos(2*pi*(i+1)/sisi + theta) + center.x)
		y.append(radius * sin(2*pi*(i+1)/sisi + theta) + center.y)
		
	for i in sisi:
		# Scalation Process
		matrix[0][2] = x[i]
		matrix[1][2] = y[i]
		matrix = scaleM(matrix, sx, sy, refpt)
		x[i] = matrix[0][2]
		y[i] = matrix[1][2]
		
	for i in sisi:
		if i == sisi - 1:
			line_dda(x[i], y[i], x[0], y[0], color, "weight")
		else:
			line_dda(x[i], y[i], x[i+1], y[i+1], color, "weight")

func segi_lebihdari4_rotate(radius, sisi, center, theta, color, degree, refpt):
	var matrix = init_matrix(m_width, m_height)
	matrix_identitas(matrix)
	
	var x = []
	var y = []
	var pi = 3.14
	theta = theta / sisi
	for i in sisi:
		x.append(radius * cos(2*pi*(i+1)/sisi + theta) + center.x)
		y.append(radius * sin(2*pi*(i+1)/sisi + theta) + center.y)
		
	for i in sisi:
		# Rotation Process
		matrix[0][2] = x[i]
		matrix[1][2] = y[i]
		matrix = rotateM(matrix, degree, refpt)
		x[i] = matrix[0][2]
		y[i] = matrix[1][2]
		
	for i in sisi:
		if i == sisi - 1:
			line_dda(x[i], y[i], x[0], y[0], color, "weight")
		else:
			line_dda(x[i], y[i], x[i+1], y[i+1], color, "weight")
			
func segi_banyak_composite(radius, side, center, theta, color, transform_el):
	var matrix = init_matrix(m_width, m_height)
	matrix_identitas(matrix)
	
	var x = []
	var y = []
	var pi = 3.14
	theta = theta / side
	for i in side:
		x.append(radius * cos(2*pi*(i+1)/side + theta) + center.x)
		y.append(radius * sin(2*pi*(i+1)/side + theta) + center.y)
		
	for i in side:
		# Rotation Process
		matrix[0][2] = x[i]
		matrix[1][2] = y[i]
		for idx in range(0, transform_el.size()):
			if(transform_el[idx][0] == "Translation"):
				matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
			elif(transform_el[idx][0] == "Rotation"):
				matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
				
		x[i] = matrix[0][2]
		y[i] = matrix[1][2]
		
	for i in side:
		if i == side - 1:
			line_dda(x[i], y[i], x[0], y[0], color, "normal")
		else:
			line_dda(x[i], y[i], x[i+1], y[i+1], color, "normal")
			
### SEGITIGA SAMA KAKI ###
func segitiga_sama_kaki_translate(start, base, height, color, tx, ty):
	var matrix = init_matrix(3,3)
	matrix_identitas(matrix)
	
	# Rotation Process Base
	matrix[0][2] = start.x
	matrix[1][2] = start.y
	if (typeof(tx) != 19):
		matrix = translation(matrix, tx, ty)
	else:
		for idx in range (0, tx.size()):
			matrix = translation(matrix, tx[idx], ty[idx])
	var base_start_x = matrix[0][2]
	var base_start_y = matrix[1][2]
	
	matrix_identitas(matrix)
	matrix[0][2] = start.x+base
	matrix[1][2] = start.y
	if (typeof(tx) != 19):
		matrix = translation(matrix, tx, ty)
	else:
		for idx in range (0, tx.size()):
			matrix = translation(matrix, tx[idx], ty[idx])
	var base_end_x = matrix[0][2]
	var base_end_y = matrix[1][2]
	
	# Rotation Process Hypotenusa
	matrix_identitas(matrix)
	matrix[0][2] = start.x+(base/2)
	matrix[1][2] = start.y-height
	if (typeof(tx) != 19):
		matrix = translation(matrix, tx, ty)
	else:
		for idx in range (0, tx.size()):
			matrix = translation(matrix, tx[idx], ty[idx])
	var hypo_x = matrix[0][2]
	var hypo_y = matrix[1][2]
	
	# Base
	line_dda(base_start_x, base_start_y, base_end_x, base_end_y, color, "normal")
	
	# Hypotenusa
	line_dda(base_start_x, base_start_y, hypo_x, hypo_y, color, "normal")
	line_dda(base_end_x, base_end_y, hypo_x, hypo_y, color, "normal")
	
func segitiga_sama_kaki_rotate(start, base, height, color, degree, refpt):
	var matrix = init_matrix(m_width, m_height)
	matrix_identitas(matrix)
	
	# Rotation Process Base
	matrix[0][2] = start.x
	matrix[1][2] = start.y
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	var base_start_x = matrix[0][2]
	var base_start_y = matrix[1][2]
	
	matrix_identitas(matrix)
	matrix[0][2] = start.x+base
	matrix[1][2] = start.y
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	var base_end_x = matrix[0][2]
	var base_end_y = matrix[1][2]
	
	# Rotation Process Hypotenusa
	matrix_identitas(matrix)
	matrix[0][2] = start.x+(base/2)
	matrix[1][2] = start.y-height
	if (typeof(degree) != 19):
		matrix = rotateM(matrix, degree, refpt)
	else:
		for idx in range (0, degree.size()):
			matrix = rotateM(matrix, degree[idx], refpt[idx])
	var hypo_x = matrix[0][2]
	var hypo_y = matrix[1][2]
	
	# Base
	line_dda(base_start_x, base_start_y, base_end_x, base_end_y, color, "normal")
	
	# Hypotenusa
	line_dda(base_start_x, base_start_y, hypo_x, hypo_y, color, "normal")
	line_dda(base_end_x, base_end_y, hypo_x, hypo_y, color, "normal")
	
func segitiga_composite(start, base, height, color, type, transform_el):
	var matrix = init_matrix(m_width, m_height)
	matrix_identitas(matrix)
	
	# Transformation Process
	matrix[0][2] = start.x
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	var base_start_x = matrix[0][2]
	var base_start_y = matrix[1][2]
	
	matrix_identitas(matrix)
	matrix[0][2] = start.x+base
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	var base_end_x = matrix[0][2]
	var base_end_y = matrix[1][2]
	
	# Rotation Process Hypotenusa
	matrix_identitas(matrix)
	matrix[0][2] = start.x+(base/2)
	matrix[1][2] = start.y-height
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	var hypo_x = matrix[0][2]
	var hypo_y = matrix[1][2]
	
	if(type == "sikukanan"):
		# Base
		line_dda(base_start_x, base_start_y, base_end_x, base_end_y, color, "normal")
		
		# Hypotenusa
		line_dda(base_start_x, base_start_y, hypo_x + 45, hypo_y, color, "normal")
		line_dda(base_end_x, base_end_y, hypo_x + 45, hypo_y, color, "normal")
		
	elif(type == "sikukiri"):
		# Base
		line_dda(base_start_x, base_start_y, base_end_x, base_end_y, color, "normal")
		
		# Hypotenusa
		line_dda(base_start_x, base_start_y, hypo_x - 75, hypo_y, color, "normal")
		line_dda(base_end_x, base_end_y, hypo_x - 75, hypo_y, color, "normal")
		
	else: #sama kaki or sama sisi
		# Base
		line_dda(base_start_x, base_start_y, base_end_x, base_end_y, color, "normal")
		
		# Hypotenusa
		line_dda(base_start_x, base_start_y, hypo_x, hypo_y, color, "normal")
		line_dda(base_end_x, base_end_y, hypo_x, hypo_y, color, "normal")
		
func segitiga_siku_composite(start, base, height, color, type, transform_el):
	var matrix = init_matrix(m_width, m_height)
	matrix_identitas(matrix)
	
	# Transformation Process
	matrix[0][2] = start.x
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	var base_start_x = matrix[0][2]
	var base_start_y = matrix[1][2]
	
	matrix_identitas(matrix)
	matrix[0][2] = start.x+base
	matrix[1][2] = start.y
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	var base_end_x = matrix[0][2]
	var base_end_y = matrix[1][2]
	
	# Rotation Process Hypotenusa
	matrix_identitas(matrix)
	matrix[0][2] = start.x+(base/2)
	matrix[1][2] = start.y-height
	for idx in range(0, transform_el.size()):
		if(transform_el[idx][0] == "Translation"):
			matrix = translation(matrix, transform_el[idx][1], transform_el[idx][2])
		elif(transform_el[idx][0] == "Rotation"):
			matrix = rotateM(matrix, transform_el[idx][1], transform_el[idx][2])
	var hypo_x = matrix[0][2]
	var hypo_y = matrix[1][2]
	
	# Base
	line_dda(base_start_x, base_start_y, base_end_x, base_end_y, color, "normal")
		
	# Hypotenusa
	line_dda(base_start_x, base_start_y, hypo_x, hypo_y - 35, color, "normal")
	line_dda(base_end_x, base_end_y, hypo_x, hypo_y - 35, color, "normal")
		

###LINGKARAN###
func lingkaran_translation(x_center, y_center, radius, color, tx, ty):
	var matrix = init_matrix(m_width, m_height)
	matrix_identitas(matrix)
	
	var x = 0
	var y = radius
	var p = 1 - radius
	
	# Translation
	matrix[0][2] = x_center
	matrix[1][2] = y_center
	matrix = translation(matrix, tx, ty)
	
	lingkaran_plot_points(matrix[0][2], matrix[1][2], x, y, color)
	
	while x < y:
		x += 1
		if p < 0:
			p += 2 * x + 1
		else:
			y -= 1
			p += 2 * (x - y) + 1
		
		lingkaran_plot_points(matrix[0][2], matrix[1][2], x, y, color)

func ellips_translation(xCenter, yCenter, Rx, Ry, color, tx, ty):
	var matrix_c = init_matrix(m_width, m_height)
	matrix_identitas(matrix_c)
	
	var Rx2 = Rx*Rx
	var Ry2 = Ry*Ry
	var twoRx2 = 2*Rx2
	var twoRy2 = 2*Ry2
	var p
	var x = 0
	var y = Ry
	var px = 0
	var py = twoRx2*y
	
	# Translation
	matrix_c[0][2] = xCenter
	matrix_c[1][2] = yCenter
	matrix_c = translation(matrix_c, tx, ty)
	
	ellips_plot_points(matrix_c[0][2], matrix_c[1][2], x, y, color)
	
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
		
		ellips_plot_points(matrix_c[0][2], matrix_c[1][2], x, y, color)
		
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
		
		ellips_plot_points(matrix_c[0][2], matrix_c[1][2], x, y, color)
		
func ellips_rotation(xCenter, yCenter, Rx, Ry, color, degree, refpt):
	var Rx2 = Rx*Rx
	var Ry2 = Ry*Ry
	var twoRx2 = 2*Rx2
	var twoRy2 = 2*Ry2
	var p
	var x = 0
	var y = Ry
	var px = 0
	var py = twoRx2*y
	
	ellips_plot_points_rotation(xCenter, yCenter, x, y, color, degree, refpt)
	
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
		ellips_plot_points_rotation(xCenter, yCenter, x, y, color, degree, refpt)
		
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
		ellips_plot_points_rotation(xCenter, yCenter, x, y, color, degree, refpt)

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


