extends 'res://Script/Primitif.gd'


func line_dda(xa, ya, xb, yb, color, type):
	var dx = xb - xa
	var dy = yb - ya
	var steps
	var xIncrement
	var yIncrement
	var x = xa
	var y = ya
	
	if abs(dx) > abs(dy):
		steps = abs(dx)
	else:
		steps = abs(dy)
	
	xIncrement = dx / steps
	yIncrement = dy / steps
	
	put_pixel(round(x), round(y), color)
	
	if type == 'normal':
		for k in range (steps):
			x = x + xIncrement
			y = y + yIncrement
			
			put_pixel(round(x), round(y), color)

	elif type == 'dotted':
		var dotted = 0
		for k in range (steps):
			x = x + xIncrement
			y = y + yIncrement
			
			if dotted <= 2:
				put_pixel(round(x), round(y), color)
				dotted += 1
			elif dotted == 5:
				dotted = 0
			else:
				dotted += 1
				
	elif type == 'dashed':
		var dotted = 0
		for k in range (steps):
			x = x + xIncrement
			y = y + yIncrement
			
			if dotted <= 7:
				put_pixel(round(x), round(y), color)
				dotted += 1
			elif dotted == 9:
				dotted = 0
			else:
				dotted += 1
				
	elif type == 'weight':
		for k in range (steps):
			x = x + xIncrement
			y = y + yIncrement
			
			if xa == xb:
				put_pixel(round(x), round(y), color)
				put_pixel(round(x)-1, round(y), color)
				put_pixel(round(x)+1, round(y), color)
			elif ya == yb:
				put_pixel(round(x), round(y), color)
				put_pixel(round(x), round(y)-1, color)
				put_pixel(round(x), round(y)+1, color)
			else:
				put_pixel(round(x), round(y), color)
				put_pixel(round(x)-(1), round(y)+(1), color)
				put_pixel(round(x)+(1), round(y)-(1), color)

func line_bresenham1(xa, ya, xb, yb, color, type):
	var dx = abs(xa - xb)
	var dy = abs(ya - yb)
	var delta = dy - dx
	var p = 2 * dy - dx
	var twoDy = 2 * dy
	var twoDx = 2 * delta
	var x
	var y
	var xEnd
	
	if xa > xb:
		x = xb
		y = yb
		xEnd = xa
	else:
		x = xa
		y = ya
		xEnd = xb
	
	while (x < xEnd):
		x = x + 1
		if p < 0:
			p = p + twoDy
		else:
			y = y + 1
			p = p + twoDx
		
		put_pixel(round(x), round(y), color)

func line_bresenham2(xa, ya, xb, yb):
	var dx = abs(xa - xb)
	var dy = abs(ya - yb)
	
	var p = 2 * dy - dx
	var twoDy = 2 * dy
	var twoDyDx= 2 * (dy - dx)
	
	var x
	var y
	var xEnd
	
	if xa > xb:
		x = xb
		y = yb
		xEnd = xa
	else:
		x = xa
		y = ya
		xEnd = xb
	put_pixel(x, y, Color( 1, 0, 0, 1 ))
	
	while x < xEnd:
		x += 1
		
		if p < 0:
			p += twoDy
		else:
			y += 1
			p = twoDyDx
		
		put_pixel(x, y, Color( 1, 0, 0, 1 ))
