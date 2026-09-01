extends CharacterBody2D


var speed = 200


func _physics_process(delta):

	var dir = Vector2.ZERO


	if Input.is_action_pressed("ui_right"):
		dir.x += 1


	if Input.is_action_pressed("ui_left"):
		dir.x -= 1


	velocity = dir * speed


	move_and_slide()
