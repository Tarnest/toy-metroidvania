class_name Move
extends PlayerState

signal idle


func physics_process(delta: float) -> void:
	var direction := Input.get_axis("move_left", "move_right")
	
	if Input.is_action_just_pressed("jump") && player.can_jump:
		player.jump()
	
	if !direction && player.is_on_floor():
		idle.emit()
	
	player.can_jump = player.is_on_floor()
	
	player.move_x(delta, direction)
	player.apply_gravity(delta)



