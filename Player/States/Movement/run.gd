class_name Run
extends PlayerState

signal idle


func enter() -> void:
	set_physics_process(true)


func exit() -> void:
	set_physics_process(false)


func _physics_process(delta: float) -> void:
	print_debug("run")
	var direction := Input.get_axis("move_left", "move_right")
	
	if !direction:
		idle.emit()
	
	player.velocity.x = direction * player.SPEED
	
	player.move_and_slide()
