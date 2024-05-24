class_name Idle
extends PlayerState

signal moving


func physics_process(delta: float) -> void:
	player.move_x(delta, 0)
	
	if player.is_moving():
		if Input.is_action_just_pressed("jump"):
			player.jump()
		moving.emit()

