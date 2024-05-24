class_name PlayerState
extends State

@export var player: Player

func _ready() -> void:
	assert(player, "Please Assign a Player to State")
