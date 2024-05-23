class_name Idle
extends PlayerState

signal moving


func enter() -> void:
	set_physics_process(true)


func exit() -> void:
	set_physics_process(false)


func _physics_process(delta: float) -> void:
	print_debug("idle")


func _unhandled_input(event: InputEvent) -> void:
	if player.is_moving():
		moving.emit()

