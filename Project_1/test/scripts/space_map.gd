extends Node2D


var mine_scene = preload("res://scenes/Mine.tscn")



func _unhandled_input(event):

	if event is InputEventMouseButton:

		if event.button_index == MOUSE_BUTTON_LEFT:

			if event.pressed:

				create_mine(event.position)





func create_mine(pos):

	var mine = mine_scene.instantiate()

	mine.position = pos

	add_child(mine)
