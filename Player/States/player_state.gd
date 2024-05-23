class_name PlayerState
extends State

@export var player: Player

func _ready() -> void:
	set_physics_process(false)
	assert(player, "Please Assign a Player for State")
