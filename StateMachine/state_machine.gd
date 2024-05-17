class_name StateMachine
extends Node

@export var initial_state: State
var state: State : set = change_state


func change_state(new_state: State) -> void:
	if state != null:
		state.exit()
	state = new_state
	state.enter()


func _ready() -> void:
	await owner.ready
	state = initial_state


func _unhandled_input(event: InputEvent) -> void:
	state.unhandled_input(event)


func _process(delta: float) -> void:
	state.process(delta)


func _physics_process(delta: float) -> void:
	state.physics_process(delta)
