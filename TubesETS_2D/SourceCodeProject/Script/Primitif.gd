extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first ti
func put_pixel(x, y, color):
	draw_primitive(PoolVector2Array([Vector2(x, y)]), PoolColorArray([color]), PoolVector2Array())

func put_pixel_all(dot: PoolVector2Array, color):
	for i in dot.size():
		put_pixel(dot[i].x, dot[i].y, color)

#====MATRIX=======#

var m_width = 3
var m_height = 3


func init_matrix(width, height, default = 0):
	var newArr = []

	for y in range(height):
		newArr.append([])
		newArr[y].resize(width)

		for x in range(width):
			newArr[y][x] = default

	return newArr
	
func matrix_identitas(matrix):
	var value
	
	for i in range(m_height):
		for j in range(m_width):
			if(i == j):
				value = 1
			else:
				value = 0
			matrix[i][j] = value
			
func print_matrix(matrix):
	for i in range(m_height):
		for j in range(m_width):
			print(matrix[i][j])
	
func matrix_tambah(matrix1, matrix2):
	var newMatrix = init_matrix(m_width, m_height)
	
	for i in range(m_height):
		for j in range(m_width):
			newMatrix[i][j] = matrix1[i][j] + matrix2[i][j]
			
	return newMatrix

func matrix_kurang(matrix1, matrix2):
	var newMatrix = init_matrix(m_width, m_height)
	
	for i in range(m_height):
		for j in range(m_width):
			newMatrix[i][j] = matrix1[i][j] - matrix2[i][j]
			
	return newMatrix
	
func matrix_kali(matrix1, matrix2):
	var newMatrix = init_matrix(m_width, m_height)
	
	for i in range(m_height):
		for j in range(m_width):
			newMatrix[i][j] = matrix1[i][0]*matrix2[0][j] + matrix1[i][1]*matrix2[1][j] + matrix1[i][2]*matrix2[2][j]
			
	return newMatrix


#====TRANSFORMASI=====#

func translation(matrix, tx, ty):
	var newM = init_matrix(m_width, m_height)
	matrix_identitas(newM)
	
	newM[0][2] = tx
	newM[1][2] = ty
	
	return matrix_kali(newM, matrix)

func scaleM(matrix, sx, sy, refpt):
	var newM = init_matrix(m_width, m_height)
	matrix_identitas(newM)
	
	newM[0][0] = sx
	newM[0][2] = (1 - sx) * refpt.x
	newM[1][1] = sy
	newM[1][2] = (1 - sy) * refpt.y
	
	return matrix_kali(newM, matrix)
	
func rotateM(matrix, degree, refpt):
	var newM = init_matrix(m_width, m_height)
	matrix_identitas(newM)
	
	var radian = deg2rad(degree)
	newM[0][0] = cos(radian)
	newM[0][1] = -sin(radian)
	newM[0][2] = refpt.x * (1 - cos(radian)) + refpt.y * sin(radian)
	
	newM[1][0] = sin(radian)
	newM[1][1] = cos(radian)
	newM[1][2] = refpt.y * (1 - cos(radian)) - refpt.x * sin(radian)
	
	return matrix_kali(newM, matrix)

