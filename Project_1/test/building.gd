extends Area2D


# ============================================================
# 建筑半径
# ============================================================

@export var radius: float = 40.0


func _ready():

	# ========================================================
	# Area2D 碰撞设置
	# ========================================================

	collision_layer = 1
	collision_mask = 1


	# ========================================================
	# 创建圆形碰撞
	# ========================================================

	var circle_shape = CircleShape2D.new()

	circle_shape.radius = radius

	$CollisionShape2D.shape = circle_shape


	# ========================================================
	# 创建视觉圆形
	# ========================================================

	var points = PackedVector2Array()

	var segments = 64


	for i in range(segments):

		var angle = TAU * i / segments

		points.append(
			Vector2(
				cos(angle) * radius,
				sin(angle) * radius
			)
		)


	$Polygon2D.polygon = points


	# 默认白色
	$Polygon2D.color = Color.WHITE


func set_building_color(color: Color):

	$Polygon2D.color = color
